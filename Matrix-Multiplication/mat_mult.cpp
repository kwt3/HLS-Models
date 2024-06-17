#include "mat_mult.hpp"

void matrix_multiply(int A[N][N], int B[N][N], int C[N][N]) {
    #pragma HLS INTERFACE bram port=A
    #pragma HLS INTERFACE bram port=B
    #pragma HLS INTERFACE bram port=C

    int temp_a, temp_b;
    
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            int sum = 0;
            #pragma HLS PIPELINE
            for (int k = 0; k < N; k++) {
                temp_a = A[i][k];
                temp_b = B[k][j];
                sum += temp_a * temp_b;
            }
            C[i][j] = sum;
        }
    }
}