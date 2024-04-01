// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.hpp" 1



void full_adder(bool a, bool b, bool carry_in, bool &sum, bool &carry_out);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp" 2

void full_adder(bool a, bool b, bool carry_in, bool &sum, bool &carry_out) {
    sum = a ^ b ^ carry_in;
    carry_out = (a & b) | (carry_in & (a ^ b));
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_full_adder_ir(bool, bool, bool, bool &, bool &);
#ifdef __cplusplus
extern "C"
#endif
void full_adder_hw_stub(bool a, bool b, bool carry_in, bool &sum, bool &carry_out){
full_adder(a, b, carry_in, sum, carry_out);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_full_adder_sw(bool a, bool b, bool carry_in, bool &sum, bool &carry_out){
refine_signal_handler();
apatb_full_adder_ir(a, b, carry_in, sum, carry_out);
return ;
}
#endif
# 6 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp"

