################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Bsp/ST7735/lcd.c \
../Bsp/ST7735/logo_128_160.c \
../Bsp/ST7735/logo_160_80.c \
../Bsp/ST7735/st7735.c \
../Bsp/ST7735/st7735_reg.c 

C_DEPS += \
./Bsp/ST7735/lcd.d \
./Bsp/ST7735/logo_128_160.d \
./Bsp/ST7735/logo_160_80.d \
./Bsp/ST7735/st7735.d \
./Bsp/ST7735/st7735_reg.d 

OBJS += \
./Bsp/ST7735/lcd.o \
./Bsp/ST7735/logo_128_160.o \
./Bsp/ST7735/logo_160_80.o \
./Bsp/ST7735/st7735.o \
./Bsp/ST7735/st7735_reg.o 


# Each subdirectory must supply rules for building sources it contributes
Bsp/ST7735/%.o Bsp/ST7735/%.su Bsp/ST7735/%.cyclo: ../Bsp/ST7735/%.c Bsp/ST7735/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I"E:/MK Detection/stm32h2/Camera/Bsp" -I"E:/MK Detection/stm32h2/Camera/Bsp/Camera" -I"E:/MK Detection/stm32h2/Camera/Bsp/ST7735" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-ST7735

clean-Bsp-2f-ST7735:
	-$(RM) ./Bsp/ST7735/lcd.cyclo ./Bsp/ST7735/lcd.d ./Bsp/ST7735/lcd.o ./Bsp/ST7735/lcd.su ./Bsp/ST7735/logo_128_160.cyclo ./Bsp/ST7735/logo_128_160.d ./Bsp/ST7735/logo_128_160.o ./Bsp/ST7735/logo_128_160.su ./Bsp/ST7735/logo_160_80.cyclo ./Bsp/ST7735/logo_160_80.d ./Bsp/ST7735/logo_160_80.o ./Bsp/ST7735/logo_160_80.su ./Bsp/ST7735/st7735.cyclo ./Bsp/ST7735/st7735.d ./Bsp/ST7735/st7735.o ./Bsp/ST7735/st7735.su ./Bsp/ST7735/st7735_reg.cyclo ./Bsp/ST7735/st7735_reg.d ./Bsp/ST7735/st7735_reg.o ./Bsp/ST7735/st7735_reg.su

.PHONY: clean-Bsp-2f-ST7735

