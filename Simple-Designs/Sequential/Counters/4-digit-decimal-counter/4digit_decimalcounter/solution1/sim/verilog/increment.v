// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="increment_increment,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.792143,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=33,HLS_SYN_LUT=151,HLS_VERSION=2023_2}" *)

module increment (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        reset,
        out_r,
        out_r_ap_vld,
        max_count
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] reset;
output  [3:0] out_r;
output   out_r_ap_vld;
input  [31:0] max_count;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] count;
wire   [3:0] zext_ln8_1_fu_117_p1;
reg   [3:0] ap_phi_mux_phi_ln18_phi_fu_56_p6;
wire   [0:0] reset_read_read_fu_40_p2;
wire   [3:0] trunc_ln13_fu_87_p1;
wire   [0:0] icmp_ln10_fu_75_p2;
wire   [3:0] zext_ln11_1_fu_102_p1;
wire   [31:0] add_ln13_fu_81_p2;
wire   [31:0] zext_ln11_fu_98_p1;
wire   [31:0] zext_ln8_fu_113_p1;
wire   [0:0] grp_fu_65_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 count = 32'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((reset_read_read_fu_40_p2 == 1'd1)) begin
            count <= zext_ln8_fu_113_p1;
        end else if (((icmp_ln10_fu_75_p2 == 1'd1) & (reset_read_read_fu_40_p2 == 1'd0))) begin
            count <= zext_ln11_fu_98_p1;
        end else if (((icmp_ln10_fu_75_p2 == 1'd0) & (reset_read_read_fu_40_p2 == 1'd0))) begin
            count <= add_ln13_fu_81_p2;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if (((icmp_ln10_fu_75_p2 == 1'd1) & (reset_read_read_fu_40_p2 == 1'd0))) begin
            ap_phi_mux_phi_ln18_phi_fu_56_p6 = zext_ln11_1_fu_102_p1;
        end else if (((icmp_ln10_fu_75_p2 == 1'd0) & (reset_read_read_fu_40_p2 == 1'd0))) begin
            ap_phi_mux_phi_ln18_phi_fu_56_p6 = trunc_ln13_fu_87_p1;
        end else if ((reset_read_read_fu_40_p2 == 1'd1)) begin
            ap_phi_mux_phi_ln18_phi_fu_56_p6 = zext_ln8_1_fu_117_p1;
        end else begin
            ap_phi_mux_phi_ln18_phi_fu_56_p6 = 'bx;
        end
    end else begin
        ap_phi_mux_phi_ln18_phi_fu_56_p6 = 'bx;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln13_fu_81_p2 = (count + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign grp_fu_65_p2 = ((max_count == 32'd12) ? 1'b1 : 1'b0);

assign icmp_ln10_fu_75_p2 = ((count == max_count) ? 1'b1 : 1'b0);

assign out_r = ap_phi_mux_phi_ln18_phi_fu_56_p6;

assign reset_read_read_fu_40_p2 = reset;

assign trunc_ln13_fu_87_p1 = add_ln13_fu_81_p2[3:0];

assign zext_ln11_1_fu_102_p1 = grp_fu_65_p2;

assign zext_ln11_fu_98_p1 = grp_fu_65_p2;

assign zext_ln8_1_fu_117_p1 = grp_fu_65_p2;

assign zext_ln8_fu_113_p1 = grp_fu_65_p2;

endmodule //increment