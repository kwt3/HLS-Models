#include "full_adder.hpp"
#include <iostream>

int main() {
    // Test vectors for bool
    bool a_values[] = {0, 1, 0, 1};
    bool b_values[] = {0, 0, 1, 1};
    bool cin_values[] = {0, 1, 1, 0};

    for (int i = 0; i < 4; ++i) {
        bool A = a_values[i];
        bool B = b_values[i];
        bool C_In = cin_values[i];
        bool sum, carry;

        // Call the full_adder function
        full_adder(A, B, C_In, sum, carry);

        std::cout << "Input: A=" << A << ", B=" << B << ", C_In=" << C_In;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;
    }

    return 0;
}
