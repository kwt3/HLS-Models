#include <iostream>
#include <ap_int.h>
#include "rotator.hpp"

int main() {
    ap_uint<1> load;
    ap_uint<2> ena;
    ap_uint<100> data;
    ap_uint<100> q;

    // Test the rotator
    for (int i = 0; i < 200; i++) {
        // Load data into the rotator at i = 50
        load = (i == 50) ? 1 : 0;
        data = 0xFFFFFFFFFFFFFFFFFFFFFFFF;  // Load with all ones

        // Rotate right for the first 100 cycles, then rotate left
        ena = (i < 100) ? 1 : 2;

        // Call the rotator function
        rotator(load, ena, data, q);

        // Print the output
        std::cout << "At time " << i << ", q = " << q.to_uint64() << std::endl;
    }

    return 0;
}
