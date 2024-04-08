#include <iostream>
#include "half_adder_sub.hpp"

int main() {
    // Test vectors
    bool a_values[] = {0, 1, 0, 1};
    bool b_values[] = {0, 0, 1, 1};
    bool cin_values[] = {0, 1, 1, 0};

    for (int i = 0; i < 4; ++i) {
        bool A = a_values[i];
        bool B = b_values[i];
        bool C_In = cin_values[i];
        bool sum, carry;

        // Call the half_adder function for addition
        half_adder(A, B, sum, carry, 0); // 0 represents addition

        std::cout << "Addition: Input: A=" << A << ", B=" << B << ", C_In=" << C_In;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;

        // Call the half_adder function for subtraction
        half_adder(A, B, sum, carry, 1); // 1 represents subtraction

        std::cout << "Subtraction: Input: A=" << A << ", B=" << B << ", C_In=" << C_In;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;
    }

    return 0;
}
