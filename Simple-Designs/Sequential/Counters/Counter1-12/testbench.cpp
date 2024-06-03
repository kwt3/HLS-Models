#include <iostream>
#include <ap_int.h>
#include "counter.hpp"

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Test the 1-12 counter
    std::cout << "Testing 1-12 counter:\n";
    for (int i = 0; i < 20; ++i) {
        // Reset the counter at i = 10
        reset = (i == 10) ? 1 : 0;

        // Call the counter function with max_value set to 12
        increment_counter(reset, out, 12);

        // Print the output
        std::cout << "At time " << i << ", count = " << out.to_uint() << std::endl;
    }

    return 0;
}
