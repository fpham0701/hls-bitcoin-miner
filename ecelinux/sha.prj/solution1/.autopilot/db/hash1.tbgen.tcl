set moduleName hash1
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hash1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 32 regular {array 20 { 1 3 } 1 1 }  }
	{ bitlength int 32 regular  }
	{ outputlocation_V int 32 regular {array 9 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "bitlength", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bitlength","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "outputlocation_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outputlocation.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_V_address0 sc_out sc_lv 5 signal 0 } 
	{ input_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_V_d0 sc_out sc_lv 32 signal 0 } 
	{ input_V_q0 sc_in sc_lv 32 signal 0 } 
	{ input_V_we0 sc_out sc_logic 1 signal 0 } 
	{ input_V_address1 sc_out sc_lv 5 signal 0 } 
	{ input_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_V_d1 sc_out sc_lv 32 signal 0 } 
	{ input_V_q1 sc_in sc_lv 32 signal 0 } 
	{ input_V_we1 sc_out sc_logic 1 signal 0 } 
	{ bitlength sc_in sc_lv 32 signal 1 } 
	{ outputlocation_V_address0 sc_out sc_lv 4 signal 2 } 
	{ outputlocation_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ outputlocation_V_d0 sc_out sc_lv 32 signal 2 } 
	{ outputlocation_V_q0 sc_in sc_lv 32 signal 2 } 
	{ outputlocation_V_we0 sc_out sc_logic 1 signal 2 } 
	{ outputlocation_V_address1 sc_out sc_lv 4 signal 2 } 
	{ outputlocation_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ outputlocation_V_d1 sc_out sc_lv 32 signal 2 } 
	{ outputlocation_V_q1 sc_in sc_lv 32 signal 2 } 
	{ outputlocation_V_we1 sc_out sc_logic 1 signal 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_V", "role": "address0" }} , 
 	{ "name": "input_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce0" }} , 
 	{ "name": "input_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "d0" }} , 
 	{ "name": "input_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "q0" }} , 
 	{ "name": "input_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "we0" }} , 
 	{ "name": "input_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_V", "role": "address1" }} , 
 	{ "name": "input_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce1" }} , 
 	{ "name": "input_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "d1" }} , 
 	{ "name": "input_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "q1" }} , 
 	{ "name": "input_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "we1" }} , 
 	{ "name": "bitlength", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitlength", "role": "default" }} , 
 	{ "name": "outputlocation_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "address0" }} , 
 	{ "name": "outputlocation_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "ce0" }} , 
 	{ "name": "outputlocation_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "d0" }} , 
 	{ "name": "outputlocation_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "q0" }} , 
 	{ "name": "outputlocation_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "we0" }} , 
 	{ "name": "outputlocation_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "address1" }} , 
 	{ "name": "outputlocation_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "ce1" }} , 
 	{ "name": "outputlocation_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "d1" }} , 
 	{ "name": "outputlocation_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "q1" }} , 
 	{ "name": "outputlocation_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "hash1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "17", "Name" : "prepareMessage_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "Block_preheader_0_p_U0"}],
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "prepareMessage_U0", "Port" : "input_V"}]},
			{"Name" : "bitlength", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputlocation_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "Block_preheader_0_p_U0", "Port" : "outputlocation_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_8_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_9_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_10_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_11_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_12_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_13_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_14_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_15_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prepareMessage_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "prepareMessage",
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
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitlength", "Type" : "None", "Direction" : "I"},
			{"Name" : "M_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "1"},
			{"Name" : "M_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "2"},
			{"Name" : "M_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "3"},
			{"Name" : "M_3_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "4"},
			{"Name" : "M_4_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "5"},
			{"Name" : "M_5_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "6"},
			{"Name" : "M_6_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "7"},
			{"Name" : "M_7_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "8"},
			{"Name" : "M_8_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "9"},
			{"Name" : "M_9_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "10"},
			{"Name" : "M_10_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "11"},
			{"Name" : "M_11_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "12"},
			{"Name" : "M_12_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "13"},
			{"Name" : "M_13_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "14"},
			{"Name" : "M_14_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "15"},
			{"Name" : "M_15_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "16"},
			{"Name" : "bitlength_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "bitlength_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.prepareMessage_U0.message_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0", "Parent" : "0", "Child" : ["20"],
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
			{"Name" : "bitlength", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "bitlength_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "M_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V"}]},
			{"Name" : "M_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V8"}]},
			{"Name" : "M_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V9"}]},
			{"Name" : "M_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V10"}]},
			{"Name" : "M_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V11"}]},
			{"Name" : "M_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V12"}]},
			{"Name" : "M_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V13"}]},
			{"Name" : "M_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V14"}]},
			{"Name" : "M_8_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "9",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V15"}]},
			{"Name" : "M_9_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "10",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V16"}]},
			{"Name" : "M_10_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V17"}]},
			{"Name" : "M_11_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "12",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V18"}]},
			{"Name" : "M_12_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "13",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V19"}]},
			{"Name" : "M_13_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "14",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V20"}]},
			{"Name" : "M_14_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "15",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V21"}]},
			{"Name" : "M_15_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "16",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_computeHashRound_fu_210", "Port" : "M_V22"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc_U0.grp_computeHashRound_fu_210", "Parent" : "19",
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
			{"Name" : "M_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_preheader_0_p_U0", "Parent" : "0",
		"CDFG" : "Block_preheader_0_p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "outputlocation_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "30"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "29"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "28"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "27"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "26"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "25"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "24"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "23"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitlength_c_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_7_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_6_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_5_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_4_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_3_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_2_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_1_0_loc_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_V_0_0_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hash1 {
		input_V {Type I LastRead 2 FirstWrite -1}
		bitlength {Type I LastRead 0 FirstWrite -1}
		outputlocation_V {Type O LastRead -1 FirstWrite 0}}
	prepareMessage {
		input_V {Type I LastRead 2 FirstWrite -1}
		bitlength {Type I LastRead 0 FirstWrite -1}
		M_0_V {Type O LastRead -1 FirstWrite 1}
		M_1_V {Type O LastRead -1 FirstWrite 1}
		M_2_V {Type O LastRead -1 FirstWrite 1}
		M_3_V {Type O LastRead -1 FirstWrite 1}
		M_4_V {Type O LastRead -1 FirstWrite 1}
		M_5_V {Type O LastRead -1 FirstWrite 1}
		M_6_V {Type O LastRead -1 FirstWrite 1}
		M_7_V {Type O LastRead -1 FirstWrite 1}
		M_8_V {Type O LastRead -1 FirstWrite 1}
		M_9_V {Type O LastRead -1 FirstWrite 1}
		M_10_V {Type O LastRead -1 FirstWrite 1}
		M_11_V {Type O LastRead -1 FirstWrite 1}
		M_12_V {Type O LastRead -1 FirstWrite 1}
		M_13_V {Type O LastRead -1 FirstWrite 1}
		M_14_V {Type O LastRead -1 FirstWrite 1}
		M_15_V {Type O LastRead -1 FirstWrite 1}
		bitlength_out {Type O LastRead -1 FirstWrite 0}}
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
		M_V_offset {Type I LastRead 0 FirstWrite -1}}
	Block_preheader_0_p {
		outputlocation_V {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 2 FirstWrite -1}
		p_read5 {Type I LastRead 2 FirstWrite -1}
		p_read6 {Type I LastRead 3 FirstWrite -1}
		p_read7 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_V { ap_memory {  { input_V_address0 mem_address 1 5 }  { input_V_ce0 mem_ce 1 1 }  { input_V_d0 mem_din 1 32 }  { input_V_q0 mem_dout 0 32 }  { input_V_we0 mem_we 1 1 }  { input_V_address1 mem_address 1 5 }  { input_V_ce1 mem_ce 1 1 }  { input_V_d1 mem_din 1 32 }  { input_V_q1 mem_dout 0 32 }  { input_V_we1 mem_we 1 1 } } }
	bitlength { ap_none {  { bitlength in_data 0 32 } } }
	outputlocation_V { ap_memory {  { outputlocation_V_address0 mem_address 1 4 }  { outputlocation_V_ce0 mem_ce 1 1 }  { outputlocation_V_d0 mem_din 1 32 }  { outputlocation_V_q0 mem_dout 0 32 }  { outputlocation_V_we0 mem_we 1 1 }  { outputlocation_V_address1 MemPortADDR2 1 4 }  { outputlocation_V_ce1 MemPortCE2 1 1 }  { outputlocation_V_d1 MemPortDIN2 1 32 }  { outputlocation_V_q1 mem_dout 0 32 }  { outputlocation_V_we1 MemPortWE2 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
