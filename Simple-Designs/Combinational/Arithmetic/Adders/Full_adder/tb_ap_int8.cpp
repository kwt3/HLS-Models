#include "full_adder.hpp"
#include <iostream>
#include <ap_int.h>

int main() {
    ap_int<8> a_ap_int = 0b00001011;
    ap_int<8> b_ap_int = 0b00000101;
    ap_int<8> cin_ap_int = 1;
    ap_int<8> sum_ap_int, carry_ap_int;

    full_adder(a_ap_int, b_ap_int, cin_ap_int, sum_ap_int, carry_ap_int);
    std::cout << "Input: A=" << a_ap_int << ", B=" << b_ap_int << ", C_In=" << cin_ap_int;
    std::cout << " | Output: Sum=" << sum_ap_int << ", Carry=" << carry_ap_int << std::endl;

    return 0;
}
