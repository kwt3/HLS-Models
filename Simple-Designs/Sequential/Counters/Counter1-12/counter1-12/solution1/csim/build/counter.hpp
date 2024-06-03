#ifndef COUNTER_HPP
#define COUNTER_HPP

#include <ap_int.h>

void increment_counter(ap_uint<1> &reset, ap_uint<4> &out, ap_uint<4> max_value);

#endif // COUNTER_HPP
