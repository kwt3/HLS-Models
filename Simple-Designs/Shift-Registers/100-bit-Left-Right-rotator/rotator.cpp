#include "rotator.hpp"

void rotator(ap_uint<1> &load, ap_uint<2> &ena, ap_uint<100> &data, ap_uint<100> &q) {
    // Static variable retains its value between invocations
    static ap_uint<100> reg = 0;

    // Check for load signal
    if (load == 1) {
        reg = data;
    } else if (ena == 1) {
        // Rotate right
        reg = reg >> 1 | reg[0] << 99;
    } else if (ena == 2) {
        // Rotate left
        reg = reg << 1 | reg[99] >> 99;
    }

    // Output the contents of the rotator
    q = reg;
}
