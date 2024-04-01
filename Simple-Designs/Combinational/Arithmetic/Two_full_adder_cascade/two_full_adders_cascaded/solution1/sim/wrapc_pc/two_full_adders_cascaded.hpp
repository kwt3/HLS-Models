#ifndef TWO_FULL_ADDERS_CASCADED_HPP
#define TWO_FULL_ADDERS_CASCADED_HPP

#include <array>

void full_adder(bool a, bool b, bool cin, bool& sum, bool& cout);

void two_full_adders_cascaded(std::array<bool, 4>& x, std::array<bool, 4>& y, bool& cout, std::array<bool, 4>& sum);

#endif /* TWO_FULL_ADDERS_CASCADED_HPP */
