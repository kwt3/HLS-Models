#include <ap_int.h>

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