#include "counter.hpp"
#include <iostream>

int main() {
    uint8_t count;
    uint8_t upper = 10;

    // Call the counter function and print the count value
    for (int i = 0; i < 20; ++i) {
        counter(&count, upper);
        std::cout << "Count: " << static_cast<int>(count) << std::endl;
    }

    return 0;
}
