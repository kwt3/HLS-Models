// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module bcd_4_digit_adder_bcd_4_digit_adder_Pipeline_VITIS_LOOP_26_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        icmp_ln8,
        or_ln,
        a_load,
        b_load,
        cout_tmp_3_015_out,
        cout_tmp_3_015_out_ap_vld,
        p_out,
        p_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] icmp_ln8;
input  [127:0] or_ln;
input  [127:0] a_load;
input  [127:0] b_load;
output  [0:0] cout_tmp_3_015_out;
output   cout_tmp_3_015_out_ap_vld;
output  [127:0] p_out;
output   p_out_ap_vld;

reg ap_idle;
reg cout_tmp_3_015_out_ap_vld;
reg p_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_130_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] cin_assign_reg_108;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] cout_tmp_3_fu_192_p2;
wire    ap_loop_init;
reg   [0:0] cout_tmp_3_015_fu_58;
wire   [0:0] select_ln8_fu_212_p3;
wire    ap_block_pp0_stage0;
reg   [2:0] i_fu_62;
wire   [2:0] add_ln26_fu_268_p2;
reg   [127:0] empty_fu_66;
wire   [127:0] or_ln16_fu_262_p2;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] trunc_ln56_fu_142_p1;
wire   [6:0] shl_ln_fu_146_p3;
wire   [127:0] zext_ln27_fu_154_p1;
wire   [127:0] lshr_ln27_fu_158_p2;
wire   [127:0] lshr_ln27_1_fu_167_p2;
wire   [31:0] trunc_ln27_fu_163_p1;
wire   [31:0] zext_ln5_fu_176_p1;
wire   [31:0] add_ln5_fu_180_p2;
wire   [31:0] trunc_ln27_1_fu_172_p1;
wire   [31:0] temp_sum_fu_186_p2;
wire   [1:0] add_ln8_fu_198_p2;
wire   [0:0] tmp_fu_204_p3;
wire   [31:0] add_ln12_fu_220_p2;
wire   [31:0] temp_sum_1_fu_226_p3;
wire   [127:0] zext_ln16_fu_240_p1;
wire   [127:0] shl_ln16_fu_234_p2;
wire   [127:0] xor_ln16_fu_250_p2;
wire   [127:0] shl_ln16_1_fu_244_p2;
wire   [127:0] and_ln16_fu_256_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_244;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 cout_tmp_3_015_fu_58 = 1'd0;
#0 i_fu_62 = 3'd0;
#0 empty_fu_66 = 128'd0;
#0 ap_done_reg = 1'b0;
end

bcd_4_digit_adder_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_244)) begin
            cin_assign_reg_108 <= cout_tmp_3_fu_192_p2;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            cin_assign_reg_108 <= icmp_ln8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_66 <= or_ln;
        end else if (((icmp_ln26_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_66 <= or_ln16_fu_262_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 3'd1;
        end else if (((icmp_ln26_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_62 <= add_ln26_fu_268_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_fu_130_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cout_tmp_3_015_fu_58 <= select_ln8_fu_212_p3;
    end
end

always @ (*) begin
    if (((icmp_ln26_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cout_tmp_3_015_out_ap_vld = 1'b1;
    end else begin
        cout_tmp_3_015_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln26_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln12_fu_220_p2 = ($signed(temp_sum_fu_186_p2) + $signed(32'd4294967286));

assign add_ln26_fu_268_p2 = (i_fu_62 + 3'd1);

assign add_ln5_fu_180_p2 = (trunc_ln27_fu_163_p1 + zext_ln5_fu_176_p1);

assign add_ln8_fu_198_p2 = ($signed(trunc_ln56_fu_142_p1) + $signed(2'd3));

assign and_ln16_fu_256_p2 = (xor_ln16_fu_250_p2 & empty_fu_66);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_244 = ((icmp_ln26_fu_130_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign cout_tmp_3_015_out = cout_tmp_3_015_fu_58;

assign cout_tmp_3_fu_192_p2 = ((temp_sum_fu_186_p2 > 32'd9) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_130_p2 = ((i_fu_62 == 3'd4) ? 1'b1 : 1'b0);

assign lshr_ln27_1_fu_167_p2 = b_load >> zext_ln27_fu_154_p1;

assign lshr_ln27_fu_158_p2 = a_load >> zext_ln27_fu_154_p1;

assign or_ln16_fu_262_p2 = (shl_ln16_1_fu_244_p2 | and_ln16_fu_256_p2);

assign p_out = empty_fu_66;

assign select_ln8_fu_212_p3 = ((tmp_fu_204_p3[0:0] == 1'b1) ? cout_tmp_3_fu_192_p2 : cout_tmp_3_015_fu_58);

assign shl_ln16_1_fu_244_p2 = zext_ln16_fu_240_p1 << zext_ln27_fu_154_p1;

assign shl_ln16_fu_234_p2 = 128'd4294967295 << zext_ln27_fu_154_p1;

assign shl_ln_fu_146_p3 = {{trunc_ln56_fu_142_p1}, {5'd0}};

assign temp_sum_1_fu_226_p3 = ((cout_tmp_3_fu_192_p2[0:0] == 1'b1) ? add_ln12_fu_220_p2 : temp_sum_fu_186_p2);

assign temp_sum_fu_186_p2 = (add_ln5_fu_180_p2 + trunc_ln27_1_fu_172_p1);

assign tmp_fu_204_p3 = add_ln8_fu_198_p2[32'd1];

assign trunc_ln27_1_fu_172_p1 = lshr_ln27_1_fu_167_p2[31:0];

assign trunc_ln27_fu_163_p1 = lshr_ln27_fu_158_p2[31:0];

assign trunc_ln56_fu_142_p1 = i_fu_62[1:0];

assign xor_ln16_fu_250_p2 = (shl_ln16_fu_234_p2 ^ 128'd340282366920938463463374607431768211455);

assign zext_ln16_fu_240_p1 = temp_sum_1_fu_226_p3;

assign zext_ln27_fu_154_p1 = shl_ln_fu_146_p3;

assign zext_ln5_fu_176_p1 = cin_assign_reg_108;

endmodule //bcd_4_digit_adder_bcd_4_digit_adder_Pipeline_VITIS_LOOP_26_1
