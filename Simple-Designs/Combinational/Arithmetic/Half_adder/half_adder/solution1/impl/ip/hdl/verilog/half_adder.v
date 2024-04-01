// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="half_adder_half_adder,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.148000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=4,HLS_VERSION=2023_2}" *)

module half_adder (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a,
        b,
        sum,
        sum_ap_vld,
        carry_out,
        carry_out_ap_vld
);


input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] a;
input  [0:0] b;
output  [0:0] sum;
output   sum_ap_vld;
output  [0:0] carry_out;
output   carry_out_ap_vld;

reg sum_ap_vld;
reg carry_out_ap_vld;

wire    ap_ce_reg;

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        carry_out_ap_vld = 1'b1;
    end else begin
        carry_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        sum_ap_vld = 1'b1;
    end else begin
        sum_ap_vld = 1'b0;
    end
end

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

assign carry_out = (b & a);

assign sum = (b ^ a);

endmodule //half_adder
