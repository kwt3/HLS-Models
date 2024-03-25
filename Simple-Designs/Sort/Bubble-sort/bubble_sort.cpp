#include "bubble_sort_v1.hpp"

void bubbleSort(data_t *array, int size) {
    #pragma HLS INTERFACE m_axi depth=MAX_SIZE port=array offset=slave
    #pragma HLS INTERFACE s_axilite port=size
    #pragma HLS INTERFACE s_axilite port=return

    for (int i = 0; i < size-1; i++) {
        for (int j = 0; j < size-i-1; j++) {
            if (array[j] > array[j+1]) {
                data_t temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }
}
