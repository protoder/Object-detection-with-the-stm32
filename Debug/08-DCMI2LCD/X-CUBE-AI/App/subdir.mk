################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.cc \
../08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.cc \
../08-DCMI2LCD/X-CUBE-AI/App/tflm_c.cc 

C_SRCS += \
../08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.c \
../08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.c \
../08-DCMI2LCD/X-CUBE-AI/App/network.c 

C_DEPS += \
./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.d \
./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.d \
./08-DCMI2LCD/X-CUBE-AI/App/network.d 

CC_DEPS += \
./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.d \
./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.d \
./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.d 

OBJS += \
./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.o \
./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.o \
./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.o \
./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.o \
./08-DCMI2LCD/X-CUBE-AI/App/network.o \
./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/X-CUBE-AI/App/%.o 08-DCMI2LCD/X-CUBE-AI/App/%.su 08-DCMI2LCD/X-CUBE-AI/App/%.cyclo: ../08-DCMI2LCD/X-CUBE-AI/App/%.c 08-DCMI2LCD/X-CUBE-AI/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -O3 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
08-DCMI2LCD/X-CUBE-AI/App/%.o 08-DCMI2LCD/X-CUBE-AI/App/%.su 08-DCMI2LCD/X-CUBE-AI/App/%.cyclo: ../08-DCMI2LCD/X-CUBE-AI/App/%.cc 08-DCMI2LCD/X-CUBE-AI/App/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-X-2d-CUBE-2d-AI-2f-App

clean-08-2d-DCMI2LCD-2f-X-2d-CUBE-2d-AI-2f-App:
	-$(RM) ./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.d ./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.o ./08-DCMI2LCD/X-CUBE-AI/App/ai_memory_init.su ./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.d ./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.o ./08-DCMI2LCD/X-CUBE-AI/App/all_ops_resolver.su ./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.d ./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.o ./08-DCMI2LCD/X-CUBE-AI/App/app_x-cube-ai.su ./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.d ./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.o ./08-DCMI2LCD/X-CUBE-AI/App/debug_log_imp.su ./08-DCMI2LCD/X-CUBE-AI/App/network.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/network.d ./08-DCMI2LCD/X-CUBE-AI/App/network.o ./08-DCMI2LCD/X-CUBE-AI/App/network.su ./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.cyclo ./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.d ./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.o ./08-DCMI2LCD/X-CUBE-AI/App/tflm_c.su

.PHONY: clean-08-2d-DCMI2LCD-2f-X-2d-CUBE-2d-AI-2f-App

