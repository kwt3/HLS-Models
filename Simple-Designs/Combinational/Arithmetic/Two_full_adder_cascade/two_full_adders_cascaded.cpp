#include "two_full_adders_cascaded.hpp"

void two_full_adders_cascaded(std::array<bool, 4>& x, std::array<bool, 4>& y, bool& cout, std::array<bool, 4>& sum) {
    bool cout0, cout1;

    full_adder(x[0], y[0], 0, sum[0], cout0);
    full_adder(x[1], y[1], cout0, sum[1], cout1);
    cout = cout1;
}
