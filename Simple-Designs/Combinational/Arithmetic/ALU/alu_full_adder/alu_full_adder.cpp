#include "alu_full_adder.hpp"
#include <iostream>

template <typename T>
void full_adder(T A, T B, T Cin, T& sum, T& carry, int op) {
    if (op == 0) {
        // Full adder logic
        sum = (A ^ B) ^ Cin;
        carry = (A & B) | ((A ^ B) & Cin);
    } else if (op == 1) {
        // Full subtractor logic
        sum = (A ^ B) ^ Cin;
        carry = (~A & B) | ((~A ^ B) & Cin);
    } else {
        std::cout << "Invalid operation. Please use 0 for 'add' or 1 for 'subtract'." << std::endl;
    }
}
