#include "decoder.hpp"

template<typename T>
T decoder(T data) {
    return data - 1;
}

// Explicit instantiation for bool
template bool decoder<bool>(bool data);
