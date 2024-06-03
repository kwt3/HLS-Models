#ifndef CLOCK_HPP
#define CLOCK_HPP

#include <ap_int.h>
#include <hls_stream.h>

void clock(ap_uint<1> reset, ap_uint<1> ena, hls::stream<ap_uint<8>> &hh, hls::stream<ap_uint<8>> &mm, hls::stream<ap_uint<8>> &ss, hls::stream<ap_uint<1>> &pm);

#endif // CLOCK_HPP
