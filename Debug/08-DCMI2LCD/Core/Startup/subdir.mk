################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../08-DCMI2LCD/Core/Startup/startup_stm32h723vgtx.s 

S_DEPS += \
./08-DCMI2LCD/Core/Startup/startup_stm32h723vgtx.d 

OBJS += \
./08-DCMI2LCD/Core/Startup/startup_stm32h723vgtx.o 


# Each subdirectory must supply rules for building sources it contributes
08-DCMI2LCD/Core/Startup/%.o: ../08-DCMI2LCD/Core/Startup/%.s 08-DCMI2LCD/Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-08-2d-DCMI2LCD-2f-Core-2f-Startup

clean-08-2d-DCMI2LCD-2f-Core-2f-Startup:
	-$(RM) ./08-DCMI2LCD/Core/Startup/startup_stm32h723vgtx.d ./08-DCMI2LCD/Core/Startup/startup_stm32h723vgtx.o

.PHONY: clean-08-2d-DCMI2LCD-2f-Core-2f-Startup

