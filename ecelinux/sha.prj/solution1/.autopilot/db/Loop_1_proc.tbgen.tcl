set moduleName Loop_1_proc
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_1_proc}
set C_modelType { int 256 }
set C_modelArgList {
	{ bitlength int 32 regular {fifo 0}  }
	{ M_0_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_1_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_2_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_3_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_4_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_5_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_6_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_7_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_8_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_9_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_10_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_11_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_12_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_13_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_14_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_15_V int 32 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bitlength", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_2_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_3_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_4_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_5_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_6_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_7_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_8_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_9_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_10_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_11_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_12_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_13_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_14_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_15_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 66
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bitlength_dout sc_in sc_lv 32 signal 0 } 
	{ bitlength_empty_n sc_in sc_logic 1 signal 0 } 
	{ bitlength_read sc_out sc_logic 1 signal 0 } 
	{ M_0_V_address0 sc_out sc_lv 5 signal 1 } 
	{ M_0_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ M_0_V_q0 sc_in sc_lv 32 signal 1 } 
	{ M_1_V_address0 sc_out sc_lv 5 signal 2 } 
	{ M_1_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ M_1_V_q0 sc_in sc_lv 32 signal 2 } 
	{ M_2_V_address0 sc_out sc_lv 5 signal 3 } 
	{ M_2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ M_2_V_q0 sc_in sc_lv 32 signal 3 } 
	{ M_3_V_address0 sc_out sc_lv 5 signal 4 } 
	{ M_3_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ M_3_V_q0 sc_in sc_lv 32 signal 4 } 
	{ M_4_V_address0 sc_out sc_lv 5 signal 5 } 
	{ M_4_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ M_4_V_q0 sc_in sc_lv 32 signal 5 } 
	{ M_5_V_address0 sc_out sc_lv 5 signal 6 } 
	{ M_5_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ M_5_V_q0 sc_in sc_lv 32 signal 6 } 
	{ M_6_V_address0 sc_out sc_lv 5 signal 7 } 
	{ M_6_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ M_6_V_q0 sc_in sc_lv 32 signal 7 } 
	{ M_7_V_address0 sc_out sc_lv 5 signal 8 } 
	{ M_7_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ M_7_V_q0 sc_in sc_lv 32 signal 8 } 
	{ M_8_V_address0 sc_out sc_lv 5 signal 9 } 
	{ M_8_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ M_8_V_q0 sc_in sc_lv 32 signal 9 } 
	{ M_9_V_address0 sc_out sc_lv 5 signal 10 } 
	{ M_9_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ M_9_V_q0 sc_in sc_lv 32 signal 10 } 
	{ M_10_V_address0 sc_out sc_lv 5 signal 11 } 
	{ M_10_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ M_10_V_q0 sc_in sc_lv 32 signal 11 } 
	{ M_11_V_address0 sc_out sc_lv 5 signal 12 } 
	{ M_11_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ M_11_V_q0 sc_in sc_lv 32 signal 12 } 
	{ M_12_V_address0 sc_out sc_lv 5 signal 13 } 
	{ M_12_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ M_12_V_q0 sc_in sc_lv 32 signal 13 } 
	{ M_13_V_address0 sc_out sc_lv 5 signal 14 } 
	{ M_13_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ M_13_V_q0 sc_in sc_lv 32 signal 14 } 
	{ M_14_V_address0 sc_out sc_lv 5 signal 15 } 
	{ M_14_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ M_14_V_q0 sc_in sc_lv 32 signal 15 } 
	{ M_15_V_address0 sc_out sc_lv 5 signal 16 } 
	{ M_15_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ M_15_V_q0 sc_in sc_lv 32 signal 16 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bitlength_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitlength", "role": "dout" }} , 
 	{ "name": "bitlength_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitlength", "role": "empty_n" }} , 
 	{ "name": "bitlength_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bitlength", "role": "read" }} , 
 	{ "name": "M_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_0_V", "role": "address0" }} , 
 	{ "name": "M_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_0_V", "role": "ce0" }} , 
 	{ "name": "M_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_0_V", "role": "q0" }} , 
 	{ "name": "M_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_1_V", "role": "address0" }} , 
 	{ "name": "M_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_1_V", "role": "ce0" }} , 
 	{ "name": "M_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_1_V", "role": "q0" }} , 
 	{ "name": "M_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_2_V", "role": "address0" }} , 
 	{ "name": "M_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_2_V", "role": "ce0" }} , 
 	{ "name": "M_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_2_V", "role": "q0" }} , 
 	{ "name": "M_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_3_V", "role": "address0" }} , 
 	{ "name": "M_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_3_V", "role": "ce0" }} , 
 	{ "name": "M_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_3_V", "role": "q0" }} , 
 	{ "name": "M_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_4_V", "role": "address0" }} , 
 	{ "name": "M_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_4_V", "role": "ce0" }} , 
 	{ "name": "M_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_4_V", "role": "q0" }} , 
 	{ "name": "M_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_5_V", "role": "address0" }} , 
 	{ "name": "M_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_5_V", "role": "ce0" }} , 
 	{ "name": "M_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_5_V", "role": "q0" }} , 
 	{ "name": "M_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_6_V", "role": "address0" }} , 
 	{ "name": "M_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_6_V", "role": "ce0" }} , 
 	{ "name": "M_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_6_V", "role": "q0" }} , 
 	{ "name": "M_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_7_V", "role": "address0" }} , 
 	{ "name": "M_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_7_V", "role": "ce0" }} , 
 	{ "name": "M_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_7_V", "role": "q0" }} , 
 	{ "name": "M_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_8_V", "role": "address0" }} , 
 	{ "name": "M_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_8_V", "role": "ce0" }} , 
 	{ "name": "M_8_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_8_V", "role": "q0" }} , 
 	{ "name": "M_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_9_V", "role": "address0" }} , 
 	{ "name": "M_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_9_V", "role": "ce0" }} , 
 	{ "name": "M_9_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_9_V", "role": "q0" }} , 
 	{ "name": "M_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_10_V", "role": "address0" }} , 
 	{ "name": "M_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_10_V", "role": "ce0" }} , 
 	{ "name": "M_10_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_10_V", "role": "q0" }} , 
 	{ "name": "M_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_11_V", "role": "address0" }} , 
 	{ "name": "M_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_11_V", "role": "ce0" }} , 
 	{ "name": "M_11_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_11_V", "role": "q0" }} , 
 	{ "name": "M_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_12_V", "role": "address0" }} , 
 	{ "name": "M_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_12_V", "role": "ce0" }} , 
 	{ "name": "M_12_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_12_V", "role": "q0" }} , 
 	{ "name": "M_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_13_V", "role": "address0" }} , 
 	{ "name": "M_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_13_V", "role": "ce0" }} , 
 	{ "name": "M_13_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_13_V", "role": "q0" }} , 
 	{ "name": "M_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_14_V", "role": "address0" }} , 
 	{ "name": "M_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_14_V", "role": "ce0" }} , 
 	{ "name": "M_14_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_14_V", "role": "q0" }} , 
 	{ "name": "M_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_15_V", "role": "address0" }} , 
 	{ "name": "M_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_15_V", "role": "ce0" }} , 
 	{ "name": "M_15_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_15_V", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bitlength", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bitlength_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "M_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V"}]},
			{"Name" : "M_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V8"}]},
			{"Name" : "M_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V9"}]},
			{"Name" : "M_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V10"}]},
			{"Name" : "M_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V11"}]},
			{"Name" : "M_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V12"}]},
			{"Name" : "M_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V13"}]},
			{"Name" : "M_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V14"}]},
			{"Name" : "M_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V15"}]},
			{"Name" : "M_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V16"}]},
			{"Name" : "M_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V17"}]},
			{"Name" : "M_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V18"}]},
			{"Name" : "M_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V19"}]},
			{"Name" : "M_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V20"}]},
			{"Name" : "M_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V21"}]},
			{"Name" : "M_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V22"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_computeHashRound_fu_210", "Parent" : "0",
		"CDFG" : "computeHashRound",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "81", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "H_prev_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_prev_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "M_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M_V_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc {
		bitlength {Type I LastRead 0 FirstWrite -1}
		M_0_V {Type I LastRead 0 FirstWrite -1}
		M_1_V {Type I LastRead 0 FirstWrite -1}
		M_2_V {Type I LastRead 0 FirstWrite -1}
		M_3_V {Type I LastRead 0 FirstWrite -1}
		M_4_V {Type I LastRead 0 FirstWrite -1}
		M_5_V {Type I LastRead 0 FirstWrite -1}
		M_6_V {Type I LastRead 0 FirstWrite -1}
		M_7_V {Type I LastRead 0 FirstWrite -1}
		M_8_V {Type I LastRead 0 FirstWrite -1}
		M_9_V {Type I LastRead 0 FirstWrite -1}
		M_10_V {Type I LastRead 0 FirstWrite -1}
		M_11_V {Type I LastRead 0 FirstWrite -1}
		M_12_V {Type I LastRead 0 FirstWrite -1}
		M_13_V {Type I LastRead 0 FirstWrite -1}
		M_14_V {Type I LastRead 0 FirstWrite -1}
		M_15_V {Type I LastRead 0 FirstWrite -1}}
	computeHashRound {
		H_prev_0_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_1_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_2_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_3_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_4_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_5_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_6_V_read {Type I LastRead 0 FirstWrite -1}
		H_prev_7_V_read {Type I LastRead 0 FirstWrite -1}
		M_V {Type I LastRead 0 FirstWrite -1}
		M_V8 {Type I LastRead 0 FirstWrite -1}
		M_V9 {Type I LastRead 0 FirstWrite -1}
		M_V10 {Type I LastRead 0 FirstWrite -1}
		M_V11 {Type I LastRead 0 FirstWrite -1}
		M_V12 {Type I LastRead 0 FirstWrite -1}
		M_V13 {Type I LastRead 0 FirstWrite -1}
		M_V14 {Type I LastRead 0 FirstWrite -1}
		M_V15 {Type I LastRead 0 FirstWrite -1}
		M_V16 {Type I LastRead 0 FirstWrite -1}
		M_V17 {Type I LastRead 0 FirstWrite -1}
		M_V18 {Type I LastRead 0 FirstWrite -1}
		M_V19 {Type I LastRead 0 FirstWrite -1}
		M_V20 {Type I LastRead 0 FirstWrite -1}
		M_V21 {Type I LastRead 0 FirstWrite -1}
		M_V22 {Type I LastRead 0 FirstWrite -1}
		M_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bitlength { ap_fifo {  { bitlength_dout fifo_data 0 32 }  { bitlength_empty_n fifo_status 0 1 }  { bitlength_read fifo_update 1 1 } } }
	M_0_V { ap_memory {  { M_0_V_address0 mem_address 1 5 }  { M_0_V_ce0 mem_ce 1 1 }  { M_0_V_q0 mem_dout 0 32 } } }
	M_1_V { ap_memory {  { M_1_V_address0 mem_address 1 5 }  { M_1_V_ce0 mem_ce 1 1 }  { M_1_V_q0 mem_dout 0 32 } } }
	M_2_V { ap_memory {  { M_2_V_address0 mem_address 1 5 }  { M_2_V_ce0 mem_ce 1 1 }  { M_2_V_q0 mem_dout 0 32 } } }
	M_3_V { ap_memory {  { M_3_V_address0 mem_address 1 5 }  { M_3_V_ce0 mem_ce 1 1 }  { M_3_V_q0 mem_dout 0 32 } } }
	M_4_V { ap_memory {  { M_4_V_address0 mem_address 1 5 }  { M_4_V_ce0 mem_ce 1 1 }  { M_4_V_q0 mem_dout 0 32 } } }
	M_5_V { ap_memory {  { M_5_V_address0 mem_address 1 5 }  { M_5_V_ce0 mem_ce 1 1 }  { M_5_V_q0 mem_dout 0 32 } } }
	M_6_V { ap_memory {  { M_6_V_address0 mem_address 1 5 }  { M_6_V_ce0 mem_ce 1 1 }  { M_6_V_q0 mem_dout 0 32 } } }
	M_7_V { ap_memory {  { M_7_V_address0 mem_address 1 5 }  { M_7_V_ce0 mem_ce 1 1 }  { M_7_V_q0 mem_dout 0 32 } } }
	M_8_V { ap_memory {  { M_8_V_address0 mem_address 1 5 }  { M_8_V_ce0 mem_ce 1 1 }  { M_8_V_q0 mem_dout 0 32 } } }
	M_9_V { ap_memory {  { M_9_V_address0 mem_address 1 5 }  { M_9_V_ce0 mem_ce 1 1 }  { M_9_V_q0 mem_dout 0 32 } } }
	M_10_V { ap_memory {  { M_10_V_address0 mem_address 1 5 }  { M_10_V_ce0 mem_ce 1 1 }  { M_10_V_q0 mem_dout 0 32 } } }
	M_11_V { ap_memory {  { M_11_V_address0 mem_address 1 5 }  { M_11_V_ce0 mem_ce 1 1 }  { M_11_V_q0 mem_dout 0 32 } } }
	M_12_V { ap_memory {  { M_12_V_address0 mem_address 1 5 }  { M_12_V_ce0 mem_ce 1 1 }  { M_12_V_q0 mem_dout 0 32 } } }
	M_13_V { ap_memory {  { M_13_V_address0 mem_address 1 5 }  { M_13_V_ce0 mem_ce 1 1 }  { M_13_V_q0 mem_dout 0 32 } } }
	M_14_V { ap_memory {  { M_14_V_address0 mem_address 1 5 }  { M_14_V_ce0 mem_ce 1 1 }  { M_14_V_q0 mem_dout 0 32 } } }
	M_15_V { ap_memory {  { M_15_V_address0 mem_address 1 5 }  { M_15_V_ce0 mem_ce 1 1 }  { M_15_V_q0 mem_dout 0 32 } } }
}
