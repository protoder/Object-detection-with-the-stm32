################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cc \
../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d 

OBJS += \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o \
./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.o Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.su Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.cyclo: ../Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.cc Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Og -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

clean-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn:
	-$(RM) ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.su ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cyclo ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o ./Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

