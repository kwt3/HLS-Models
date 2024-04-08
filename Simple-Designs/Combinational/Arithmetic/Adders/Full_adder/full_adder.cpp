#include "full_adder.hpp"

template<typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry) {
    T s1, c1, c2;
    // First adder stage
    half_adder(A, B, c1, s1);
    // Second adder stage
    half_adder(C_In, s1, c2, sum);
    // Final carry-out
    carry = c1 || c2;
}

// Explicit instantiation for bool
template void full_adder<bool>(bool A, bool B, bool C_In, bool& sum, bool& carry);
