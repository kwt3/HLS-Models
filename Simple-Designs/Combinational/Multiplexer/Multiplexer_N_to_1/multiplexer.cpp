#include "multiplexer.hpp"

// Explicit instantiation of the multiplexer function for specific types and sizes
template int multiplexer<int, 5>(const int inputs[5], size_t sel);
// Add more explicit instantiations for other types and sizes as needed
