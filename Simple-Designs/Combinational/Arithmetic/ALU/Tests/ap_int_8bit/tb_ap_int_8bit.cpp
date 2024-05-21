#include <iostream>
#include "alu_half_add_sub.hpp"
#include "ap_int.h"

int main() {
    // Test vectors
    unsigned char a_values[] = {50, 100, 150, 200};
    unsigned char b_values[] = {30, 60, 90, 120};
    unsigned char cin_values[] = {0, 1, 1, 0};

    for (int i = 0; i < 4; ++i) {
        unsigned char A = a_values[i];
        unsigned char B = b_values[i];
        unsigned char C_In = cin_values[i];
        unsigned char sum, carry;

        // Call the half_adder function for addition
        half_add_sub(A, B, sum, carry, 0); // 0 represents addition

        std::cout << "Addition: Input: A=" << static_cast<int>(A) << ", B=" << static_cast<int>(B) << ", C_In=" << static_cast<int>(C_In);
        std::cout << " | Output: Sum=" << static_cast<int>(sum) << ", Carry=" << static_cast<int>(carry) << std::endl;

        // Call the half_adder function for subtraction
        half_add_sub(A, B, sum, carry, 1); // 1 represents subtraction

        std::cout << "Subtraction: Input: A=" << static_cast<int>(A) << ", B=" << static_cast<int>(B) << ", C_In=" << static_cast<int>(C_In);
        std::cout << " | Output: Sum=" << static_cast<int>(sum) << ", Carry=" << static_cast<int>(carry) << std::endl;
    }

    return 0;
}