#include "full_adder.hpp"
#include <iostream>

int main() {
    int a_int = 5;
    int b_int = 3;
    int cin_int = 1;
    int sum_int, carry_int;

    full_adder(a_int, b_int, cin_int, sum_int, carry_int);
    std::cout << "Input: A=" << a_int << ", B=" << b_int << ", C_In=" << cin_int;
    std::cout << " | Output: Sum=" << sum_int << ", Carry=" << carry_int << std::endl;

    return 0;
}
