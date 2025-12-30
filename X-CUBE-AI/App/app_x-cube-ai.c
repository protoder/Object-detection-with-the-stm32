
/**
  ******************************************************************************
  * @file    app_x-cube-ai.c
  * @author  X-CUBE-AI C code generator
  * @brief   AI program body
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

 /*
  * Description
  *   v1.0 - Basic template to show how to use the TensorFlow lite micro API
  *
  */

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

/* System headers */
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "app_x-cube-ai.h"
#include "main.h"

//#include "board.h"
#include "lcd.h"
//#include "camera.h"

/* USER CODE BEGIN includes */
/* USER CODE END includes */

#include "tflm_c.h"

#define ImgW      160
#define ImgH      120

#define DOWNS_W     (ImgW / 2)
#define DOWNS_H     (ImgH / 2)

#define GridSzW 10
#define GridSzH 8

#define CYCLIC_BUFFER_SIZE 20

/* Global handle - used to reference the instantiated model */
static uint32_t model_hdl = 0;

#define DOWNSAMPLED_W (FrameWidth / 2)
#define DOWNSAMPLED_H (FrameHeight / 2)
#define TENSOR_SIZE (DOWNSAMPLED_H * DOWNSAMPLED_W * 2)


#define DOWNSAMPLED_W (FrameWidth / 2)
#define DOWNSAMPLED_H (FrameHeight / 2)

const float inv_255 = 1.0f / 255.0f;
const float pos_norm_factor = 1.0f / ((DOWNSAMPLED_H * DOWNSAMPLED_W) - 1);


// Где-то определите буфер 80x60 в оттенках серого (0-255)
typedef uint8_t gray_buffer_t[80][60][2];  // Ваш буфер 80x60

// Создайте временный RGB буфер для дисплея
uint16_t rgb_buffer[80][60];  // Буфер для RGB565

uint16_t convert_gray_to_rgb565(uint8_t gray) {
    // Преобразование оттенка серого в RGB565

	uint8_t out_r5 = gray >> 3;
	uint8_t out_g6 = gray >> 2;
	uint8_t out_b5 = gray >> 3;

	            // Собираем обратно и **переставляем байты обратно**, чтобы сохранить совместимость с выводом
	uint16_t gray_pixel = (out_r5 << 11) | (out_g6 << 5) | out_b5;
	return __builtin_bswap16(gray_pixel);
}

uint8_t ResBuf[80][60];
void display_gray_buffer(uint8_t* gray_buffer, int x_offset, int y_offset) {
    // Преобразуем и отображаем
    for (int y = 0; y < 60; y++) {
        for (int x = 0; x < 80; x++) {
        	int idx = x * 60 + y;
        	//x * DOWNSAMPLED_H + y;
        	uint8_t gray = gray_buffer[idx * 2];  // *2 потому что 2 канала
            //if ( (y < 20) && (x < 40) ) gray = 255;
        	ResBuf[x][y] = gray;
            rgb_buffer[x][y] = convert_gray_to_rgb565(gray);
        }
    }
    //ST7735_LCD_Driver.FillRect(&st7735_pObj, 0, 0, ST7735Ctx.Width, ST7735Ctx.Height, BLACK);
    // Отображаем на экране96
    ST7735_FillRGBRect(&st7735_pObj, 0, 0,
                      (uint8_t *)rgb_buffer, 60, 80);


}

extern const uint8_t image_buffer[CYCLIC_BUFFER_SIZE][ImgW][ImgH];
static uint32_t flash_reader_pos = 0;

static inline const uint8_t* get_next_image()
{
    const uint8_t* ptr = &image_buffer[flash_reader_pos][0][0];
    flash_reader_pos++;
    if (flash_reader_pos >= CYCLIC_BUFFER_SIZE)
        flash_reader_pos = 0;
    return ptr;
}

uint8_t buf[160][120];
uint8_t buf2[120][160];

uint8_t GetRGB565(uint16_t res){
	uint16_t pixel = __builtin_bswap16(res);
	// RGB565 → grayscale (8-bit)
	uint8_t r = (pixel >> 11) & 0x1F;
	uint8_t g = (pixel >> 5)  & 0x3F;
	uint8_t b = pixel & 0x1F;
	r = (r << 3) | (r >> 2);
	g = (g << 2) | (g >> 4);
	b = (b << 3) | (b >> 2);
	return (77 * r + 150 * g + 29 * b) >> 8;
}


// in: указатель на исходный RGB565-буфер (размер FrameWidth * FrameHeight)
// out: указатель на буфер модели (размер DOWNSAMPLED_H * DOWNSAMPLED_W * 2)
// scale, zero_point: параметры квантования модели

