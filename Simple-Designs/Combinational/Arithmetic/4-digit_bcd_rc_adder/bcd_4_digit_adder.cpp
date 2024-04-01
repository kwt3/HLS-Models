#include "bcd_4_digit_adder.hpp"

void bcd_fadd(unsigned int a, unsigned int b, bool cin, bool& cout, unsigned int& sum) {
    // Perform binary addition of the BCD digits and carry
    unsigned int temp_sum = a + b + cin;

    // Check for carry-out
    cout = (temp_sum > 9);

    // Adjust the sum if carry-out occurred
    if (cout) {
        temp_sum -= 10;
    }

    // Assign the sum
    sum = temp_sum;
}

void bcd_4_digit_adder(const std::array<unsigned int, 4>& a, const std::array<unsigned int, 4>& b, bool cin, bool& cout, std::array<unsigned int, 4>& sum) {
    std::array<bool, 4> cout_tmp;

    // Instantiate the first bcd_fadd for the least significant digit
    bcd_fadd(a[0], b[0], cin, cout_tmp[0], sum[0]);

    // Instantiate three more bcd_fadd modules for the remaining digits
    for (int i = 1; i < 4; ++i) {
        bcd_fadd(a[i], b[i], cout_tmp[i - 1], cout_tmp[i], sum[i]);
    }

    // Assign the final carry-out
    cout = cout_tmp[3]; // 4th digit carry-out
}
