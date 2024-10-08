// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="shift_register_shift_register,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.650143,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=5,HLS_SYN_LUT=44,HLS_VERSION=2023_2}" *)

module shift_register (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        areset,
        load,
        ena,
        data,
        q,
        q_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] areset;
input  [0:0] load;
input  [0:0] ena;
input  [3:0] data;
output  [3:0] q;
output   q_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg q_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] reg_r;
reg   [3:0] ap_phi_mux_reg_loc_2_phi_fu_76_p8;
wire   [0:0] areset_read_read_fu_42_p2;
wire   [0:0] load_read_read_fu_48_p2;
wire   [3:0] zext_ln15_fu_104_p1;
wire   [0:0] ena_read_read_fu_54_p2;
wire   [2:0] lshr_ln_fu_94_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_condition_51;
reg    ap_condition_56;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 reg_r = 4'd0;
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
        if ((areset_read_read_fu_42_p2 == 1'd1)) begin
            reg_r <= 4'd0;
        end else if (((load_read_read_fu_48_p2 == 1'd1) & (areset_read_read_fu_42_p2 == 1'd0))) begin
            reg_r <= data;
        end else if ((1'b1 == ap_condition_51)) begin
            reg_r <= zext_ln15_fu_104_p1;
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
        if ((1'b1 == ap_condition_56)) begin
            ap_phi_mux_reg_loc_2_phi_fu_76_p8 = reg_r;
        end else if ((1'b1 == ap_condition_51)) begin
            ap_phi_mux_reg_loc_2_phi_fu_76_p8 = zext_ln15_fu_104_p1;
        end else if (((load_read_read_fu_48_p2 == 1'd1) & (areset_read_read_fu_42_p2 == 1'd0))) begin
            ap_phi_mux_reg_loc_2_phi_fu_76_p8 = data;
        end else if ((areset_read_read_fu_42_p2 == 1'd1)) begin
            ap_phi_mux_reg_loc_2_phi_fu_76_p8 = 4'd0;
        end else begin
            ap_phi_mux_reg_loc_2_phi_fu_76_p8 = 'bx;
        end
    end else begin
        ap_phi_mux_reg_loc_2_phi_fu_76_p8 = 'bx;
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
        q_ap_vld = 1'b1;
    end else begin
        q_ap_vld = 1'b0;
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_condition_51 = ((ena_read_read_fu_54_p2 == 1'd1) & (load_read_read_fu_48_p2 == 1'd0) & (areset_read_read_fu_42_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_56 = ((ena_read_read_fu_54_p2 == 1'd0) & (load_read_read_fu_48_p2 == 1'd0) & (areset_read_read_fu_42_p2 == 1'd0));
end

assign areset_read_read_fu_42_p2 = areset;

assign ena_read_read_fu_54_p2 = ena;

assign load_read_read_fu_48_p2 = load;

assign lshr_ln_fu_94_p4 = {{reg_r[3:1]}};

assign q = ap_phi_mux_reg_loc_2_phi_fu_76_p8;

assign zext_ln15_fu_104_p1 = lshr_ln_fu_94_p4;

endmodule //shift_register
