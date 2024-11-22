set moduleName mineblock
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
set C_modelName {mineblock}
set C_modelType { int 32 }
set C_modelArgList {
	{ agg_result_hash_V int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ noncestart_V int 32 regular  }
	{ version_0_V_read int 32 regular  }
	{ prevhash_V int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ merkle_root_V int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ time_0_V_read int 32 regular  }
	{ nbits_0_V_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_hash_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "noncestart_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "version_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prevhash_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "merkle_root_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "time_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nbits_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_hash_V_address0 sc_out sc_lv 3 signal 0 } 
	{ agg_result_hash_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_hash_V_we0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_hash_V_d0 sc_out sc_lv 32 signal 0 } 
	{ noncestart_V sc_in sc_lv 32 signal 1 } 
	{ version_0_V_read sc_in sc_lv 32 signal 2 } 
	{ prevhash_V_address0 sc_out sc_lv 3 signal 3 } 
	{ prevhash_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ prevhash_V_q0 sc_in sc_lv 32 signal 3 } 
	{ merkle_root_V_address0 sc_out sc_lv 3 signal 4 } 
	{ merkle_root_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ merkle_root_V_q0 sc_in sc_lv 32 signal 4 } 
	{ time_0_V_read sc_in sc_lv 32 signal 5 } 
	{ nbits_0_V_read sc_in sc_lv 32 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_hash_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_hash_V", "role": "address0" }} , 
 	{ "name": "agg_result_hash_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_hash_V", "role": "ce0" }} , 
 	{ "name": "agg_result_hash_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_hash_V", "role": "we0" }} , 
 	{ "name": "agg_result_hash_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_hash_V", "role": "d0" }} , 
 	{ "name": "noncestart_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "noncestart_V", "role": "default" }} , 
 	{ "name": "version_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "version_0_V_read", "role": "default" }} , 
 	{ "name": "prevhash_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "prevhash_V", "role": "address0" }} , 
 	{ "name": "prevhash_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prevhash_V", "role": "ce0" }} , 
 	{ "name": "prevhash_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prevhash_V", "role": "q0" }} , 
 	{ "name": "merkle_root_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "merkle_root_V", "role": "address0" }} , 
 	{ "name": "merkle_root_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merkle_root_V", "role": "ce0" }} , 
 	{ "name": "merkle_root_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "merkle_root_V", "role": "q0" }} , 
 	{ "name": "time_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "time_0_V_read", "role": "default" }} , 
 	{ "name": "nbits_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nbits_0_V_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "12"],
		"CDFG" : "mineblock",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash1_1_fu_279"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hash1_fu_289"}],
		"Port" : [
			{"Name" : "agg_result_hash_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "noncestart_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "version_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "prevhash_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merkle_root_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "time_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "nbits_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_hash1_1_fu_279", "Port" : "H_0_V"},
					{"ID" : "12", "SubInstance" : "grp_hash1_fu_289", "Port" : "H_0_V"}]},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_hash1_1_fu_279", "Port" : "K"},
					{"ID" : "12", "SubInstance" : "grp_hash1_fu_289", "Port" : "K"}]},
			{"Name" : "difficulty_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.difficulty_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash0_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blockheader_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_V_assign_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11"],
		"CDFG" : "hash1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "993", "EstimateLatencyMax" : "1121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outputlocation_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "H_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.H_0_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.K_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.message_V_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.M_V_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.H_V_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_1_fu_279.W_V_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18"],
		"CDFG" : "hash1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "544", "EstimateLatencyMax" : "608",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outputlocation_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "H_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.H_0_V_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.K_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.message_V_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.M_V_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.H_V_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hash1_fu_289.W_V_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	mineblock {
		agg_result_hash_V {Type O LastRead -1 FirstWrite 11}
		noncestart_V {Type I LastRead 0 FirstWrite -1}
		version_0_V_read {Type I LastRead 0 FirstWrite -1}
		prevhash_V {Type I LastRead 1 FirstWrite -1}
		merkle_root_V {Type I LastRead 2 FirstWrite -1}
		time_0_V_read {Type I LastRead 0 FirstWrite -1}
		nbits_0_V_read {Type I LastRead 0 FirstWrite -1}
		H_0_V {Type I LastRead -1 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}
		difficulty_V {Type I LastRead -1 FirstWrite -1}}
	hash1_1 {
		input_V {Type I LastRead 1 FirstWrite -1}
		outputlocation_V {Type O LastRead -1 FirstWrite 6}
		H_0_V {Type I LastRead -1 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	hash1 {
		input_V {Type I LastRead 1 FirstWrite -1}
		outputlocation_V {Type O LastRead -1 FirstWrite 6}
		H_0_V {Type I LastRead -1 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_hash_V { ap_memory {  { agg_result_hash_V_address0 mem_address 1 3 }  { agg_result_hash_V_ce0 mem_ce 1 1 }  { agg_result_hash_V_we0 mem_we 1 1 }  { agg_result_hash_V_d0 mem_din 1 32 } } }
	noncestart_V { ap_none {  { noncestart_V in_data 0 32 } } }
	version_0_V_read { ap_none {  { version_0_V_read in_data 0 32 } } }
	prevhash_V { ap_memory {  { prevhash_V_address0 mem_address 1 3 }  { prevhash_V_ce0 mem_ce 1 1 }  { prevhash_V_q0 mem_dout 0 32 } } }
	merkle_root_V { ap_memory {  { merkle_root_V_address0 mem_address 1 3 }  { merkle_root_V_ce0 mem_ce 1 1 }  { merkle_root_V_q0 mem_dout 0 32 } } }
	time_0_V_read { ap_none {  { time_0_V_read in_data 0 32 } } }
	nbits_0_V_read { ap_none {  { nbits_0_V_read in_data 0 32 } } }
}
