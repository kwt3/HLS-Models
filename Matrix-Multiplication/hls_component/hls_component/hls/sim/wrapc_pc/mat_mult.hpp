#ifndef MAT_MULT_HPP
#define MAT_MULT_HPP

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#define N 256  // Example size

// Function declaration using HLS-compatible types
void matrix_multiply(int A[N][N], int B[N][N], int C[N][N]);

#endif // MAT_MULT_HPP
