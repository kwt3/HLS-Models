#include "mat_mult.hpp"
#include <iostream>

#define N 256  // Size of the matrix

// Function to print matrix
void print_matrix(int matrix[N][N], const char* name) {
    std::cout << "Matrix " << name << ":\n";
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            std::cout << matrix[i][j] << " ";
        }
        std::cout << "\n";
    }
    std::cout << "\n";
}

int main() {
    int A[N][N], B[N][N], C[N][N];

    // Initialize matrices A and B
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = i + 1;  // Simple initialization for demonstration
            B[i][j] = (i + 1) * (j + 1);  // Simple initialization for demonstration
        }
    }

    // Print matrices A and B
    print_matrix(A, "A");
    print_matrix(B, "B");

    // Perform matrix multiplication
    matrix_multiply(A, B, C);

    // Print the resulting matrix C
    std::cout << "Matrix C (Result):\n";
    print_matrix(C, "C");

    return 0;
}

// #include "mat_mult.hpp"
// #include <iostream>

// #define N 3  // Size of the matrix

// // Function to print matrix
// void print_matrix(int matrix[N][N]) {
//     for (int i = 0; i < N; i++) {
//         for (int j = 0; j < N; j++) {
//             std::cout << matrix[i][j] << " ";
//         }
//         std::cout << "\n";
//     }
// }

// int main() {
//     int A[N][N], B[N][N], C[N][N];

//     // Initialize matrices A and B
//     for (int i = 0; i < N; i++) {
//         for (int j = 0; j < N; j++) {
//             A[i][j] = i + 1;  // Simple initialization for demonstration
//             B[i][j] = (i + 1) * (j + 1);  // Simple initialization for demonstration
//         }
//     }

//     // Perform matrix multiplication
//     matrix_multiply(A, B, C);

//     // Print the resulting matrix C
//     std::cout << "Matrix C (Result):\n";
//     print_matrix(C);

//     return 0;
// }
