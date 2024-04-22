#include <iostream>
#include "alu_full_adder.hpp"

int main() {
    // Example usage with integers
    int num1 = 1;
    int num2 = 0;
    int Cin = 1;
    int sum_result = 0;
    int carry_result = 0;
    int op = 1; // Change to 0 for full adder

    // Full adder/subtractor operation
    full_adder(num1, num2, Cin, sum_result, carry_result, op);
    std::cout << "Sum: " << sum_result << ", Carry Out: " << carry_result << std::endl;

    return 0;
}
