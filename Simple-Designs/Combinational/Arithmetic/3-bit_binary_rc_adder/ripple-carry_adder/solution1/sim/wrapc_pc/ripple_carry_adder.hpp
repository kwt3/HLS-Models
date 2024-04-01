#ifndef RIPPLE_CARRY_ADDER_HPP_
#define RIPPLE_CARRY_ADDER_HPP_

#include <array>

void ripple_carry_adder(std::array<bool, 3>& a, std::array<bool, 3>& b, bool carry_in, std::array<bool, 3>& sum, bool& carry_out);

#endif /* RIPPLE_CARRY_ADDER_HPP_ */