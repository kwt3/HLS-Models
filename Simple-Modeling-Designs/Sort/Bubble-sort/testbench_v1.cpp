#include "bubble_sort_v1.hpp"
#include <iostream>
#include <cstdlib>

typedef int data_t; // Define data_t if it's not already defined

int main(int argc, char* argv[]) {
    // Check if the number of command line arguments is correct
    if(argc < 2) {
        std::cout << "Usage: " << argv[0] << " <size> <integer1> <integer2> ... <integerN>" << std::endl;
        return 1;
    }

    int size = std::atoi(argv[1]); // Get the size from command line arguments
    if (argc != size + 2) {
        std::cout << "Invalid number of integers provided. Expected " << size << " integers." << std::endl;
        return 1;
    }

    data_t* input_arr = new data_t[size]; // Declare input_arr with dynamically allocated memory

    // Convert command line arguments to integers and store them in the input array
    for(int i = 0; i < size; i++) {
        input_arr[i] = std::stoi(argv[i + 2]);
    }
    
    // Call the bubble sort function
    bubble_sort(input_arr, size);

    // Print the sorted array
    std::cout << "Sorted Array: ";
    for(int i = 0; i < size; i++) {
        std::cout << input_arr[i] << " ";
    }
    std::cout << std::endl;

    delete[] input_arr; // Free dynamically allocated memory
    return 0;
}
