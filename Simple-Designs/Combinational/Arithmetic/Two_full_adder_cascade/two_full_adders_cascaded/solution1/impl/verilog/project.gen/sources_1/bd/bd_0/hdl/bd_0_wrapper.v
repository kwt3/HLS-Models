//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Apr  1 07:00:58 2024
//Host        : billy running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    cout,
    cout_ap_vld,
    sum_i,
    sum_o,
    sum_o_ap_vld,
    x,
    y);
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output cout;
  output cout_ap_vld;
  input [3:0]sum_i;
  output [3:0]sum_o;
  output sum_o_ap_vld;
  input [3:0]x;
  input [3:0]y;

  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire cout;
  wire cout_ap_vld;
  wire [3:0]sum_i;
  wire [3:0]sum_o;
  wire sum_o_ap_vld;
  wire [3:0]x;
  wire [3:0]y;

  bd_0 bd_0_i
       (.ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .cout(cout),
        .cout_ap_vld(cout_ap_vld),
        .sum_i(sum_i),
        .sum_o(sum_o),
        .sum_o_ap_vld(sum_o_ap_vld),
        .x(x),
        .y(y));
endmodule
