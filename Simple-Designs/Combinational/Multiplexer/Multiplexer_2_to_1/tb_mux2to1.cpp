#include <iostream>
#include "mux2to1.hpp"

int main() {
    bool a = true;
    bool b = false;
    bool sel;

    // Test case 1: sel = 0
    sel = false;
    bool result1 = mux(a, b, sel);
    std::cout << "When sel = 0, result = " << result1 << std::endl;

    // Test case 2: sel = 1
    sel = true;
    bool result2 = mux(a, b, sel);
    std::cout << "When sel = 1, result = " << result2 << std::endl;

    return 0;
}
