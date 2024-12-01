// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      hash1
`define AUTOTB_DUT_INST AESL_inst_hash1
`define AUTOTB_TOP      apatb_hash1_top
`define AUTOTB_LAT_RESULT_FILE "hash1.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "hash1.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_hash1_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_input_V AESL_automem_input_V
`define AESL_MEM_INST_input_V mem_inst_input_V
`define AESL_DEPTH_bitlength 1
`define AESL_MEM_outputlocation_V AESL_automem_outputlocation_V
`define AESL_MEM_INST_outputlocation_V mem_inst_outputlocation_V
`define AUTOTB_TVIN_input_V  "./c.hash1.autotvin_input_V.dat"
`define AUTOTB_TVIN_bitlength  "./c.hash1.autotvin_bitlength.dat"
`define AUTOTB_TVIN_outputlocation_V  "./c.hash1.autotvin_outputlocation_V.dat"
`define AUTOTB_TVIN_input_V_out_wrapc  "./rtl.hash1.autotvin_input_V.dat"
`define AUTOTB_TVIN_bitlength_out_wrapc  "./rtl.hash1.autotvin_bitlength.dat"
`define AUTOTB_TVIN_outputlocation_V_out_wrapc  "./rtl.hash1.autotvin_outputlocation_V.dat"
`define AUTOTB_TVOUT_outputlocation_V  "./c.hash1.autotvout_outputlocation_V.dat"
`define AUTOTB_TVOUT_outputlocation_V_out_wrapc  "./impl_rtl.hash1.autotvout_outputlocation_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 12;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_input_V = 20;
parameter LENGTH_bitlength = 1;
parameter LENGTH_outputlocation_V = 9;

task read_token;
    input integer fp;
    output reg [223 : 0] token;
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
    reg [223 : 0] token1;
    reg [223 : 0] token2;
    reg [223 : 0] golden;
    reg [223 : 0] result;
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
wire [4 : 0] input_V_address0;
wire  input_V_ce0;
wire [31 : 0] input_V_d0;
wire [31 : 0] input_V_q0;
wire  input_V_we0;
wire [4 : 0] input_V_address1;
wire  input_V_ce1;
wire [31 : 0] input_V_d1;
wire [31 : 0] input_V_q1;
wire  input_V_we1;
wire [31 : 0] bitlength;
wire [3 : 0] outputlocation_V_address0;
wire  outputlocation_V_ce0;
wire [31 : 0] outputlocation_V_d0;
wire [31 : 0] outputlocation_V_q0;
wire  outputlocation_V_we0;
wire [3 : 0] outputlocation_V_address1;
wire  outputlocation_V_ce1;
wire [31 : 0] outputlocation_V_d1;
wire [31 : 0] outputlocation_V_q1;
wire  outputlocation_V_we1;
wire ap_start;
wire ap_done;
wire ap_ready;
wire ap_idle;
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
    .input_V_address0(input_V_address0),
    .input_V_ce0(input_V_ce0),
    .input_V_d0(input_V_d0),
    .input_V_q0(input_V_q0),
    .input_V_we0(input_V_we0),
    .input_V_address1(input_V_address1),
    .input_V_ce1(input_V_ce1),
    .input_V_d1(input_V_d1),
    .input_V_q1(input_V_q1),
    .input_V_we1(input_V_we1),
    .bitlength(bitlength),
    .outputlocation_V_address0(outputlocation_V_address0),
    .outputlocation_V_ce0(outputlocation_V_ce0),
    .outputlocation_V_d0(outputlocation_V_d0),
    .outputlocation_V_q0(outputlocation_V_q0),
    .outputlocation_V_we0(outputlocation_V_we0),
    .outputlocation_V_address1(outputlocation_V_address1),
    .outputlocation_V_ce1(outputlocation_V_ce1),
    .outputlocation_V_d1(outputlocation_V_d1),
    .outputlocation_V_q1(outputlocation_V_q1),
    .outputlocation_V_we1(outputlocation_V_we1),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
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
    reg [223  : 0] token;
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


//------------------------arrayoutputlocation_V Instantiation--------------

// The input and output of arrayoutputlocation_V
wire    arrayoutputlocation_V_ce0, arrayoutputlocation_V_ce1;
wire    arrayoutputlocation_V_we0, arrayoutputlocation_V_we1;
wire    [3 : 0]    arrayoutputlocation_V_address0, arrayoutputlocation_V_address1;
wire    [31 : 0]    arrayoutputlocation_V_din0, arrayoutputlocation_V_din1;
wire    [31 : 0]    arrayoutputlocation_V_dout0, arrayoutputlocation_V_dout1;
wire    arrayoutputlocation_V_ready;
wire    arrayoutputlocation_V_done;

`AESL_MEM_outputlocation_V `AESL_MEM_INST_outputlocation_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayoutputlocation_V_ce0),
    .we0        (arrayoutputlocation_V_we0),
    .address0   (arrayoutputlocation_V_address0),
    .din0       (arrayoutputlocation_V_din0),
    .dout0      (arrayoutputlocation_V_dout0),
    .ce1        (arrayoutputlocation_V_ce1),
    .we1        (arrayoutputlocation_V_we1),
    .address1   (arrayoutputlocation_V_address1),
    .din1       (arrayoutputlocation_V_din1),
    .dout1      (arrayoutputlocation_V_dout1),
    .ready      (arrayoutputlocation_V_ready),
    .done    (arrayoutputlocation_V_done)
);

// Assignment between dut and arrayoutputlocation_V
assign arrayoutputlocation_V_address0 = outputlocation_V_address0;
assign arrayoutputlocation_V_ce0 = outputlocation_V_ce0;
assign arrayoutputlocation_V_we0 = outputlocation_V_we0;
assign arrayoutputlocation_V_din0 = outputlocation_V_d0;
assign arrayoutputlocation_V_address1 = outputlocation_V_address1;
assign arrayoutputlocation_V_ce1 = outputlocation_V_ce1;
assign arrayoutputlocation_V_we1 = outputlocation_V_we1;
assign arrayoutputlocation_V_din1 = outputlocation_V_d1;
assign arrayoutputlocation_V_ready= ready_initial | arrayoutputlocation_V_done;
assign arrayoutputlocation_V_done =    AESL_done_delay;


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
    fp1 = $fopen("./rtl.hash1.autotvout_outputlocation_V.dat", "r");
    fp2 = $fopen("./impl_rtl.hash1.autotvout_outputlocation_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.hash1.autotvout_outputlocation_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.hash1.autotvout_outputlocation_V.dat\"!");
    else begin
        $display("Comparing rtl.hash1.autotvout_outputlocation_V.dat with impl_rtl.hash1.autotvout_outputlocation_V.dat");
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
reg end_outputlocation_V;
reg [31:0] size_outputlocation_V;
reg [31:0] size_outputlocation_V_backup;

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

reg dump_tvout_finish_outputlocation_V;

initial begin : dump_tvout_runtime_sign_outputlocation_V
    integer fp;
    dump_tvout_finish_outputlocation_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_outputlocation_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outputlocation_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_outputlocation_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_outputlocation_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_outputlocation_V = 1;
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

AESL_deadlock_detector deadlock_detector(
    .reset(~AESL_reset),
    .clock(AESL_clock));


endmodule
