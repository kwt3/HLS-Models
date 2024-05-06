#ifndef ENCODER_HPP
#define ENCODER_HPP

#include <ap_int.h>

// Function prototype for the encoder
//template <int N>
//ap_uint<N> encoder(ap_uint<N> data);

template<typename T>
T encoder(T data);

#endif // ENCODER_HPP
