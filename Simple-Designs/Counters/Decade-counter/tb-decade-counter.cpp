#include "decade-counter.hpp"

void counter(ap_uint<1> &reset, ap_uint<4> &out) {
    // Static variable retains its value between invocations
    static ap_uint<4> count = 0;

    // Check for reset signal
    if (reset == 1) {
        count = 0;
    } else {
        if (count == 9) {
            count = 0;
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
