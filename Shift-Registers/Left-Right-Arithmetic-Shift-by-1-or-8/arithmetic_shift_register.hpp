#ifndef ARITHMETIC_SHIFT_REGISTER_H
#define ARITHMETIC_SHIFT_REGISTER_H

#include <ap_int.h>

typedef ap_uint<64> uint64_t;

void arithmetic_shift_register(uint64_t data, bool load, bool ena, ap_uint<2> amount, uint64_t &q);

#endif
