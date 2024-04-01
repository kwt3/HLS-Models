#include <iostream>
#include <array>
#include "bcd_4_digit_adder.hpp"

int main() {
    std::array<unsigned int, 4> a = {1, 2, 3, 4}; // Example packed BCD input a
    std::array<unsigned int, 4> b = {5, 6, 7, 8}; // Example packed BCD input b
    bool cin = false; // Example carry-in value
    bool cout; // Output carry-out
    std::array<unsigned int, 4> sum; // Output sum

    // Perform BCD addition
    bcd_4_digit_adder(a, b, cin, cout, sum);

    // Output sum and carry-out
    std::cout << "Sum: ";
    for (int i = 3; i >= 0; --i) {
        std::cout << sum[i] << " ";
    }
    std::cout << std::endl;
    std::cout << "Carry-out: " << cout << std::endl;

    return 0;
}
