#include "encoder.hpp"

/*
template <int N>
ap_uint<N> encoder(ap_uint<N> data) {
    // Simple increment
    return data + 1;
}
*/

template<typename T>
T encoder(T data) {
    return data + 1;
}

// Explicit instantiation for bool
template bool encoder<bool>(bool data);

// Explicit instantiation for ap_uint<8>
//template ap_uint<8> encoder(ap_uint<8> data);
