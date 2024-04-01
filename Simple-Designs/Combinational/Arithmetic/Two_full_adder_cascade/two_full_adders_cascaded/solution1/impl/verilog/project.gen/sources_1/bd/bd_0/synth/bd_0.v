//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Apr  1 07:00:58 2024
//Host        : billy running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COUT, LAYERED_METADATA undef" *) output cout;
  output cout_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUM_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUM_I, LAYERED_METADATA undef" *) input [3:0]sum_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUM_O DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUM_O, LAYERED_METADATA undef" *) output [3:0]sum_o;
  output sum_o_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.X DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.X, LAYERED_METADATA undef" *) input [3:0]x;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Y DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Y, LAYERED_METADATA undef" *) input [3:0]y;

  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire hls_inst_cout;
  wire hls_inst_cout_ap_vld;
  wire [3:0]hls_inst_sum_o;
  wire hls_inst_sum_o_ap_vld;
  wire [3:0]sum_i_0_1;
  wire [3:0]x_0_1;
  wire [3:0]y_0_1;

  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign cout = hls_inst_cout;
  assign cout_ap_vld = hls_inst_cout_ap_vld;
  assign sum_i_0_1 = sum_i[3:0];
  assign sum_o[3:0] = hls_inst_sum_o;
  assign sum_o_ap_vld = hls_inst_sum_o_ap_vld;
  assign x_0_1 = x[3:0];
  assign y_0_1 = y[3:0];
  bd_0_hls_inst_0 hls_inst
       (.ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_start(ap_ctrl_0_1_start),
        .cout(hls_inst_cout),
        .cout_ap_vld(hls_inst_cout_ap_vld),
        .sum_i(sum_i_0_1),
        .sum_o(hls_inst_sum_o),
        .sum_o_ap_vld(hls_inst_sum_o_ap_vld),
        .x(x_0_1),
        .y(y_0_1));
endmodule
