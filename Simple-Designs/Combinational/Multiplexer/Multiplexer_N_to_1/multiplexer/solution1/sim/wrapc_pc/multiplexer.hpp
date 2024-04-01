#ifndef MULTIPLEXER_HPP
#define MULTIPLEXER_HPP

#include <cstddef>

template<typename T, size_t N>
T multiplexer(const T inputs[N], size_t sel) {
    #pragma HLS INLINE
    if (sel < N) {
        return inputs[sel];
    } else {
        // Handle out of range selection
        return inputs[0]; // Return the first input (you can customize this behavior)
    }
}

// Explicit instantiation for specific types and sizes
extern template int multiplexer<int, 5>(const int inputs[5], size_t sel);
// Add more explicit instantiations for other types and sizes as needed

#endif // MULTIPLEXER_HPP
