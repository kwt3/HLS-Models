// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.hpp" 1



# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/half_adder.hpp" 1



template <typename T>
void half_adder(T A, T B, T& sum, T& carry);
# 5 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.hpp" 2

template <typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp" 2

template<typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry) {
    T s1, c1, c2;

    half_adder(A, B, c1, s1);

    half_adder(C_In, s1, c2, sum);

    carry = c1 || c2;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_full_adder_ir(bool, bool, bool, bool &, bool &);
#ifdef __cplusplus
extern "C"
#endif
void full_adder_hw_stub(bool A, bool B, bool C_In, bool &sum, bool &carry){
full_adder(A, B, C_In, sum, carry);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_full_adder_sw(bool A, bool B, bool C_In, bool &sum, bool &carry){
refine_signal_handler();
apatb_full_adder_ir(A, B, C_In, sum, carry);
return ;
}
#endif
# 12 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp"



template void full_adder<bool>(bool A, bool B, bool C_In, bool& sum, bool& carry);
