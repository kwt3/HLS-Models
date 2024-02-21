#include "clock.hpp"
#include <iostream>

int main() {
    ap_uint<1> reset;
    ap_uint<1> ena;
    ap_uint<8> hh;
    ap_uint<8> mm;
    ap_uint<8> ss;
    ap_uint<1> pm;

    // Initialize the clock
    reset = 1;
    ena = 0;
    clock(reset, ena, hh, mm, ss, pm);

    // Enable the clock and let it run for a while
    reset = 0;
    ena = 1;
    for (int i = 0; i < 10000; i++) {
        clock(reset, ena, hh, mm, ss, pm);
        if (i % 60 == 0) {
            std::cout << "Time: " << hh.to_uint() << ":" << mm.to_uint() << ":" << ss.to_uint() << " " << (pm.to_uint() ? "PM" : "AM") << std::endl;
        }
    }

    return 0;
}
