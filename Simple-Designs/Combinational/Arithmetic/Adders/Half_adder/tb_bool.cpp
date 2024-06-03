#include "half_adder.hpp"
#include <iostream>

int main() {
    // Test cases for bool
    bool A_bool = true;
    bool B_bool = false;
    bool sum_result_bool = false;
    bool carry_result_bool = false;

    // Calculate half adder result for bool
    half_adder(A_bool, B_bool, sum_result_bool, carry_result_bool);

    // Print result for bool
    std::cout << "Input (bool): A=" << A_bool << ", B=" << B_bool << std::endl;
    std::cout << "Sum: " << sum_result_bool << std::endl;
    std::cout << "Carry: " << carry_result_bool << std::endl;

    // Verify the results for bool
    bool expected_sum_bool = A_bool ^ B_bool;
    bool expected_carry_bool = A_bool & B_bool;

    if (sum_result_bool == expected_sum_bool && carry_result_bool == expected_carry_bool) {
        std::cout << "Test Passed for bool." << std::endl;
    } else {
        std::cout << "Test Failed for bool." << std::endl;
    }

    return 0;
}
