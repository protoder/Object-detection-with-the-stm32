################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.c \
../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.c 

C_DEPS += \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.d \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.d 

OBJS += \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.o \
./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/%.o Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/%.su Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/%.cyclo: ../Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/%.c Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I"E:/MK Detection/stm32h2/Camera/Bsp" -I"E:/MK Detection/stm32h2/Camera/Bsp/Camera" -I"E:/MK Detection/stm32h2/Camera/Bsp/ST7735" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-FullyConnectedFunctions

clean-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-FullyConnectedFunctions:
	-$(RM) ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s16.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_batch_matmul_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s16.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s4.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8.su ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.cyclo ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.d ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.o ./Middlewares/tensorflow/third_party/cmsis_nn/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.su

.PHONY: clean-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-FullyConnectedFunctions

