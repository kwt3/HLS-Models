################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_N_to_1/multiplexer.cpp 

OBJS += \
./source/multiplexer.o 

CPP_DEPS += \
./source/multiplexer.d 


# Each subdirectory must supply rules for building sources it contributes
source/multiplexer.o: C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_N_to_1/multiplexer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vitis_HLS/2023.2/win64/tools/auto_cc/include -IC:/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2023.2/include -IC:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_N_to_1 -IC:/Xilinx/Vitis_HLS/2023.2/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2023.2/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


