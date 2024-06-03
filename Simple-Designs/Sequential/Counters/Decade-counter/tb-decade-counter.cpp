#include <iostream>
#include <ap_int.h>
#include "decade-counter.hpp"

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Test the decade counter
    std::cout << "Testing decade counter:\n";
    for (int i = 0; i < 20; ++i) {
        // Reset the counter at i = 10
        if (i == 10) {
            reset = 1;
        } else {
            reset = 0;
        }

        // Call the counter function
        counter(reset, out);

        // Print the output
        std::cout << "At time " << i << ", count = " << out.to_uint() << std::endl;
    }

    return 0;
}
