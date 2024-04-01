#include <iostream>
#include <array>
#include "two_complement_adder.hpp"

int main() {
    std::array<bool, 8> a = {0, 0, 1, 0, 1, 1, 0, 0};
    std::array<bool, 8> b = {0, 1, 0, 0, 1, 1, 0, 1};
    std::array<bool, 8> s;
    bool overflow;

    two_complement_adder(a, b, s, overflow);

    std::cout << "Sum: ";
    for (int i = 7; i >= 0; --i) {
        std::cout << s[i];
    }
    std::cout << std::endl;

    std::cout << "Overflow: " << overflow << std::endl;

    return 0;
}
