#include "half_adder.hpp"

void half_adder(bool a, bool b, bool &sum, bool &carry_out) {
    sum = a ^ b;          // XOR operation for sum
    carry_out = a & b;    // AND operation for carry-out
}
