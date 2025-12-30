################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.c \
../08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.c \
../08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.c \
../08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.c 

C_DEPS += \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.d \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.d \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.d \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.d 

OBJS += \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.o \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.o \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.o \
./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/%.o 08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/%.su 08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/%.cyclo: ../08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/%.c 08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -O3 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-ActivationFunctions

clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-ActivationFunctions:
	-$(RM) ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.d ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.o ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_nn_activation_s16.su ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.d ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.o ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu6_s8.su ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.d ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.o ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q15.su ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.cyclo ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.d ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.o ./08-DCMI2LCD/Middlewares/tensorflow/third_party/cmsis_nn/Source/ActivationFunctions/arm_relu_q7.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Middlewares-2f-tensorflow-2f-third_party-2f-cmsis_nn-2f-Source-2f-ActivationFunctions

