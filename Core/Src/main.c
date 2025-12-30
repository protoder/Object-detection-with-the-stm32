/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dcmi.h"
#include "dma.h"
#include "i2c.h"
#include "rtc.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"
#include "app_x-cube-ai.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "board.h"
#include "lcd.h"
#include "camera.h"
#include <stdio.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */


// Двойной буфер для кадра
#define NUM_BUFFERS 2
uint16_t camera_buffers[NUM_BUFFERS][FrameWidth][FrameHeight] __attribute__((section(".sram1")));
volatile uint32_t current_buffer = 0;
volatile uint32_t display_buffer = 0;
volatile uint32_t buffer_ready[NUM_BUFFERS] = {0};
volatile uint32_t capture_in_progress = 0;
volatile uint32_t frame_count = 0;
uint32_t Camera_FPS = 0;
uint32_t last_fps_time = 0;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_GPIO_Init(void);

/* USER CODE BEGIN PFP */
void camera_capture_next_frame(void);
void display_current_frame(uint8_t);
void check_camera_status(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */


#include <stdarg.h>

#define LOG_BUFFER_SIZE 256
char debug_log_buffer[LOG_BUFFER_SIZE] __attribute__((section(".ccmram")));

void print_dbg(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    
    int written = vsnprintf(debug_log_buffer, LOG_BUFFER_SIZE, fmt, args);
    
    // Отправляем через UART, если настроен
    // Или просто оставляем в буфере для отладки
    if (written > 0) {
        debug_log_buffer[written] = '\0';
    }
    va_end(args);
}

void debug_led_blink(uint32_t count) {
    for(uint32_t i = 0; i < count; i++) {
        board_led_set(1);  // Включить LED
        HAL_Delay(100);
        board_led_set(0);  // Выключить LED
        HAL_Delay(100);
    }
}

/* USER CODE END 0 */

#include <stdint.h>

decolorize(uint16_t *usp, int count)
{
	uint16_t us, rc, gc, bc, luma;

   while (--count) {
      us = *usp;
      rc = (us >> 10) & 0x3E; /* 6-bit Red Component. */
      gc = (us >> 5) & 0x3F;  /* 6-bit Green Component. */
      bc = (us << 1) & 0x3E;  /* 6-bit Blue Component. */
      luma = (rc * 218) + (gc * 732) + (bc * 74); /* Wx*1024/10000. */
      luma = (luma >> 10) + ((luma >> 9) & 1); /* 6-bit Luminance value. */
     *usp++ = ((luma & 0x3E) << 10) | (luma << 5) | (luma >> 1); /* RGB565 */
   }
}

// Вспомогательная функция: извлекает компоненты R, G, B из RGB565
static inline void rgb562rgb(uint16_t rgb565, uint8_t *r, uint8_t *g, uint8_t *b) {
    *r = (rgb565 >> 11) & 0x1F;           // 5 бит
    *g = (rgb565 >> 5)  & 0x3F;           // 6 бит
    *b = rgb565 & 0x1F;                   // 5 бит

    // Масштабируем до 8 бит (опционально, но часто делают для точности)
    *r = (*r << 3) | (*r >> 2);           // 5 → 8 бит
    *g = (*g << 2) | (*g >> 4);           // 6 → 8 бит
    *b = (*b << 3) | (*b >> 2);           // 5 → 8 бит
}

// Основная функция
void rgb565_to_grayscale_inplace(uint16_t (*img)[120], uint8_t (*gray_out)[120]) {

	decolorize(img, 160*120);
	return;
    const int WIDTH  = 160;
    const int HEIGHT = 120;

    // Шаг 1: преобразуем в grayscale (8-битный)
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            uint8_t r, g, b;
            rgb562rgb(img[y][x], &r, &g, &b);

            // Яркостная формула (ITU-R BT.601)
            uint8_t gray = (uint8_t)((13933 * r + 46871 * g + 4732 * b) >> 16);
            gray_out[y][x] = gray;
        }
    }

    // Шаг 2: обратно в RGB565 (grayscale → R=G=B=gray)
    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            uint8_t gray8 = gray_out[y][x];

            // Сжимаем 8 бит → 5/6 бит обратно
            uint8_t r5 = gray8 >> 3;            // 8 → 5 бит
            uint8_t g6 = gray8 >> 2;            // 8 → 6 бит
            uint8_t b5 = gray8 >> 3;            // 8 → 5 бит

            img[y][x] = ((uint16_t)r5 << 11) |
                        ((uint16_t)g6 << 5)  |
                        (uint16_t)b5;
        }
    }
}

