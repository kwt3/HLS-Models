#include "counter.hpp"

void increment(ap_uint<1> &reset, ap_uint<4> &out, const int max_count) {
    static int count = 0;

    // Check for reset signal
    if (reset == 1) {
        count = (max_count == 12) ? 1 : 0; // Reset count based on max_count
    } else {
        if (count == max_count) {
            count = (max_count == 12) ? 1 : 0; // Reset count to 1 or 0 based on max_count
        } else {
            count++;
        }
    }

    // Output the current count
    out = count;
}
