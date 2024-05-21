#include <iostream>
#include "alu_half_add_sub.hpp"
#include "ap_int.h"

int main() {
    std::cout << "\nTesting with ap_int<16>:" << std::endl;
    // Test vectors for ap_int<16>
    ap_int<16> a_values_16[] = {500, 1000, 1500, 2000};
    ap_int<16> b_values_16[] = {300, 600, 900, 1200};

    for (int i = 0; i < 4; ++i) {
        ap_int<16> A_16 = a_values_16[i];
        ap_int<16> B_16 = b_values_16[i];
        ap_int<16> sum_16, carry_16;

        // Call the half_adder function for addition for ap_int<16>
        half_add_sub(A_16, B_16, sum_16, carry_16, 0); // 0 represents addition

        std::cout << "Addition: Input: A=" << A_16 << ", B=" << B_16;
        std::cout << " | Output: Sum=" << sum_16 << ", Carry=" << carry_16 << std::endl;

        // Call the half_adder function for subtraction for ap_int<16>
        half_add_sub(A_16, B_16, sum_16, carry_16, 1); // 1 represents subtraction

        std::cout << "Subtraction: Input: A=" << A_16 << ", B=" << B_16;
        std::cout << " | Output: Sum=" << sum_16 << ", Carry=" << carry_16 << std::endl;
    }

    return 0;
}