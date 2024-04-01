#include <iostream>
#include <array>
#include "two_full_adders_cascaded.hpp"

int main() {
    std::array<bool, 4> x = {1, 0, 1, 1};
    std::array<bool, 4> y = {0, 1, 1, 0};
    std::array<bool, 4> sum;
    bool cout;

    two_full_adders_cascaded(x, y, cout, sum);

    std::cout << "Sum: ";
    for (int i = 3; i >= 0; --i) {
        std::cout << sum[i];
    }
    std::cout << std::endl;
    std::cout << "Carry-out: " << cout << std::endl;

    return 0;
}
