set moduleName hash1
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
set C_modelName {hash1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_0_V_read int 32 regular  }
	{ input_1_V_read int 32 regular  }
	{ outputlocation_V int 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "outputlocation_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_0_V_read sc_in sc_lv 32 signal 0 } 
	{ input_1_V_read sc_in sc_lv 32 signal 1 } 
	{ outputlocation_V_address0 sc_out sc_lv 3 signal 2 } 
	{ outputlocation_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ outputlocation_V_we0 sc_out sc_logic 1 signal 2 } 
	{ outputlocation_V_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_0_V_read", "role": "default" }} , 
 	{ "name": "input_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_1_V_read", "role": "default" }} , 
 	{ "name": "outputlocation_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "address0" }} , 
 	{ "name": "outputlocation_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "ce0" }} , 
 	{ "name": "outputlocation_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "we0" }} , 
 	{ "name": "outputlocation_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputlocation_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "hash1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "579",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputlocation_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.M_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_1_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hash1 {
		input_0_V_read {Type I LastRead 0 FirstWrite -1}
		input_1_V_read {Type I LastRead 0 FirstWrite -1}
		outputlocation_V {Type O LastRead -1 FirstWrite 9}
		K {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "579"}
	, {"Name" : "Interval", "Min" : "515", "Max" : "579"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_0_V_read { ap_none {  { input_0_V_read in_data 0 32 } } }
	input_1_V_read { ap_none {  { input_1_V_read in_data 0 32 } } }
	outputlocation_V { ap_memory {  { outputlocation_V_address0 mem_address 1 3 }  { outputlocation_V_ce0 mem_ce 1 1 }  { outputlocation_V_we0 mem_we 1 1 }  { outputlocation_V_d0 mem_din 1 32 } } }
}
