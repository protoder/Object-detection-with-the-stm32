################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../08-DCMI2LCD/Core/Src/DS.c \
../08-DCMI2LCD/Core/Src/dcmi.c \
../08-DCMI2LCD/Core/Src/dma.c \
../08-DCMI2LCD/Core/Src/gpio.c \
../08-DCMI2LCD/Core/Src/i2c.c \
../08-DCMI2LCD/Core/Src/main.c \
../08-DCMI2LCD/Core/Src/rtc.c \
../08-DCMI2LCD/Core/Src/spi.c \
../08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.c \
../08-DCMI2LCD/Core/Src/stm32h7xx_it.c \
../08-DCMI2LCD/Core/Src/syscalls.c \
../08-DCMI2LCD/Core/Src/sysmem.c \
../08-DCMI2LCD/Core/Src/system_stm32h7xx.c \
../08-DCMI2LCD/Core/Src/tim.c 

C_DEPS += \
./08-DCMI2LCD/Core/Src/DS.d \
./08-DCMI2LCD/Core/Src/dcmi.d \
./08-DCMI2LCD/Core/Src/dma.d \
./08-DCMI2LCD/Core/Src/gpio.d \
./08-DCMI2LCD/Core/Src/i2c.d \
./08-DCMI2LCD/Core/Src/main.d \
./08-DCMI2LCD/Core/Src/rtc.d \
./08-DCMI2LCD/Core/Src/spi.d \
./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.d \
./08-DCMI2LCD/Core/Src/stm32h7xx_it.d \
./08-DCMI2LCD/Core/Src/syscalls.d \
./08-DCMI2LCD/Core/Src/sysmem.d \
./08-DCMI2LCD/Core/Src/system_stm32h7xx.d \
./08-DCMI2LCD/Core/Src/tim.d 

OBJS += \
./08-DCMI2LCD/Core/Src/DS.o \
./08-DCMI2LCD/Core/Src/dcmi.o \
./08-DCMI2LCD/Core/Src/dma.o \
./08-DCMI2LCD/Core/Src/gpio.o \
./08-DCMI2LCD/Core/Src/i2c.o \
./08-DCMI2LCD/Core/Src/main.o \
./08-DCMI2LCD/Core/Src/rtc.o \
./08-DCMI2LCD/Core/Src/spi.o \
./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.o \
./08-DCMI2LCD/Core/Src/stm32h7xx_it.o \
./08-DCMI2LCD/Core/Src/syscalls.o \
./08-DCMI2LCD/Core/Src/sysmem.o \
./08-DCMI2LCD/Core/Src/system_stm32h7xx.o \
./08-DCMI2LCD/Core/Src/tim.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Core/Src/%.o 08-DCMI2LCD/Core/Src/%.su 08-DCMI2LCD/Core/Src/%.cyclo: ../08-DCMI2LCD/Core/Src/%.c 08-DCMI2LCD/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DTFLM_RUNTIME -DCMSIS_NN -DTFLM_RUNTIME_USE_ALL_OPERATORS=0 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -DTF_LITE_MCU_DEBUG_LOG -DARM_MATH -DARM_MATH_LOOPUNROLL -DKERNELS_OPTIMIZED_FOR_SIZE -DARM_MATH_DSP -DARM_MATH_CM7 -D__FPU_PRESENT=1U -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/tensorflow/third_party/cmsis_nn/Include -I../Middlewares/tensorflow/third_party/kissfft -I../Middlewares/tensorflow -I../Middlewares/tensorflow/third_party/cmsis_nn/Include/Internal -I../Middlewares/tensorflow/third_party/cmsis_nn -I../Middlewares/tensorflow/third_party/flatbuffers/include -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core/Include -I../Middlewares/tensorflow/third_party/gemmlowp -I../Middlewares/tensorflow/third_party/cmsis/CMSIS/Core -I../Middlewares/tensorflow/third_party/ruy -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -O3 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-08-2d-DCMI2LCD-2f-Core-2f-Src

clean-08-2d-DCMI2LCD-2f-Core-2f-Src:
	-$(RM) ./08-DCMI2LCD/Core/Src/DS.cyclo ./08-DCMI2LCD/Core/Src/DS.d ./08-DCMI2LCD/Core/Src/DS.o ./08-DCMI2LCD/Core/Src/DS.su ./08-DCMI2LCD/Core/Src/dcmi.cyclo ./08-DCMI2LCD/Core/Src/dcmi.d ./08-DCMI2LCD/Core/Src/dcmi.o ./08-DCMI2LCD/Core/Src/dcmi.su ./08-DCMI2LCD/Core/Src/dma.cyclo ./08-DCMI2LCD/Core/Src/dma.d ./08-DCMI2LCD/Core/Src/dma.o ./08-DCMI2LCD/Core/Src/dma.su ./08-DCMI2LCD/Core/Src/gpio.cyclo ./08-DCMI2LCD/Core/Src/gpio.d ./08-DCMI2LCD/Core/Src/gpio.o ./08-DCMI2LCD/Core/Src/gpio.su ./08-DCMI2LCD/Core/Src/i2c.cyclo ./08-DCMI2LCD/Core/Src/i2c.d ./08-DCMI2LCD/Core/Src/i2c.o ./08-DCMI2LCD/Core/Src/i2c.su ./08-DCMI2LCD/Core/Src/main.cyclo ./08-DCMI2LCD/Core/Src/main.d ./08-DCMI2LCD/Core/Src/main.o ./08-DCMI2LCD/Core/Src/main.su ./08-DCMI2LCD/Core/Src/rtc.cyclo ./08-DCMI2LCD/Core/Src/rtc.d ./08-DCMI2LCD/Core/Src/rtc.o ./08-DCMI2LCD/Core/Src/rtc.su ./08-DCMI2LCD/Core/Src/spi.cyclo ./08-DCMI2LCD/Core/Src/spi.d ./08-DCMI2LCD/Core/Src/spi.o ./08-DCMI2LCD/Core/Src/spi.su ./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.cyclo ./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.d ./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.o ./08-DCMI2LCD/Core/Src/stm32h7xx_hal_msp.su ./08-DCMI2LCD/Core/Src/stm32h7xx_it.cyclo ./08-DCMI2LCD/Core/Src/stm32h7xx_it.d ./08-DCMI2LCD/Core/Src/stm32h7xx_it.o ./08-DCMI2LCD/Core/Src/stm32h7xx_it.su ./08-DCMI2LCD/Core/Src/syscalls.cyclo ./08-DCMI2LCD/Core/Src/syscalls.d ./08-DCMI2LCD/Core/Src/syscalls.o ./08-DCMI2LCD/Core/Src/syscalls.su ./08-DCMI2LCD/Core/Src/sysmem.cyclo ./08-DCMI2LCD/Core/Src/sysmem.d ./08-DCMI2LCD/Core/Src/sysmem.o ./08-DCMI2LCD/Core/Src/sysmem.su ./08-DCMI2LCD/Core/Src/system_stm32h7xx.cyclo ./08-DCMI2LCD/Core/Src/system_stm32h7xx.d ./08-DCMI2LCD/Core/Src/system_stm32h7xx.o ./08-DCMI2LCD/Core/Src/system_stm32h7xx.su ./08-DCMI2LCD/Core/Src/tim.cyclo ./08-DCMI2LCD/Core/Src/tim.d ./08-DCMI2LCD/Core/Src/tim.o ./08-DCMI2LCD/Core/Src/tim.su

.PHONY: clean-08-2d-DCMI2LCD-2f-Core-2f-Src

