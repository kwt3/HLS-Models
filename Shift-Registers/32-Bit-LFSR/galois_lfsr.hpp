#ifndef GALOIS_LFSR_H
#define GALOIS_LFSR_H

#include <ap_int.h>

typedef ap_uint<32> uint32_t;

void galois_lfsr(bool reset, uint32_t &q);

#endif
