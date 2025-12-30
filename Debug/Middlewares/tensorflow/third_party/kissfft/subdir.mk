################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/tensorflow/third_party/kissfft/kiss_fft.c 

C_DEPS += \
./Middlewares/tensorflow/third_party/kissfft/kiss_fft.d 

OBJS += \
./Middlewares/tensorflow/third_party/kissfft/kiss_fft.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/third_party/kissfft/%.o Middlewares/tensorflow/third_party/kissfft/%.su Middlewares/tensorflow/third_party/kissfft/%.cyclo: ../Middlewares/tensorflow/third_party/kissfft/%.c Middlewares/tensorflow/third_party/kissfft/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I"E:/MK Detection/stm32h2/Camera/Bsp" -I"E:/MK Detection/stm32h2/Camera/Bsp/Camera" -I"E:/MK Detection/stm32h2/Camera/Bsp/ST7735" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-third_party-2f-kissfft

clean-Middlewares-2f-tensorflow-2f-third_party-2f-kissfft:
	-$(RM) ./Middlewares/tensorflow/third_party/kissfft/kiss_fft.cyclo ./Middlewares/tensorflow/third_party/kissfft/kiss_fft.d ./Middlewares/tensorflow/third_party/kissfft/kiss_fft.o ./Middlewares/tensorflow/third_party/kissfft/kiss_fft.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-third_party-2f-kissfft

