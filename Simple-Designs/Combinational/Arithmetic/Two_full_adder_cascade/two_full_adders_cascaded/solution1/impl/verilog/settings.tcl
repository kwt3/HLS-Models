# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module two_full_adders_cascaded
set language verilog
set family virtexuplus
set device xcvu11p
set package -flga2577
set speed -1-e
set clock ""
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false
