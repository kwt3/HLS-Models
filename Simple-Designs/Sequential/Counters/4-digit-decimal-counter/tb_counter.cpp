#include <iostream>
#include "counter.hpp"

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Test 4-digit counter
    reset = 0;
    std::cout << "4-digit counter test:" << std::endl;
    for (int i = 0; i < 15; ++i) { // Go through 15 cycles to see wrapping
        increment(reset, out, 9);
        std::cout << "Count: " << out.to_uint() << std::endl;
    }

    // Test 12-digit counter
    reset = 0;
    std::cout << "12-digit counter test:" << std::endl;
    for (int i = 0; i < 15; ++i) { // Go through 15 cycles to see wrapping
        increment(reset, out, 12);
        std::cout << "Count: " << out.to_uint() << std::endl;
    }

    // Test reset functionality
    reset = 1;
    increment(reset, out, 9); // Reset the 4-digit counter
    std::cout << "After reset (4-digit): " << out.to_uint() << std::endl;
    reset = 0;

    increment(reset, out, 9); // Continue counting
    std::cout << "Next count after reset (4-digit): " << out.to_uint() << std::endl;

    reset = 1;
    increment(reset, out, 12); // Reset the 12-digit counter
    std::cout << "After reset (12-digit): " << out.to_uint() << std::endl;
    reset = 0;

    increment(reset, out, 12); // Continue counting
    std::cout << "Next count after reset (12-digit): " << out.to_uint() << std::endl;

    return 0;
}