#include <stdint.h>

// Функция для перестановки байтов в uint16_t
static inline uint16_t swap_bytes(uint16_t val) {
    return (val << 8) | (val >> 8);
}

void rgb565_to_grayscale_inplace_swapped(uint16_t (*img)[120], uint8_t (*gray_out)[120]) {
    const int WIDTH  = 160;
    const int HEIGHT = 120;

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            // === КЛЮЧЕВОЕ ИЗМЕНЕНИЕ: переставляем байты ===
            uint16_t pixel = //swap_bytes(img[y][x]);  // или: __builtin_bswap16(img[y][x]);
            		__builtin_bswap16(img[y][x]);
            // Извлекаем R5, G6, B5
            uint8_t r5 = (pixel >> 11) & 0x1F;
            uint8_t g6 = (pixel >> 5)  & 0x3F;
            uint8_t b5 = pixel & 0x1F;

            // Переводим в 8-битное grayscale (ITU-R BT.601 веса, целочисленно)
            // Y = 0.299*R + 0.587*G + 0.114*B
            // Масштабируем R,G,B до 8 бит для точности
            uint8_t r8 = (r5 << 3) | (r5 >> 2);
            uint8_t g8 = (g6 << 2) | (g6 >> 4);
            uint8_t b8 = (b5 << 3) | (b5 >> 2);

            uint8_t gray = (uint8_t)((77 * r8 + 150 * g8 + 29 * b8) >> 8); // 77+150+29 = 256

            gray_out[y][x] = gray;

            // Обратно в RGB565 (grayscale → R=G=B=gray)
            uint8_t out_r5 = gray >> 3;
            uint8_t out_g6 = gray >> 2;
            uint8_t out_b5 = gray >> 3;

            // Собираем обратно и **переставляем байты обратно**, чтобы сохранить совместимость с выводом
            uint16_t gray_pixel = (out_r5 << 11) | (out_g6 << 5) | out_b5;
            img[y][x] = swap_bytes(gray_pixel);
        }
    }
}

