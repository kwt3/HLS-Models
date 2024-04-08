#include "half_adder.hpp"

template <typename T>
void half_adder(T A, T B, T& sum, T& carry) {
    sum = A ^ B; // XOR operation for sum
    carry = A & B; // AND operation for carry
}

// Explicit instantiation for bool
template void half_adder<bool>(bool A, bool B, bool& sum, bool& carry);
