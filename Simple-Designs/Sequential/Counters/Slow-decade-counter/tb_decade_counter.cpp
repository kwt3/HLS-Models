#include "decade_counter.hpp"
#include <iostream>

int main() {
    ap_uint<1> reset;
    ap_uint<1> slowena;
    ap_uint<4> out;

    // Initialize the counter
    reset = 1;
    slowena = 0;
    decade_counter(reset, slowena, out);
    std::cout << "Initial Count: " << out.to_uint() << std::endl;

    // Let the counter run for a while
    reset = 0;
    slowena = 1;
    for (int i = 0; i < 15; i++) {
        decade_counter(reset, slowena, out);
        std::cout << "Count: " << out.to_uint() << std::endl;
    }

    // Pause the counter
    slowena = 0;
    for (int i = 0; i < 5; i++) {
        decade_counter(reset, slowena, out);
        std::cout << "Count (paused): " << out.to_uint() << std::endl;
    }

    // Continue the counter
    slowena = 1;
    for (int i = 0; i < 5; i++) {
        decade_counter(reset, slowena, out);
        std::cout << "Count: " << out.to_uint() << std::endl;
    }

    return 0;
}
