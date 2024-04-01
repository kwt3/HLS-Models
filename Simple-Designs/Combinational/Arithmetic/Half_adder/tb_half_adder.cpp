#include <iostream>
#include "half_adder.hpp"

int main() {
    bool a, b, sum, carry_out;

    // Test case 1: a=0, b=0
    a = false;
    b = false;
    half_adder(a, b, sum, carry_out);
    std::cout << "When a=0, b=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 2: a=0, b=1
    a = false;
    b = true;
    half_adder(a, b, sum, carry_out);
    std::cout << "When a=0, b=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 3: a=1, b=0
    a = true;
    b = false;
    half_adder(a, b, sum, carry_out);
    std::cout << "When a=1, b=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 4: a=1, b=1
    a = true;
    b = true;
    half_adder(a, b, sum, carry_out);
    std::cout << "When a=1, b=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    return 0;
}
