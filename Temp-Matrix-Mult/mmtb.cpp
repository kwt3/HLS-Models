#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cstring>
#include "mm.hpp"

using namespace std;

// Function to initialize a matrix with random values
template<typename T>
void init_matrix(T *matrix, int size) {
    for (int i = 0; i < size; ++i) {
        matrix[i] = static_cast<T>(rand() % 256); // Generate random values between 0 and 255
    }
}

// Function to perform matrix multiplication in software for verification
void matrix_mult_sw(uint8_t *a, uint8_t *b, uint32_t *c, int dim) {
    for (int i = 0; i < dim; ++i) {
        for (int j = 0; j < dim; ++j) {
            uint32_t sum = 0;
            for (int k = 0; k < dim; ++k) {
                sum += (uint32_t)a[i * dim + k] * (uint32_t)b[k * dim + j];
            }
            c[i * dim + j] = sum;
        }
    }
}

// Function to compare two matrices
template<typename T>
bool compare_matrices(T *mat1, T *mat2, int size) {
    for (int i = 0; i < size; ++i) {
        if (mat1[i] != mat2[i]) {
            return false;
        }
    }
    return true;
}

int main() {
    const int N = 256;
    uint8_t matrixA[N * N];
    uint8_t matrixB[N * N];
    uint32_t matrixC[N * N];
    uint32_t matrixC_sw[N * N];

    // Initialize random seed
    srand(time(0));

    // Initialize matrices A and B with random values
    init_matrix(matrixA, N * N);
    init_matrix(matrixB, N * N);

    // Call the hardware accelerated matrix multiplication function
    mmult_accel(matrixA, matrixB, matrixC, N);

    // Perform matrix multiplication in software for verification
    matrix_mult_sw(matrixA, matrixB, matrixC_sw, N);

    // Compare results
    if (compare_matrices(matrixC, matrixC_sw, N * N)) {
        cout << "Hardware and software results match!" << endl;
    } else {
        cout << "Error: Hardware and software results do not match!" << endl;
    }

    return 0;
}

// #include <iostream>
// #include <stdlib.h>
// #include "mm.hpp"


// #define N 64

// int main() {
//     int32_t a[N*N], b[N*N], c[N*N];
//     int dim = N;

//     // Initialize matrices
//     for (int i = 0; i < N*N; i++) {
//         a[i] = rand() % 100;
//         b[i] = rand() % 100;
//         c[i] = 0;
//     }

//     // Call the accelerator function
//     mmult_accel(a, b, c, dim);

//     // Print the result matrix
//     for (int i = 0; i < dim; i++) {
//         for (int j = 0; j < dim; j++) {
//             std::cout << c[i * dim + j] << " ";
//         }
//         std::cout << std::endl;
//     }

//     return 0;
// }

// #define N 64

// int main() {
//     int32_t a[N*N], b[N*N], c[N*N];
//     int dim = N;

//     // Initialize matrices
//     for (int i = 0; i < N*N; i++) {
//         a[i] = rand() % 100;
//         b[i] = rand() % 100;
//         c[i] = 0;
//     }

//     // Call the accelerator function
//     mmult_accel(a, b, c, dim);

//     // Print the result matrix
//     for (int i = 0; i < dim; i++) {
//         for (int j = 0; j < dim; j++) {
//             std::cout << c[i * dim + j] << " ";
//         }
//         std::cout << std::endl;
//     }

//     return 0;
// }
