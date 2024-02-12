#include "counter.hpp"

void Counter4::increment(ap_uint<1> &reset, ap_uint<4> &out) {
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

void Counter12::increment(ap_uint<1> &reset, ap_uint<4> &out) {
    // Check for reset signal
    if (reset == 1) {
        count = 1;
    } else {
        if (count == 12) {
            count = 1;
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
