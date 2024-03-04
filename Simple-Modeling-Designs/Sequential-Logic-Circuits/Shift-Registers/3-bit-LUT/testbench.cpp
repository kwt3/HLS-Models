#include "memory.hpp"
#include <iostream>

int main() {
    uint8_t Z;
    bool shift_enable = true;
    uint8_t S = 0b10101010; // Example input data
    bool A, B, C;

    // Test cases
    for (int i = 0; i < 8; ++i) {
        A = (i >> 2) & 1;
        B = (i >> 1) & 1;
        C = i & 1;

        memory(shift_enable, S, A, B, C, Z);

        std::cout << "Output for ABC = " << A << B << C << ": " << std::bitset<8>(Z) << std::endl;
    }

    return 0;
}
