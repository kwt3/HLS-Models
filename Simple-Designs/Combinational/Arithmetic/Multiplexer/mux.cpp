#include "mux.hpp"

template<typename T>
T mux(T data0, T data1, bool select) {
    if (select) {
        return data1;
    } else {
        return data0;
    }
}

// Explicit instantiation for int
template int mux<int>(int data0, int data1, bool select);
