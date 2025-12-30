################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../08-DCMI2LCD/Bsp/Camera/camera.c \
../08-DCMI2LCD/Bsp/Camera/ov2640.c \
../08-DCMI2LCD/Bsp/Camera/ov2640_regs.c \
../08-DCMI2LCD/Bsp/Camera/ov5640.c \
../08-DCMI2LCD/Bsp/Camera/ov5640_regs.c \
../08-DCMI2LCD/Bsp/Camera/ov7670.c \
../08-DCMI2LCD/Bsp/Camera/ov7670_regs.c \
../08-DCMI2LCD/Bsp/Camera/ov7725.c \
../08-DCMI2LCD/Bsp/Camera/ov7725_regs.c 

C_DEPS += \
./08-DCMI2LCD/Bsp/Camera/camera.d \
./08-DCMI2LCD/Bsp/Camera/ov2640.d \
./08-DCMI2LCD/Bsp/Camera/ov2640_regs.d \
./08-DCMI2LCD/Bsp/Camera/ov5640.d \
./08-DCMI2LCD/Bsp/Camera/ov5640_regs.d \
./08-DCMI2LCD/Bsp/Camera/ov7670.d \
./08-DCMI2LCD/Bsp/Camera/ov7670_regs.d \
./08-DCMI2LCD/Bsp/Camera/ov7725.d \
./08-DCMI2LCD/Bsp/Camera/ov7725_regs.d 

OBJS += \
./08-DCMI2LCD/Bsp/Camera/camera.o \
./08-DCMI2LCD/Bsp/Camera/ov2640.o \
./08-DCMI2LCD/Bsp/Camera/ov2640_regs.o \
./08-DCMI2LCD/Bsp/Camera/ov5640.o \
./08-DCMI2LCD/Bsp/Camera/ov5640_regs.o \
./08-DCMI2LCD/Bsp/Camera/ov7670.o \
./08-DCMI2LCD/Bsp/Camera/ov7670_regs.o \
./08-DCMI2LCD/Bsp/Camera/ov7725.o \
./08-DCMI2LCD/Bsp/Camera/ov7725_regs.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Bsp/Camera/%.o 08-DCMI2LCD/Bsp/Camera/%.su 08-DCMI2LCD/Bsp/Camera/%.cyclo: ../08-DCMI2LCD/Bsp/Camera/%.c 08-DCMI2LCD/Bsp/Camera/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -O3 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Bsp-2f-Camera

clean-08-2d-DCMI2LCD-2f-Bsp-2f-Camera:
	-$(RM) ./08-DCMI2LCD/Bsp/Camera/camera.cyclo ./08-DCMI2LCD/Bsp/Camera/camera.d ./08-DCMI2LCD/Bsp/Camera/camera.o ./08-DCMI2LCD/Bsp/Camera/camera.su ./08-DCMI2LCD/Bsp/Camera/ov2640.cyclo ./08-DCMI2LCD/Bsp/Camera/ov2640.d ./08-DCMI2LCD/Bsp/Camera/ov2640.o ./08-DCMI2LCD/Bsp/Camera/ov2640.su ./08-DCMI2LCD/Bsp/Camera/ov2640_regs.cyclo ./08-DCMI2LCD/Bsp/Camera/ov2640_regs.d ./08-DCMI2LCD/Bsp/Camera/ov2640_regs.o ./08-DCMI2LCD/Bsp/Camera/ov2640_regs.su ./08-DCMI2LCD/Bsp/Camera/ov5640.cyclo ./08-DCMI2LCD/Bsp/Camera/ov5640.d ./08-DCMI2LCD/Bsp/Camera/ov5640.o ./08-DCMI2LCD/Bsp/Camera/ov5640.su ./08-DCMI2LCD/Bsp/Camera/ov5640_regs.cyclo ./08-DCMI2LCD/Bsp/Camera/ov5640_regs.d ./08-DCMI2LCD/Bsp/Camera/ov5640_regs.o ./08-DCMI2LCD/Bsp/Camera/ov5640_regs.su ./08-DCMI2LCD/Bsp/Camera/ov7670.cyclo ./08-DCMI2LCD/Bsp/Camera/ov7670.d ./08-DCMI2LCD/Bsp/Camera/ov7670.o ./08-DCMI2LCD/Bsp/Camera/ov7670.su ./08-DCMI2LCD/Bsp/Camera/ov7670_regs.cyclo ./08-DCMI2LCD/Bsp/Camera/ov7670_regs.d ./08-DCMI2LCD/Bsp/Camera/ov7670_regs.o ./08-DCMI2LCD/Bsp/Camera/ov7670_regs.su ./08-DCMI2LCD/Bsp/Camera/ov7725.cyclo ./08-DCMI2LCD/Bsp/Camera/ov7725.d ./08-DCMI2LCD/Bsp/Camera/ov7725.o ./08-DCMI2LCD/Bsp/Camera/ov7725.su ./08-DCMI2LCD/Bsp/Camera/ov7725_regs.cyclo ./08-DCMI2LCD/Bsp/Camera/ov7725_regs.d ./08-DCMI2LCD/Bsp/Camera/ov7725_regs.o ./08-DCMI2LCD/Bsp/Camera/ov7725_regs.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Bsp-2f-Camera

