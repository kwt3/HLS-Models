############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project two_full_adders_cascaded
set_top two_full_adders_cascaded
add_files full_adder.cpp
add_files full_adder.hpp
add_files two_full_adders_cascaded.cpp
add_files two_full_adders_cascaded.hpp
add_files -tb tb_two_full_adders_cascaded.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim
config_export -format ip_catalog -rtl verilog -vivado_clock 10
#source "./two_full_adders_cascaded/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