void PrepareData(uint16_t *in, uint8_t *out, float scale, int zero_point, uint8_t sintetic) {
	const uint8_t* raw;
    const uint8_t thr = 105;

	// Осветляем поля по каждому X
	for (int x = 0; x < 120; x++)
	{
		int CrX = x*160;

		int up_y;
		// Сперва осветляем все левые поля до первого светлого
		for (up_y = 0; up_y < 160; up_y++) {
			uint16_t res = in[CrX + up_y];

			uint8_t gray = GetRGB565(res);
			buf2[x][up_y] = 255;

			if (gray > thr) {
				break;
			}
		}

		int dn_y;
		// Теперь осветляем все правые поля до первого светлого
		for (dn_y = 159; dn_y > up_y; dn_y--) {

			uint16_t res = in[CrX + dn_y];

			uint8_t gray = GetRGB565(res);

			buf2[x][dn_y] = 255;

			if (gray > thr) {
				break;
			}

		}

		// Серединку конвертируем в черно - белое изображение
		for (int y = up_y + 1; y < dn_y; y++) {

			uint16_t res = in[CrX + y];

			uint8_t gray = GetRGB565(res);

			buf2[x][y] = (gray > thr) * 255;

		}

	}

	// Обнуляем поля по вертикали


	// Теперь осветляем поля по вертикали
	for (int y = 0; y < 160; y++)
	{
		int up_x;
		for (up_x = 0; up_x < 120; up_x++) {

			uint8_t gray = buf2[up_x][y];

			buf2[up_x][y] = 255;

			if (gray > thr) {
				break;
			}
		}

		for (int dn_x = 119; dn_x > up_x; dn_x--) {

			uint8_t gray = buf2[dn_x][y];

			buf2[dn_x][y] = 255;

			if (gray > thr) {
				break;
			}

		}

	}

	// конвертируем без деформации и вращения 120x160 в 160x120
	for (int x = 0; x < 120; x++) {
		for (int y = 20; y < 140; y++) {

			uint8_t gray = buf2[x][y];

			buf[x+20][y-20] = gray;

			if (x <20) buf[x][y-20] = buf[159 - x][y-20] = 255;

		}
	}

	in = (uint16_t *)buf;

	uint8_t max_gray;
	uint8_t gray;

	for (int y = 0; y < DOWNSAMPLED_H; y++) { //120
		for (int x = 0; x < DOWNSAMPLED_W; x++) {//160
        	if (1 || !sintetic)
        	{
				// === 1. Max-pooling 2x2 с одновременным переводом в grayscale ===
				max_gray = 0;
				for (int dy = 0; dy < 2; dy++) {
					for (int dx = 0; dx < 2; dx++) {
						if (sintetic){
						    	gray = raw[(x * 2 + dx) * FrameHeight + (y * 2 + dy)];
						}
						else
						{
							gray = buf[x][y];
						}
						if (gray > max_gray) max_gray = gray; // сворачиваем по черному - если хотя бы один, то все черное
					}
				}

				// === 2. Нормализация и квантование grayscale ===
				/*
				float gray_f = max_gray * inv_255; // [0,1]
				float q_gray = gray_f / scale + (float)zero_point;
				uint8_t gray_u8 = (uint8_t)(q_gray + 0.5f);
				if (q_gray < 0.0f) gray_u8 = 0;
				else if (q_gray > 255.0f) gray_u8 = 255;
				*/
				//gray_u8 = max_gray;
        	}
        	else
        	{
        		float gray_f = (*raw) * inv_255; // [0,1]
        		raw++;
				float q_gray = gray_f / scale + (float)zero_point;
				uint8_t gray_u8 = (uint8_t)(q_gray + 0.5f);
				if (q_gray < 0.0f) gray_u8 = 0;
				else if (q_gray > 255.0f) gray_u8 = 255;
        	}
            // === 3. Позиционный канал ===
            int idx = x * DOWNSAMPLED_H + y;
            float pos_f = (float)idx * pos_norm_factor; // [0,1]
            float q_pos = pos_f / scale + (float)zero_point;
            uint8_t pos_u8 = (uint8_t)(q_pos + 0.5f);
            if (q_pos < 0.0f) pos_u8 = 0;
            else if (q_pos > 255.0f) pos_u8 = 255;

            //if ( (y < 20) && (x < 40) ) max_gray = 255;

            // === 4. Запись в выходной буфер: HWC layout ===
            int out_idx = idx * 2;
            out[out_idx] = max_gray; // канал 0: grayscale
            out[out_idx + 1] = pos_u8;  // канал 1: позиция
        }
    }

    display_gray_buffer(out, 30, 30);
}

