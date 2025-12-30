################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/tensorflow/signal/src/circular_buffer.cc \
../Middlewares/tensorflow/signal/src/energy.cc \
../Middlewares/tensorflow/signal/src/fft_auto_scale.cc \
../Middlewares/tensorflow/signal/src/filter_bank.cc \
../Middlewares/tensorflow/signal/src/filter_bank_log.cc \
../Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.cc \
../Middlewares/tensorflow/signal/src/filter_bank_square_root.cc \
../Middlewares/tensorflow/signal/src/irfft_float.cc \
../Middlewares/tensorflow/signal/src/irfft_int16.cc \
../Middlewares/tensorflow/signal/src/irfft_int32.cc \
../Middlewares/tensorflow/signal/src/log.cc \
../Middlewares/tensorflow/signal/src/max_abs.cc \
../Middlewares/tensorflow/signal/src/msb_32.cc \
../Middlewares/tensorflow/signal/src/msb_64.cc \
../Middlewares/tensorflow/signal/src/overlap_add.cc \
../Middlewares/tensorflow/signal/src/pcan_argc_fixed.cc \
../Middlewares/tensorflow/signal/src/rfft_float.cc \
../Middlewares/tensorflow/signal/src/rfft_int16.cc \
../Middlewares/tensorflow/signal/src/rfft_int32.cc \
../Middlewares/tensorflow/signal/src/square_root_32.cc \
../Middlewares/tensorflow/signal/src/square_root_64.cc \
../Middlewares/tensorflow/signal/src/window.cc 

CC_DEPS += \
./Middlewares/tensorflow/signal/src/circular_buffer.d \
./Middlewares/tensorflow/signal/src/energy.d \
./Middlewares/tensorflow/signal/src/fft_auto_scale.d \
./Middlewares/tensorflow/signal/src/filter_bank.d \
./Middlewares/tensorflow/signal/src/filter_bank_log.d \
./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.d \
./Middlewares/tensorflow/signal/src/filter_bank_square_root.d \
./Middlewares/tensorflow/signal/src/irfft_float.d \
./Middlewares/tensorflow/signal/src/irfft_int16.d \
./Middlewares/tensorflow/signal/src/irfft_int32.d \
./Middlewares/tensorflow/signal/src/log.d \
./Middlewares/tensorflow/signal/src/max_abs.d \
./Middlewares/tensorflow/signal/src/msb_32.d \
./Middlewares/tensorflow/signal/src/msb_64.d \
./Middlewares/tensorflow/signal/src/overlap_add.d \
./Middlewares/tensorflow/signal/src/pcan_argc_fixed.d \
./Middlewares/tensorflow/signal/src/rfft_float.d \
./Middlewares/tensorflow/signal/src/rfft_int16.d \
./Middlewares/tensorflow/signal/src/rfft_int32.d \
./Middlewares/tensorflow/signal/src/square_root_32.d \
./Middlewares/tensorflow/signal/src/square_root_64.d \
./Middlewares/tensorflow/signal/src/window.d 

OBJS += \
./Middlewares/tensorflow/signal/src/circular_buffer.o \
./Middlewares/tensorflow/signal/src/energy.o \
./Middlewares/tensorflow/signal/src/fft_auto_scale.o \
./Middlewares/tensorflow/signal/src/filter_bank.o \
./Middlewares/tensorflow/signal/src/filter_bank_log.o \
./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.o \
./Middlewares/tensorflow/signal/src/filter_bank_square_root.o \
./Middlewares/tensorflow/signal/src/irfft_float.o \
./Middlewares/tensorflow/signal/src/irfft_int16.o \
./Middlewares/tensorflow/signal/src/irfft_int32.o \
./Middlewares/tensorflow/signal/src/log.o \
./Middlewares/tensorflow/signal/src/max_abs.o \
./Middlewares/tensorflow/signal/src/msb_32.o \
./Middlewares/tensorflow/signal/src/msb_64.o \
./Middlewares/tensorflow/signal/src/overlap_add.o \
./Middlewares/tensorflow/signal/src/pcan_argc_fixed.o \
./Middlewares/tensorflow/signal/src/rfft_float.o \
./Middlewares/tensorflow/signal/src/rfft_int16.o \
./Middlewares/tensorflow/signal/src/rfft_int32.o \
./Middlewares/tensorflow/signal/src/square_root_32.o \
./Middlewares/tensorflow/signal/src/square_root_64.o \
./Middlewares/tensorflow/signal/src/window.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/signal/src/%.o Middlewares/tensorflow/signal/src/%.su Middlewares/tensorflow/signal/src/%.cyclo: ../Middlewares/tensorflow/signal/src/%.cc Middlewares/tensorflow/signal/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Og -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-signal-2f-src

