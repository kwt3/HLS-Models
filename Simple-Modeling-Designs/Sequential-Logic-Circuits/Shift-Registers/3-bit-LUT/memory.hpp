#ifndef MEMORY_H
#define MEMORY_H

#include <ap_int.h>

typedef ap_uint<8> uint8_t;

void memory(bool shift_enable, uint8_t S, bool A, bool B, bool C, uint8_t &Z);

#endif
