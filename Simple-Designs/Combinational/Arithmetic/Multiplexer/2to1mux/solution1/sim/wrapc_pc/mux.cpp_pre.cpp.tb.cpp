// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp"
# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.hpp" 1



template<typename T>
T mux(T data0, T data1, bool select);
# 2 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp" 2

template<typename T>
T mux(T data0, T data1, bool select) {
    if (select) {
        return data1;
    } else {
        return data0;
    }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_mux_ir(int, int, bool);
#ifdef __cplusplus
extern "C"
#endif
int mux_hw_stub(int data0, int data1, bool select){
int _ret = mux(data0, data1, select);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
int apatb_mux_sw(int data0, int data1, bool select){
refine_signal_handler();
int _ret = apatb_mux_ir(data0, data1, select);
return _ret;
}
#endif
# 10 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp"



template int mux<int>(int data0, int data1, bool select);