clean-Middlewares-2f-tensorflow-2f-signal-2f-src:
	-$(RM) ./Middlewares/tensorflow/signal/src/circular_buffer.cyclo ./Middlewares/tensorflow/signal/src/circular_buffer.d ./Middlewares/tensorflow/signal/src/circular_buffer.o ./Middlewares/tensorflow/signal/src/circular_buffer.su ./Middlewares/tensorflow/signal/src/energy.cyclo ./Middlewares/tensorflow/signal/src/energy.d ./Middlewares/tensorflow/signal/src/energy.o ./Middlewares/tensorflow/signal/src/energy.su ./Middlewares/tensorflow/signal/src/fft_auto_scale.cyclo ./Middlewares/tensorflow/signal/src/fft_auto_scale.d ./Middlewares/tensorflow/signal/src/fft_auto_scale.o ./Middlewares/tensorflow/signal/src/fft_auto_scale.su ./Middlewares/tensorflow/signal/src/filter_bank.cyclo ./Middlewares/tensorflow/signal/src/filter_bank.d ./Middlewares/tensorflow/signal/src/filter_bank.o ./Middlewares/tensorflow/signal/src/filter_bank.su ./Middlewares/tensorflow/signal/src/filter_bank_log.cyclo ./Middlewares/tensorflow/signal/src/filter_bank_log.d ./Middlewares/tensorflow/signal/src/filter_bank_log.o ./Middlewares/tensorflow/signal/src/filter_bank_log.su ./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.cyclo ./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.d ./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.o ./Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.su ./Middlewares/tensorflow/signal/src/filter_bank_square_root.cyclo ./Middlewares/tensorflow/signal/src/filter_bank_square_root.d ./Middlewares/tensorflow/signal/src/filter_bank_square_root.o ./Middlewares/tensorflow/signal/src/filter_bank_square_root.su ./Middlewares/tensorflow/signal/src/irfft_float.cyclo ./Middlewares/tensorflow/signal/src/irfft_float.d ./Middlewares/tensorflow/signal/src/irfft_float.o ./Middlewares/tensorflow/signal/src/irfft_float.su ./Middlewares/tensorflow/signal/src/irfft_int16.cyclo ./Middlewares/tensorflow/signal/src/irfft_int16.d ./Middlewares/tensorflow/signal/src/irfft_int16.o ./Middlewares/tensorflow/signal/src/irfft_int16.su ./Middlewares/tensorflow/signal/src/irfft_int32.cyclo ./Middlewares/tensorflow/signal/src/irfft_int32.d ./Middlewares/tensorflow/signal/src/irfft_int32.o ./Middlewares/tensorflow/signal/src/irfft_int32.su ./Middlewares/tensorflow/signal/src/log.cyclo ./Middlewares/tensorflow/signal/src/log.d ./Middlewares/tensorflow/signal/src/log.o ./Middlewares/tensorflow/signal/src/log.su ./Middlewares/tensorflow/signal/src/max_abs.cyclo ./Middlewares/tensorflow/signal/src/max_abs.d ./Middlewares/tensorflow/signal/src/max_abs.o ./Middlewares/tensorflow/signal/src/max_abs.su ./Middlewares/tensorflow/signal/src/msb_32.cyclo ./Middlewares/tensorflow/signal/src/msb_32.d ./Middlewares/tensorflow/signal/src/msb_32.o ./Middlewares/tensorflow/signal/src/msb_32.su ./Middlewares/tensorflow/signal/src/msb_64.cyclo ./Middlewares/tensorflow/signal/src/msb_64.d ./Middlewares/tensorflow/signal/src/msb_64.o ./Middlewares/tensorflow/signal/src/msb_64.su ./Middlewares/tensorflow/signal/src/overlap_add.cyclo ./Middlewares/tensorflow/signal/src/overlap_add.d ./Middlewares/tensorflow/signal/src/overlap_add.o ./Middlewares/tensorflow/signal/src/overlap_add.su ./Middlewares/tensorflow/signal/src/pcan_argc_fixed.cyclo ./Middlewares/tensorflow/signal/src/pcan_argc_fixed.d ./Middlewares/tensorflow/signal/src/pcan_argc_fixed.o ./Middlewares/tensorflow/signal/src/pcan_argc_fixed.su ./Middlewares/tensorflow/signal/src/rfft_float.cyclo ./Middlewares/tensorflow/signal/src/rfft_float.d ./Middlewares/tensorflow/signal/src/rfft_float.o ./Middlewares/tensorflow/signal/src/rfft_float.su ./Middlewares/tensorflow/signal/src/rfft_int16.cyclo ./Middlewares/tensorflow/signal/src/rfft_int16.d ./Middlewares/tensorflow/signal/src/rfft_int16.o ./Middlewares/tensorflow/signal/src/rfft_int16.su ./Middlewares/tensorflow/signal/src/rfft_int32.cyclo ./Middlewares/tensorflow/signal/src/rfft_int32.d ./Middlewares/tensorflow/signal/src/rfft_int32.o ./Middlewares/tensorflow/signal/src/rfft_int32.su ./Middlewares/tensorflow/signal/src/square_root_32.cyclo ./Middlewares/tensorflow/signal/src/square_root_32.d ./Middlewares/tensorflow/signal/src/square_root_32.o ./Middlewares/tensorflow/signal/src/square_root_32.su ./Middlewares/tensorflow/signal/src/square_root_64.cyclo ./Middlewares/tensorflow/signal/src/square_root_64.d ./Middlewares/tensorflow/signal/src/square_root_64.o ./Middlewares/tensorflow/signal/src/square_root_64.su ./Middlewares/tensorflow/signal/src/window.cyclo ./Middlewares/tensorflow/signal/src/window.d ./Middlewares/tensorflow/signal/src/window.o ./Middlewares/tensorflow/signal/src/window.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-signal-2f-src

