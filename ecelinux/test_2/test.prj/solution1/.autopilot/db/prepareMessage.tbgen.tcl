set moduleName prepareMessage
set isTopModule 1
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
set C_modelName {prepareMessage}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 32 regular {array 20 { 1 3 } 1 1 }  }
	{ bitlength int 32 regular  }
	{ M_0_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_1_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_2_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_3_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_4_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_5_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_6_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_7_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_8_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_9_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_10_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_11_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_12_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_13_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_14_V int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ M_15_V int 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "bitlength", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bitlength","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "M_0_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "M_1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "M_2_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "M_3_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "M_4_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "M_5_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "M_6_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "M_7_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "M_8_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 8,"up" : 8,"step" : 2}]}]}]} , 
 	{ "Name" : "M_9_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 9,"up" : 9,"step" : 2}]}]}]} , 
 	{ "Name" : "M_10_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 10,"up" : 10,"step" : 2}]}]}]} , 
 	{ "Name" : "M_11_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 11,"up" : 11,"step" : 2}]}]}]} , 
 	{ "Name" : "M_12_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 12,"up" : 12,"step" : 2}]}]}]} , 
 	{ "Name" : "M_13_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 13,"up" : 13,"step" : 2}]}]}]} , 
 	{ "Name" : "M_14_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 14,"up" : 14,"step" : 2}]}]}]} , 
 	{ "Name" : "M_15_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "M.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 15,"up" : 15,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V_address0 sc_out sc_lv 5 signal 0 } 
	{ input_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_V_q0 sc_in sc_lv 32 signal 0 } 
	{ bitlength sc_in sc_lv 32 signal 1 } 
	{ M_0_V_address0 sc_out sc_lv 5 signal 2 } 
	{ M_0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ M_0_V_we0 sc_out sc_logic 1 signal 2 } 
	{ M_0_V_d0 sc_out sc_lv 32 signal 2 } 
	{ M_1_V_address0 sc_out sc_lv 5 signal 3 } 
	{ M_1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ M_1_V_we0 sc_out sc_logic 1 signal 3 } 
	{ M_1_V_d0 sc_out sc_lv 32 signal 3 } 
	{ M_2_V_address0 sc_out sc_lv 5 signal 4 } 
	{ M_2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ M_2_V_we0 sc_out sc_logic 1 signal 4 } 
	{ M_2_V_d0 sc_out sc_lv 32 signal 4 } 
	{ M_3_V_address0 sc_out sc_lv 5 signal 5 } 
	{ M_3_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ M_3_V_we0 sc_out sc_logic 1 signal 5 } 
	{ M_3_V_d0 sc_out sc_lv 32 signal 5 } 
	{ M_4_V_address0 sc_out sc_lv 5 signal 6 } 
	{ M_4_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ M_4_V_we0 sc_out sc_logic 1 signal 6 } 
	{ M_4_V_d0 sc_out sc_lv 32 signal 6 } 
	{ M_5_V_address0 sc_out sc_lv 5 signal 7 } 
	{ M_5_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ M_5_V_we0 sc_out sc_logic 1 signal 7 } 
	{ M_5_V_d0 sc_out sc_lv 32 signal 7 } 
	{ M_6_V_address0 sc_out sc_lv 5 signal 8 } 
	{ M_6_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ M_6_V_we0 sc_out sc_logic 1 signal 8 } 
	{ M_6_V_d0 sc_out sc_lv 32 signal 8 } 
	{ M_7_V_address0 sc_out sc_lv 5 signal 9 } 
	{ M_7_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ M_7_V_we0 sc_out sc_logic 1 signal 9 } 
	{ M_7_V_d0 sc_out sc_lv 32 signal 9 } 
	{ M_8_V_address0 sc_out sc_lv 5 signal 10 } 
	{ M_8_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ M_8_V_we0 sc_out sc_logic 1 signal 10 } 
	{ M_8_V_d0 sc_out sc_lv 32 signal 10 } 
	{ M_9_V_address0 sc_out sc_lv 5 signal 11 } 
	{ M_9_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ M_9_V_we0 sc_out sc_logic 1 signal 11 } 
	{ M_9_V_d0 sc_out sc_lv 32 signal 11 } 
	{ M_10_V_address0 sc_out sc_lv 5 signal 12 } 
	{ M_10_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ M_10_V_we0 sc_out sc_logic 1 signal 12 } 
	{ M_10_V_d0 sc_out sc_lv 32 signal 12 } 
	{ M_11_V_address0 sc_out sc_lv 5 signal 13 } 
	{ M_11_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ M_11_V_we0 sc_out sc_logic 1 signal 13 } 
	{ M_11_V_d0 sc_out sc_lv 32 signal 13 } 
	{ M_12_V_address0 sc_out sc_lv 5 signal 14 } 
	{ M_12_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ M_12_V_we0 sc_out sc_logic 1 signal 14 } 
	{ M_12_V_d0 sc_out sc_lv 32 signal 14 } 
	{ M_13_V_address0 sc_out sc_lv 5 signal 15 } 
	{ M_13_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ M_13_V_we0 sc_out sc_logic 1 signal 15 } 
	{ M_13_V_d0 sc_out sc_lv 32 signal 15 } 
	{ M_14_V_address0 sc_out sc_lv 5 signal 16 } 
	{ M_14_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ M_14_V_we0 sc_out sc_logic 1 signal 16 } 
	{ M_14_V_d0 sc_out sc_lv 32 signal 16 } 
	{ M_15_V_address0 sc_out sc_lv 5 signal 17 } 
	{ M_15_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ M_15_V_we0 sc_out sc_logic 1 signal 17 } 
	{ M_15_V_d0 sc_out sc_lv 32 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_V", "role": "address0" }} , 
 	{ "name": "input_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce0" }} , 
 	{ "name": "input_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V", "role": "q0" }} , 
 	{ "name": "bitlength", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitlength", "role": "default" }} , 
 	{ "name": "M_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_0_V", "role": "address0" }} , 
 	{ "name": "M_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_0_V", "role": "ce0" }} , 
 	{ "name": "M_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_0_V", "role": "we0" }} , 
 	{ "name": "M_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_0_V", "role": "d0" }} , 
 	{ "name": "M_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_1_V", "role": "address0" }} , 
 	{ "name": "M_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_1_V", "role": "ce0" }} , 
 	{ "name": "M_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_1_V", "role": "we0" }} , 
 	{ "name": "M_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_1_V", "role": "d0" }} , 
 	{ "name": "M_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_2_V", "role": "address0" }} , 
 	{ "name": "M_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_2_V", "role": "ce0" }} , 
 	{ "name": "M_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_2_V", "role": "we0" }} , 
 	{ "name": "M_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_2_V", "role": "d0" }} , 
 	{ "name": "M_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_3_V", "role": "address0" }} , 
 	{ "name": "M_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_3_V", "role": "ce0" }} , 
 	{ "name": "M_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_3_V", "role": "we0" }} , 
 	{ "name": "M_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_3_V", "role": "d0" }} , 
 	{ "name": "M_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_4_V", "role": "address0" }} , 
 	{ "name": "M_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_4_V", "role": "ce0" }} , 
 	{ "name": "M_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_4_V", "role": "we0" }} , 
 	{ "name": "M_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_4_V", "role": "d0" }} , 
 	{ "name": "M_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_5_V", "role": "address0" }} , 
 	{ "name": "M_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_5_V", "role": "ce0" }} , 
 	{ "name": "M_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_5_V", "role": "we0" }} , 
 	{ "name": "M_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_5_V", "role": "d0" }} , 
 	{ "name": "M_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_6_V", "role": "address0" }} , 
 	{ "name": "M_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_6_V", "role": "ce0" }} , 
 	{ "name": "M_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_6_V", "role": "we0" }} , 
 	{ "name": "M_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_6_V", "role": "d0" }} , 
 	{ "name": "M_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_7_V", "role": "address0" }} , 
 	{ "name": "M_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_7_V", "role": "ce0" }} , 
 	{ "name": "M_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_7_V", "role": "we0" }} , 
 	{ "name": "M_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_7_V", "role": "d0" }} , 
 	{ "name": "M_8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_8_V", "role": "address0" }} , 
 	{ "name": "M_8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_8_V", "role": "ce0" }} , 
 	{ "name": "M_8_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_8_V", "role": "we0" }} , 
 	{ "name": "M_8_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_8_V", "role": "d0" }} , 
 	{ "name": "M_9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_9_V", "role": "address0" }} , 
 	{ "name": "M_9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_9_V", "role": "ce0" }} , 
 	{ "name": "M_9_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_9_V", "role": "we0" }} , 
 	{ "name": "M_9_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_9_V", "role": "d0" }} , 
 	{ "name": "M_10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_10_V", "role": "address0" }} , 
 	{ "name": "M_10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_10_V", "role": "ce0" }} , 
 	{ "name": "M_10_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_10_V", "role": "we0" }} , 
 	{ "name": "M_10_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_10_V", "role": "d0" }} , 
 	{ "name": "M_11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_11_V", "role": "address0" }} , 
 	{ "name": "M_11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_11_V", "role": "ce0" }} , 
 	{ "name": "M_11_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_11_V", "role": "we0" }} , 
 	{ "name": "M_11_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_11_V", "role": "d0" }} , 
 	{ "name": "M_12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_12_V", "role": "address0" }} , 
 	{ "name": "M_12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_12_V", "role": "ce0" }} , 
 	{ "name": "M_12_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_12_V", "role": "we0" }} , 
 	{ "name": "M_12_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_12_V", "role": "d0" }} , 
 	{ "name": "M_13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_13_V", "role": "address0" }} , 
 	{ "name": "M_13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_13_V", "role": "ce0" }} , 
 	{ "name": "M_13_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_13_V", "role": "we0" }} , 
 	{ "name": "M_13_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_13_V", "role": "d0" }} , 
 	{ "name": "M_14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_14_V", "role": "address0" }} , 
 	{ "name": "M_14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_14_V", "role": "ce0" }} , 
 	{ "name": "M_14_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_14_V", "role": "we0" }} , 
 	{ "name": "M_14_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_14_V", "role": "d0" }} , 
 	{ "name": "M_15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "M_15_V", "role": "address0" }} , 
 	{ "name": "M_15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_15_V", "role": "ce0" }} , 
 	{ "name": "M_15_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_15_V", "role": "we0" }} , 
 	{ "name": "M_15_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_15_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "prepareMessage",
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
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitlength", "Type" : "None", "Direction" : "I"},
			{"Name" : "M_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_8_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_9_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_10_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_11_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_12_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_13_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_14_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M_15_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	prepareMessage {
		input_V {Type I LastRead 3 FirstWrite -1}
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
		M_15_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_V { ap_memory {  { input_V_address0 mem_address 1 5 }  { input_V_ce0 mem_ce 1 1 }  { input_V_q0 mem_dout 0 32 } } }
	bitlength { ap_none {  { bitlength in_data 0 32 } } }
	M_0_V { ap_memory {  { M_0_V_address0 mem_address 1 5 }  { M_0_V_ce0 mem_ce 1 1 }  { M_0_V_we0 mem_we 1 1 }  { M_0_V_d0 mem_din 1 32 } } }
	M_1_V { ap_memory {  { M_1_V_address0 mem_address 1 5 }  { M_1_V_ce0 mem_ce 1 1 }  { M_1_V_we0 mem_we 1 1 }  { M_1_V_d0 mem_din 1 32 } } }
	M_2_V { ap_memory {  { M_2_V_address0 mem_address 1 5 }  { M_2_V_ce0 mem_ce 1 1 }  { M_2_V_we0 mem_we 1 1 }  { M_2_V_d0 mem_din 1 32 } } }
	M_3_V { ap_memory {  { M_3_V_address0 mem_address 1 5 }  { M_3_V_ce0 mem_ce 1 1 }  { M_3_V_we0 mem_we 1 1 }  { M_3_V_d0 mem_din 1 32 } } }
	M_4_V { ap_memory {  { M_4_V_address0 mem_address 1 5 }  { M_4_V_ce0 mem_ce 1 1 }  { M_4_V_we0 mem_we 1 1 }  { M_4_V_d0 mem_din 1 32 } } }
	M_5_V { ap_memory {  { M_5_V_address0 mem_address 1 5 }  { M_5_V_ce0 mem_ce 1 1 }  { M_5_V_we0 mem_we 1 1 }  { M_5_V_d0 mem_din 1 32 } } }
	M_6_V { ap_memory {  { M_6_V_address0 mem_address 1 5 }  { M_6_V_ce0 mem_ce 1 1 }  { M_6_V_we0 mem_we 1 1 }  { M_6_V_d0 mem_din 1 32 } } }
	M_7_V { ap_memory {  { M_7_V_address0 mem_address 1 5 }  { M_7_V_ce0 mem_ce 1 1 }  { M_7_V_we0 mem_we 1 1 }  { M_7_V_d0 mem_din 1 32 } } }
	M_8_V { ap_memory {  { M_8_V_address0 mem_address 1 5 }  { M_8_V_ce0 mem_ce 1 1 }  { M_8_V_we0 mem_we 1 1 }  { M_8_V_d0 mem_din 1 32 } } }
	M_9_V { ap_memory {  { M_9_V_address0 mem_address 1 5 }  { M_9_V_ce0 mem_ce 1 1 }  { M_9_V_we0 mem_we 1 1 }  { M_9_V_d0 mem_din 1 32 } } }
	M_10_V { ap_memory {  { M_10_V_address0 mem_address 1 5 }  { M_10_V_ce0 mem_ce 1 1 }  { M_10_V_we0 mem_we 1 1 }  { M_10_V_d0 mem_din 1 32 } } }
	M_11_V { ap_memory {  { M_11_V_address0 mem_address 1 5 }  { M_11_V_ce0 mem_ce 1 1 }  { M_11_V_we0 mem_we 1 1 }  { M_11_V_d0 mem_din 1 32 } } }
	M_12_V { ap_memory {  { M_12_V_address0 mem_address 1 5 }  { M_12_V_ce0 mem_ce 1 1 }  { M_12_V_we0 mem_we 1 1 }  { M_12_V_d0 mem_din 1 32 } } }
	M_13_V { ap_memory {  { M_13_V_address0 mem_address 1 5 }  { M_13_V_ce0 mem_ce 1 1 }  { M_13_V_we0 mem_we 1 1 }  { M_13_V_d0 mem_din 1 32 } } }
	M_14_V { ap_memory {  { M_14_V_address0 mem_address 1 5 }  { M_14_V_ce0 mem_ce 1 1 }  { M_14_V_we0 mem_we 1 1 }  { M_14_V_d0 mem_din 1 32 } } }
	M_15_V { ap_memory {  { M_15_V_address0 mem_address 1 5 }  { M_15_V_ce0 mem_ce 1 1 }  { M_15_V_we0 mem_we 1 1 }  { M_15_V_d0 mem_din 1 32 } } }
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
