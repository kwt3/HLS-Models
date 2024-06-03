#ifndef SHIFT_REGISTER_HPP
#define SHIFT_REGISTER_HPP

#include <ap_int.h>

// Function prototype
void shift_register(ap_uint<1> &areset, ap_uint<1> &load, ap_uint<1> &ena, ap_uint<4> &data, ap_uint<4> &q);

#endif // SHIFT_REGISTER_HPP
