#include "full_adder.hpp"
#include <iostream>
#include <ap_int.h>

int main() {
    ap_uint<8> a_ap_uint = 0b00001011;
    ap_uint<8> b_ap_uint = 0b00000101;
    ap_uint<8> cin_ap_uint = 1;
    ap_uint<8> sum_ap_uint, carry_ap_uint;

    full_adder(a_ap_uint, b_ap_uint, cin_ap_uint, sum_ap_uint, carry_ap_uint);
    std::cout << "Input: A=" << a_ap_uint << ", B=" << b_ap_uint << ", C_In=" << cin_ap_uint;
    std::cout << " | Output: Sum=" << sum_ap_uint << ", Carry=" << carry_ap_uint << std::endl;

    return 0;
}
