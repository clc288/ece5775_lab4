set moduleName dut_perform_conv_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_perform_conv.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_V1 int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_V2 int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_V3 int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ input_V4 int 14 regular {array 160 { 1 1 } 1 1 }  }
	{ output_V int 14 regular {array 267 { 2 3 } 1 1 }  }
	{ output_V5 int 14 regular {array 267 { 2 3 } 1 1 }  }
	{ output_V6 int 14 regular {array 266 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_V1", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_V2", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_V3", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "input_V4", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V5", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} , 
 	{ "Name" : "output_V6", "interface" : "memory", "bitwidth" : 14, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V_address0 sc_out sc_lv 8 signal 0 } 
	{ input_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_V_q0 sc_in sc_lv 14 signal 0 } 
	{ input_V_address1 sc_out sc_lv 8 signal 0 } 
	{ input_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_V_q1 sc_in sc_lv 14 signal 0 } 
	{ input_V1_address0 sc_out sc_lv 8 signal 1 } 
	{ input_V1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_V1_q0 sc_in sc_lv 14 signal 1 } 
	{ input_V1_address1 sc_out sc_lv 8 signal 1 } 
	{ input_V1_ce1 sc_out sc_logic 1 signal 1 } 
	{ input_V1_q1 sc_in sc_lv 14 signal 1 } 
	{ input_V2_address0 sc_out sc_lv 8 signal 2 } 
	{ input_V2_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_V2_q0 sc_in sc_lv 14 signal 2 } 
	{ input_V2_address1 sc_out sc_lv 8 signal 2 } 
	{ input_V2_ce1 sc_out sc_logic 1 signal 2 } 
	{ input_V2_q1 sc_in sc_lv 14 signal 2 } 
	{ input_V3_address0 sc_out sc_lv 8 signal 3 } 
	{ input_V3_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_V3_q0 sc_in sc_lv 14 signal 3 } 
	{ input_V3_address1 sc_out sc_lv 8 signal 3 } 
	{ input_V3_ce1 sc_out sc_logic 1 signal 3 } 
	{ input_V3_q1 sc_in sc_lv 14 signal 3 } 
	{ input_V4_address0 sc_out sc_lv 8 signal 4 } 
	{ input_V4_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_V4_q0 sc_in sc_lv 14 signal 4 } 
	{ input_V4_address1 sc_out sc_lv 8 signal 4 } 
	{ input_V4_ce1 sc_out sc_logic 1 signal 4 } 
	{ input_V4_q1 sc_in sc_lv 14 signal 4 } 
	{ output_V_address0 sc_out sc_lv 9 signal 5 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_V_we0 sc_out sc_logic 1 signal 5 } 
	{ output_V_d0 sc_out sc_lv 14 signal 5 } 
	{ output_V_q0 sc_in sc_lv 14 signal 5 } 
	{ output_V5_address0 sc_out sc_lv 9 signal 6 } 
	{ output_V5_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_V5_we0 sc_out sc_logic 1 signal 6 } 
	{ output_V5_d0 sc_out sc_lv 14 signal 6 } 
	{ output_V5_q0 sc_in sc_lv 14 signal 6 } 
	{ output_V6_address0 sc_out sc_lv 9 signal 7 } 
	{ output_V6_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_V6_we0 sc_out sc_logic 1 signal 7 } 
	{ output_V6_d0 sc_out sc_lv 14 signal 7 } 
	{ output_V6_q0 sc_in sc_lv 14 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "address0" }} , 
 	{ "name": "input_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce0" }} , 
 	{ "name": "input_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V", "role": "q0" }} , 
 	{ "name": "input_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "address1" }} , 
 	{ "name": "input_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce1" }} , 
 	{ "name": "input_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V", "role": "q1" }} , 
 	{ "name": "input_V1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V1", "role": "address0" }} , 
 	{ "name": "input_V1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V1", "role": "ce0" }} , 
 	{ "name": "input_V1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V1", "role": "q0" }} , 
 	{ "name": "input_V1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V1", "role": "address1" }} , 
 	{ "name": "input_V1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V1", "role": "ce1" }} , 
 	{ "name": "input_V1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V1", "role": "q1" }} , 
 	{ "name": "input_V2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V2", "role": "address0" }} , 
 	{ "name": "input_V2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V2", "role": "ce0" }} , 
 	{ "name": "input_V2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V2", "role": "q0" }} , 
 	{ "name": "input_V2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V2", "role": "address1" }} , 
 	{ "name": "input_V2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V2", "role": "ce1" }} , 
 	{ "name": "input_V2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V2", "role": "q1" }} , 
 	{ "name": "input_V3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V3", "role": "address0" }} , 
 	{ "name": "input_V3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V3", "role": "ce0" }} , 
 	{ "name": "input_V3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V3", "role": "q0" }} , 
 	{ "name": "input_V3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V3", "role": "address1" }} , 
 	{ "name": "input_V3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V3", "role": "ce1" }} , 
 	{ "name": "input_V3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V3", "role": "q1" }} , 
 	{ "name": "input_V4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V4", "role": "address0" }} , 
 	{ "name": "input_V4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V4", "role": "ce0" }} , 
 	{ "name": "input_V4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V4", "role": "q0" }} , 
 	{ "name": "input_V4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V4", "role": "address1" }} , 
 	{ "name": "input_V4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V4", "role": "ce1" }} , 
 	{ "name": "input_V4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "input_V4", "role": "q1" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }} , 
 	{ "name": "output_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V", "role": "q0" }} , 
 	{ "name": "output_V5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_V5", "role": "address0" }} , 
 	{ "name": "output_V5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V5", "role": "ce0" }} , 
 	{ "name": "output_V5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V5", "role": "we0" }} , 
 	{ "name": "output_V5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V5", "role": "d0" }} , 
 	{ "name": "output_V5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V5", "role": "q0" }} , 
 	{ "name": "output_V6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_V6", "role": "address0" }} , 
 	{ "name": "output_V6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V6", "role": "ce0" }} , 
 	{ "name": "output_V6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V6", "role": "we0" }} , 
 	{ "name": "output_V6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V6", "role": "d0" }} , 
 	{ "name": "output_V6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "output_V6", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"], "CDFG" : "dut_perform_conv_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_V1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_V2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_V3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_V4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V5", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V6", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_conv2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_conv2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_12ns_3ns_3_16_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_5ns_3ns_3_9_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_12ns_3ns_3_16_U42", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U49", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U50", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_10ns_4ns_10_14_U51", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U52", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U53", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U54", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U55", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U56", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U57", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U58", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U59", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mux_5to1_sel32_14_1_U60", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_urem_13ns_3ns_3_17_seq_U61", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14ns_12ns_26_1_U62", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U63", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U64", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U65", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U66", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U67", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U68", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U69", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U70", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U71", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U72", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U73", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U74", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U75", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U76", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U77", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U78", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14s_12s_26_1_U79", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_12ns_10ns_22_1_U80", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14ns_12ns_26_1_U81", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_14ns_12ns_26_1_U82", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_15ns_13ns_28_1_U83", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "104499", "Max" : "104499"}
	, {"Name" : "Interval", "Min" : "104499", "Max" : "104499"}
]}

