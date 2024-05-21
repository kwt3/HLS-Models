#include <iostream>
#include "alu_half_add_sub.hpp"
#include "ap_int.h"

int main() {
    std::cout << "Testing with ap_uint<8>:" << std::endl;

    // Test vectors for ap_uint<8>
    ap_uint<8> a_values[] = {50, 100, 150, 200};
    ap_uint<8> b_values[] = {30, 60, 90, 120};

    for (int i = 0; i < 4; ++i) {
        ap_uint<8> A = a_values[i];
        ap_uint<8> B = b_values[i];
        ap_uint<8> sum, carry;

        // Call the half_adder function for addition for ap_uint<8>
        half_add_sub(A, B, sum, carry, 0); // 0 represents addition

        std::cout << "Addition: Input: A=" << A << ", B=" << B;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;

        // Call the half_adder function for subtraction for ap_uint<8>
        half_add_sub(A, B, sum, carry, 1); // 1 represents subtraction

        std::cout << "Subtraction: Input: A=" << A << ", B=" << B;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;
    }

    return 0;
}
