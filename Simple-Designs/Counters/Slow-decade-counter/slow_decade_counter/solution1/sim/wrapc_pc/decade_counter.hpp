#ifndef DECADE_COUNTER_HPP
#define DECADE_COUNTER_HPP

#include "ap_int.h"

extern "C" {
    void decade_counter(ap_uint<1> &reset, ap_uint<1> &slowena, ap_uint<4> &out);
}

#endif // DECADE_COUNTER_HPP
