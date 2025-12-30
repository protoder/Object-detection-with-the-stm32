################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cc 

CC_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.o 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.su 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/%.cc 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/add.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/conv.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/mul.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/pooling.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/softmax.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/svdf.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro-2f-kernels-2f-cmsis_nn

