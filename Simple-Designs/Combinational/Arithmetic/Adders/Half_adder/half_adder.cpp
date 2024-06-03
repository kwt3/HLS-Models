#include "half_adder.hpp"

template <typename T>
void half_adder(T A, T B, T& sum, T& carry) {
    sum = A ^ B;   // XOR operation for sum
    carry = A & B; // AND operation for carry
}

// Explicit instantiations
template void half_adder<bool>(bool A, bool B, bool& sum, bool& carry);
template void half_adder<int>(int A, int B, int& sum, int& carry);
template void half_adder<ap_int<8>>(ap_int<8> A, ap_int<8> B, ap_int<8>& sum, ap_int<8>& carry);
template void half_adder<ap_uint<8>>(ap_uint<8> A, ap_uint<8> B, ap_uint<8>& sum, ap_uint<8>& carry);
