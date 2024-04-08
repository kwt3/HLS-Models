############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project logic_op
set_top perform_logic_operation
add_files logic_op.cpp
add_files logic_op.hpp
add_files -tb tb_logic_op.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./logic_op/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
