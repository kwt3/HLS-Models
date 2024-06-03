#include "decade_counter.hpp"

void decade_counter(ap_uint<1> &reset, ap_uint<1> &slowena, ap_uint<4> &out) {
    // Static variable retains its value between invocations
    static ap_uint<4> count = 0;

    // HLS pragma to indicate that this function should be treated as top-level
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE ap_none port=reset
    #pragma HLS INTERFACE ap_none port=slowena
    #pragma HLS INTERFACE ap_none port=out

    // Synchronous logic to check for reset and slowena signals
    if (reset == 1) {
        count = 0;
    } else if (slowena == 1) {
        // Increment the counter
        if (count == 9) {
            count = 0;
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
