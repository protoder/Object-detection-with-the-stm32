################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/tensorflow/signal/micro/kernels/delay.cc \
../Middlewares/tensorflow/signal/micro/kernels/energy.cc \
../Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.cc \
../Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.cc \
../Middlewares/tensorflow/signal/micro/kernels/filter_bank.cc \
../Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.cc \
../Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.cc \
../Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.cc \
../Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.cc \
../Middlewares/tensorflow/signal/micro/kernels/framer.cc \
../Middlewares/tensorflow/signal/micro/kernels/irfft.cc \
../Middlewares/tensorflow/signal/micro/kernels/overlap_add.cc \
../Middlewares/tensorflow/signal/micro/kernels/pcan.cc \
../Middlewares/tensorflow/signal/micro/kernels/rfft.cc \
../Middlewares/tensorflow/signal/micro/kernels/stacker.cc \
../Middlewares/tensorflow/signal/micro/kernels/window.cc 

CC_DEPS += \
./Middlewares/tensorflow/signal/micro/kernels/delay.d \
./Middlewares/tensorflow/signal/micro/kernels/energy.d \
./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.d \
./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.d \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank.d \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.d \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.d \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.d \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.d \
./Middlewares/tensorflow/signal/micro/kernels/framer.d \
./Middlewares/tensorflow/signal/micro/kernels/irfft.d \
./Middlewares/tensorflow/signal/micro/kernels/overlap_add.d \
./Middlewares/tensorflow/signal/micro/kernels/pcan.d \
./Middlewares/tensorflow/signal/micro/kernels/rfft.d \
./Middlewares/tensorflow/signal/micro/kernels/stacker.d \
./Middlewares/tensorflow/signal/micro/kernels/window.d 

OBJS += \
./Middlewares/tensorflow/signal/micro/kernels/delay.o \
./Middlewares/tensorflow/signal/micro/kernels/energy.o \
./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.o \
./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.o \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank.o \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.o \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.o \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.o \
./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.o \
./Middlewares/tensorflow/signal/micro/kernels/framer.o \
./Middlewares/tensorflow/signal/micro/kernels/irfft.o \
./Middlewares/tensorflow/signal/micro/kernels/overlap_add.o \
./Middlewares/tensorflow/signal/micro/kernels/pcan.o \
./Middlewares/tensorflow/signal/micro/kernels/rfft.o \
./Middlewares/tensorflow/signal/micro/kernels/stacker.o \
./Middlewares/tensorflow/signal/micro/kernels/window.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/signal/micro/kernels/%.o Middlewares/tensorflow/signal/micro/kernels/%.su Middlewares/tensorflow/signal/micro/kernels/%.cyclo: ../Middlewares/tensorflow/signal/micro/kernels/%.cc Middlewares/tensorflow/signal/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Og -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels

clean-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels:
	-$(RM) ./Middlewares/tensorflow/signal/micro/kernels/delay.cyclo ./Middlewares/tensorflow/signal/micro/kernels/delay.d ./Middlewares/tensorflow/signal/micro/kernels/delay.o ./Middlewares/tensorflow/signal/micro/kernels/delay.su ./Middlewares/tensorflow/signal/micro/kernels/energy.cyclo ./Middlewares/tensorflow/signal/micro/kernels/energy.d ./Middlewares/tensorflow/signal/micro/kernels/energy.o ./Middlewares/tensorflow/signal/micro/kernels/energy.su ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.cyclo ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.d ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.o ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_common.su ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.cyclo ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.d ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.o ./Middlewares/tensorflow/signal/micro/kernels/fft_auto_scale_kernel.su ./Middlewares/tensorflow/signal/micro/kernels/filter_bank.cyclo ./Middlewares/tensorflow/signal/micro/kernels/filter_bank.d ./Middlewares/tensorflow/signal/micro/kernels/filter_bank.o ./Middlewares/tensorflow/signal/micro/kernels/filter_bank.su ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.cyclo ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.d ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.o ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_log.su ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.cyclo ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.d ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.o ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_spectral_subtraction.su ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.cyclo ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.d ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.o ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root.su ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.cyclo ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.d ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.o ./Middlewares/tensorflow/signal/micro/kernels/filter_bank_square_root_common.su ./Middlewares/tensorflow/signal/micro/kernels/framer.cyclo ./Middlewares/tensorflow/signal/micro/kernels/framer.d ./Middlewares/tensorflow/signal/micro/kernels/framer.o ./Middlewares/tensorflow/signal/micro/kernels/framer.su ./Middlewares/tensorflow/signal/micro/kernels/irfft.cyclo ./Middlewares/tensorflow/signal/micro/kernels/irfft.d ./Middlewares/tensorflow/signal/micro/kernels/irfft.o ./Middlewares/tensorflow/signal/micro/kernels/irfft.su ./Middlewares/tensorflow/signal/micro/kernels/overlap_add.cyclo ./Middlewares/tensorflow/signal/micro/kernels/overlap_add.d ./Middlewares/tensorflow/signal/micro/kernels/overlap_add.o ./Middlewares/tensorflow/signal/micro/kernels/overlap_add.su ./Middlewares/tensorflow/signal/micro/kernels/pcan.cyclo ./Middlewares/tensorflow/signal/micro/kernels/pcan.d ./Middlewares/tensorflow/signal/micro/kernels/pcan.o ./Middlewares/tensorflow/signal/micro/kernels/pcan.su ./Middlewares/tensorflow/signal/micro/kernels/rfft.cyclo ./Middlewares/tensorflow/signal/micro/kernels/rfft.d ./Middlewares/tensorflow/signal/micro/kernels/rfft.o ./Middlewares/tensorflow/signal/micro/kernels/rfft.su ./Middlewares/tensorflow/signal/micro/kernels/stacker.cyclo ./Middlewares/tensorflow/signal/micro/kernels/stacker.d ./Middlewares/tensorflow/signal/micro/kernels/stacker.o ./Middlewares/tensorflow/signal/micro/kernels/stacker.su ./Middlewares/tensorflow/signal/micro/kernels/window.cyclo ./Middlewares/tensorflow/signal/micro/kernels/window.d ./Middlewares/tensorflow/signal/micro/kernels/window.o ./Middlewares/tensorflow/signal/micro/kernels/window.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-signal-2f-micro-2f-kernels

