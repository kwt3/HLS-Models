#include "decade-counter.hpp"
#include <iostream>

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Test with reset signal
    reset = 1;
    counter(reset, out);
    std::cout << "Output with reset: " << out.to_uint() << std::endl;

    // Test without reset signal
    reset = 0;
    for (int i = 0; i < 15; i++) {
        counter(reset, out);
        std::cout << "Output at count " << i << ": " << out.to_uint() << std::endl;
    }

    return 0;
}
