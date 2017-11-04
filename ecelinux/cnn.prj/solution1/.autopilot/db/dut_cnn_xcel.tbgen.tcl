set moduleName dut_cnn_xcel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_cnn_xcel}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 49 regular  }
	{ output_V int 32 regular {array 576 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V sc_in sc_lv 49 signal 0 } 
	{ output_V_address0 sc_out sc_lv 10 signal 1 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_V_we0 sc_out sc_logic 1 signal 1 } 
	{ output_V_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "input_V", "role": "default" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "56", "88"], "CDFG" : "dut_cnn_xcel", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_273", "Port" : "w_conv1"}]}, 
		{"Name" : "b_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_fu_273", "Port" : "b_conv1"}]}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_1_fu_257", "Port" : "w_conv2"}]}, 
		{"Name" : "b_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_perform_conv_1_fu_257", "Port" : "b_conv2"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_perform_conv_1_fu_257"},
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_perform_conv_fu_273"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_0_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_1_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv1_2_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_0_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_1_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_2_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_3_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_conv2_4_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"], "CDFG" : "dut_perform_conv_1", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.w_conv2_U", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.b_conv2_U", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_12ns_3ns_3_16_U40", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_5ns_3ns_3_9_U41", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_12ns_3ns_3_16_U42", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U43", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U44", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U45", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U46", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U47", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U48", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U49", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U50", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_10ns_4ns_10_14_U51", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U52", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U53", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U54", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U55", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U56", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U57", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U58", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U59", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mux_5to1_sel32_14_1_U60", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_urem_13ns_3ns_3_17_seq_U61", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14ns_12ns_26_1_U62", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U63", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U64", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U65", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U66", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U67", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U68", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U69", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U70", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U71", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U72", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U73", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U74", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U75", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U76", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U77", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U78", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14s_12s_26_1_U79", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_12ns_10ns_22_1_U80", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14ns_12ns_26_1_U81", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_14ns_12ns_26_1_U82", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_1_fu_257.dut_mul_mul_15ns_13ns_28_1_U83", "Parent" : "9", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273", "Parent" : "0", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87"], "CDFG" : "dut_perform_conv", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_0_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "input_2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_4_V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.w_conv1_U", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.b_conv1_U", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_10ns_4ns_4_14_U1", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_9ns_3ns_3_13_U2", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_9ns_3ns_3_13_U3", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_10ns_4ns_4_14_U4", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U5", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_9ns_3ns_3_13_U6", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_4ns_4_10_U7", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U8", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U9", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U10", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U11", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_6ns_3ns_3_10_U12", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mux_5to1_sel32_14_1_U13", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_urem_10ns_4ns_10_14_seq_U14", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mux_5to1_sel32_14_1_U15", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_12ns_10ns_22_1_U16", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mac_muladd_6ns_6ns_5ns_10_1_U17", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U18", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U19", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U20", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U21", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U22", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U23", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U24", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U25", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_14s_12s_26_1_U26", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_12ns_10ns_22_1_U27", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mac_muladd_6ns_6ns_5ns_10_1_U28", "Parent" : "56", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_perform_conv_fu_273.dut_mul_mul_12ns_10ns_22_1_U29", "Parent" : "56", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_sitofp_32s_32_6_U94", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "126970", "Max" : "126970"}
	, {"Name" : "Interval", "Min" : "126970", "Max" : "126970"}
]}

set Spec2ImplPortList { 
	input_V { ap_none {  { input_V in_data 0 49 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 10 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 32 } } }
}
