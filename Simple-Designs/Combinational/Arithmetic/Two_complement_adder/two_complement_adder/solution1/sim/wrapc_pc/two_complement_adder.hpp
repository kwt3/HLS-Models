#ifndef TWO_COMPLEMENT_ADDER_HPP
#define TWO_COMPLEMENT_ADDER_HPP

#include <array>

void two_complement_adder(const std::array<bool, 8>& a, const std::array<bool, 8>& b, std::array<bool, 8>& s, bool& overflow);

#endif /* TWO_COMPLEMENT_ADDER_HPP */
