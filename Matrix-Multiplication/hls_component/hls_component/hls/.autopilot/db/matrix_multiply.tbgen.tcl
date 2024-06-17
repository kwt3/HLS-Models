set moduleName matrix_multiply
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matrix_multiply}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict A { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C { MEM_WIDTH 32 MEM_SIZE 262144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ A int 32 regular {bram 65536 { 1 1 } 1 1 }  }
	{ B int 32 regular {bram 65536 { 1 1 } 1 1 }  }
	{ C int 32 regular {bram 65536 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_Addr_A sc_out sc_lv 32 signal 0 } 
	{ A_EN_A sc_out sc_logic 1 signal 0 } 
	{ A_WEN_A sc_out sc_lv 4 signal 0 } 
	{ A_Din_A sc_out sc_lv 32 signal 0 } 
	{ A_Dout_A sc_in sc_lv 32 signal 0 } 
	{ A_Clk_A sc_out sc_logic 1 signal 0 } 
	{ A_Rst_A sc_out sc_logic 1 signal 0 } 
	{ A_Addr_B sc_out sc_lv 32 signal 0 } 
	{ A_EN_B sc_out sc_logic 1 signal 0 } 
	{ A_WEN_B sc_out sc_lv 4 signal 0 } 
	{ A_Din_B sc_out sc_lv 32 signal 0 } 
	{ A_Dout_B sc_in sc_lv 32 signal 0 } 
	{ A_Clk_B sc_out sc_logic 1 signal 0 } 
	{ A_Rst_B sc_out sc_logic 1 signal 0 } 
	{ B_Addr_A sc_out sc_lv 32 signal 1 } 
	{ B_EN_A sc_out sc_logic 1 signal 1 } 
	{ B_WEN_A sc_out sc_lv 4 signal 1 } 
	{ B_Din_A sc_out sc_lv 32 signal 1 } 
	{ B_Dout_A sc_in sc_lv 32 signal 1 } 
	{ B_Clk_A sc_out sc_logic 1 signal 1 } 
	{ B_Rst_A sc_out sc_logic 1 signal 1 } 
	{ B_Addr_B sc_out sc_lv 32 signal 1 } 
	{ B_EN_B sc_out sc_logic 1 signal 1 } 
	{ B_WEN_B sc_out sc_lv 4 signal 1 } 
	{ B_Din_B sc_out sc_lv 32 signal 1 } 
	{ B_Dout_B sc_in sc_lv 32 signal 1 } 
	{ B_Clk_B sc_out sc_logic 1 signal 1 } 
	{ B_Rst_B sc_out sc_logic 1 signal 1 } 
	{ C_Addr_A sc_out sc_lv 32 signal 2 } 
	{ C_EN_A sc_out sc_logic 1 signal 2 } 
	{ C_WEN_A sc_out sc_lv 4 signal 2 } 
	{ C_Din_A sc_out sc_lv 32 signal 2 } 
	{ C_Dout_A sc_in sc_lv 32 signal 2 } 
	{ C_Clk_A sc_out sc_logic 1 signal 2 } 
	{ C_Rst_A sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Addr_A" }} , 
 	{ "name": "A_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "EN_A" }} , 
 	{ "name": "A_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "WEN_A" }} , 
 	{ "name": "A_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Din_A" }} , 
 	{ "name": "A_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Dout_A" }} , 
 	{ "name": "A_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Clk_A" }} , 
 	{ "name": "A_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Rst_A" }} , 
 	{ "name": "A_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Addr_B" }} , 
 	{ "name": "A_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "EN_B" }} , 
 	{ "name": "A_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "WEN_B" }} , 
 	{ "name": "A_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Din_B" }} , 
 	{ "name": "A_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "Dout_B" }} , 
 	{ "name": "A_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Clk_B" }} , 
 	{ "name": "A_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "Rst_B" }} , 
 	{ "name": "B_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Addr_A" }} , 
 	{ "name": "B_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "EN_A" }} , 
 	{ "name": "B_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "WEN_A" }} , 
 	{ "name": "B_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Din_A" }} , 
 	{ "name": "B_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Dout_A" }} , 
 	{ "name": "B_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Clk_A" }} , 
 	{ "name": "B_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Rst_A" }} , 
 	{ "name": "B_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Addr_B" }} , 
 	{ "name": "B_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "EN_B" }} , 
 	{ "name": "B_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "WEN_B" }} , 
 	{ "name": "B_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Din_B" }} , 
 	{ "name": "B_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "Dout_B" }} , 
 	{ "name": "B_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Clk_B" }} , 
 	{ "name": "B_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "Rst_B" }} , 
 	{ "name": "C_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Addr_A" }} , 
 	{ "name": "C_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "EN_A" }} , 
 	{ "name": "C_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C", "role": "WEN_A" }} , 
 	{ "name": "C_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Din_A" }} , 
 	{ "name": "C_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Dout_A" }} , 
 	{ "name": "C_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "Clk_A" }} , 
 	{ "name": "C_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "matrix_multiply",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8388611", "EstimateLatencyMax" : "8388611",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "B", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "C", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_1_VITIS_LOOP_11_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "128", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_multiply {
		A {Type I LastRead 128 FirstWrite -1}
		B {Type I LastRead 128 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 129}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8388611", "Max" : "8388611"}
	, {"Name" : "Interval", "Min" : "8388612", "Max" : "8388612"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { bram {  { A_Addr_A MemPortADDR2 1 32 }  { A_EN_A MemPortCE2 1 1 }  { A_WEN_A MemPortWE2 1 4 }  { A_Din_A MemPortDIN2 1 32 }  { A_Dout_A MemPortDOUT2 0 32 }  { A_Clk_A mem_clk 1 1 }  { A_Rst_A mem_rst 1 1 }  { A_Addr_B MemPortADDR2 1 32 }  { A_EN_B MemPortCE2 1 1 }  { A_WEN_B MemPortWE2 1 4 }  { A_Din_B MemPortDIN2 1 32 }  { A_Dout_B MemPortDOUT2 0 32 }  { A_Clk_B mem_clk 1 1 }  { A_Rst_B mem_rst 1 1 } } }
	B { bram {  { B_Addr_A MemPortADDR2 1 32 }  { B_EN_A MemPortCE2 1 1 }  { B_WEN_A MemPortWE2 1 4 }  { B_Din_A MemPortDIN2 1 32 }  { B_Dout_A MemPortDOUT2 0 32 }  { B_Clk_A mem_clk 1 1 }  { B_Rst_A mem_rst 1 1 }  { B_Addr_B MemPortADDR2 1 32 }  { B_EN_B MemPortCE2 1 1 }  { B_WEN_B MemPortWE2 1 4 }  { B_Din_B MemPortDIN2 1 32 }  { B_Dout_B MemPortDOUT2 0 32 }  { B_Clk_B mem_clk 1 1 }  { B_Rst_B mem_rst 1 1 } } }
	C { bram {  { C_Addr_A MemPortADDR2 1 32 }  { C_EN_A MemPortCE2 1 1 }  { C_WEN_A MemPortWE2 1 4 }  { C_Din_A MemPortDIN2 1 32 }  { C_Dout_A MemPortDOUT2 0 32 }  { C_Clk_A mem_clk 1 1 }  { C_Rst_A mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

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
