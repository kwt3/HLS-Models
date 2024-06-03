#include "counter.hpp"

void increment_counter(ap_uint<1> &reset, ap_uint<4> &out, ap_uint<4> max_value) {
    static ap_uint<4> count = 0;

    // Check for reset signal
    if (reset == 1) {
        count = (max_value == 12) ? 1 : 0;  // Start from 1 if 1-12 counter, else 0
    } else {
        if (count == max_value) {
            count = (max_value == 12) ? 1 : 0;  // Wrap around to 1 or 0
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
