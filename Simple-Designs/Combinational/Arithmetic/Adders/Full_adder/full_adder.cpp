#include "full_adder.hpp"

template<typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry) {
    // First adder stage
    T s1 = A ^ B;  // XOR operation for sum
    T c1 = A & B;  // AND operation for carry

    // Second adder stage
    sum = C_In ^ s1;   // XOR operation for sum
    T c2 = C_In & s1;  // AND operation for carry

    // Final carry-out
    carry = c1 | c2;   // OR operation for carry
}

// Explicit instantiations
// template void full_adder<bool>(bool A, bool B, bool C_In, bool& sum, bool& carry);
template void full_adder<int>(int A, int B, int C_In, int& sum, int& carry);
//template void full_adder<ap_int<8>>(ap_int<8> A, ap_int<8> B, ap_int<8> C_In, ap_int<8>& sum, ap_int<8>& carry);
//template void full_adder<ap_uint<8>>(ap_uint<8> A, ap_uint<8> B, ap_uint<8> C_In, ap_uint<8>& sum, ap_uint<8>& carry);
