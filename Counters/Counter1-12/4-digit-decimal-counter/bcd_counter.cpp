#include "bcd_counter.hpp"

void bcd_counter(ap_uint<1> &reset, ap_uint<16> &q, ap_uint<3> &enable) {
    // Static variable retains its value between invocations
    static ap_uint<16> count = 0;

    // Check for reset signal
    if (reset == 1) {
        count = 0;
    } else {
        if (count == 9999) {
            count = 0;
        } else {
            count++;
        }
    }

    // Output the current count
    q = count;

    // Set the enable signals
    enable[0] = (count.range(3, 0) == 9) ? 1 : 0;
    enable[1] = (count.range(7, 4) == 9) ? 1 : 0;
    enable[2] = (count.range(11, 8) == 9) ? 1 : 0;
}
