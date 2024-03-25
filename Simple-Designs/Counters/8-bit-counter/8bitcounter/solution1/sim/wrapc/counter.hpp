#ifndef COUNTER_HPP
#define COUNTER_HPP

// Include the cstdint library to use the uint8_t type
#include <cstdint>

// Use extern "C" to prevent name mangling by the C++ compiler
extern "C" {
    // Declare the counter function, which takes a pointer to a uint8_t variable
    void counter(uint8_t *count, uint8_t upper);
}

#endif // COUNTER_HPP
