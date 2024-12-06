// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      prepareMessage
`define AUTOTB_DUT_INST AESL_inst_prepareMessage
`define AUTOTB_TOP      apatb_prepareMessage_top
`define AUTOTB_LAT_RESULT_FILE "prepareMessage.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "prepareMessage.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_prepareMessage_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_input_V AESL_automem_input_V
`define AESL_MEM_INST_input_V mem_inst_input_V
`define AESL_DEPTH_bitlength 1
`define AESL_MEM_M_0_V AESL_automem_M_0_V
`define AESL_MEM_INST_M_0_V mem_inst_M_0_V
`define AESL_MEM_M_1_V AESL_automem_M_1_V
`define AESL_MEM_INST_M_1_V mem_inst_M_1_V
`define AESL_MEM_M_2_V AESL_automem_M_2_V
`define AESL_MEM_INST_M_2_V mem_inst_M_2_V
`define AESL_MEM_M_3_V AESL_automem_M_3_V
`define AESL_MEM_INST_M_3_V mem_inst_M_3_V
`define AESL_MEM_M_4_V AESL_automem_M_4_V
`define AESL_MEM_INST_M_4_V mem_inst_M_4_V
`define AESL_MEM_M_5_V AESL_automem_M_5_V
`define AESL_MEM_INST_M_5_V mem_inst_M_5_V
`define AESL_MEM_M_6_V AESL_automem_M_6_V
`define AESL_MEM_INST_M_6_V mem_inst_M_6_V
`define AESL_MEM_M_7_V AESL_automem_M_7_V
`define AESL_MEM_INST_M_7_V mem_inst_M_7_V
`define AESL_MEM_M_8_V AESL_automem_M_8_V
`define AESL_MEM_INST_M_8_V mem_inst_M_8_V
`define AESL_MEM_M_9_V AESL_automem_M_9_V
`define AESL_MEM_INST_M_9_V mem_inst_M_9_V
`define AESL_MEM_M_10_V AESL_automem_M_10_V
`define AESL_MEM_INST_M_10_V mem_inst_M_10_V
`define AESL_MEM_M_11_V AESL_automem_M_11_V
`define AESL_MEM_INST_M_11_V mem_inst_M_11_V
`define AESL_MEM_M_12_V AESL_automem_M_12_V
`define AESL_MEM_INST_M_12_V mem_inst_M_12_V
`define AESL_MEM_M_13_V AESL_automem_M_13_V
`define AESL_MEM_INST_M_13_V mem_inst_M_13_V
`define AESL_MEM_M_14_V AESL_automem_M_14_V
`define AESL_MEM_INST_M_14_V mem_inst_M_14_V
`define AESL_MEM_M_15_V AESL_automem_M_15_V
`define AESL_MEM_INST_M_15_V mem_inst_M_15_V
`define AUTOTB_TVIN_input_V  "./c.prepareMessage.autotvin_input_V.dat"
`define AUTOTB_TVIN_bitlength  "./c.prepareMessage.autotvin_bitlength.dat"
`define AUTOTB_TVIN_M_0_V  "./c.prepareMessage.autotvin_M_0_V.dat"
`define AUTOTB_TVIN_M_1_V  "./c.prepareMessage.autotvin_M_1_V.dat"
`define AUTOTB_TVIN_M_2_V  "./c.prepareMessage.autotvin_M_2_V.dat"
`define AUTOTB_TVIN_M_3_V  "./c.prepareMessage.autotvin_M_3_V.dat"
`define AUTOTB_TVIN_M_4_V  "./c.prepareMessage.autotvin_M_4_V.dat"
`define AUTOTB_TVIN_M_5_V  "./c.prepareMessage.autotvin_M_5_V.dat"
`define AUTOTB_TVIN_M_6_V  "./c.prepareMessage.autotvin_M_6_V.dat"
`define AUTOTB_TVIN_M_7_V  "./c.prepareMessage.autotvin_M_7_V.dat"
`define AUTOTB_TVIN_M_8_V  "./c.prepareMessage.autotvin_M_8_V.dat"
`define AUTOTB_TVIN_M_9_V  "./c.prepareMessage.autotvin_M_9_V.dat"
`define AUTOTB_TVIN_M_10_V  "./c.prepareMessage.autotvin_M_10_V.dat"
`define AUTOTB_TVIN_M_11_V  "./c.prepareMessage.autotvin_M_11_V.dat"
`define AUTOTB_TVIN_M_12_V  "./c.prepareMessage.autotvin_M_12_V.dat"
`define AUTOTB_TVIN_M_13_V  "./c.prepareMessage.autotvin_M_13_V.dat"
`define AUTOTB_TVIN_M_14_V  "./c.prepareMessage.autotvin_M_14_V.dat"
`define AUTOTB_TVIN_M_15_V  "./c.prepareMessage.autotvin_M_15_V.dat"
`define AUTOTB_TVIN_input_V_out_wrapc  "./rtl.prepareMessage.autotvin_input_V.dat"
`define AUTOTB_TVIN_bitlength_out_wrapc  "./rtl.prepareMessage.autotvin_bitlength.dat"
`define AUTOTB_TVIN_M_0_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_0_V.dat"
`define AUTOTB_TVIN_M_1_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_1_V.dat"
`define AUTOTB_TVIN_M_2_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_2_V.dat"
`define AUTOTB_TVIN_M_3_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_3_V.dat"
`define AUTOTB_TVIN_M_4_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_4_V.dat"
`define AUTOTB_TVIN_M_5_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_5_V.dat"
`define AUTOTB_TVIN_M_6_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_6_V.dat"
`define AUTOTB_TVIN_M_7_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_7_V.dat"
`define AUTOTB_TVIN_M_8_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_8_V.dat"
`define AUTOTB_TVIN_M_9_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_9_V.dat"
`define AUTOTB_TVIN_M_10_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_10_V.dat"
`define AUTOTB_TVIN_M_11_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_11_V.dat"
`define AUTOTB_TVIN_M_12_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_12_V.dat"
`define AUTOTB_TVIN_M_13_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_13_V.dat"
`define AUTOTB_TVIN_M_14_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_14_V.dat"
`define AUTOTB_TVIN_M_15_V_out_wrapc  "./rtl.prepareMessage.autotvin_M_15_V.dat"
`define AUTOTB_TVOUT_M_0_V  "./c.prepareMessage.autotvout_M_0_V.dat"
`define AUTOTB_TVOUT_M_1_V  "./c.prepareMessage.autotvout_M_1_V.dat"
`define AUTOTB_TVOUT_M_2_V  "./c.prepareMessage.autotvout_M_2_V.dat"
`define AUTOTB_TVOUT_M_3_V  "./c.prepareMessage.autotvout_M_3_V.dat"
`define AUTOTB_TVOUT_M_4_V  "./c.prepareMessage.autotvout_M_4_V.dat"
`define AUTOTB_TVOUT_M_5_V  "./c.prepareMessage.autotvout_M_5_V.dat"
`define AUTOTB_TVOUT_M_6_V  "./c.prepareMessage.autotvout_M_6_V.dat"
`define AUTOTB_TVOUT_M_7_V  "./c.prepareMessage.autotvout_M_7_V.dat"
`define AUTOTB_TVOUT_M_8_V  "./c.prepareMessage.autotvout_M_8_V.dat"
`define AUTOTB_TVOUT_M_9_V  "./c.prepareMessage.autotvout_M_9_V.dat"
`define AUTOTB_TVOUT_M_10_V  "./c.prepareMessage.autotvout_M_10_V.dat"
`define AUTOTB_TVOUT_M_11_V  "./c.prepareMessage.autotvout_M_11_V.dat"
`define AUTOTB_TVOUT_M_12_V  "./c.prepareMessage.autotvout_M_12_V.dat"
`define AUTOTB_TVOUT_M_13_V  "./c.prepareMessage.autotvout_M_13_V.dat"
`define AUTOTB_TVOUT_M_14_V  "./c.prepareMessage.autotvout_M_14_V.dat"
`define AUTOTB_TVOUT_M_15_V  "./c.prepareMessage.autotvout_M_15_V.dat"
`define AUTOTB_TVOUT_M_0_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_0_V.dat"
`define AUTOTB_TVOUT_M_1_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_1_V.dat"
`define AUTOTB_TVOUT_M_2_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_2_V.dat"
`define AUTOTB_TVOUT_M_3_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_3_V.dat"
`define AUTOTB_TVOUT_M_4_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_4_V.dat"
`define AUTOTB_TVOUT_M_5_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_5_V.dat"
`define AUTOTB_TVOUT_M_6_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_6_V.dat"
`define AUTOTB_TVOUT_M_7_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_7_V.dat"
`define AUTOTB_TVOUT_M_8_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_8_V.dat"
`define AUTOTB_TVOUT_M_9_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_9_V.dat"
`define AUTOTB_TVOUT_M_10_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_10_V.dat"
`define AUTOTB_TVOUT_M_11_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_11_V.dat"
`define AUTOTB_TVOUT_M_12_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_12_V.dat"
`define AUTOTB_TVOUT_M_13_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_13_V.dat"
`define AUTOTB_TVOUT_M_14_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_14_V.dat"
`define AUTOTB_TVOUT_M_15_V_out_wrapc  "./impl_rtl.prepareMessage.autotvout_M_15_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_input_V = 20;
parameter LENGTH_bitlength = 1;
parameter LENGTH_M_0_V = 32;
parameter LENGTH_M_1_V = 32;
parameter LENGTH_M_2_V = 32;
parameter LENGTH_M_3_V = 32;
parameter LENGTH_M_4_V = 32;
parameter LENGTH_M_5_V = 32;
parameter LENGTH_M_6_V = 32;
parameter LENGTH_M_7_V = 32;
parameter LENGTH_M_8_V = 32;
parameter LENGTH_M_9_V = 32;
parameter LENGTH_M_10_V = 32;
parameter LENGTH_M_11_V = 32;
parameter LENGTH_M_12_V = 32;
parameter LENGTH_M_13_V = 32;
parameter LENGTH_M_14_V = 32;
parameter LENGTH_M_15_V = 32;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [151 : 0] token1;
    reg [151 : 0] token2;
    reg [151 : 0] golden;
    reg [151 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
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
wire [4 : 0] input_V_address0;
wire  input_V_ce0;
wire [31 : 0] input_V_q0;
wire [31 : 0] bitlength;
wire [4 : 0] M_0_V_address0;
wire  M_0_V_ce0;
wire  M_0_V_we0;
wire [31 : 0] M_0_V_d0;
wire [4 : 0] M_1_V_address0;
wire  M_1_V_ce0;
wire  M_1_V_we0;
wire [31 : 0] M_1_V_d0;
wire [4 : 0] M_2_V_address0;
wire  M_2_V_ce0;
wire  M_2_V_we0;
wire [31 : 0] M_2_V_d0;
wire [4 : 0] M_3_V_address0;
wire  M_3_V_ce0;
wire  M_3_V_we0;
wire [31 : 0] M_3_V_d0;
wire [4 : 0] M_4_V_address0;
wire  M_4_V_ce0;
wire  M_4_V_we0;
wire [31 : 0] M_4_V_d0;
wire [4 : 0] M_5_V_address0;
wire  M_5_V_ce0;
wire  M_5_V_we0;
wire [31 : 0] M_5_V_d0;
wire [4 : 0] M_6_V_address0;
wire  M_6_V_ce0;
wire  M_6_V_we0;
wire [31 : 0] M_6_V_d0;
wire [4 : 0] M_7_V_address0;
wire  M_7_V_ce0;
wire  M_7_V_we0;
wire [31 : 0] M_7_V_d0;
wire [4 : 0] M_8_V_address0;
wire  M_8_V_ce0;
wire  M_8_V_we0;
wire [31 : 0] M_8_V_d0;
wire [4 : 0] M_9_V_address0;
wire  M_9_V_ce0;
wire  M_9_V_we0;
wire [31 : 0] M_9_V_d0;
wire [4 : 0] M_10_V_address0;
wire  M_10_V_ce0;
wire  M_10_V_we0;
wire [31 : 0] M_10_V_d0;
wire [4 : 0] M_11_V_address0;
wire  M_11_V_ce0;
wire  M_11_V_we0;
wire [31 : 0] M_11_V_d0;
wire [4 : 0] M_12_V_address0;
wire  M_12_V_ce0;
wire  M_12_V_we0;
wire [31 : 0] M_12_V_d0;
wire [4 : 0] M_13_V_address0;
wire  M_13_V_ce0;
wire  M_13_V_we0;
wire [31 : 0] M_13_V_d0;
wire [4 : 0] M_14_V_address0;
wire  M_14_V_ce0;
wire  M_14_V_we0;
wire [31 : 0] M_14_V_d0;
wire [4 : 0] M_15_V_address0;
wire  M_15_V_ce0;
wire  M_15_V_we0;
wire [31 : 0] M_15_V_d0;
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
    .input_V_address0(input_V_address0),
    .input_V_ce0(input_V_ce0),
    .input_V_q0(input_V_q0),
    .bitlength(bitlength),
    .M_0_V_address0(M_0_V_address0),
    .M_0_V_ce0(M_0_V_ce0),
    .M_0_V_we0(M_0_V_we0),
    .M_0_V_d0(M_0_V_d0),
    .M_1_V_address0(M_1_V_address0),
    .M_1_V_ce0(M_1_V_ce0),
    .M_1_V_we0(M_1_V_we0),
    .M_1_V_d0(M_1_V_d0),
    .M_2_V_address0(M_2_V_address0),
    .M_2_V_ce0(M_2_V_ce0),
    .M_2_V_we0(M_2_V_we0),
    .M_2_V_d0(M_2_V_d0),
    .M_3_V_address0(M_3_V_address0),
    .M_3_V_ce0(M_3_V_ce0),
    .M_3_V_we0(M_3_V_we0),
    .M_3_V_d0(M_3_V_d0),
    .M_4_V_address0(M_4_V_address0),
    .M_4_V_ce0(M_4_V_ce0),
    .M_4_V_we0(M_4_V_we0),
    .M_4_V_d0(M_4_V_d0),
    .M_5_V_address0(M_5_V_address0),
    .M_5_V_ce0(M_5_V_ce0),
    .M_5_V_we0(M_5_V_we0),
    .M_5_V_d0(M_5_V_d0),
    .M_6_V_address0(M_6_V_address0),
    .M_6_V_ce0(M_6_V_ce0),
    .M_6_V_we0(M_6_V_we0),
    .M_6_V_d0(M_6_V_d0),
    .M_7_V_address0(M_7_V_address0),
    .M_7_V_ce0(M_7_V_ce0),
    .M_7_V_we0(M_7_V_we0),
    .M_7_V_d0(M_7_V_d0),
    .M_8_V_address0(M_8_V_address0),
    .M_8_V_ce0(M_8_V_ce0),
    .M_8_V_we0(M_8_V_we0),
    .M_8_V_d0(M_8_V_d0),
    .M_9_V_address0(M_9_V_address0),
    .M_9_V_ce0(M_9_V_ce0),
    .M_9_V_we0(M_9_V_we0),
    .M_9_V_d0(M_9_V_d0),
    .M_10_V_address0(M_10_V_address0),
    .M_10_V_ce0(M_10_V_ce0),
    .M_10_V_we0(M_10_V_we0),
    .M_10_V_d0(M_10_V_d0),
    .M_11_V_address0(M_11_V_address0),
    .M_11_V_ce0(M_11_V_ce0),
    .M_11_V_we0(M_11_V_we0),
    .M_11_V_d0(M_11_V_d0),
    .M_12_V_address0(M_12_V_address0),
    .M_12_V_ce0(M_12_V_ce0),
    .M_12_V_we0(M_12_V_we0),
    .M_12_V_d0(M_12_V_d0),
    .M_13_V_address0(M_13_V_address0),
    .M_13_V_ce0(M_13_V_ce0),
    .M_13_V_we0(M_13_V_we0),
    .M_13_V_d0(M_13_V_d0),
    .M_14_V_address0(M_14_V_address0),
    .M_14_V_ce0(M_14_V_ce0),
    .M_14_V_we0(M_14_V_we0),
    .M_14_V_d0(M_14_V_d0),
    .M_15_V_address0(M_15_V_address0),
    .M_15_V_ce0(M_15_V_ce0),
    .M_15_V_we0(M_15_V_we0),
    .M_15_V_d0(M_15_V_d0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
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
//------------------------arrayinput_V Instantiation--------------

// The input and output of arrayinput_V
wire    arrayinput_V_ce0, arrayinput_V_ce1;
wire    arrayinput_V_we0, arrayinput_V_we1;
wire    [4 : 0]    arrayinput_V_address0, arrayinput_V_address1;
wire    [31 : 0]    arrayinput_V_din0, arrayinput_V_din1;
wire    [31 : 0]    arrayinput_V_dout0, arrayinput_V_dout1;
wire    arrayinput_V_ready;
wire    arrayinput_V_done;

`AESL_MEM_input_V `AESL_MEM_INST_input_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayinput_V_ce0),
    .we0        (arrayinput_V_we0),
    .address0   (arrayinput_V_address0),
    .din0       (arrayinput_V_din0),
    .dout0      (arrayinput_V_dout0),
    .ce1        (arrayinput_V_ce1),
    .we1        (arrayinput_V_we1),
    .address1   (arrayinput_V_address1),
    .din1       (arrayinput_V_din1),
    .dout1      (arrayinput_V_dout1),
    .ready      (arrayinput_V_ready),
    .done    (arrayinput_V_done)
);

// Assignment between dut and arrayinput_V
assign arrayinput_V_address0 = input_V_address0;
assign arrayinput_V_ce0 = input_V_ce0;
assign input_V_q0 = arrayinput_V_dout0;
assign arrayinput_V_we0 = 0;
assign arrayinput_V_din0 = 0;
assign arrayinput_V_we1 = 0;
assign arrayinput_V_din1 = 0;
assign arrayinput_V_ready=    ready;
assign arrayinput_V_done = 0;


// The signal of port bitlength
reg [31: 0] AESL_REG_bitlength = 0;
assign bitlength = AESL_REG_bitlength;
initial begin : read_file_process_bitlength
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_bitlength,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_bitlength);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_bitlength);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


//------------------------arrayM_0_V Instantiation--------------

// The input and output of arrayM_0_V
wire    arrayM_0_V_ce0, arrayM_0_V_ce1;
wire    arrayM_0_V_we0, arrayM_0_V_we1;
wire    [4 : 0]    arrayM_0_V_address0, arrayM_0_V_address1;
wire    [31 : 0]    arrayM_0_V_din0, arrayM_0_V_din1;
wire    [31 : 0]    arrayM_0_V_dout0, arrayM_0_V_dout1;
wire    arrayM_0_V_ready;
wire    arrayM_0_V_done;

`AESL_MEM_M_0_V `AESL_MEM_INST_M_0_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_0_V_ce0),
    .we0        (arrayM_0_V_we0),
    .address0   (arrayM_0_V_address0),
    .din0       (arrayM_0_V_din0),
    .dout0      (arrayM_0_V_dout0),
    .ce1        (arrayM_0_V_ce1),
    .we1        (arrayM_0_V_we1),
    .address1   (arrayM_0_V_address1),
    .din1       (arrayM_0_V_din1),
    .dout1      (arrayM_0_V_dout1),
    .ready      (arrayM_0_V_ready),
    .done    (arrayM_0_V_done)
);

// Assignment between dut and arrayM_0_V
assign arrayM_0_V_address0 = M_0_V_address0;
assign arrayM_0_V_ce0 = M_0_V_ce0;
assign arrayM_0_V_we0 = M_0_V_we0;
assign arrayM_0_V_din0 = M_0_V_d0;
assign arrayM_0_V_we1 = 0;
assign arrayM_0_V_din1 = 0;
assign arrayM_0_V_ready= ready_initial | arrayM_0_V_done;
assign arrayM_0_V_done =    AESL_done_delay;


//------------------------arrayM_1_V Instantiation--------------

// The input and output of arrayM_1_V
wire    arrayM_1_V_ce0, arrayM_1_V_ce1;
wire    arrayM_1_V_we0, arrayM_1_V_we1;
wire    [4 : 0]    arrayM_1_V_address0, arrayM_1_V_address1;
wire    [31 : 0]    arrayM_1_V_din0, arrayM_1_V_din1;
wire    [31 : 0]    arrayM_1_V_dout0, arrayM_1_V_dout1;
wire    arrayM_1_V_ready;
wire    arrayM_1_V_done;

`AESL_MEM_M_1_V `AESL_MEM_INST_M_1_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_1_V_ce0),
    .we0        (arrayM_1_V_we0),
    .address0   (arrayM_1_V_address0),
    .din0       (arrayM_1_V_din0),
    .dout0      (arrayM_1_V_dout0),
    .ce1        (arrayM_1_V_ce1),
    .we1        (arrayM_1_V_we1),
    .address1   (arrayM_1_V_address1),
    .din1       (arrayM_1_V_din1),
    .dout1      (arrayM_1_V_dout1),
    .ready      (arrayM_1_V_ready),
    .done    (arrayM_1_V_done)
);

// Assignment between dut and arrayM_1_V
assign arrayM_1_V_address0 = M_1_V_address0;
assign arrayM_1_V_ce0 = M_1_V_ce0;
assign arrayM_1_V_we0 = M_1_V_we0;
assign arrayM_1_V_din0 = M_1_V_d0;
assign arrayM_1_V_we1 = 0;
assign arrayM_1_V_din1 = 0;
assign arrayM_1_V_ready= ready_initial | arrayM_1_V_done;
assign arrayM_1_V_done =    AESL_done_delay;


//------------------------arrayM_2_V Instantiation--------------

// The input and output of arrayM_2_V
wire    arrayM_2_V_ce0, arrayM_2_V_ce1;
wire    arrayM_2_V_we0, arrayM_2_V_we1;
wire    [4 : 0]    arrayM_2_V_address0, arrayM_2_V_address1;
wire    [31 : 0]    arrayM_2_V_din0, arrayM_2_V_din1;
wire    [31 : 0]    arrayM_2_V_dout0, arrayM_2_V_dout1;
wire    arrayM_2_V_ready;
wire    arrayM_2_V_done;

`AESL_MEM_M_2_V `AESL_MEM_INST_M_2_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_2_V_ce0),
    .we0        (arrayM_2_V_we0),
    .address0   (arrayM_2_V_address0),
    .din0       (arrayM_2_V_din0),
    .dout0      (arrayM_2_V_dout0),
    .ce1        (arrayM_2_V_ce1),
    .we1        (arrayM_2_V_we1),
    .address1   (arrayM_2_V_address1),
    .din1       (arrayM_2_V_din1),
    .dout1      (arrayM_2_V_dout1),
    .ready      (arrayM_2_V_ready),
    .done    (arrayM_2_V_done)
);

// Assignment between dut and arrayM_2_V
assign arrayM_2_V_address0 = M_2_V_address0;
assign arrayM_2_V_ce0 = M_2_V_ce0;
assign arrayM_2_V_we0 = M_2_V_we0;
assign arrayM_2_V_din0 = M_2_V_d0;
assign arrayM_2_V_we1 = 0;
assign arrayM_2_V_din1 = 0;
assign arrayM_2_V_ready= ready_initial | arrayM_2_V_done;
assign arrayM_2_V_done =    AESL_done_delay;


//------------------------arrayM_3_V Instantiation--------------

// The input and output of arrayM_3_V
wire    arrayM_3_V_ce0, arrayM_3_V_ce1;
wire    arrayM_3_V_we0, arrayM_3_V_we1;
wire    [4 : 0]    arrayM_3_V_address0, arrayM_3_V_address1;
wire    [31 : 0]    arrayM_3_V_din0, arrayM_3_V_din1;
wire    [31 : 0]    arrayM_3_V_dout0, arrayM_3_V_dout1;
wire    arrayM_3_V_ready;
wire    arrayM_3_V_done;

`AESL_MEM_M_3_V `AESL_MEM_INST_M_3_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_3_V_ce0),
    .we0        (arrayM_3_V_we0),
    .address0   (arrayM_3_V_address0),
    .din0       (arrayM_3_V_din0),
    .dout0      (arrayM_3_V_dout0),
    .ce1        (arrayM_3_V_ce1),
    .we1        (arrayM_3_V_we1),
    .address1   (arrayM_3_V_address1),
    .din1       (arrayM_3_V_din1),
    .dout1      (arrayM_3_V_dout1),
    .ready      (arrayM_3_V_ready),
    .done    (arrayM_3_V_done)
);

// Assignment between dut and arrayM_3_V
assign arrayM_3_V_address0 = M_3_V_address0;
assign arrayM_3_V_ce0 = M_3_V_ce0;
assign arrayM_3_V_we0 = M_3_V_we0;
assign arrayM_3_V_din0 = M_3_V_d0;
assign arrayM_3_V_we1 = 0;
assign arrayM_3_V_din1 = 0;
assign arrayM_3_V_ready= ready_initial | arrayM_3_V_done;
assign arrayM_3_V_done =    AESL_done_delay;


//------------------------arrayM_4_V Instantiation--------------

// The input and output of arrayM_4_V
wire    arrayM_4_V_ce0, arrayM_4_V_ce1;
wire    arrayM_4_V_we0, arrayM_4_V_we1;
wire    [4 : 0]    arrayM_4_V_address0, arrayM_4_V_address1;
wire    [31 : 0]    arrayM_4_V_din0, arrayM_4_V_din1;
wire    [31 : 0]    arrayM_4_V_dout0, arrayM_4_V_dout1;
wire    arrayM_4_V_ready;
wire    arrayM_4_V_done;

`AESL_MEM_M_4_V `AESL_MEM_INST_M_4_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_4_V_ce0),
    .we0        (arrayM_4_V_we0),
    .address0   (arrayM_4_V_address0),
    .din0       (arrayM_4_V_din0),
    .dout0      (arrayM_4_V_dout0),
    .ce1        (arrayM_4_V_ce1),
    .we1        (arrayM_4_V_we1),
    .address1   (arrayM_4_V_address1),
    .din1       (arrayM_4_V_din1),
    .dout1      (arrayM_4_V_dout1),
    .ready      (arrayM_4_V_ready),
    .done    (arrayM_4_V_done)
);

// Assignment between dut and arrayM_4_V
assign arrayM_4_V_address0 = M_4_V_address0;
assign arrayM_4_V_ce0 = M_4_V_ce0;
assign arrayM_4_V_we0 = M_4_V_we0;
assign arrayM_4_V_din0 = M_4_V_d0;
assign arrayM_4_V_we1 = 0;
assign arrayM_4_V_din1 = 0;
assign arrayM_4_V_ready= ready_initial | arrayM_4_V_done;
assign arrayM_4_V_done =    AESL_done_delay;


//------------------------arrayM_5_V Instantiation--------------

// The input and output of arrayM_5_V
wire    arrayM_5_V_ce0, arrayM_5_V_ce1;
wire    arrayM_5_V_we0, arrayM_5_V_we1;
wire    [4 : 0]    arrayM_5_V_address0, arrayM_5_V_address1;
wire    [31 : 0]    arrayM_5_V_din0, arrayM_5_V_din1;
wire    [31 : 0]    arrayM_5_V_dout0, arrayM_5_V_dout1;
wire    arrayM_5_V_ready;
wire    arrayM_5_V_done;

`AESL_MEM_M_5_V `AESL_MEM_INST_M_5_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_5_V_ce0),
    .we0        (arrayM_5_V_we0),
    .address0   (arrayM_5_V_address0),
    .din0       (arrayM_5_V_din0),
    .dout0      (arrayM_5_V_dout0),
    .ce1        (arrayM_5_V_ce1),
    .we1        (arrayM_5_V_we1),
    .address1   (arrayM_5_V_address1),
    .din1       (arrayM_5_V_din1),
    .dout1      (arrayM_5_V_dout1),
    .ready      (arrayM_5_V_ready),
    .done    (arrayM_5_V_done)
);

// Assignment between dut and arrayM_5_V
assign arrayM_5_V_address0 = M_5_V_address0;
assign arrayM_5_V_ce0 = M_5_V_ce0;
assign arrayM_5_V_we0 = M_5_V_we0;
assign arrayM_5_V_din0 = M_5_V_d0;
assign arrayM_5_V_we1 = 0;
assign arrayM_5_V_din1 = 0;
assign arrayM_5_V_ready= ready_initial | arrayM_5_V_done;
assign arrayM_5_V_done =    AESL_done_delay;


//------------------------arrayM_6_V Instantiation--------------

// The input and output of arrayM_6_V
wire    arrayM_6_V_ce0, arrayM_6_V_ce1;
wire    arrayM_6_V_we0, arrayM_6_V_we1;
wire    [4 : 0]    arrayM_6_V_address0, arrayM_6_V_address1;
wire    [31 : 0]    arrayM_6_V_din0, arrayM_6_V_din1;
wire    [31 : 0]    arrayM_6_V_dout0, arrayM_6_V_dout1;
wire    arrayM_6_V_ready;
wire    arrayM_6_V_done;

`AESL_MEM_M_6_V `AESL_MEM_INST_M_6_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_6_V_ce0),
    .we0        (arrayM_6_V_we0),
    .address0   (arrayM_6_V_address0),
    .din0       (arrayM_6_V_din0),
    .dout0      (arrayM_6_V_dout0),
    .ce1        (arrayM_6_V_ce1),
    .we1        (arrayM_6_V_we1),
    .address1   (arrayM_6_V_address1),
    .din1       (arrayM_6_V_din1),
    .dout1      (arrayM_6_V_dout1),
    .ready      (arrayM_6_V_ready),
    .done    (arrayM_6_V_done)
);

// Assignment between dut and arrayM_6_V
assign arrayM_6_V_address0 = M_6_V_address0;
assign arrayM_6_V_ce0 = M_6_V_ce0;
assign arrayM_6_V_we0 = M_6_V_we0;
assign arrayM_6_V_din0 = M_6_V_d0;
assign arrayM_6_V_we1 = 0;
assign arrayM_6_V_din1 = 0;
assign arrayM_6_V_ready= ready_initial | arrayM_6_V_done;
assign arrayM_6_V_done =    AESL_done_delay;


//------------------------arrayM_7_V Instantiation--------------

// The input and output of arrayM_7_V
wire    arrayM_7_V_ce0, arrayM_7_V_ce1;
wire    arrayM_7_V_we0, arrayM_7_V_we1;
wire    [4 : 0]    arrayM_7_V_address0, arrayM_7_V_address1;
wire    [31 : 0]    arrayM_7_V_din0, arrayM_7_V_din1;
wire    [31 : 0]    arrayM_7_V_dout0, arrayM_7_V_dout1;
wire    arrayM_7_V_ready;
wire    arrayM_7_V_done;

`AESL_MEM_M_7_V `AESL_MEM_INST_M_7_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_7_V_ce0),
    .we0        (arrayM_7_V_we0),
    .address0   (arrayM_7_V_address0),
    .din0       (arrayM_7_V_din0),
    .dout0      (arrayM_7_V_dout0),
    .ce1        (arrayM_7_V_ce1),
    .we1        (arrayM_7_V_we1),
    .address1   (arrayM_7_V_address1),
    .din1       (arrayM_7_V_din1),
    .dout1      (arrayM_7_V_dout1),
    .ready      (arrayM_7_V_ready),
    .done    (arrayM_7_V_done)
);

// Assignment between dut and arrayM_7_V
assign arrayM_7_V_address0 = M_7_V_address0;
assign arrayM_7_V_ce0 = M_7_V_ce0;
assign arrayM_7_V_we0 = M_7_V_we0;
assign arrayM_7_V_din0 = M_7_V_d0;
assign arrayM_7_V_we1 = 0;
assign arrayM_7_V_din1 = 0;
assign arrayM_7_V_ready= ready_initial | arrayM_7_V_done;
assign arrayM_7_V_done =    AESL_done_delay;


//------------------------arrayM_8_V Instantiation--------------

// The input and output of arrayM_8_V
wire    arrayM_8_V_ce0, arrayM_8_V_ce1;
wire    arrayM_8_V_we0, arrayM_8_V_we1;
wire    [4 : 0]    arrayM_8_V_address0, arrayM_8_V_address1;
wire    [31 : 0]    arrayM_8_V_din0, arrayM_8_V_din1;
wire    [31 : 0]    arrayM_8_V_dout0, arrayM_8_V_dout1;
wire    arrayM_8_V_ready;
wire    arrayM_8_V_done;

`AESL_MEM_M_8_V `AESL_MEM_INST_M_8_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_8_V_ce0),
    .we0        (arrayM_8_V_we0),
    .address0   (arrayM_8_V_address0),
    .din0       (arrayM_8_V_din0),
    .dout0      (arrayM_8_V_dout0),
    .ce1        (arrayM_8_V_ce1),
    .we1        (arrayM_8_V_we1),
    .address1   (arrayM_8_V_address1),
    .din1       (arrayM_8_V_din1),
    .dout1      (arrayM_8_V_dout1),
    .ready      (arrayM_8_V_ready),
    .done    (arrayM_8_V_done)
);

// Assignment between dut and arrayM_8_V
assign arrayM_8_V_address0 = M_8_V_address0;
assign arrayM_8_V_ce0 = M_8_V_ce0;
assign arrayM_8_V_we0 = M_8_V_we0;
assign arrayM_8_V_din0 = M_8_V_d0;
assign arrayM_8_V_we1 = 0;
assign arrayM_8_V_din1 = 0;
assign arrayM_8_V_ready= ready_initial | arrayM_8_V_done;
assign arrayM_8_V_done =    AESL_done_delay;


//------------------------arrayM_9_V Instantiation--------------

// The input and output of arrayM_9_V
wire    arrayM_9_V_ce0, arrayM_9_V_ce1;
wire    arrayM_9_V_we0, arrayM_9_V_we1;
wire    [4 : 0]    arrayM_9_V_address0, arrayM_9_V_address1;
wire    [31 : 0]    arrayM_9_V_din0, arrayM_9_V_din1;
wire    [31 : 0]    arrayM_9_V_dout0, arrayM_9_V_dout1;
wire    arrayM_9_V_ready;
wire    arrayM_9_V_done;

`AESL_MEM_M_9_V `AESL_MEM_INST_M_9_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_9_V_ce0),
    .we0        (arrayM_9_V_we0),
    .address0   (arrayM_9_V_address0),
    .din0       (arrayM_9_V_din0),
    .dout0      (arrayM_9_V_dout0),
    .ce1        (arrayM_9_V_ce1),
    .we1        (arrayM_9_V_we1),
    .address1   (arrayM_9_V_address1),
    .din1       (arrayM_9_V_din1),
    .dout1      (arrayM_9_V_dout1),
    .ready      (arrayM_9_V_ready),
    .done    (arrayM_9_V_done)
);

// Assignment between dut and arrayM_9_V
assign arrayM_9_V_address0 = M_9_V_address0;
assign arrayM_9_V_ce0 = M_9_V_ce0;
assign arrayM_9_V_we0 = M_9_V_we0;
assign arrayM_9_V_din0 = M_9_V_d0;
assign arrayM_9_V_we1 = 0;
assign arrayM_9_V_din1 = 0;
assign arrayM_9_V_ready= ready_initial | arrayM_9_V_done;
assign arrayM_9_V_done =    AESL_done_delay;


//------------------------arrayM_10_V Instantiation--------------

// The input and output of arrayM_10_V
wire    arrayM_10_V_ce0, arrayM_10_V_ce1;
wire    arrayM_10_V_we0, arrayM_10_V_we1;
wire    [4 : 0]    arrayM_10_V_address0, arrayM_10_V_address1;
wire    [31 : 0]    arrayM_10_V_din0, arrayM_10_V_din1;
wire    [31 : 0]    arrayM_10_V_dout0, arrayM_10_V_dout1;
wire    arrayM_10_V_ready;
wire    arrayM_10_V_done;

`AESL_MEM_M_10_V `AESL_MEM_INST_M_10_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_10_V_ce0),
    .we0        (arrayM_10_V_we0),
    .address0   (arrayM_10_V_address0),
    .din0       (arrayM_10_V_din0),
    .dout0      (arrayM_10_V_dout0),
    .ce1        (arrayM_10_V_ce1),
    .we1        (arrayM_10_V_we1),
    .address1   (arrayM_10_V_address1),
    .din1       (arrayM_10_V_din1),
    .dout1      (arrayM_10_V_dout1),
    .ready      (arrayM_10_V_ready),
    .done    (arrayM_10_V_done)
);

// Assignment between dut and arrayM_10_V
assign arrayM_10_V_address0 = M_10_V_address0;
assign arrayM_10_V_ce0 = M_10_V_ce0;
assign arrayM_10_V_we0 = M_10_V_we0;
assign arrayM_10_V_din0 = M_10_V_d0;
assign arrayM_10_V_we1 = 0;
assign arrayM_10_V_din1 = 0;
assign arrayM_10_V_ready= ready_initial | arrayM_10_V_done;
assign arrayM_10_V_done =    AESL_done_delay;


//------------------------arrayM_11_V Instantiation--------------

// The input and output of arrayM_11_V
wire    arrayM_11_V_ce0, arrayM_11_V_ce1;
wire    arrayM_11_V_we0, arrayM_11_V_we1;
wire    [4 : 0]    arrayM_11_V_address0, arrayM_11_V_address1;
wire    [31 : 0]    arrayM_11_V_din0, arrayM_11_V_din1;
wire    [31 : 0]    arrayM_11_V_dout0, arrayM_11_V_dout1;
wire    arrayM_11_V_ready;
wire    arrayM_11_V_done;

`AESL_MEM_M_11_V `AESL_MEM_INST_M_11_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_11_V_ce0),
    .we0        (arrayM_11_V_we0),
    .address0   (arrayM_11_V_address0),
    .din0       (arrayM_11_V_din0),
    .dout0      (arrayM_11_V_dout0),
    .ce1        (arrayM_11_V_ce1),
    .we1        (arrayM_11_V_we1),
    .address1   (arrayM_11_V_address1),
    .din1       (arrayM_11_V_din1),
    .dout1      (arrayM_11_V_dout1),
    .ready      (arrayM_11_V_ready),
    .done    (arrayM_11_V_done)
);

// Assignment between dut and arrayM_11_V
assign arrayM_11_V_address0 = M_11_V_address0;
assign arrayM_11_V_ce0 = M_11_V_ce0;
assign arrayM_11_V_we0 = M_11_V_we0;
assign arrayM_11_V_din0 = M_11_V_d0;
assign arrayM_11_V_we1 = 0;
assign arrayM_11_V_din1 = 0;
assign arrayM_11_V_ready= ready_initial | arrayM_11_V_done;
assign arrayM_11_V_done =    AESL_done_delay;


//------------------------arrayM_12_V Instantiation--------------

// The input and output of arrayM_12_V
wire    arrayM_12_V_ce0, arrayM_12_V_ce1;
wire    arrayM_12_V_we0, arrayM_12_V_we1;
wire    [4 : 0]    arrayM_12_V_address0, arrayM_12_V_address1;
wire    [31 : 0]    arrayM_12_V_din0, arrayM_12_V_din1;
wire    [31 : 0]    arrayM_12_V_dout0, arrayM_12_V_dout1;
wire    arrayM_12_V_ready;
wire    arrayM_12_V_done;

`AESL_MEM_M_12_V `AESL_MEM_INST_M_12_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_12_V_ce0),
    .we0        (arrayM_12_V_we0),
    .address0   (arrayM_12_V_address0),
    .din0       (arrayM_12_V_din0),
    .dout0      (arrayM_12_V_dout0),
    .ce1        (arrayM_12_V_ce1),
    .we1        (arrayM_12_V_we1),
    .address1   (arrayM_12_V_address1),
    .din1       (arrayM_12_V_din1),
    .dout1      (arrayM_12_V_dout1),
    .ready      (arrayM_12_V_ready),
    .done    (arrayM_12_V_done)
);

// Assignment between dut and arrayM_12_V
assign arrayM_12_V_address0 = M_12_V_address0;
assign arrayM_12_V_ce0 = M_12_V_ce0;
assign arrayM_12_V_we0 = M_12_V_we0;
assign arrayM_12_V_din0 = M_12_V_d0;
assign arrayM_12_V_we1 = 0;
assign arrayM_12_V_din1 = 0;
assign arrayM_12_V_ready= ready_initial | arrayM_12_V_done;
assign arrayM_12_V_done =    AESL_done_delay;


//------------------------arrayM_13_V Instantiation--------------

// The input and output of arrayM_13_V
wire    arrayM_13_V_ce0, arrayM_13_V_ce1;
wire    arrayM_13_V_we0, arrayM_13_V_we1;
wire    [4 : 0]    arrayM_13_V_address0, arrayM_13_V_address1;
wire    [31 : 0]    arrayM_13_V_din0, arrayM_13_V_din1;
wire    [31 : 0]    arrayM_13_V_dout0, arrayM_13_V_dout1;
wire    arrayM_13_V_ready;
wire    arrayM_13_V_done;

`AESL_MEM_M_13_V `AESL_MEM_INST_M_13_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_13_V_ce0),
    .we0        (arrayM_13_V_we0),
    .address0   (arrayM_13_V_address0),
    .din0       (arrayM_13_V_din0),
    .dout0      (arrayM_13_V_dout0),
    .ce1        (arrayM_13_V_ce1),
    .we1        (arrayM_13_V_we1),
    .address1   (arrayM_13_V_address1),
    .din1       (arrayM_13_V_din1),
    .dout1      (arrayM_13_V_dout1),
    .ready      (arrayM_13_V_ready),
    .done    (arrayM_13_V_done)
);

// Assignment between dut and arrayM_13_V
assign arrayM_13_V_address0 = M_13_V_address0;
assign arrayM_13_V_ce0 = M_13_V_ce0;
assign arrayM_13_V_we0 = M_13_V_we0;
assign arrayM_13_V_din0 = M_13_V_d0;
assign arrayM_13_V_we1 = 0;
assign arrayM_13_V_din1 = 0;
assign arrayM_13_V_ready= ready_initial | arrayM_13_V_done;
assign arrayM_13_V_done =    AESL_done_delay;


//------------------------arrayM_14_V Instantiation--------------

// The input and output of arrayM_14_V
wire    arrayM_14_V_ce0, arrayM_14_V_ce1;
wire    arrayM_14_V_we0, arrayM_14_V_we1;
wire    [4 : 0]    arrayM_14_V_address0, arrayM_14_V_address1;
wire    [31 : 0]    arrayM_14_V_din0, arrayM_14_V_din1;
wire    [31 : 0]    arrayM_14_V_dout0, arrayM_14_V_dout1;
wire    arrayM_14_V_ready;
wire    arrayM_14_V_done;

`AESL_MEM_M_14_V `AESL_MEM_INST_M_14_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_14_V_ce0),
    .we0        (arrayM_14_V_we0),
    .address0   (arrayM_14_V_address0),
    .din0       (arrayM_14_V_din0),
    .dout0      (arrayM_14_V_dout0),
    .ce1        (arrayM_14_V_ce1),
    .we1        (arrayM_14_V_we1),
    .address1   (arrayM_14_V_address1),
    .din1       (arrayM_14_V_din1),
    .dout1      (arrayM_14_V_dout1),
    .ready      (arrayM_14_V_ready),
    .done    (arrayM_14_V_done)
);

// Assignment between dut and arrayM_14_V
assign arrayM_14_V_address0 = M_14_V_address0;
assign arrayM_14_V_ce0 = M_14_V_ce0;
assign arrayM_14_V_we0 = M_14_V_we0;
assign arrayM_14_V_din0 = M_14_V_d0;
assign arrayM_14_V_we1 = 0;
assign arrayM_14_V_din1 = 0;
assign arrayM_14_V_ready= ready_initial | arrayM_14_V_done;
assign arrayM_14_V_done =    AESL_done_delay;


//------------------------arrayM_15_V Instantiation--------------

// The input and output of arrayM_15_V
wire    arrayM_15_V_ce0, arrayM_15_V_ce1;
wire    arrayM_15_V_we0, arrayM_15_V_we1;
wire    [4 : 0]    arrayM_15_V_address0, arrayM_15_V_address1;
wire    [31 : 0]    arrayM_15_V_din0, arrayM_15_V_din1;
wire    [31 : 0]    arrayM_15_V_dout0, arrayM_15_V_dout1;
wire    arrayM_15_V_ready;
wire    arrayM_15_V_done;

`AESL_MEM_M_15_V `AESL_MEM_INST_M_15_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayM_15_V_ce0),
    .we0        (arrayM_15_V_we0),
    .address0   (arrayM_15_V_address0),
    .din0       (arrayM_15_V_din0),
    .dout0      (arrayM_15_V_dout0),
    .ce1        (arrayM_15_V_ce1),
    .we1        (arrayM_15_V_we1),
    .address1   (arrayM_15_V_address1),
    .din1       (arrayM_15_V_din1),
    .dout1      (arrayM_15_V_dout1),
    .ready      (arrayM_15_V_ready),
    .done    (arrayM_15_V_done)
);

// Assignment between dut and arrayM_15_V
assign arrayM_15_V_address0 = M_15_V_address0;
assign arrayM_15_V_ce0 = M_15_V_ce0;
assign arrayM_15_V_we0 = M_15_V_we0;
assign arrayM_15_V_din0 = M_15_V_d0;
assign arrayM_15_V_we1 = 0;
assign arrayM_15_V_din1 = 0;
assign arrayM_15_V_ready= ready_initial | arrayM_15_V_done;
assign arrayM_15_V_done =    AESL_done_delay;


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
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_0_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_0_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_0_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_0_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_0_V.dat with impl_rtl.prepareMessage.autotvout_M_0_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_1_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_1_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_1_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_1_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_1_V.dat with impl_rtl.prepareMessage.autotvout_M_1_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_2_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_2_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_2_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_2_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_2_V.dat with impl_rtl.prepareMessage.autotvout_M_2_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_3_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_3_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_3_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_3_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_3_V.dat with impl_rtl.prepareMessage.autotvout_M_3_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_4_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_4_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_4_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_4_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_4_V.dat with impl_rtl.prepareMessage.autotvout_M_4_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_5_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_5_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_5_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_5_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_5_V.dat with impl_rtl.prepareMessage.autotvout_M_5_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_6_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_6_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_6_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_6_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_6_V.dat with impl_rtl.prepareMessage.autotvout_M_6_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_7_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_7_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_7_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_7_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_7_V.dat with impl_rtl.prepareMessage.autotvout_M_7_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_8_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_8_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_8_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_8_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_8_V.dat with impl_rtl.prepareMessage.autotvout_M_8_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_9_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_9_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_9_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_9_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_9_V.dat with impl_rtl.prepareMessage.autotvout_M_9_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_10_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_10_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_10_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_10_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_10_V.dat with impl_rtl.prepareMessage.autotvout_M_10_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_11_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_11_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_11_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_11_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_11_V.dat with impl_rtl.prepareMessage.autotvout_M_11_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_12_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_12_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_12_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_12_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_12_V.dat with impl_rtl.prepareMessage.autotvout_M_12_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_13_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_13_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_13_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_13_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_13_V.dat with impl_rtl.prepareMessage.autotvout_M_13_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_14_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_14_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_14_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_14_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_14_V.dat with impl_rtl.prepareMessage.autotvout_M_14_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.prepareMessage.autotvout_M_15_V.dat", "r");
    fp2 = $fopen("./impl_rtl.prepareMessage.autotvout_M_15_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.prepareMessage.autotvout_M_15_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.prepareMessage.autotvout_M_15_V.dat\"!");
    else begin
        $display("Comparing rtl.prepareMessage.autotvout_M_15_V.dat with impl_rtl.prepareMessage.autotvout_M_15_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_input_V;
reg [31:0] size_input_V;
reg [31:0] size_input_V_backup;
reg end_bitlength;
reg [31:0] size_bitlength;
reg [31:0] size_bitlength_backup;
reg end_M_0_V;
reg [31:0] size_M_0_V;
reg [31:0] size_M_0_V_backup;
reg end_M_1_V;
reg [31:0] size_M_1_V;
reg [31:0] size_M_1_V_backup;
reg end_M_2_V;
reg [31:0] size_M_2_V;
reg [31:0] size_M_2_V_backup;
reg end_M_3_V;
reg [31:0] size_M_3_V;
reg [31:0] size_M_3_V_backup;
reg end_M_4_V;
reg [31:0] size_M_4_V;
reg [31:0] size_M_4_V_backup;
reg end_M_5_V;
reg [31:0] size_M_5_V;
reg [31:0] size_M_5_V_backup;
reg end_M_6_V;
reg [31:0] size_M_6_V;
reg [31:0] size_M_6_V_backup;
reg end_M_7_V;
reg [31:0] size_M_7_V;
reg [31:0] size_M_7_V_backup;
reg end_M_8_V;
reg [31:0] size_M_8_V;
reg [31:0] size_M_8_V_backup;
reg end_M_9_V;
reg [31:0] size_M_9_V;
reg [31:0] size_M_9_V_backup;
reg end_M_10_V;
reg [31:0] size_M_10_V;
reg [31:0] size_M_10_V_backup;
reg end_M_11_V;
reg [31:0] size_M_11_V;
reg [31:0] size_M_11_V_backup;
reg end_M_12_V;
reg [31:0] size_M_12_V;
reg [31:0] size_M_12_V_backup;
reg end_M_13_V;
reg [31:0] size_M_13_V;
reg [31:0] size_M_13_V_backup;
reg end_M_14_V;
reg [31:0] size_M_14_V;
reg [31:0] size_M_14_V_backup;
reg end_M_15_V;
reg [31:0] size_M_15_V;
reg [31:0] size_M_15_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
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

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
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

reg dump_tvout_finish_M_0_V;

initial begin : dump_tvout_runtime_sign_M_0_V
    integer fp;
    dump_tvout_finish_M_0_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_0_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_0_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_0_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_0_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_0_V = 1;
end


reg dump_tvout_finish_M_1_V;

initial begin : dump_tvout_runtime_sign_M_1_V
    integer fp;
    dump_tvout_finish_M_1_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_1_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_1_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_1_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_1_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_1_V = 1;
end


reg dump_tvout_finish_M_2_V;

initial begin : dump_tvout_runtime_sign_M_2_V
    integer fp;
    dump_tvout_finish_M_2_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_2_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_2_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_2_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_2_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_2_V = 1;
end


reg dump_tvout_finish_M_3_V;

initial begin : dump_tvout_runtime_sign_M_3_V
    integer fp;
    dump_tvout_finish_M_3_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_3_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_3_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_3_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_3_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_3_V = 1;
end


reg dump_tvout_finish_M_4_V;

initial begin : dump_tvout_runtime_sign_M_4_V
    integer fp;
    dump_tvout_finish_M_4_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_4_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_4_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_4_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_4_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_4_V = 1;
end


reg dump_tvout_finish_M_5_V;

initial begin : dump_tvout_runtime_sign_M_5_V
    integer fp;
    dump_tvout_finish_M_5_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_5_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_5_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_5_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_5_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_5_V = 1;
end


reg dump_tvout_finish_M_6_V;

initial begin : dump_tvout_runtime_sign_M_6_V
    integer fp;
    dump_tvout_finish_M_6_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_6_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_6_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_6_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_6_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_6_V = 1;
end


reg dump_tvout_finish_M_7_V;

initial begin : dump_tvout_runtime_sign_M_7_V
    integer fp;
    dump_tvout_finish_M_7_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_7_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_7_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_7_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_7_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_7_V = 1;
end


reg dump_tvout_finish_M_8_V;

initial begin : dump_tvout_runtime_sign_M_8_V
    integer fp;
    dump_tvout_finish_M_8_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_8_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_8_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_8_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_8_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_8_V = 1;
end


reg dump_tvout_finish_M_9_V;

initial begin : dump_tvout_runtime_sign_M_9_V
    integer fp;
    dump_tvout_finish_M_9_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_9_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_9_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_9_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_9_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_9_V = 1;
end


reg dump_tvout_finish_M_10_V;

initial begin : dump_tvout_runtime_sign_M_10_V
    integer fp;
    dump_tvout_finish_M_10_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_10_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_10_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_10_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_10_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_10_V = 1;
end


reg dump_tvout_finish_M_11_V;

initial begin : dump_tvout_runtime_sign_M_11_V
    integer fp;
    dump_tvout_finish_M_11_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_11_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_11_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_11_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_11_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_11_V = 1;
end


reg dump_tvout_finish_M_12_V;

initial begin : dump_tvout_runtime_sign_M_12_V
    integer fp;
    dump_tvout_finish_M_12_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_12_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_12_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_12_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_12_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_12_V = 1;
end


reg dump_tvout_finish_M_13_V;

initial begin : dump_tvout_runtime_sign_M_13_V
    integer fp;
    dump_tvout_finish_M_13_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_13_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_13_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_13_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_13_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_13_V = 1;
end


reg dump_tvout_finish_M_14_V;

initial begin : dump_tvout_runtime_sign_M_14_V
    integer fp;
    dump_tvout_finish_M_14_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_14_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_14_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_14_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_14_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_14_V = 1;
end


reg dump_tvout_finish_M_15_V;

initial begin : dump_tvout_runtime_sign_M_15_V
    integer fp;
    dump_tvout_finish_M_15_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_M_15_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_15_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_M_15_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_M_15_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_M_15_V = 1;
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
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

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
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

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
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
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

endmodule
