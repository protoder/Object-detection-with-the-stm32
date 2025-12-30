################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.cc 

CC_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/signal/src/%.o 08-DCMI2LCD/Middlewares/tensorflow/signal/src/%.su 08-DCMI2LCD/Middlewares/tensorflow/signal/src/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/signal/src/%.cc 08-DCMI2LCD/Middlewares/tensorflow/signal/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/circular_buffer.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/energy.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/fft_auto_scale.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_log.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_spectral_subtraction.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/filter_bank_square_root.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_float.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int16.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/irfft_int32.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/log.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/max_abs.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_32.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/msb_64.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/overlap_add.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/pcan_argc_fixed.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_float.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int16.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/rfft_int32.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_32.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/square_root_64.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/src/window.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-src

