#ifndef _BUBBLESORT_HPP_
#define _BUBBLESORT_HPP_

#include <ap_int.h>

#define MAX_SIZE 1024

typedef ap_uint<32> data_t;

void bubbleSort(data_t *array, int size);

#endif