/* tflm_io_write() is the final callback implementation to implement the DebugLog() function
 * requested by the tflite::MicroErrorReporter object
 */
int tflm_io_write(const void *buff, uint16_t count)
{

    /*
     * add here where to send the log messages
     * for example
     *   HAL_StatusTypeDef status;
     *   status = HAL_UART_Transmit(&UartHandle, (uint8_t *)buff, count,
     *       HAL_MAX_DELAY);
     *
     * return (status == HAL_OK ? count : 0);
     */
     return((int)count);
}

static int ai_boostrap(const uint8_t *model, uint8_t *arena_addr,
    size_t arena_sz)
{
  TfLiteStatus res;
  int32_t size_io;

  /* USER CODE BEGIN 1 */
  print_dbg("\r\nInstancing the network (TFLM)..\r\n");
  /* USER CODE END 1 */

  res = tflm_c_create(model, (uint8_t*)arena_addr, arena_sz, &model_hdl);

  if (res != kTfLiteOk) {
    return -1;
  }

  /* USER CODE BEGIN 2 */

  /* Report the main model info */

  print_dbg(" Operator size      : %d\r\n", (int)tflm_c_operators_size(model_hdl));
  print_dbg(" Tensor size        : %d\r\n", (int)tflm_c_tensors_size(model_hdl));

  /* Report the size of arena buffer which is really used during the set-up and run phases
   * - based on a debug service (see C++ interpreter i/f in tflm_c.cc file)
   * - after this step, no additional memory should be allocated from the arena buffer or
   *   through another system heap allocator.
   * Note: This info is useful to refine/adjust the requested size of the arena buffer.
   */
  print_dbg(" Allocated size     : %d / %d\r\n", (int)tflm_c_arena_used_bytes(model_hdl),
      (int)arena_sz);

  /* Report the description of the IO tensors */

  size_io = tflm_c_inputs_size(model_hdl);
  print_dbg(" Inputs size        : %d\r\n", (int)size_io);

  for (int i=0; i<size_io; i++) {
    struct tflm_c_tensor_info t_info;
    tflm_c_input(model_hdl, i, &t_info);
    print_dbg("  %d: %s (%d bytes) (%d, %d, %d)", i, tflm_c_TfLiteTypeGetName(t_info.type),
    		t_info.shape.data[0], t_info.shape.data[1], t_info.shape.data[2], t_info.shape.data[3]);
    if (t_info.scale)
      print_dbg(" scale=%f, zp=%d\r\n", (float)t_info.scale, (int)t_info.zero_point);
    else
      print_dbg("\r\n");
  }

  size_io = tflm_c_outputs_size(model_hdl);
  print_dbg(" Outputs size       : %d\r\n", (int)size_io);

  for (int i=0; i<size_io; i++) {
    struct tflm_c_tensor_info t_info;
    tflm_c_output(model_hdl, i, &t_info);
    print_dbg("  %d: %s (%d bytes) (%d, %d, %d)", i, tflm_c_TfLiteTypeGetName(t_info.type),
        t_info.shape.data[0], t_info.shape.data[1], t_info.shape.data[2], t_info.shape.data[3]);
    if (t_info.scale)
      print_dbg(" scale=%f, zp=%d\r\n", (float)t_info.scale, (int)t_info.zero_point);
    else
      print_dbg("\r\n");
  }

  if ((tflm_c_inputs_size(model_hdl) != 1) || (tflm_c_inputs_size(model_hdl) != 1)) {
    print_dbg("WARNING - embedded TFL model is not compitable with the default template..\r\n");
  }

  /* USER CODE END 2 */

  return 0;
}


//
// --- CONFIGURATION ---
//




//
// --- EXTERNAL FLASH BUFFER WITH IMAGES ---
//


//
// --- POSITIONAL CHANNEL TABLE ---
//
static float positional_table[DOWNS_W * DOWNS_H];

static void init_positional_table()
{
    float denom = 1.0f / ((float)(DOWNS_W * DOWNS_H - 1));
    float* p = positional_table;
    for (uint32_t i = 0; i < DOWNS_W * DOWNS_H; i++)
        *p++ = (float)i * denom;
}

