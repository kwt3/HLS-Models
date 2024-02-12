#ifndef BUBBLE_SORT_HPP
#define BUBBLE_SORT_HPP

#include <ap_int.h>

void bubble_sort(ap_uint<32> input_arr[10], ap_uint<32> output_arr[10]);

#endif // BUBBLE_SORT_HPP


// Cannot use std::vector due to limitations of HLS compiler
/*
#ifndef BUBBLE_SORT_HPP
#define BUBBLE_SORT_HPP

#include <vector>
#include <ap_int.h>

void bubble_sort(const std::vector<ap_uint<32>>& input_arr, std::vector<ap_uint<32>>& output_arr);

#endif // BUBBLE_SORT_HPP
*/
