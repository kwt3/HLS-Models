#ifndef COUNTER_H
#define COUNTER_H

#include <ap_int.h>

void increment(ap_uint<1> &reset, ap_uint<4> &out, const int max_count);

#endif // COUNTER_H
