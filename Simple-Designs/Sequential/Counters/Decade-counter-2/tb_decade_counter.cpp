#include "decade_counter.hpp"
#include <iostream>

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Initialize the counter
    reset = 1;
    decade_counter(reset, out);
    std::cout << "Initial Count: " << out.to_uint() << std::endl;

    // Let the counter run for a while
    reset = 0;
    for (int i = 0; i < 15; i++) {
        decade_counter(reset, out);
        std::cout << "Count: " << out.to_uint() << std::endl;
    }

    return 0;
}
