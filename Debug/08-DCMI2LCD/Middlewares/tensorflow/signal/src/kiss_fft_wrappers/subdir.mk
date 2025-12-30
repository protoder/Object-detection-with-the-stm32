################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.cc 

CC_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.o 08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.su 08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.cc 08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers

