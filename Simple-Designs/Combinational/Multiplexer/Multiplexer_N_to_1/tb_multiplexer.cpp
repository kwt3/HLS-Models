#include <iostream>
#include "multiplexer.hpp"

// Explicit instantiation for int inputs of size 5
template int multiplexer<int, 5>(const int inputs[5], size_t sel);

// Print function to display results and iterations
template <typename T, size_t N>
void printMultiplexerResult(const T (&inputs)[N], size_t sel, T result) {
    std::cout << "Inputs: ";
    for (size_t i = 0; i < N; ++i) {
        std::cout << inputs[i] << " ";
    }
    std::cout << "\n";
    std::cout << "Selection: " << sel << "\n";
    std::cout << "Result: " << result << "\n";
}

int main() {
    int inputs[5] = {1, 2, 3, 4, 5};
    size_t selection = 2;
    int result = multiplexer<int, 5>(inputs, selection);
    // Print results and iterations
    printMultiplexerResult(inputs, selection, result);
    return 0;
}
