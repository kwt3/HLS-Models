#include "clock.hpp"
#include <iostream>
#include <hls_stream.h>
#include <iomanip> // Include this header for std::setw and std::setfill

int main() {
    ap_uint<1> reset = 0;
    ap_uint<1> ena = 1;
    hls::stream<ap_uint<8>> hh;
    hls::stream<ap_uint<8>> mm;
    hls::stream<ap_uint<8>> ss;
    hls::stream<ap_uint<1>> pm;

    // Simulate the clock for a full day (24 hours) in seconds
    for (int i = 0; i < 86400; ++i) {  // 86400 seconds in 24 hours
        clock(reset, ena, hh, mm, ss, pm);

        // Read the output from the clock function
        ap_uint<8> hours = hh.read();
        ap_uint<8> minutes = mm.read();
        ap_uint<8> seconds = ss.read();
        ap_uint<1> pm_indicator = pm.read();

        std::cout << "Time: "
                  << std::setw(2) << std::setfill('0') << static_cast<int>(hours) << ":"
                  << std::setw(2) << std::setfill('0') << static_cast<int>(minutes) << ":"
                  << std::setw(2) << std::setfill('0') << static_cast<int>(seconds) << " "
                  << (pm_indicator ? "PM" : "AM") << std::endl;

        // Reset at specific conditions if needed
        // Example: Reset at the beginning of a new day
        if (hours == 12 && minutes == 0 && seconds == 0 && pm_indicator == 1) {
            reset = 1;
            clock(reset, ena, hh, mm, ss, pm);
            reset = 0;
        }
    }

    return 0;
}
