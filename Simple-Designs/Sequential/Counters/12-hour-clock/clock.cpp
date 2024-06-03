#include "clock.hpp"

void clock(ap_uint<1> reset, ap_uint<1> ena, hls::stream<ap_uint<8>> &hh, hls::stream<ap_uint<8>> &mm, hls::stream<ap_uint<8>> &ss, hls::stream<ap_uint<1>> &pm) {
    // State variables
    static ap_uint<8> hours = 12;
    static ap_uint<8> minutes = 0;
    static ap_uint<8> seconds = 0;
    static ap_uint<1> pm_indicator = 0;

    #pragma HLS PIPELINE II=1

    // Check for reset signal
    if (reset == 1) {
        hours = 12;
        minutes = 0;
        seconds = 0;
        pm_indicator = 0;
    } else if (ena == 1) {
        // Increment the clock
        seconds++;
        if (seconds == 60) {
            seconds = 0;
            minutes++;
            if (minutes == 60) {
                minutes = 0;
                hours++;
                if (hours == 13) {
                    hours = 1;
                } else if (hours == 12) {
                    pm_indicator = !pm_indicator;
                }
            }
        }
    }

    // Output the current time
    hh.write(hours);
    mm.write(minutes);
    ss.write(seconds);
    pm.write(pm_indicator);
}