//
// --- DOWNSAMPLE 2x2 WITH ONE POINTER ---
//
static void manual_downsample_by_2(const uint8_t* src, uint8_t* dst)
{
    const uint8_t* p = src;
    uint8_t* out = dst;

    for (int y = 0; y < ImgH; y += 2)
    {
        for (int x = 0; x < ImgW; x += 2)
        {
            uint8_t a = *p;                 // (0,0)
            uint8_t b = *(p + 1);           // (0,1)
            uint8_t c = *(p + ImgW);      // (1,0)
            uint8_t d = *(p + ImgW + 1);  // (1,1)

            uint8_t mx = a;
            if (b > mx) mx = b;
            if (c > mx) mx = c;
            if (d > mx) mx = d;

            *out++ = mx;

            p += 2; // next 2×2 block
        }

        // advance pointer to next pair of rows
        p += ImgW;
    }
}

//
// --- PREPARE TENSOR: grayscale + pos channel + quantization ---
//
static void prepare_input_tensor(const uint8_t* downs_img, uint8_t* out_tensor, float input_scale, int input_zero_point)
{
    const uint8_t* p_img = downs_img;
    const float* p_pos = positional_table;
    uint8_t* out = out_tensor;

    for (int i = 0; i < DOWNS_W * DOWNS_H; i++)
    {
        // normalize grayscale (0–1)
        float g = (float)(*p_img++) / 255.0f;

        // quantize grayscale
        int32_t q = (int32_t)(g / input_scale + input_zero_point);
        if (q < 0) q = 0;
        if (q > 255) q = 255;
        *out++ = (uint8_t)q;

        // positional channel → quantize
        float pos = *p_pos++;
        int32_t qp = (int32_t)(pos / input_scale + input_zero_point);
        if (qp < 0) qp = 0;
        if (qp > 255) qp = 255;
        *out++ = (uint8_t)qp;
    }
}

//
// === MAIN IC-MCU ENTRY POINT ===
//  data — указатель на буфер TFLite input tensor (uint8_t)
//
int acquire_and_process_data(uint16_t* CameraInput, void* data, float input_scale, int input_zero_point, uint8_t sintetic)
{
	PrepareData(CameraInput, (uint8_t*)data, input_scale, input_zero_point, sintetic);
    /*
	static uint8_t downsampled[DOWNS_W * DOWNS_H];


    const uint8_t* raw = get_next_image();

    manual_downsample_by_2(raw, downsampled);

    prepare_input_tensor(downsampled, (uint8_t*)data, input_scale, input_zero_point);
    */
    return 0;
}

#include <stdint.h>
#include <float.h>


typedef char (*TAr)[10][8][11];
#define OUT_IDX(h, w, c) ((h) * 8 * 11 + (w) * 11 + (c))

detection_result_t postprocess_output(const uint8_t* output) {
    const int H = 10;
    const int W = 8;
    const uint16_t K0 = 118; // фон побеждает, если bg * 19 >= obj * 20 → bg/obj >= 20/19
    const uint16_t K1 = 100;

    detection_result_t best = {0, 0, 0, 0};
    uint16_t best_score = 0; // используем uint16 для суммы (макс: 5*255 = 1275)

    // Проходим по всем возможным центрам (с отступом 1 от краёв)
    for (int h = 1; h < H - 1; h++) {
        for (int w = 1; w < W - 1; w++) {
            // --- Центр: определяем класс или фон ---
            uint8_t max_val = 0;
            uint8_t best_class = 0;
            for (int c = 0; c < 10; c++) {
                uint8_t v = output[OUT_IDX(h, w, c)];
                if (v > max_val) {
                    max_val = v;
                    best_class = c;
                }
            }
            uint8_t bg_val = output[OUT_IDX(h, w, 10)];

            // Порог: фон?
            if ((uint16_t)bg_val * K1 >= (uint16_t)max_val * K0) {
                continue;
            }

            // --- Проверяем крест ---
            const int8_t dh[5] = {0, -1, 1, 0, 0};
            const int8_t dw[5] = {0, 0, 0, -1, 1};
            uint8_t match_count = 0;
            uint16_t total_score = 0;

            for (int k = 0; k < 5; k++) {
                int nh = h + dh[k];
                int nw = w + dw[k];
                if (nh < 0 || nh >= H || nw < 0 || nw >= W) continue;

                // Определяем локальный класс в соседе
                uint8_t local_max = 0;
                uint8_t local_class = 0;
                for (int c = 0; c < 10; c++) {
                    uint8_t v = output[OUT_IDX(nh, nw, c)];
                    if (v > local_max) {
                        local_max = v;
                        local_class = c;
                    }
                }
                uint8_t local_bg = output[OUT_IDX(nh, nw, 10)];

                // Фон в соседе — пропускаем
                if ((uint16_t)local_bg * K1 >= (uint16_t)local_max * K0) {
                    continue;
                }

                // Совпадает ли класс?
                if (local_class == best_class) {
                    match_count++;
                    total_score += local_max;
                }
            }

            if (match_count > 3 && total_score > best_score) {
                best_score = total_score;
                best.x = w;
                best.y = h;
                best.class_id = best_class;
                best.valid = 1;
            }
        }
    }

    return best;
}
detection_result_t post_process(void * data)
{
	return postprocess_output(data);
}
/* USER CODE END 3 */

