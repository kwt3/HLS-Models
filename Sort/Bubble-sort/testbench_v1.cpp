#include <iostream>
#include "bubble_sort_v1.hpp"
/*                                                                                   */
#define SIZE 10

int main(int argc, char* argv[]) {
    // Check if the number of command line arguments is correct
    if(argc != SIZE + 1) {
        std::cout << "Please enter " << SIZE << " integers." << std::endl;
        return 1;  // Return an error code
    }

    ap_uint<32> input_arr[SIZE];  // Array to hold the input numbers
    ap_uint<32> output_arr[SIZE];  // Array to hold the sorted numbers

    // Convert command line arguments to integers and store them in the input array
    for(int i = 0; i < SIZE; i++) {
        input_arr[i] = std::stoi(argv[i + 1]);
    }

    // Call the bubble sort function
    bubble_sort(input_arr, output_arr);

    // Print the sorted array
    for(int i = 0; i < SIZE; i++) {
        std::cout << output_arr[i] << " ";
    }
    return 0;  // Return a success code
}



/*                                                                                   */

// Used for std::vector implementation but HLS compiler has limitations and it gave errors.

/*
#include <vector>

// This program tests the bubble_sort algorithm with an array of integers entered from the command line.
// The first command line argument is the size of the array, and the remaining arguments are the elements of the array.
// Example of how to run this program from the command line:
// ./bubble_sort 5 5 4 3 2 1
// This command sorts the array [5, 4, 3, 2, 1].

int main(int argc, char* argv[]) {
    // Check if the number of command line arguments is correct
    if(argc < 3) {
        std::cout << "Please enter the size of the array followed by the integers." << std::endl;
        return 1;  // Return an error code
    }

    int size = std::stoi(argv[1]);  // Convert the first argument to the size of the array
    if(size != argc - 2) {
        std::cout << "The size of the array does not match the number of integers entered." << std::endl;
        return 1;  // Return an error code
    }

    std::vector<ap_uint<32>> input_arr(size);  // Vector to hold the input numbers
    std::vector<ap_uint<32>> output_arr(size);  // Vector to hold the sorted numbers

    // Convert command line arguments to integers and store them in the vector
    for(int i = 0; i < size; ++i) {
        input_arr[i] = std::stoi(argv[i + 2]);
    }

    // Call the bubble sort function
    bubble_sort(input_arr, output_arr);

    // Print the sorted array
    for(const auto& num : output_arr) {
        std::cout << num << " ";
    }

    return 0;  // Return a success code
}
*/


