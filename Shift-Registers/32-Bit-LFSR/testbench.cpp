#include "galois_lfsr.hpp"
#include <iostream>

int main() {
    bool reset = true;
    uint32_t q;

    for (int i = 0; i < 10; ++i) {
        galois_lfsr(reset, q);
        std::cout << "Output: " << std::bitset<32>(q) << std::endl;
        reset = false;
    }

    return 0;
}
