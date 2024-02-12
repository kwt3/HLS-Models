#include "clock.hpp"

void clock(ap_uint<1> &reset, ap_uint<1> &ena, ap_uint<8> &hh, ap_uint<8> &mm, ap_uint<8> &ss, ap_uint<1> &pm) {
    // Static variables retain their values between invocations
    static ap_uint<8> hours = 12;
    static ap_uint<8> minutes = 0;
    static ap_uint<8> seconds = 0;
    static ap_uint<1> pm_indicator = 0;

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
    hh = hours;
    mm = minutes;
    ss = seconds;
    pm = pm_indicator;
}
