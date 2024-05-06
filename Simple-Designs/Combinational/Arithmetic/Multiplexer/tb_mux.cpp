#include <iostream>
#include "mux.hpp"
#include "mux.cpp"

int main() {
    // Test cases
    int data0_int = 5;
    int data1_int = 10;
    bool select_bool = false;

    // Call mux function
    int result_int = mux(data0_int, data1_int, select_bool);

    // Print result
    std::cout << "Input data0: " << data0_int << std::endl;
    std::cout << "Input data1: " << data1_int << std::endl;
    std::cout << "Select: " << select_bool << std::endl;
    std::cout << "Output: " << result_int << std::endl;

    return 0;
}
