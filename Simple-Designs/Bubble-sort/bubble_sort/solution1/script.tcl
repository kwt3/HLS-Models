############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project bubble_sort
set_top bubbleSort
add_files bubble_sort.cpp
add_files bubble_sort_v1.hpp
add_files -tb testbench_v1.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./bubble_sort/solution1/directives.tcl"
csim_design -argv {5 5 4 3 2 1}
csynth_design
cosim_design
export_design -format ip_catalog
