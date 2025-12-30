
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __APP_AI_H
#define __APP_AI_H
#ifdef __cplusplus
extern "C" {
#endif
/**
  ******************************************************************************
  * @file    app_x-cube-ai.h
  * @author  X-CUBE-AI C code generator
  * @brief   AI entry function definitions
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
/* Includes ------------------------------------------------------------------*/
// Результат: если valid == 0 → не найдено
typedef struct {
    uint8_t x;        // [0..7]
    uint8_t y;        // [0..9]
    uint8_t class_id; // [0..9]
    uint8_t valid;    // 0 = нет объекта
} detection_result_t;

void MX_X_CUBE_AI_Init(void);
detection_result_t MX_X_CUBE_AI_Process(uint16_t* CameraInput, uint8_t);
/* USER CODE BEGIN includes */
/* USER CODE END includes */
#ifdef __cplusplus
}
#endif
#endif /*__STMicroelectronics_X-CUBE-AI_10_2_0_H */
