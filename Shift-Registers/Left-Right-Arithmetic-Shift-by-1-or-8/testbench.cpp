#include "arithmetic_shift_register.h"
#include <iostream>

int main() {
    uint64_t data = 0x123456789abcdef0;
    bool load = true;
    bool ena = true;
    ap_uint<2> amount = 0;
    uint64_t q;

    arithmetic_shift_register(data, load, ena, amount, q);

    std::cout << "Result: " << std::hex << q << std::endl;

    return 0;
}
