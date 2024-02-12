#include "decade_counter.hpp"

void decade_counter(ap_uint<1> &reset, ap_uint<4> &out) {
    // Static variable retains its value between invocations
    static ap_uint<4> count = 1;

    // Check for reset signal
    if (reset == 1) {
        count = 1;
    } else {
        if (count == 10) {
            count = 1;
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
