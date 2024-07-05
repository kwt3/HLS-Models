#include "mm.hpp"

void mmult_accel(
    uint8_t *a,
    uint8_t *b,
    uint32_t *c,
    int dim
) {
#pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem0 depth=65536
#pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem1 depth=65536
#pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem2 depth=65536
#pragma HLS INTERFACE s_axilite port=a bundle=control
#pragma HLS INTERFACE s_axilite port=b bundle=control
#pragma HLS INTERFACE s_axilite port=c bundle=control
#pragma HLS INTERFACE s_axilite port=dim bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    int i, j, k;
    uint32_t sum;

    // Matrix multiplication
    for (i = 0; i < dim; i++) {
        for (j = 0; j < dim; j++) {
#pragma HLS PIPELINE II=1
            sum = 0;
            for (k = 0; k < dim; k++) {
                sum += (uint32_t)a[i * dim + k] * (uint32_t)b[k * dim + j];
            }
            c[i * dim + j] = sum;
        }
    }
}


// #include "mm.hpp"

// #define N 64

// void mmult_accel(
//     int32_t *a,
//     int32_t *b,
//     int32_t *c,
//     int dim
// ) {
// #pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE s_axilite port=a bundle=control
// #pragma HLS INTERFACE s_axilite port=b bundle=control
// #pragma HLS INTERFACE s_axilite port=c bundle=control
// #pragma HLS INTERFACE s_axilite port=dim bundle=control
// #pragma HLS INTERFACE s_axilite port=return bundle=control

//     int i, j, k;
//     int32_t sum;

//     // Matrix multiplication
//     for (i = 0; i < dim; i++) {
//         for (j = 0; j < dim; j++) {
// #pragma HLS PIPELINE II=1
//             sum = 0;
//             for (k = 0; k < dim; k++) {
//                 sum += a[i * dim + k] * b[k * dim + j];
//             }
//             c[i * dim + j] = sum;
//         }
//     }
// }


// #include "mm.hpp"

// #define N 64

// void mmult_accel(
//     int32_t *a,
//     int32_t *b,
//     int32_t *c,
//     int dim
// ) {
// #pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem0 depth=4096
// #pragma HLS INTERFACE s_axilite port=a bundle=control
// #pragma HLS INTERFACE s_axilite port=b bundle=control
// #pragma HLS INTERFACE s_axilite port=c bundle=control
// #pragma HLS INTERFACE s_axilite port=dim bundle=control
// #pragma HLS INTERFACE s_axilite port=return bundle=control

//     int i, j, k;
//     int32_t sum;

//     // Matrix multiplication
//     for (i = 0; i < dim; i++) {
//         for (j = 0; j < dim; j++) {
// #pragma HLS PIPELINE II=1
//             sum = 0;
//             for (k = 0; k < dim; k++) {
//                 sum += a[i * dim + k] * b[k * dim + j];
//             }
//             c[i * dim + j] = sum;
//         }
//     }
// }