set Spec2ImplPortList { 
	input_V { ap_memory {  { input_V_address0 mem_address 1 8 }  { input_V_ce0 mem_ce 1 1 }  { input_V_q0 mem_dout 0 14 }  { input_V_address1 mem_address 1 8 }  { input_V_ce1 mem_ce 1 1 }  { input_V_q1 mem_dout 0 14 } } }
	input_V1 { ap_memory {  { input_V1_address0 mem_address 1 8 }  { input_V1_ce0 mem_ce 1 1 }  { input_V1_q0 mem_dout 0 14 }  { input_V1_address1 mem_address 1 8 }  { input_V1_ce1 mem_ce 1 1 }  { input_V1_q1 mem_dout 0 14 } } }
	input_V2 { ap_memory {  { input_V2_address0 mem_address 1 8 }  { input_V2_ce0 mem_ce 1 1 }  { input_V2_q0 mem_dout 0 14 }  { input_V2_address1 mem_address 1 8 }  { input_V2_ce1 mem_ce 1 1 }  { input_V2_q1 mem_dout 0 14 } } }
	input_V3 { ap_memory {  { input_V3_address0 mem_address 1 8 }  { input_V3_ce0 mem_ce 1 1 }  { input_V3_q0 mem_dout 0 14 }  { input_V3_address1 mem_address 1 8 }  { input_V3_ce1 mem_ce 1 1 }  { input_V3_q1 mem_dout 0 14 } } }
	input_V4 { ap_memory {  { input_V4_address0 mem_address 1 8 }  { input_V4_ce0 mem_ce 1 1 }  { input_V4_q0 mem_dout 0 14 }  { input_V4_address1 mem_address 1 8 }  { input_V4_ce1 mem_ce 1 1 }  { input_V4_q1 mem_dout 0 14 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 9 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 14 }  { output_V_q0 mem_dout 0 14 } } }
	output_V5 { ap_memory {  { output_V5_address0 mem_address 1 9 }  { output_V5_ce0 mem_ce 1 1 }  { output_V5_we0 mem_we 1 1 }  { output_V5_d0 mem_din 1 14 }  { output_V5_q0 mem_dout 0 14 } } }
	output_V6 { ap_memory {  { output_V6_address0 mem_address 1 9 }  { output_V6_ce0 mem_ce 1 1 }  { output_V6_we0 mem_we 1 1 }  { output_V6_d0 mem_din 1 14 }  { output_V6_q0 mem_dout 0 14 } } }
}
