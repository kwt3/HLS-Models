#include "ripple_carry_adder.hpp"
#include "full_adder.hpp"

void ripple_carry_adder(std::array<bool, 3>& a, std::array<bool, 3>& b, bool carry_in, std::array<bool, 3>& sum, bool& carry_out) {
    bool carry = carry_in;

    for (int i = 0; i < 3; ++i) {
        full_adder(a[i], b[i], carry, sum[i], carry);
    }

    carry_out = carry;
}
