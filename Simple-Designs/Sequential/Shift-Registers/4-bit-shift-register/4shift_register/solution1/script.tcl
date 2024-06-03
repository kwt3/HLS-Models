############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project 4shift_register
set_top shift_register
add_files shift_register.cpp
add_files shift_register.hpp
add_files -tb tb_shift_register.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./4shift_register/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
