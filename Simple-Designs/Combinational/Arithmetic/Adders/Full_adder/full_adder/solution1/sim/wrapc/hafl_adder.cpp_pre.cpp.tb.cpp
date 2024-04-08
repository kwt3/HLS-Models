// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/hafl_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/hafl_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/half_adder.hpp" 1



template <typename T>
void half_adder(T A, T B, T& sum, T& carry);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/hafl_adder.cpp" 2

template<typename T>
void half_adder(T A, T B, T& sum, T& carry) {
    sum = A ^ B;
    carry = A & B;
}


template void half_adder<bool>(bool A, bool B, bool& sum, bool& carry);
