#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("x", 4, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("y", 4, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("cout", 1, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("cout_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("sum_i", 4, hls_in, 3, "ap_ovld", "in_data", 1),
	Port_Property("sum_o", 4, hls_out, 3, "ap_ovld", "out_data", 1),
	Port_Property("sum_o_ap_vld", 1, hls_out, 3, "ap_ovld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "two_full_adders_cascaded";
