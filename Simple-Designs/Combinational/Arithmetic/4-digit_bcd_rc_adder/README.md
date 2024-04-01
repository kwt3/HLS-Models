#ifndef BCD_4_DIGIT_ADDER_HPP
#define BCD_4_DIGIT_ADDER_HPP

#include <array>

void bcd_4_digit_adder(const std::array<unsigned int, 4>& a, const std::array<unsigned int, 4>& b, bool cin, bool& cout, std::array<unsigned int, 4>& sum);

#endif /* BCD_4_DIGIT_ADDER_HPP */
