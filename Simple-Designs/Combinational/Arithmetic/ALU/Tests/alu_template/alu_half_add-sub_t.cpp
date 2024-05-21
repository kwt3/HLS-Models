#include "alu_half_add_sub.hpp"

template<typename T>
void half_add_sub(T A, T B, T& sum, T& carry, int op) {
    if (op == 0) {
        sum = A ^ B; // XOR operation for sum
        carry = A & B; // AND operation for carry
    } else if (op == 1) {
        // Implement subtraction logic
        sum = A ^ B;
        carry = ~B;
    } else {
        std::cout << "Invalid operation. Please use 0 for 'add' or 1 for 'subtract'." << std::endl;
    }
}

// Explicit instantiation for T (replace T with desired Type)
template void half_add_sub<T>(T A, T B, T& sum, T& carry, int op);
