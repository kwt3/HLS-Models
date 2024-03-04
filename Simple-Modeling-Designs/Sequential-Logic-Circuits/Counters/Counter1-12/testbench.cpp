#include <iostream>
#include <ap_int.h>
#include "counter.hpp"

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;
    Counter4 counter4;
    Counter12 counter12;

    // Test the 4-bit counter
    std::cout << "Testing 4-bit counter:\n";
    for (int i = 0; i < 20; i++) {
        // Reset the counter at i = 10
        reset = (i == 10) ? 1 : 0;

        // Call the counter function
        counter4.increment(reset, out);

        // Print the output
        std::cout << "At time " << i << ", count = " << out.to_uint() << std::endl;
    }

    // Test the 1-12 counter
    std::cout << "\nTesting 1-12 counter:\n";
    for (int i = 0; i < 20; i++) {
        // Reset the counter at i = 10
        reset = (i == 10) ? 1 : 0;

        // Call the counter function
        counter12.increment(reset, out);

        // Print the output
        std::cout << "At time " << i << ", count = " << out.to_uint() << std::endl;
    }

    return 0;
}
