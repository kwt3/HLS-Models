#include <iostream>
#include "half_adder.hpp"
#include "ap_int.h"

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
        std::cout << "Test Passed for bool!" << std::endl;
    } else {
        std::cout << "Test Failed for bool!" << std::endl;
    }

/*
    // Test cases for ap_int<8>
    ap_int<8> A_apint8 = 5;
    ap_int<8> B_apint8 = 3;
    ap_int<8> sum_result_apint8 = 0;
    ap_int<8> carry_result_apint8 = 0;

    // Calculate half adder result for ap_int<8>
    half_adder(A_apint8, B_apint8, sum_result_apint8, carry_result_apint8);

    // Print result for ap_int<8>
    std::cout << "Input (ap_int<8>): A=" << A_apint8.to_int() << ", B=" << B_apint8.to_int() << std::endl;
    std::cout << "Sum: " << sum_result_apint8.to_int() << std::endl;
    std::cout << "Carry: " << carry_result_apint8.to_int() << std::endl;

    // Verify the results for ap_int<8>
    ap_int<8> expected_sum_apint8 = A_apint8 ^ B_apint8;
    ap_int<8> expected_carry_apint8 = A_apint8 & B_apint8;

    if (sum_result_apint8 == expected_sum_apint8 && carry_result_apint8 == expected_carry_apint8) {
        std::cout << "Test Passed for ap_int<8>!" << std::endl;
    } else {
        std::cout << "Test Failed for ap_int<8>!" << std::endl;
    }
*/
/*
    // Test cases for ap_uint<8>
    ap_uint<8> A_apuint8 = 5;
    ap_uint<8> B_apuint8 = 3;
    ap_uint<8> sum_result_apuint8 = 0;
    ap_uint<8> carry_result_apuint8 = 0;

    // Calculate half adder result for ap_uint<8>
    half_adder(A_apuint8, B_apuint8, sum_result_apuint8, carry_result_apuint8);

    // Print result for ap_uint<8>
    std::cout << "Input (ap_uint<8>): A=" << A_apuint8.to_uint() << ", B=" << B_apuint8.to_uint() << std::endl;
    std::cout << "Sum: " << sum_result_apuint8.to_uint() << std::endl;
    std::cout << "Carry: " << carry_result_apuint8.to_uint() << std::endl;

    // Verify the results for ap_uint<8>
    ap_uint<8> expected_sum_apuint8 = A_apuint8 ^ B_apuint8;
    ap_uint<8> expected_carry_apuint8 = A_apuint8 & B_apuint8;

    if (sum_result_apuint8 == expected_sum_apuint8 && carry_result_apuint8 == expected_carry_apuint8) {
        std::cout << "Test Passed for ap_uint<8>!" << std::endl;
    } else {
        std::cout << "Test Failed for ap_uint<8>!" << std::endl;
    }
*/
    return 0;
}
