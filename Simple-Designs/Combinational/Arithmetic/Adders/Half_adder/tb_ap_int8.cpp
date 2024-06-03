#include "half_adder.hpp"
#include <iostream>
#include <ap_int.h>

int main() {
    // Test cases for ap_int<8>
    ap_int<8> A_apint8 = 5;
    ap_int<8> B_apint8 = 3;
    ap_int<8> sum_result_apint8 = 0;
    ap_int<8> carry_result_apint8 = 0;

    // Calculate half adder result for ap_int<8>
    half_adder(A_apint8, B_apint8, sum_result_apint8, carry_result_apint8);

    // Print result for ap_int<8>
    std::cout << "Input (ap_int<8>): A=" << A_apint8 << ", B=" << B_apint8 << std::endl;
    std::cout << "Sum: " << sum_result_apint8 << std::endl;
    std::cout << "Carry: " << carry_result_apint8 << std::endl;

    // Verify the results for ap_int<8>
    ap_int<8> expected_sum_apint8 = A_apint8 ^ B_apint8;
    ap_int<8> expected_carry_apint8 = A_apint8 & B_apint8;

    if (sum_result_apint8 == expected_sum_apint8 && carry_result_apint8 == expected_carry_apint8) {
        std::cout << "Test Passed for ap_int<8>." << std::endl;
    } else {
        std::cout << "Test Failed for ap_int<8>." << std::endl;
    }

    return 0;
}
