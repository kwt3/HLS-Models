// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.hpp" 1



template<typename T>
T mux(T a, T b, bool sel);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp" 2

template<typename T>
T mux(T a, T b, bool sel) {
    return sel ? b : a;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
bool apatb_mux_ir(bool, bool, bool);
#ifdef __cplusplus
extern "C"
#endif
bool mux_hw_stub(bool a, bool b, bool sel){
bool _ret = mux(a, b, sel);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
bool apatb_mux_sw(bool a, bool b, bool sel){
refine_signal_handler();
bool _ret = apatb_mux_ir(a, b, sel);
return _ret;
}
#endif
# 6 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp"


template bool mux<bool>(bool a, bool b, bool sel);
