#include "bubble_sort_v1.hpp"

void bubble_sort(data_t input_arr[input_size], int size) { // Correct function signature
    // Perform bubble sort on the output array
    for(int i = 0; i < size; i++) { // Use 'size' instead of 'input_size'
        for(int j = 0; j < size - i - 1; j++) {
            if(input_arr[j] > input_arr[j + 1]) {
                // Swap input_arr[j] and input_arr[j + 1]
                data_t temp = input_arr[j];
                input_arr[j] = input_arr[j + 1];
                input_arr[j + 1] = temp;
            }
        }
    }
}
