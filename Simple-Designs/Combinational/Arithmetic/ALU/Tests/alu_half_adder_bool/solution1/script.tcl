############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project alu_half_adder_bool
set_top half_add_sub
add_files alu_half_add-sub.hpp
add_files alu_half_add-sub_bool.cpp
add_files -tb tb_alu_half_add-sub_bool.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7vx485t-ffg1157-1}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./alu_half_adder_bool/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
