#include <iostream>
#include "half_adder.hpp"

int main() {
    bool A = true;
    bool B = false;
    bool sum_result = false;
    bool carry_result = false;

    // Calculate half adder result
    half_adder(A, B, sum_result, carry_result);

    // Print result
    std::cout << "Input: A=" << A << ", B=" << B << std::endl;
    std::cout << "Sum: " << sum_result << std::endl;
    std::cout << "Carry: " << carry_result << std::endl;

    // Verify the results
    bool expected_sum = A ^ B;
    bool expected_carry = A & B;

    if (sum_result == expected_sum && carry_result == expected_carry) {
        std::cout << "Test Passed!" << std::endl;
    } else {
        std::cout << "Test Failed!" << std::endl;
    }

    return 0;
}
