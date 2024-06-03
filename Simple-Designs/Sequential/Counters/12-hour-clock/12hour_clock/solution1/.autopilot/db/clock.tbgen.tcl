set moduleName clock
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {clock}
set C_modelType { void 0 }
set C_modelArgList {
	{ reset int 1 regular  }
	{ ena int 1 regular  }
	{ hh int 8 regular {fifo 1 volatile }  }
	{ mm int 8 regular {fifo 1 volatile }  }
	{ ss int 8 regular {fifo 1 volatile }  }
	{ pm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ena", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hh", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mm", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ss", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reset sc_in sc_lv 1 signal 0 } 
	{ ena sc_in sc_lv 1 signal 1 } 
	{ hh_din sc_out sc_lv 8 signal 2 } 
	{ hh_full_n sc_in sc_logic 1 signal 2 } 
	{ hh_write sc_out sc_logic 1 signal 2 } 
	{ mm_din sc_out sc_lv 8 signal 3 } 
	{ mm_full_n sc_in sc_logic 1 signal 3 } 
	{ mm_write sc_out sc_logic 1 signal 3 } 
	{ ss_din sc_out sc_lv 8 signal 4 } 
	{ ss_full_n sc_in sc_logic 1 signal 4 } 
	{ ss_write sc_out sc_logic 1 signal 4 } 
	{ pm_din sc_out sc_lv 1 signal 5 } 
	{ pm_full_n sc_in sc_logic 1 signal 5 } 
	{ pm_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "ena", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ena", "role": "default" }} , 
 	{ "name": "hh_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hh", "role": "din" }} , 
 	{ "name": "hh_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hh", "role": "full_n" }} , 
 	{ "name": "hh_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hh", "role": "write" }} , 
 	{ "name": "mm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mm", "role": "din" }} , 
 	{ "name": "mm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm", "role": "full_n" }} , 
 	{ "name": "mm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mm", "role": "write" }} , 
 	{ "name": "ss_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss", "role": "din" }} , 
 	{ "name": "ss_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss", "role": "full_n" }} , 
 	{ "name": "ss_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ss", "role": "write" }} , 
 	{ "name": "pm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pm", "role": "din" }} , 
 	{ "name": "pm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pm", "role": "full_n" }} , 
 	{ "name": "pm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "clock",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ena", "Type" : "None", "Direction" : "I"},
			{"Name" : "hh", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ss", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ss_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hours", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "minutes", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "seconds", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pm_indicator", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	clock {
		reset {Type I LastRead 0 FirstWrite -1}
		ena {Type I LastRead 0 FirstWrite -1}
		hh {Type O LastRead -1 FirstWrite 0}
		mm {Type O LastRead -1 FirstWrite 0}
		ss {Type O LastRead -1 FirstWrite 0}
		pm {Type O LastRead -1 FirstWrite 0}
		hours {Type IO LastRead -1 FirstWrite -1}
		minutes {Type IO LastRead -1 FirstWrite -1}
		seconds {Type IO LastRead -1 FirstWrite -1}
		pm_indicator {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reset { ap_none {  { reset in_data 0 1 } } }
	ena { ap_none {  { ena in_data 0 1 } } }
	hh { ap_fifo {  { hh_din fifo_data_in 1 8 }  { hh_full_n fifo_status 0 1 }  { hh_write fifo_port_we 1 1 } } }
	mm { ap_fifo {  { mm_din fifo_data_in 1 8 }  { mm_full_n fifo_status 0 1 }  { mm_write fifo_port_we 1 1 } } }
	ss { ap_fifo {  { ss_din fifo_data_in 1 8 }  { ss_full_n fifo_status 0 1 }  { ss_write fifo_port_we 1 1 } } }
	pm { ap_fifo {  { pm_din fifo_data_in 1 1 }  { pm_full_n fifo_status 0 1 }  { pm_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	hh { fifo_write 1 no_conditional }
	mm { fifo_write 1 no_conditional }
	ss { fifo_write 1 no_conditional }
	pm { fifo_write 1 no_conditional }
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
