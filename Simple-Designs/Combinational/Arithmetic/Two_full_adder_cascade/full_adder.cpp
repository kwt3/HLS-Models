#include "full_adder.hpp"

void full_adder(bool a, bool b, bool carry_in, bool &sum, bool &carry_out) {
    sum = a ^ b ^ carry_in;     // XOR operation for sum
    carry_out = (a & b) | (carry_in & (a ^ b));   // OR operation for carry-out
}
