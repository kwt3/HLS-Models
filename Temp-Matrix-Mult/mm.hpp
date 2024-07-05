#ifndef MM_HPP
#define MM_HPP

#include <stdint.h>

void mmult_accel(
    uint8_t *a,
    uint8_t *b,
    uint32_t *c,
    int dim
);

#endif // MM_HPP


// #ifndef MM_HPP
// #define MM_HPP

// #include <stdint.h>

// void mmult_accel(
//     int32_t *a,
//     int32_t *b,
//     int32_t *c,
//     int dim
// );

// #endif // MM_HPP
