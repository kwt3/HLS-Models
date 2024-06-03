#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ena", 1, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("hh_din", 8, hls_out, 2, "ap_fifo", "fifo_data_in", 1),
	Port_Property("hh_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("hh_write", 1, hls_out, 2, "ap_fifo", "fifo_port_we", 1),
	Port_Property("mm_din", 8, hls_out, 3, "ap_fifo", "fifo_data_in", 1),
	Port_Property("mm_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("mm_write", 1, hls_out, 3, "ap_fifo", "fifo_port_we", 1),
	Port_Property("ss_din", 8, hls_out, 4, "ap_fifo", "fifo_data_in", 1),
	Port_Property("ss_full_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 1),
	Port_Property("ss_write", 1, hls_out, 4, "ap_fifo", "fifo_port_we", 1),
	Port_Property("pm_din", 1, hls_out, 5, "ap_fifo", "fifo_data_in", 1),
	Port_Property("pm_full_n", 1, hls_in, 5, "ap_fifo", "fifo_status", 1),
	Port_Property("pm_write", 1, hls_out, 5, "ap_fifo", "fifo_port_we", 1),
};
const char* HLS_Design_Meta::dut_name = "clock";
