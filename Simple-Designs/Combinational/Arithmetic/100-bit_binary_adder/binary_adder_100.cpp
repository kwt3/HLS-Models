#include "binary_adder_100.hpp"

void binary_adder_100(const std::array<bool, 100>& a, const std::array<bool, 100>& b, bool carry_in, std::array<bool, 100>& sum, bool& carry_out) {
    carry_out = carry_in;
    for (int i = 0; i < 100; ++i) {
        bool bit_sum = a[i] ^ b[i] ^ carry_out;
        sum[i] = bit_sum;
        carry_out = (a[i] & b[i]) | ((a[i] ^ b[i]) & carry_out);
    }
}
