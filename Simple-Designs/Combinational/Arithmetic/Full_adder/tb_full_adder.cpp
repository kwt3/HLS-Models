#include <iostream>
#include "full_adder.hpp"

int main() {
    bool a, b, carry_in, sum, carry_out;

    // Test case 1: a=0, b=0, carry_in=0
    a = false;
    b = false;
    carry_in = false;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=0, b=0, carry_in=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 2: a=0, b=1, carry_in=0
    a = false;
    b = true;
    carry_in = false;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=0, b=1, carry_in=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 3: a=1, b=0, carry_in=0
    a = true;
    b = false;
    carry_in = false;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=1, b=0, carry_in=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 4: a=1, b=1, carry_in=0
    a = true;
    b = true;
    carry_in = false;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=1, b=1, carry_in=0, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 5: a=0, b=0, carry_in=1
    a = false;
    b = false;
    carry_in = true;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=0, b=0, carry_in=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 6: a=0, b=1, carry_in=1
    a = false;
    b = true;
    carry_in = true;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=0, b=1, carry_in=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 7: a=1, b=0, carry_in=1
    a = true;
    b = false;
    carry_in = true;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=1, b=0, carry_in=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    // Test case 8: a=1, b=1, carry_in=1
    a = true;
    b = true;
    carry_in = true;
    full_adder(a, b, carry_in, sum, carry_out);
    std::cout << "When a=1, b=1, carry_in=1, sum=" << sum << ", carry_out=" << carry_out << std::endl;

    return 0;
}
