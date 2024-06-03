#include "half_adder.hpp"
#include <iostream>

int main() {
    // Test cases for int
    int A_int = 5;
    int B_int = 3;
    int sum_result_int = 0;
    int carry_result_int = 0;

    // Calculate half adder result for int
    half_adder(A_int, B_int, sum_result_int, carry_result_int);

    // Print result for int
    std::cout << "Input (int): A=" << A_int << ", B=" << B_int << std::endl;
    std::cout << "Sum: " << sum_result_int << std::endl;
    std::cout << "Carry: " << carry_result_int << std::endl;

    // Verify the results for int
    int expected_sum_int = A_int ^ B_int;
    int expected_carry_int = A_int & B_int;

    if (sum_result_int == expected_sum_int && carry_result_int == expected_carry_int) {
        std::cout << "Test Passed for int." << std::endl;
    } else {
        std::cout << "Test Failed for int." << std::endl;
    }

    return 0;
}