/* USER CODE BEGIN 4 */

/*
 * The following code is based on the generated/specific
 * network_tflite_data.h/.c files. These files embed a full
 * image of the TFLite file as a C-array
 * (g_tflm_network_model_data[]).
 *
 * Note: Thanks to X-CUBE-AI, a pre-calculated ARENA size is
 *       also provided (TFLM_NETWORK_TENSOR_AREA_SIZE).
 *       With the default TFLight micro environment, no
 *       service is available to report it. Recommended approach
 *       is to provide an initial size (roughly estimated by the user)
 *       and to adjust it during the integration phase. Real value
 *       can be only known after the call of the
 *       interpreter::AllocateTensors() function at runtime.
 */

#include "network_tflite_data.h"

#define BIN_ADDRESS &g_tflm_network_model_data[0]
#define ARENA_SIZE  TFLM_NETWORK_TENSOR_AREA_SIZE

/* Allocate the arena buffer to install the model
 *  - Size should be aligned on 16-bytes.
 *   Note: This is not really strict, but avoid to have a
 *         specific warning/debug message during the
 *         set-up phase. At the end, memory will be aligned by
 *          the TFLight micro runtime it-self.
 */

#define _CONCAT_ARG(a, b)     a ## b
#define _CONCAT(a, b)         _CONCAT_ARG(a, b)

#if defined(_MSC_VER)
  #define MEM_ALIGNED(x)
#elif defined(__ICCARM__) || defined (__IAR_SYSTEMS_ICC__)
  #define MEM_ALIGNED(x)         _CONCAT(MEM_ALIGNED_,x)
  #define MEM_ALIGNED_16         _Pragma("data_alignment = 16")
#elif defined(__CC_ARM)
  #define MEM_ALIGNED(x)         __attribute__((aligned (x)))
#elif defined(__GNUC__)
  #define MEM_ALIGNED(x)         __attribute__((aligned(x)))
#else
  #define MEM_ALIGNED(x)
#endif

MEM_ALIGNED(16)
static uint8_t tensor_arena[TFLM_NETWORK_TENSOR_AREA_SIZE];
/* USER CODE END 4 */

/* Entry points --------------------------------------------------------------*/

void MX_X_CUBE_AI_Init(void)
{
    /* USER CODE BEGIN 5 */
  int res;

  print_dbg("\r\nTEMPLATE - initialization\r\n");

  res = ai_boostrap(BIN_ADDRESS, tensor_arena, ARENA_SIZE);
  if (res) {
    print_dbg("E: unable to instantiate the embedded image of the TFLite model/file..\n\r");
    return;
  }
    /* USER CODE END 5 */
}

detection_result_t MX_X_CUBE_AI_Process(uint16_t* CameraInput, uint8_t sintetic)
{
    /* USER CODE BEGIN 6 */
  volatile int res = -1;

  static uint8_t initialized = 0;

  uint8_t *in_data = NULL;
  uint8_t *out_data = NULL;

  detection_result_t Result;
  Result.valid = 0;

  print_dbg("TEMPLATE TFLM - run - main loop\r\n");

  if (model_hdl) {
    if (!initialized)
	{
		  //init_positional_table();
		  initialized = 1;
	}



    /* 1 - Retrieve the addresses of the IO buffers (index=0) */
    struct tflm_c_tensor_info info;

    tflm_c_input(model_hdl, 0, &info);
    in_data = (uint8_t *)info.data;
    float input_scale = info.scale;
    int input_zero_point = info.zero_point;

    tflm_c_output(model_hdl, 0, &info);
    out_data = (uint8_t *)info.data;
    float out_scale = info.scale;
    int out_zp = info.zero_point;
    uint8_t Step = 10*CYCLIC_BUFFER_SIZE;
    /* 2 - main loop */

    {
      /* 1 - acquire and pre-process input data */
      res = acquire_and_process_data(CameraInput, in_data, input_scale, input_zero_point, sintetic);
      /* 2 - process the data - call inference engine */
      if (res == 0) {
    	TfLiteStatus r = tflm_c_invoke(model_hdl);
        if (r != kTfLiteOk) {
          res = -1;
        }
      }
      /* 3- post-process the predictions */
      if (res == 0) Result = post_process(out_data);
    }
  }

  return Result;
    /* USER CODE END 6 */
}
#ifdef __cplusplus
}
#endif
