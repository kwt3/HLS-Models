// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_8_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_load,
        b_load,
        temp_sum_address0,
        temp_sum_ce0,
        temp_sum_we0,
        temp_sum_d0,
        carry_out,
        carry_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] a_load;
input  [7:0] b_load;
output  [3:0] temp_sum_address0;
output   temp_sum_ce0;
output   temp_sum_we0;
output  [0:0] temp_sum_d0;
output  [0:0] carry_out;
output   carry_out_ap_vld;

reg ap_idle;
reg temp_sum_ce0;
reg temp_sum_we0;
reg carry_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_97_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] carry_reg_78;
wire   [0:0] carry_1_fu_163_p2;
reg   [0:0] ap_phi_mux_carry_phi_fu_81_p4;
wire    ap_loop_init;
wire   [63:0] zext_ln8_fu_105_p1;
reg   [3:0] i_fu_42;
wire   [3:0] add_ln8_fu_169_p2;
reg   [3:0] ap_sig_allocacmp_i_2;
wire   [2:0] trunc_ln9_fu_110_p1;
wire   [7:0] zext_ln9_fu_114_p1;
wire   [7:0] lshr_ln9_fu_118_p2;
wire   [7:0] lshr_ln9_1_fu_128_p2;
wire   [0:0] trunc_ln9_1_fu_124_p1;
wire   [0:0] trunc_ln9_2_fu_134_p1;
wire   [0:0] xor_ln9_fu_138_p2;
wire   [0:0] and_ln11_1_fu_157_p2;
wire   [0:0] and_ln11_fu_151_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 i_fu_42 = 4'd0;
#0 ap_done_reg = 1'b0;
end

two_complement_adder_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((tmp_fu_97_p3 == 1'd0)) begin
            i_fu_42 <= add_ln8_fu_169_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_42 <= 4'd7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_97_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        carry_reg_78 <= carry_1_fu_163_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_97_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_phi_mux_carry_phi_fu_81_p4 = 1'd0;
    end else begin
        ap_phi_mux_carry_phi_fu_81_p4 = carry_reg_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 4'd7;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_42;
    end
end

always @ (*) begin
    if (((tmp_fu_97_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        carry_out_ap_vld = 1'b1;
    end else begin
        carry_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        temp_sum_ce0 = 1'b1;
    end else begin
        temp_sum_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_97_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        temp_sum_we0 = 1'b1;
    end else begin
        temp_sum_we0 = 1'b0;
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

assign add_ln8_fu_169_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(4'd15));

assign and_ln11_1_fu_157_p2 = (xor_ln9_fu_138_p2 & ap_phi_mux_carry_phi_fu_81_p4);

assign and_ln11_fu_151_p2 = (trunc_ln9_2_fu_134_p1 & trunc_ln9_1_fu_124_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign carry_1_fu_163_p2 = (and_ln11_fu_151_p2 | and_ln11_1_fu_157_p2);

assign carry_out = ap_phi_mux_carry_phi_fu_81_p4;

assign lshr_ln9_1_fu_128_p2 = b_load >> zext_ln9_fu_114_p1;

assign lshr_ln9_fu_118_p2 = a_load >> zext_ln9_fu_114_p1;

assign temp_sum_address0 = zext_ln8_fu_105_p1;

assign temp_sum_d0 = (xor_ln9_fu_138_p2 ^ ap_phi_mux_carry_phi_fu_81_p4);

assign tmp_fu_97_p3 = ap_sig_allocacmp_i_2[32'd3];

assign trunc_ln9_1_fu_124_p1 = lshr_ln9_fu_118_p2[0:0];

assign trunc_ln9_2_fu_134_p1 = lshr_ln9_1_fu_128_p2[0:0];

assign trunc_ln9_fu_110_p1 = ap_sig_allocacmp_i_2[2:0];

assign xor_ln9_fu_138_p2 = (trunc_ln9_2_fu_134_p1 ^ trunc_ln9_1_fu_124_p1);

assign zext_ln8_fu_105_p1 = ap_sig_allocacmp_i_2;

assign zext_ln9_fu_114_p1 = trunc_ln9_fu_110_p1;

endmodule //two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_8_1