int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* Enable the CPU Cache */

  /* Enable I-Cache---------------------------------------------------------*/
  SCB_EnableICache();

  /* Enable D-Cache---------------------------------------------------------*/
  SCB_EnableDCache();

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_DCMI_Init();
  MX_I2C1_Init();
  MX_RTC_Init();
  MX_SPI4_Init();
  MX_TIM1_Init();
  MX_X_CUBE_AI_Init();  // Пока оставляем, но не используем
  
  /* USER CODE BEGIN 2 */
  board_button_init();
  board_led_init();
  
  LCD_Test();
  
  uint8_t text[30];
  sprintf((char *)&text, "Camera Test Mode");
  LCD_ShowString(0, 58, ST7735Ctx.Width, 16, 16, text);
  HAL_Delay(1000);

  #ifdef TFT96
    Camera_Init_Device(&hi2c1, FRAMESIZE_QQVGA);
  #elif TFT18
    Camera_Init_Device(&hi2c1, FRAMESIZE_QQVGA2);
  #endif
  
  // Проверяем статус камеры
  check_camera_status();
  
  // Очищаем область сообщений
  //ST7735_LCD_Driver.FillRect(&st7735_pObj, 0, 58, ST7735Ctx.Width, 16, BLACK);
  ST7735_LCD_Driver.FillRect(&st7735_pObj, 0, 0, ST7735Ctx.Width, ST7735Ctx.Height, BLACK);
  
  /* Ожидаем нажатия кнопки для начала
  sprintf((char *)&text, "Press K1 to start");
  LCD_ShowString(4, 58, ST7735Ctx.Width, 16, 12, text);
  
  while (HAL_GPIO_ReadPin(KEY_GPIO_Port, KEY_Pin) == GPIO_PIN_SET) {
    HAL_Delay(100);
  }
  */
  // Очищаем сообщение
  ST7735_LCD_Driver.FillRect(&st7735_pObj, 0, 58, ST7735Ctx.Width, 16, BLACK);
  
  // Инициализируем переменные
  current_buffer = 0;
  display_buffer = 0;
  frame_count = 0;
  last_fps_time = HAL_GetTick();
  
  // Запускаем первый захват
  camera_capture_next_frame();
  
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  //current_time = HAL_GetTick()
  detection_result_t Res;
  while (1)
  {
    /* USER CODE END WHILE */
    
    /* USER CODE BEGIN 3 */
    
	int Speed = 10;
    // Если буфер готов для отображения
    if (buffer_ready[display_buffer]) {

    	auto buf_copy = display_buffer;

    	buffer_ready[display_buffer] = 0;
		display_buffer = (display_buffer + 1) % NUM_BUFFERS;

		// Увеличиваем счетчик кадров
		frame_count++;

    	if (!capture_in_progress) {
    	        camera_capture_next_frame();
    	}

    	// Отображаем кадр
    	uint8_t gray_out_l[160][120];
    	//rgb565_to_grayscale_inplace(camera_buffers[display_buffer], gray_out_l);
    	//rgb565_to_grayscale_inplace_swapped(camera_buffers[display_buffer], gray_out_l);
        //display_current_frame(0);
        Res = MX_X_CUBE_AI_Process(camera_buffers[buf_copy], 0);

        if (Res.valid) {
            // Отображаем большую цифру класса слева (начало строки ~x=5)
            char cls_str[4];
            sprintf(cls_str, "%d", Res.class_id);
            LCD_ShowString(70, 20, ST7735Ctx.Width, 18, 12, cls_str); // крупный шрифт

            // Правая часть: координаты X x Y
            /*
            char coord_str[10];
            sprintf(coord_str, "%d x %d", Res.x, Res.y);
            LCD_ShowString(60, 5, ST7735Ctx.Width, 16, 12, coord_str);

            // Значение Speed под координатами
            char speed_str[12];
            sprintf(speed_str, "%lu", Speed); // если Speed — uint32_t; замени формат при необходимости
            LCD_ShowString(60, 20, ST7735Ctx.Width, 16, 12, speed_str);
            */
        } else {
            // Ничего не найдено — очищаем область или пишем прочерк
        	//ST7735_LCD_Driver.FillRect(&st7735_pObj, 0, 0, ST7735Ctx.Width, ST7735Ctx.Height, BLACK);
        	char cls_str[5] = "н.о.";
        	//LCD_ShowString(70, 20, ST7735Ctx.Width, 18, 12, cls_str); // крупный шрифт
        }
        
        // Переключаемся на следующий буфер для отображения
        
        
        // Обновляем FPS каждую секунду
        uint32_t current_time; //= HAL_GetTick();
        //while ((current_time = HAL_GetTick()) - last_fps_time < 1000);
        //last_fps_time = current_time;

        /*
         * current_time = HAL_GetTick();
        if (current_time - last_fps_time >= 1000) {
            Camera_FPS = frame_count;
            frame_count = 0;
            last_fps_time = current_time;
            
            // Выводим FPS на экран (исправлен формат для uint32_t)
            sprintf((char *)&text, "FPS: %lu", Camera_FPS);
            //LCD_ShowString(5, 5, 60, 16, 12, text);
            
            // Мигаем LED для индикации работы
            board_led_toggle();
        }
        */
    }
    
    // Если нет активного захвата и есть свободный буфер, запускаем следующий
    if (!capture_in_progress) {
        camera_capture_next_frame();
    }
    
    // Небольшая задержка для снижения нагрузки на CPU
    HAL_Delay(1);
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /** Configure LSE Drive Capability
  */
  HAL_PWR_EnableBkUpAccess();
    __HAL_RCC_LSEDRIVE_CONFIG(RCC_LSEDRIVE_MEDIUMHIGH);


  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSE
                              |RCC_OSCILLATORTYPE_LSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 2;
  RCC_OscInitStruct.PLL.PLLN = 44;
  RCC_OscInitStruct.PLL.PLLP = 1;
  RCC_OscInitStruct.PLL.PLLQ = 46;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
  HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_HSI48, RCC_MCODIV_4);
}

/* USER CODE BEGIN 4 */

