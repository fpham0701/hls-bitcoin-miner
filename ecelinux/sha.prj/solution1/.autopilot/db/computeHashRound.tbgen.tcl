set moduleName computeHashRound
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {computeHashRound}
set C_modelType { int 256 }
set C_modelArgList {
	{ H_prev_0_V_read int 32 regular  }
	{ H_prev_1_V_read int 32 regular  }
	{ H_prev_2_V_read int 32 regular  }
	{ H_prev_3_V_read int 32 regular  }
	{ H_prev_4_V_read int 32 regular  }
	{ H_prev_5_V_read int 32 regular  }
	{ H_prev_6_V_read int 32 regular  }
	{ H_prev_7_V_read int 32 regular  }
	{ M_V int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V8 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V9 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V10 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V11 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V12 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V13 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V14 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V15 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V16 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V17 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V18 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V19 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V20 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V21 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V22 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ M_V_offset int 24 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "H_prev_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_1_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_2_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_3_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_4_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_5_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_6_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_prev_7_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "M_V_offset", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ H_prev_0_V_read sc_in sc_lv 32 signal 0 } 
	{ H_prev_1_V_read sc_in sc_lv 32 signal 1 } 
	{ H_prev_2_V_read sc_in sc_lv 32 signal 2 } 
	{ H_prev_3_V_read sc_in sc_lv 32 signal 3 } 
	{ H_prev_4_V_read sc_in sc_lv 32 signal 4 } 
	{ H_prev_5_V_read sc_in sc_lv 32 signal 5 } 
	{ H_prev_6_V_read sc_in sc_lv 32 signal 6 } 
	{ H_prev_7_V_read sc_in sc_lv 32 signal 7 } 
	{ M_V_address0 sc_out sc_lv 5 signal 8 } 
	{ M_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ M_V_q0 sc_in sc_lv 32 signal 8 } 
	{ M_V8_address0 sc_out sc_lv 5 signal 9 } 
	{ M_V8_ce0 sc_out sc_logic 1 signal 9 } 
	{ M_V8_q0 sc_in sc_lv 32 signal 9 } 
	{ M_V9_address0 sc_out sc_lv 5 signal 10 } 
	{ M_V9_ce0 sc_out sc_logic 1 signal 10 } 
	{ M_V9_q0 sc_in sc_lv 32 signal 10 } 
	{ M_V10_address0 sc_out sc_lv 5 signal 11 } 
	{ M_V10_ce0 sc_out sc_logic 1 signal 11 } 
	{ M_V10_q0 sc_in sc_lv 32 signal 11 } 
	{ M_V11_address0 sc_out sc_lv 5 signal 12 } 
	{ M_V11_ce0 sc_out sc_logic 1 signal 12 } 
	{ M_V11_q0 sc_in sc_lv 32 signal 12 } 
	{ M_V12_address0 sc_out sc_lv 5 signal 13 } 
	{ M_V12_ce0 sc_out sc_logic 1 signal 13 } 
	{ M_V12_q0 sc_in sc_lv 32 signal 13 } 
	{ M_V13_address0 sc_out sc_lv 5 signal 14 } 
	{ M_V13_ce0 sc_out sc_logic 1 signal 14 } 
	{ M_V13_q0 sc_in sc_lv 32 signal 14 } 
	{ M_V14_address0 sc_out sc_lv 5 signal 15 } 
	{ M_V14_ce0 sc_out sc_logic 1 signal 15 } 
	{ M_V14_q0 sc_in sc_lv 32 signal 15 } 
	{ M_V15_address0 sc_out sc_lv 5 signal 16 } 
	{ M_V15_ce0 sc_out sc_logic 1 signal 16 } 
	{ M_V15_q0 sc_in sc_lv 32 signal 16 } 
	{ M_V16_address0 sc_out sc_lv 5 signal 17 } 
	{ M_V16_ce0 sc_out sc_logic 1 signal 17 } 
	{ M_V16_q0 sc_in sc_lv 32 signal 17 } 
	{ M_V17_address0 sc_out sc_lv 5 signal 18 } 
	{ M_V17_ce0 sc_out sc_logic 1 signal 18 } 
	{ M_V17_q0 sc_in sc_lv 32 signal 18 } 
	{ M_V18_address0 sc_out sc_lv 5 signal 19 } 
	{ M_V18_ce0 sc_out sc_logic 1 signal 19 } 
	{ M_V18_q0 sc_in sc_lv 32 signal 19 } 
	{ M_V19_address0 sc_out sc_lv 5 signal 20 } 
	{ M_V19_ce0 sc_out sc_logic 1 signal 20 } 
	{ M_V19_q0 sc_in sc_lv 32 signal 20 } 
	{ M_V20_address0 sc_out sc_lv 5 signal 21 } 
	{ M_V20_ce0 sc_out sc_logic 1 signal 21 } 
	{ M_V20_q0 sc_in sc_lv 32 signal 21 } 
	{ M_V21_address0 sc_out sc_lv 5 signal 22 } 
	{ M_V21_ce0 sc_out sc_logic 1 signal 22 } 
	{ M_V21_q0 sc_in sc_lv 32 signal 22 } 
	{ M_V22_address0 sc_out sc_lv 5 signal 23 } 
	{ M_V22_ce0 sc_out sc_logic 1 signal 23 } 
	{ M_V22_q0 sc_in sc_lv 32 signal 23 } 
	{ M_V_offset sc_in sc_lv 24 signal 24 } 
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
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "H_prev_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_0_V_read", "role": "default" }} , 
 	{ "name": "H_prev_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_1_V_read", "role": "default" }} , 
 	{ "name": "H_prev_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_2_V_read", "role": "default" }} , 
 	{ "name": "H_prev_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_3_V_read", "role": "default" }} , 
 	{ "name": "H_prev_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_4_V_read", "role": "default" }} , 
 	{ "name": "H_prev_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_5_V_read", "role": "default" }} , 
 	{ "name": "H_prev_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_6_V_read", "role": "default" }} , 
 	{ "name": "H_prev_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_prev_7_V_read", "role": "default" }} , 
 	{ "name": "M_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V", "role": "address0" }} , 
 	{ "name": "M_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "ce0" }} , 
 	{ "name": "M_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V", "role": "q0" }} , 
 	{ "name": "M_V8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V8", "role": "address0" }} , 
 	{ "name": "M_V8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V8", "role": "ce0" }} , 
 	{ "name": "M_V8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V8", "role": "q0" }} , 
 	{ "name": "M_V9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V9", "role": "address0" }} , 
 	{ "name": "M_V9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V9", "role": "ce0" }} , 
 	{ "name": "M_V9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V9", "role": "q0" }} , 
 	{ "name": "M_V10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V10", "role": "address0" }} , 
 	{ "name": "M_V10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V10", "role": "ce0" }} , 
 	{ "name": "M_V10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V10", "role": "q0" }} , 
 	{ "name": "M_V11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V11", "role": "address0" }} , 
 	{ "name": "M_V11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V11", "role": "ce0" }} , 
 	{ "name": "M_V11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V11", "role": "q0" }} , 
 	{ "name": "M_V12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V12", "role": "address0" }} , 
 	{ "name": "M_V12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V12", "role": "ce0" }} , 
 	{ "name": "M_V12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V12", "role": "q0" }} , 
 	{ "name": "M_V13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V13", "role": "address0" }} , 
 	{ "name": "M_V13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V13", "role": "ce0" }} , 
 	{ "name": "M_V13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V13", "role": "q0" }} , 
 	{ "name": "M_V14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V14", "role": "address0" }} , 
 	{ "name": "M_V14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V14", "role": "ce0" }} , 
 	{ "name": "M_V14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V14", "role": "q0" }} , 
 	{ "name": "M_V15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V15", "role": "address0" }} , 
 	{ "name": "M_V15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V15", "role": "ce0" }} , 
 	{ "name": "M_V15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V15", "role": "q0" }} , 
 	{ "name": "M_V16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V16", "role": "address0" }} , 
 	{ "name": "M_V16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V16", "role": "ce0" }} , 
 	{ "name": "M_V16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V16", "role": "q0" }} , 
 	{ "name": "M_V17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V17", "role": "address0" }} , 
 	{ "name": "M_V17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V17", "role": "ce0" }} , 
 	{ "name": "M_V17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V17", "role": "q0" }} , 
 	{ "name": "M_V18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V18", "role": "address0" }} , 
 	{ "name": "M_V18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V18", "role": "ce0" }} , 
 	{ "name": "M_V18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V18", "role": "q0" }} , 
 	{ "name": "M_V19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V19", "role": "address0" }} , 
 	{ "name": "M_V19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V19", "role": "ce0" }} , 
 	{ "name": "M_V19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V19", "role": "q0" }} , 
 	{ "name": "M_V20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V20", "role": "address0" }} , 
 	{ "name": "M_V20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V20", "role": "ce0" }} , 
 	{ "name": "M_V20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V20", "role": "q0" }} , 
 	{ "name": "M_V21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V21", "role": "address0" }} , 
 	{ "name": "M_V21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V21", "role": "ce0" }} , 
 	{ "name": "M_V21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V21", "role": "q0" }} , 
 	{ "name": "M_V22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_V22", "role": "address0" }} , 
 	{ "name": "M_V22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V22", "role": "ce0" }} , 
 	{ "name": "M_V22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V22", "role": "q0" }} , 
 	{ "name": "M_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "M_V_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	{"Name" : "Latency", "Min" : "81", "Max" : "81"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	H_prev_0_V_read { ap_none {  { H_prev_0_V_read in_data 0 32 } } }
	H_prev_1_V_read { ap_none {  { H_prev_1_V_read in_data 0 32 } } }
	H_prev_2_V_read { ap_none {  { H_prev_2_V_read in_data 0 32 } } }
	H_prev_3_V_read { ap_none {  { H_prev_3_V_read in_data 0 32 } } }
	H_prev_4_V_read { ap_none {  { H_prev_4_V_read in_data 0 32 } } }
	H_prev_5_V_read { ap_none {  { H_prev_5_V_read in_data 0 32 } } }
	H_prev_6_V_read { ap_none {  { H_prev_6_V_read in_data 0 32 } } }
	H_prev_7_V_read { ap_none {  { H_prev_7_V_read in_data 0 32 } } }
	M_V { ap_memory {  { M_V_address0 mem_address 1 5 }  { M_V_ce0 mem_ce 1 1 }  { M_V_q0 mem_dout 0 32 } } }
	M_V8 { ap_memory {  { M_V8_address0 mem_address 1 5 }  { M_V8_ce0 mem_ce 1 1 }  { M_V8_q0 mem_dout 0 32 } } }
	M_V9 { ap_memory {  { M_V9_address0 mem_address 1 5 }  { M_V9_ce0 mem_ce 1 1 }  { M_V9_q0 mem_dout 0 32 } } }
	M_V10 { ap_memory {  { M_V10_address0 mem_address 1 5 }  { M_V10_ce0 mem_ce 1 1 }  { M_V10_q0 mem_dout 0 32 } } }
	M_V11 { ap_memory {  { M_V11_address0 mem_address 1 5 }  { M_V11_ce0 mem_ce 1 1 }  { M_V11_q0 mem_dout 0 32 } } }
	M_V12 { ap_memory {  { M_V12_address0 mem_address 1 5 }  { M_V12_ce0 mem_ce 1 1 }  { M_V12_q0 mem_dout 0 32 } } }
	M_V13 { ap_memory {  { M_V13_address0 mem_address 1 5 }  { M_V13_ce0 mem_ce 1 1 }  { M_V13_q0 mem_dout 0 32 } } }
	M_V14 { ap_memory {  { M_V14_address0 mem_address 1 5 }  { M_V14_ce0 mem_ce 1 1 }  { M_V14_q0 mem_dout 0 32 } } }
	M_V15 { ap_memory {  { M_V15_address0 mem_address 1 5 }  { M_V15_ce0 mem_ce 1 1 }  { M_V15_q0 mem_dout 0 32 } } }
	M_V16 { ap_memory {  { M_V16_address0 mem_address 1 5 }  { M_V16_ce0 mem_ce 1 1 }  { M_V16_q0 mem_dout 0 32 } } }
	M_V17 { ap_memory {  { M_V17_address0 mem_address 1 5 }  { M_V17_ce0 mem_ce 1 1 }  { M_V17_q0 mem_dout 0 32 } } }
	M_V18 { ap_memory {  { M_V18_address0 mem_address 1 5 }  { M_V18_ce0 mem_ce 1 1 }  { M_V18_q0 mem_dout 0 32 } } }
	M_V19 { ap_memory {  { M_V19_address0 mem_address 1 5 }  { M_V19_ce0 mem_ce 1 1 }  { M_V19_q0 mem_dout 0 32 } } }
	M_V20 { ap_memory {  { M_V20_address0 mem_address 1 5 }  { M_V20_ce0 mem_ce 1 1 }  { M_V20_q0 mem_dout 0 32 } } }
	M_V21 { ap_memory {  { M_V21_address0 mem_address 1 5 }  { M_V21_ce0 mem_ce 1 1 }  { M_V21_q0 mem_dout 0 32 } } }
	M_V22 { ap_memory {  { M_V22_address0 mem_address 1 5 }  { M_V22_ce0 mem_ce 1 1 }  { M_V22_q0 mem_dout 0 32 } } }
	M_V_offset { ap_none {  { M_V_offset in_data 0 24 } } }
}
