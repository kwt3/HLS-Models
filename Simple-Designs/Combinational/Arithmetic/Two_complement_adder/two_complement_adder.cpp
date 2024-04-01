#include "two_complement_adder.hpp"

void two_complement_adder(const std::array<bool, 8>& a, const std::array<bool, 8>& b, std::array<bool, 8>& s, bool& overflow) {
    std::array<bool, 9> temp_sum; // Temporary sum with an extra bit for overflow check

    // Calculate the temporary sum (including the extra bit)
    bool carry = false;
    for (int i = 7; i >= 0; --i) {
        bool sum_bit = a[i] ^ b[i] ^ carry;
        temp_sum[i] = sum_bit;
        carry = (a[i] & b[i]) | ((a[i] ^ b[i]) & carry);
    }
    temp_sum[8] = carry; // Store the carry bit in the extra bit

    // Extract the 8-bit sum
    for (int i = 0; i < 8; ++i) {
        s[i] = temp_sum[i];
    }

    // Check for overflow
    overflow = (a[7] == b[7] && a[7] != s[7]) ? true : false;
}
