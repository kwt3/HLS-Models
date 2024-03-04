#include <iostream>
#include <ap_int.h>
#include "shift_register.hpp"

int main() {
    ap_uint<1> areset;
    ap_uint<1> load;
    ap_uint<1> ena;
    ap_uint<4> data;
    ap_uint<4> q;

    // Test the shift register
    for (int i = 0; i < 20; i++) {
        // Reset the shift register at i = 10
        areset = (i == 10) ? 1 : 0;

        // Load data into the shift register at i = 5
        load = (i == 5) ? 1 : 0;
        data = 0xF;  // Load with all ones

        // Enable the shift register at all times except when resetting or loading
        ena = (areset == 1 || load == 1) ? 0 : 1;

        // Call the shift register function
        shift_register(areset, load, ena, data, q);

        // Print the output
        std::cout << "At time " << i << ", q = " << q.to_uint() << std::endl;
    }

    return 0;
}
