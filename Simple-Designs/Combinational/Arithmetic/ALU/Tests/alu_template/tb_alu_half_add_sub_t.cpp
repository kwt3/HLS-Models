#include <iostream>
#include "alu_half_add_sub.hpp"

// Templated test bench function
template<typename T>
void test_half_adder() {
    // Test vectors
    T a_values[] = {500, 1000, 1500, 2000};
    T b_values[] = {300, 600, 900, 1200};

    for (int i = 0; i < 4; ++i) {
        T A = a_values[i];
        T B = b_values[i];
        T sum, carry;

        // Call the half_adder function for addition
        half_adder(A, B, sum, carry, 0); // 0 represents addition

        std::cout << "Addition: Input: A=" << A << ", B=" << B;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;

        // Call the half_adder function for subtraction
        half_adder(A, B, sum, carry, 1); // 1 represents subtraction

        std::cout << "Subtraction: Input: A=" << A << ", B=" << B;
        std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;
    }
}

int main() {
    std::cout << "Testing with T:" << std::endl;
    test_half_adder<T>();

    return 0;
}
