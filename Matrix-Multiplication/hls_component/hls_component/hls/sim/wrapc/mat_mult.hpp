#ifndef MAT_MULT_HPP
#define MAT_MULT_HPP

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#define N 256  // Example size

// #define DIM 256

// Function declaration using HLS-compatible types
// void matrix_multiply(int A[DIM][DIM], int B[DIM][DIM], int C[DIM][DIM]);
void matrix_multiply(int A[N][N], int B[N][N], int C[N][N]);

#endif // MAT_MULT_HPP
