#include <iostream>
#include "multiplexer.hpp"

// Explicit instantiation for int inputs of size 5
template int multiplexer<int, 5>(const int inputs[5], size_t sel);

int main() {
    // Example usage:
    int inputs[] = {10, 20, 30, 40, 50};  // Example inputs
    size_t selection = 2;  // Select the third input (index 2)

    int result = multiplexer<int, 5>(inputs, selection);

    // Print results
    std::cout << "Inputs: ";
    for (size_t i = 0; i < 5; ++i) {
        std::cout << inputs[i] << " ";
    }
    std::cout << "\n";
    std::cout << "Selection: " << selection << "\n";
    std::cout << "Result: " << result << "\n";

    return 0;
}