void camera_capture_next_frame(void) {
    static uint32_t error_count = 0;
    
    // Находим свободный буфер
    uint32_t next_buffer = current_buffer;
    
    // Проверяем, свободен ли текущий буфер
    if (buffer_ready[next_buffer]) {
        // Ищем свободный буфер
        for (uint32_t i = 0; i < NUM_BUFFERS; i++) {
            if (!buffer_ready[i]) {
                next_buffer = i;
                break;
            }
        }
        
        // Если все буферы заняты, ждем
        if (buffer_ready[next_buffer]) {
            print_dbg("All buffers busy, skipping capture\r\n");
            return;
        }
    }
    
    // Инвалидируем кэш для буфера
    SCB_InvalidateDCache_by_Addr((uint32_t*)camera_buffers[next_buffer], 
                                 sizeof(camera_buffers[next_buffer]));
    
    // Запускаем захват кадра
    HAL_StatusTypeDef status = HAL_DCMI_Start_DMA(&hdcmi, 
                                                 DCMI_MODE_SNAPSHOT,
                                                 (uint32_t)camera_buffers[next_buffer],
                                                 FrameWidth * FrameHeight / 2); // 16-bit pixels
    
    if (status != HAL_OK) {
        print_dbg("DCMI Start error: %d\r\n", status);
        error_count++;
        
        // Если слишком много ошибок, перезапускаем камеру
        if (error_count > 10) {
            print_dbg("Too many errors, resetting camera\r\n");
            HAL_DCMI_DeInit(&hdcmi);
            HAL_Delay(100);
            MX_DCMI_Init();
            error_count = 0;
        }
        return;
    }
    
    capture_in_progress = 1;
    current_buffer = next_buffer;
    error_count = 0;
    
    print_dbg("Capture started on buffer %lu\r\n", current_buffer);
}

void display_current_frame(uint8_t only_cache) {
    uint32_t start_time = HAL_GetTick();
    
    // Инвалидируем кэш перед отображением
    SCB_InvalidateDCache_by_Addr((uint32_t*)camera_buffers[display_buffer], 
                                     sizeof(camera_buffers[display_buffer]));
    
    if (!only_cache){
		#ifdef TFT96
			// Для TFT96 отображаем часть кадра
			ST7735_FillRGBRect(&st7735_pObj, 0, 0,
							  (uint8_t *)&camera_buffers[display_buffer][20][0],
							  ST7735Ctx.Width, 80);
		#elif TFT18
			// Для TFT18 отображаем весь кадр
			ST7735_FillRGBRect(&st7735_pObj, 0, 0,
							  (uint8_t *)&camera_buffers[display_buffer][0][0],
							  ST7735Ctx.Width, ST7735Ctx.Height);
		#endif
    }
    uint32_t display_time = HAL_GetTick() - start_time;
    
    // Диагностика
    static uint32_t max_display_time = 0;
    if (display_time > max_display_time) {
        max_display_time = display_time;
        print_dbg("Max display time: %lu ms\r\n", max_display_time);
    }
}

void check_camera_status(void) {
    uint8_t text[30];
    sprintf((char *)&text, "Camera ID: 0x%02X", hcamera.device_id);
    LCD_ShowString(4, 58, ST7735Ctx.Width, 16, 12, text);
    HAL_Delay(1000);
    
    // Простая проверка - если ID не 0, считаем камеру рабочей
    if (hcamera.device_id != 0) {
        sprintf((char *)&text, "Camera OK");
        LCD_ShowString(4, 70, ST7735Ctx.Width, 16, 12, text);
    } else {
        sprintf((char *)&text, "Camera Error!");
        LCD_ShowString(4, 70, ST7735Ctx.Width, 16, 12, text);
        debug_led_blink(5);
    }
    HAL_Delay(1000);
}

// Обработчик прерывания завершения захвата кадра
void HAL_DCMI_FrameEventCallback(DCMI_HandleTypeDef *hdcmi)
{
    // Отмечаем буфер как готовый
    buffer_ready[current_buffer] = 1;
    capture_in_progress = 0;
    
    // Диагностика
    static uint32_t frame_seq = 0;
    frame_seq++;
    if ((frame_seq % 30) == 0) {
        print_dbg("Frame %lu captured to buffer %lu\r\n", frame_seq, current_buffer);
    }
}

// Обработчик ошибок DCMI - упрощенный
void HAL_DCMI_ErrorCallback(DCMI_HandleTypeDef *hdcmi)
{
    capture_in_progress = 0;
    print_dbg("DCMI Error occurred\r\n");
    
    // Мигаем LED для индикации ошибки
    for(int i = 0; i < 3; i++) {
        board_led_set(1);
        HAL_Delay(100);
        board_led_set(0);
        HAL_Delay(100);
    }
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  
  print_dbg("Fatal error occurred!\r\n");
  
  __disable_irq();
  
  // Быстро мигаем LED
  while (1)
  {
    board_led_set(1);
    HAL_Delay(100);
    board_led_set(0);
    HAL_Delay(100);
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  print_dbg("Assert failed: %s, line %lu\r\n", file, line);
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
