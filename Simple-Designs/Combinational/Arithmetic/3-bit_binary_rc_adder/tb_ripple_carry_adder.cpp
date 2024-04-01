#include <iostream>
#include <array>
#include "ripple_carry_adder.hpp"

int main() {
    std::array<bool, 3> a = {false, true, true};
    std::array<bool, 3> b = {true, false, true};
    bool carry_in = true;
    std::array<bool, 3> sum;
    bool carry_out;

    ripple_carry_adder(a, b, carry_in, sum, carry_out);

    std::cout << "Sum: ";
    for (bool bit : sum) {
        std::cout << bit;
    }
    std::cout << std::endl;

    std::cout << "Carry out: " << carry_out << std::endl;

    return 0;
}
