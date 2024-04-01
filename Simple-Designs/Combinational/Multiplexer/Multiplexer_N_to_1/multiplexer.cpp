#include "multiplexer.hpp"

// Explicit instantiation for int inputs of size 5
template int multiplexer<int, 5>(const int inputs[5], size_t sel);
// Add more explicit instantiations for other types and sizes as needed
