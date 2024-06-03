#include "counter.hpp"

void counter(uint8_t *count, uint8_t upper) {
    // Declare and initialize a static uint8_t variable to 0
    static uint8_t count_internal = 0;

    // Increment count_internal
    uint8_t v = count_internal + 1;
    if (v == upper) {
        count_internal = 0;
    } else {
        count_internal = v;
    }

    // Assign the value of count_internal to the uint8_t variable pointed to by count
    *count = count_internal;
}
