################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.cc \
../Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.cc \
../Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.cc 

CC_DEPS += \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.d \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.d \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.d 

OBJS += \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.o \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.o \
./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.o Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.su Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.cyclo: ../Middlewares/tensorflow/signal/src/kiss_fft_wrappers/%.cc Middlewares/tensorflow/signal/src/kiss_fft_wrappers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Og -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers

clean-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers:
	-$(RM) ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.cyclo ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.d ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.o ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_float.su ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.cyclo ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.d ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.o ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int16.su ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.cyclo ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.d ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.o ./Middlewares/tensorflow/signal/src/kiss_fft_wrappers/kiss_fft_int32.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-signal-2f-src-2f-kiss_fft_wrappers

