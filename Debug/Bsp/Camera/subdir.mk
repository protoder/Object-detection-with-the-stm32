################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Bsp/Camera/camera.c \
../Bsp/Camera/ov2640.c \
../Bsp/Camera/ov2640_regs.c \
../Bsp/Camera/ov5640.c \
../Bsp/Camera/ov5640_regs.c \
../Bsp/Camera/ov7670.c \
../Bsp/Camera/ov7670_regs.c \
../Bsp/Camera/ov7725.c \
../Bsp/Camera/ov7725_regs.c 

C_DEPS += \
./Bsp/Camera/camera.d \
./Bsp/Camera/ov2640.d \
./Bsp/Camera/ov2640_regs.d \
./Bsp/Camera/ov5640.d \
./Bsp/Camera/ov5640_regs.d \
./Bsp/Camera/ov7670.d \
./Bsp/Camera/ov7670_regs.d \
./Bsp/Camera/ov7725.d \
./Bsp/Camera/ov7725_regs.d 

OBJS += \
./Bsp/Camera/camera.o \
./Bsp/Camera/ov2640.o \
./Bsp/Camera/ov2640_regs.o \
./Bsp/Camera/ov5640.o \
./Bsp/Camera/ov5640_regs.o \
./Bsp/Camera/ov7670.o \
./Bsp/Camera/ov7670_regs.o \
./Bsp/Camera/ov7725.o \
./Bsp/Camera/ov7725_regs.o 


# Each subdirectory must supply rules for building sources it contributes
Bsp/Camera/%.o Bsp/Camera/%.su Bsp/Camera/%.cyclo: ../Bsp/Camera/%.c Bsp/Camera/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I"E:/MK Detection/stm32h2/Camera/Bsp" -I"E:/MK Detection/stm32h2/Camera/Bsp/Camera" -I"E:/MK Detection/stm32h2/Camera/Bsp/ST7735" -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-Camera

clean-Bsp-2f-Camera:
	-$(RM) ./Bsp/Camera/camera.cyclo ./Bsp/Camera/camera.d ./Bsp/Camera/camera.o ./Bsp/Camera/camera.su ./Bsp/Camera/ov2640.cyclo ./Bsp/Camera/ov2640.d ./Bsp/Camera/ov2640.o ./Bsp/Camera/ov2640.su ./Bsp/Camera/ov2640_regs.cyclo ./Bsp/Camera/ov2640_regs.d ./Bsp/Camera/ov2640_regs.o ./Bsp/Camera/ov2640_regs.su ./Bsp/Camera/ov5640.cyclo ./Bsp/Camera/ov5640.d ./Bsp/Camera/ov5640.o ./Bsp/Camera/ov5640.su ./Bsp/Camera/ov5640_regs.cyclo ./Bsp/Camera/ov5640_regs.d ./Bsp/Camera/ov5640_regs.o ./Bsp/Camera/ov5640_regs.su ./Bsp/Camera/ov7670.cyclo ./Bsp/Camera/ov7670.d ./Bsp/Camera/ov7670.o ./Bsp/Camera/ov7670.su ./Bsp/Camera/ov7670_regs.cyclo ./Bsp/Camera/ov7670_regs.d ./Bsp/Camera/ov7670_regs.o ./Bsp/Camera/ov7670_regs.su ./Bsp/Camera/ov7725.cyclo ./Bsp/Camera/ov7725.d ./Bsp/Camera/ov7725.o ./Bsp/Camera/ov7725.su ./Bsp/Camera/ov7725_regs.cyclo ./Bsp/Camera/ov7725_regs.d ./Bsp/Camera/ov7725_regs.o ./Bsp/Camera/ov7725_regs.su

.PHONY: clean-Bsp-2f-Camera

