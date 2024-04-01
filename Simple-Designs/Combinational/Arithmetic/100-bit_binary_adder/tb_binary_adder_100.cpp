#include <iostream>
#include <array>
#include "binary_adder_100.hpp"

int main() {
    std::array<bool, 100> a, b, sum;
    bool carry_in, carry_out;

    // Initialize input arrays
    // Example values are used here
    for (int i = 0; i < 100; ++i) {
        a[i] = (i % 2 == 0) ? true : false;
        b[i] = (i % 3 == 0) ? true : false;
    }

    // Set carry-in value
    carry_in = false;

    // Perform addition
    binary_adder_100(a, b, carry_in, sum, carry_out);

    // Output sum and carry-out
    std::cout << "Sum: ";
    for (int i = 99; i >= 0; --i) {
        std::cout << sum[i];
    }
    std::cout << std::endl;
    std::cout << "Carry-out: " << carry_out << std::endl;

    return 0;
}
