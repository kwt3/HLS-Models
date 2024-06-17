// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      matrix_multiply
`define AUTOTB_DUT_INST AESL_inst_matrix_multiply
`define AUTOTB_TOP      apatb_matrix_multiply_top
`define AUTOTB_LAT_RESULT_FILE "matrix_multiply.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "matrix_multiply.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_matrix_multiply_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_BRAM_A AESL_autobram_A
`define AESL_BRAM_INST_A bram_inst_A
`define AESL_BRAM_B AESL_autobram_B
`define AESL_BRAM_INST_B bram_inst_B
`define AESL_BRAM_C AESL_autobram_C
`define AESL_BRAM_INST_C bram_inst_C
`define AUTOTB_TVIN_A  "../tv/cdatafile/c.matrix_multiply.autotvin_A.dat"
`define AUTOTB_TVIN_B  "../tv/cdatafile/c.matrix_multiply.autotvin_B.dat"
`define AUTOTB_TVIN_C  "../tv/cdatafile/c.matrix_multiply.autotvin_C.dat"
`define AUTOTB_TVIN_A_out_wrapc  "../tv/rtldatafile/rtl.matrix_multiply.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "../tv/rtldatafile/rtl.matrix_multiply.autotvin_B.dat"
`define AUTOTB_TVIN_C_out_wrapc  "../tv/rtldatafile/rtl.matrix_multiply.autotvin_C.dat"
`define AUTOTB_TVOUT_C  "../tv/cdatafile/c.matrix_multiply.autotvout_C.dat"
`define AUTOTB_TVOUT_C_out_wrapc  "../tv/rtldatafile/rtl.matrix_multiply.autotvout_C.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 8388611;
parameter LENGTH_A = 65536;
parameter LENGTH_B = 65536;
parameter LENGTH_C = 65536;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] A_ADDR_A;
wire  A_EN_A;
wire [3 : 0] A_WEN_A;
wire [31 : 0] A_DIN_A;
wire [31 : 0] A_DOUT_A;
wire  A_CLK_A;
wire  A_RST_A;
wire [31 : 0] A_ADDR_B;
wire  A_EN_B;
wire [3 : 0] A_WEN_B;
wire [31 : 0] A_DIN_B;
wire [31 : 0] A_DOUT_B;
wire  A_CLK_B;
wire  A_RST_B;
wire [31 : 0] B_ADDR_A;
wire  B_EN_A;
wire [3 : 0] B_WEN_A;
wire [31 : 0] B_DIN_A;
wire [31 : 0] B_DOUT_A;
wire  B_CLK_A;
wire  B_RST_A;
wire [31 : 0] B_ADDR_B;
wire  B_EN_B;
wire [3 : 0] B_WEN_B;
wire [31 : 0] B_DIN_B;
wire [31 : 0] B_DOUT_B;
wire  B_CLK_B;
wire  B_RST_B;
wire [31 : 0] C_ADDR_A;
wire  C_EN_A;
wire [3 : 0] C_WEN_A;
wire [31 : 0] C_DIN_A;
wire [31 : 0] C_DOUT_A;
wire  C_CLK_A;
wire  C_RST_A;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .A_Addr_A(A_ADDR_A),
    .A_EN_A(A_EN_A),
    .A_WEN_A(A_WEN_A),
    .A_Din_A(A_DIN_A),
    .A_Dout_A(A_DOUT_A),
    .A_Clk_A(A_CLK_A),
    .A_Rst_A(A_RST_A),
    .A_Addr_B(A_ADDR_B),
    .A_EN_B(A_EN_B),
    .A_WEN_B(A_WEN_B),
    .A_Din_B(A_DIN_B),
    .A_Dout_B(A_DOUT_B),
    .A_Clk_B(A_CLK_B),
    .A_Rst_B(A_RST_B),
    .B_Addr_A(B_ADDR_A),
    .B_EN_A(B_EN_A),
    .B_WEN_A(B_WEN_A),
    .B_Din_A(B_DIN_A),
    .B_Dout_A(B_DOUT_A),
    .B_Clk_A(B_CLK_A),
    .B_Rst_A(B_RST_A),
    .B_Addr_B(B_ADDR_B),
    .B_EN_B(B_EN_B),
    .B_WEN_B(B_WEN_B),
    .B_Din_B(B_DIN_B),
    .B_Dout_B(B_DOUT_B),
    .B_Clk_B(B_CLK_B),
    .B_Rst_B(B_RST_B),
    .C_Addr_A(C_ADDR_A),
    .C_EN_A(C_EN_A),
    .C_WEN_A(C_WEN_A),
    .C_Din_A(C_DIN_A),
    .C_Dout_A(C_DOUT_A),
    .C_Clk_A(C_CLK_A),
    .C_Rst_A(C_RST_A));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------bramA Instantiation--------------

// The input and output of bramA
wire  bramA_Clk_A, bramA_Clk_B;
wire  bramA_EN_A, bramA_EN_B;
wire  [4 - 1 : 0] bramA_WEN_A, bramA_WEN_B;
wire    [31 : 0]    bramA_Addr_A, bramA_Addr_B;
wire    [31 : 0]    bramA_Din_A, bramA_Din_B;
wire    [31 : 0]    bramA_Dout_A, bramA_Dout_B;
wire    bramA_ready;
wire    bramA_done;

`AESL_BRAM_A `AESL_BRAM_INST_A(
    .Clk_A    (bramA_Clk_A),
    .Rst_A    (bramA_Rst_A),
    .EN_A     (bramA_EN_A),
    .WEN_A    (bramA_WEN_A),
    .Addr_A   (bramA_Addr_A),
    .Din_A    (bramA_Din_A),
    .Dout_A   (bramA_Dout_A),
    .Clk_B    (bramA_Clk_B),
    .Rst_B    (bramA_Rst_B),
    .EN_B     (bramA_EN_B),
    .WEN_B    (bramA_WEN_B),
    .Addr_B   (bramA_Addr_B),
    .Din_B    (bramA_Din_B),
    .Dout_B   (bramA_Dout_B),
    .ready    (bramA_ready),
    .done        (bramA_done)
);

// Assignment between dut and bramA
assign bramA_Clk_A = A_CLK_A;
assign bramA_Rst_A = A_RST_A;
assign bramA_Addr_A = A_ADDR_A;
assign bramA_EN_A = A_EN_A;
assign A_DOUT_A = bramA_Dout_A;
assign bramA_WEN_A = 0;
assign bramA_Din_A = 0;
assign bramA_Clk_B = A_CLK_B;
assign bramA_Rst_B = A_RST_B;
assign bramA_Addr_B = A_ADDR_B;
assign bramA_EN_B = A_EN_B;
assign A_DOUT_B = bramA_Dout_B;
assign bramA_WEN_B = 0;
assign bramA_Din_B = 0;
assign bramA_ready=    ready;
assign bramA_done = 0;


//------------------------bramB Instantiation--------------

// The input and output of bramB
wire  bramB_Clk_A, bramB_Clk_B;
wire  bramB_EN_A, bramB_EN_B;
wire  [4 - 1 : 0] bramB_WEN_A, bramB_WEN_B;
wire    [31 : 0]    bramB_Addr_A, bramB_Addr_B;
wire    [31 : 0]    bramB_Din_A, bramB_Din_B;
wire    [31 : 0]    bramB_Dout_A, bramB_Dout_B;
wire    bramB_ready;
wire    bramB_done;

`AESL_BRAM_B `AESL_BRAM_INST_B(
    .Clk_A    (bramB_Clk_A),
    .Rst_A    (bramB_Rst_A),
    .EN_A     (bramB_EN_A),
    .WEN_A    (bramB_WEN_A),
    .Addr_A   (bramB_Addr_A),
    .Din_A    (bramB_Din_A),
    .Dout_A   (bramB_Dout_A),
    .Clk_B    (bramB_Clk_B),
    .Rst_B    (bramB_Rst_B),
    .EN_B     (bramB_EN_B),
    .WEN_B    (bramB_WEN_B),
    .Addr_B   (bramB_Addr_B),
    .Din_B    (bramB_Din_B),
    .Dout_B   (bramB_Dout_B),
    .ready    (bramB_ready),
    .done        (bramB_done)
);

// Assignment between dut and bramB
assign bramB_Clk_A = B_CLK_A;
assign bramB_Rst_A = B_RST_A;
assign bramB_Addr_A = B_ADDR_A;
assign bramB_EN_A = B_EN_A;
assign B_DOUT_A = bramB_Dout_A;
assign bramB_WEN_A = 0;
assign bramB_Din_A = 0;
assign bramB_Clk_B = B_CLK_B;
assign bramB_Rst_B = B_RST_B;
assign bramB_Addr_B = B_ADDR_B;
assign bramB_EN_B = B_EN_B;
assign B_DOUT_B = bramB_Dout_B;
assign bramB_WEN_B = 0;
assign bramB_Din_B = 0;
assign bramB_ready=    ready;
assign bramB_done = 0;


//------------------------bramC Instantiation--------------

// The input and output of bramC
wire  bramC_Clk_A, bramC_Clk_B;
wire  bramC_EN_A, bramC_EN_B;
wire  [4 - 1 : 0] bramC_WEN_A, bramC_WEN_B;
wire    [31 : 0]    bramC_Addr_A, bramC_Addr_B;
wire    [31 : 0]    bramC_Din_A, bramC_Din_B;
wire    [31 : 0]    bramC_Dout_A, bramC_Dout_B;
wire    bramC_ready;
wire    bramC_done;

`AESL_BRAM_C `AESL_BRAM_INST_C(
    .Clk_A    (bramC_Clk_A),
    .Rst_A    (bramC_Rst_A),
    .EN_A     (bramC_EN_A),
    .WEN_A    (bramC_WEN_A),
    .Addr_A   (bramC_Addr_A),
    .Din_A    (bramC_Din_A),
    .Dout_A   (bramC_Dout_A),
    .Clk_B    (bramC_Clk_B),
    .Rst_B    (bramC_Rst_B),
    .EN_B     (bramC_EN_B),
    .WEN_B    (bramC_WEN_B),
    .Addr_B   (bramC_Addr_B),
    .Din_B    (bramC_Din_B),
    .Dout_B   (bramC_Dout_B),
    .ready    (bramC_ready),
    .done        (bramC_done)
);

// Assignment between dut and bramC
assign bramC_Clk_A = C_CLK_A;
assign bramC_Rst_A = C_RST_A;
assign bramC_Addr_A = C_ADDR_A;
assign bramC_EN_A = C_EN_A;
assign bramC_WEN_A = C_WEN_A;
assign bramC_Din_A = C_DIN_A;
assign bramC_WEN_B = 0;
assign bramC_Din_B = 0;
assign bramC_ready= ready_initial | bramC_done;
assign bramC_done =    AESL_done_delay;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    start = 0;
    ce = 1;
    wait(AESL_reset === 0);
    @ (posedge AESL_clock);
    while (1) begin
        if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
        #0 start = 1;
        end
        @ (posedge AESL_clock);
        while (AESL_ready !== 1) begin
            @ (posedge AESL_clock);
        end
        if (AESL_done !== 1) begin
            #0 start = 0;
            while (AESL_done !== 1) begin
                @ (posedge AESL_clock);
            end
            @ (posedge AESL_clock);
        end
        #0 start = 0;
        @ (negedge AESL_clock);
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = (ready_initial | AESL_done_delay);
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready_wire = (ready_initial | AESL_done_delay);
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_C;

initial begin : dump_tvout_runtime_sign_C
    integer fp;
    dump_tvout_finish_C = 0;
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_C = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
