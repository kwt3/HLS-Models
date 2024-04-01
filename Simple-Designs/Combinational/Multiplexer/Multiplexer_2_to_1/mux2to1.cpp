#include "mux2to1.hpp"

template<typename T>
T mux(T a, T b, bool sel) {
    return sel ? b : a;
}

template bool mux<bool>(bool a, bool b, bool sel); // Explicit instantiation for bool
