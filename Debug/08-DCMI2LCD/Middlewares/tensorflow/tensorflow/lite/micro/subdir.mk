################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.cc \
../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.d \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.o \
./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/%.o 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/%.su 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/%.cc 08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/fake_micro_context.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/flatbuffer_utils.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/memory_helpers.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocation_info.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_allocator.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_context.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_context.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_interpreter_graph.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_log.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_op_resolver.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_profiler.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_resource_variable.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_time.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/micro_utils.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/mock_micro_graph.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/recording_micro_allocator.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/system_setup.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.d
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helper_custom_ops.su ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.d ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.o ./08-DCMI2LCD/Middlewares/tensorflow/tensorflow/lite/micro/test_helpers.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-tensorflow-2f-lite-2f-micro

