#include "bubble_sort_v1.hpp"


void bubble_sort(data_t input_arr[input_size])
{
    // Perform bubble sort on the output array
    for(int i = 0; i < input_size; i++) {
        for(int j = 0; j < input_size - i; j++) {
            if(input_arr[j] > input_arr[j + 1]) {
                // Swap output_arr[j] and output_arr[j + 1]
                ap_uint<32> temp = input_arr[j];
                input_arr[j] = input_arr[j + 1];
                input_arr[j + 1] = temp;
            }
        }
    }
}
