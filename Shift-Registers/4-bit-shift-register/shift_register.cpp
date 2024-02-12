#include "shift_register.hpp"

void shift_register(ap_uint<1> &areset, ap_uint<1> &load, ap_uint<1> &ena, ap_uint<4> &data, ap_uint<4> &q) {
    // Static variable retains its value between invocations
    static ap_uint<4> reg = 0;

    // Check for asynchronous reset signal
    if (areset == 1) {
        reg = 0;
    } else if (load == 1) {
        // Load data into the shift register
        reg = data;
    } else if (ena == 1) {
        // Shift right
        reg >>= 1;
    }

    // Output the contents of the shift register
    q = reg;
}
