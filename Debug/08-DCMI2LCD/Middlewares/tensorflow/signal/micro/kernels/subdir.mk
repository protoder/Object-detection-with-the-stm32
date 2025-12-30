################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.cc \
../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.cc 

CC_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.d \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.o \
./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/%.o 08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/%.su 08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/%.cc 08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/delay.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/energy.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/framer.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/irfft.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/overlap_add.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/pcan.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/rfft.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/stacker.su ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.d ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.o ./08-DCMI2LCD/Middlewares/tensorflow/signal/micro/kernels/window.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels

