#include "half_adder.hpp"
#include <iostream>
#include <ap_int.h>

// Used for ap_uint<8> output formatting
std::ostream& operator<<(std::ostream& os, const ap_uint<8>& val) {
    os << static_cast<unsigned int>(val); // Outputting the integer value
    return os;
}

int main() {
    // Test cases for ap_uint<8>
    ap_uint<8> A_apuint8 = 5;
    ap_uint<8> B_apuint8 = 3;
    ap_uint<8> sum_result_apuint8 = 0;
    ap_uint<8> carry_result_apuint8 = 0;

    // Calculate half adder result for ap_uint<8>
    half_adder(A_apuint8, B_apuint8, sum_result_apuint8, carry_result_apuint8);

    // Print result for ap_uint<8>
    std::cout << "Input (ap_uint<8>): A=" << A_apuint8 << ", B=" << B_apuint8 << std::endl;
    std::cout << "Sum: " << sum_result_apuint8 << std::endl;
    std::cout << "Carry: " << carry_result_apuint8 << std::endl;

    // Verify the results for ap_uint<8>
    ap_uint<8> expected_sum_apuint8 = A_apuint8 ^ B_apuint8;
    ap_uint<8> expected_carry_apuint8 = A_apuint8 & B_apuint8;

    if (sum_result_apuint8 == expected_sum_apuint8 && carry_result_apuint8 == expected_carry_apuint8) {
        std::cout << "Test Passed for ap_uint<8>." << std::endl;
    } else {
        std::cout << "Test Failed for ap_uint<8>." << std::endl;
    }

    return 0;
}
