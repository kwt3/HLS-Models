set moduleName clock
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
	{ reset int 1 regular {pointer 0}  }
	{ ena int 1 regular {pointer 0}  }
	{ hh int 8 regular {pointer 1}  }
	{ mm int 8 regular {pointer 1}  }
	{ ss int 8 regular {pointer 1}  }
	{ pm int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ena", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hh", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mm", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ss", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pm", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reset sc_in sc_lv 1 signal 0 } 
	{ ena sc_in sc_lv 1 signal 1 } 
	{ hh sc_out sc_lv 8 signal 2 } 
	{ hh_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ mm sc_out sc_lv 8 signal 3 } 
	{ mm_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ss sc_out sc_lv 8 signal 4 } 
	{ ss_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ pm sc_out sc_lv 1 signal 5 } 
	{ pm_ap_vld sc_out sc_logic 1 outvld 5 } 
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
 	{ "name": "hh", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hh", "role": "default" }} , 
 	{ "name": "hh_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hh", "role": "ap_vld" }} , 
 	{ "name": "mm", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mm", "role": "default" }} , 
 	{ "name": "mm_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mm", "role": "ap_vld" }} , 
 	{ "name": "ss", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ss", "role": "default" }} , 
 	{ "name": "ss_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ss", "role": "ap_vld" }} , 
 	{ "name": "pm", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pm", "role": "default" }} , 
 	{ "name": "pm_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "pm", "role": "ap_vld" }}  ]}

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
			{"Name" : "hh", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mm", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ss", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pm", "Type" : "Vld", "Direction" : "O"},
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
	hh { ap_vld {  { hh out_data 1 8 }  { hh_ap_vld out_vld 1 1 } } }
	mm { ap_vld {  { mm out_data 1 8 }  { mm_ap_vld out_vld 1 1 } } }
	ss { ap_vld {  { ss out_data 1 8 }  { ss_ap_vld out_vld 1 1 } } }
	pm { ap_vld {  { pm out_data 1 1 }  { pm_ap_vld out_vld 1 1 } } }
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
