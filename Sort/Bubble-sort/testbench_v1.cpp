#include <iostream>
#include "bubble_sort_v1.hpp"

#define SIZE 10

int main(int argc, char* argv[]) {
    // Check if the number of command line arguments is correct
    if(argc != SIZE + 1) {
        std::cout << "Please enter " << SIZE << " integers." << std::endl; //input the integars during C SIMULATION and C/RTL COSIMULATION
        return 1;  // Return an error code
    }

    data_t input_arr[SIZE];  // Array to hold the input numbers

    // Convert command line arguments to integers and store them in the input array
    for(int i = 0; i < SIZE; i++) {
        input_arr[i] = std::stoi(argv[i + 1]);
    }

    // Call the bubble sort function
    bubble_sort(input_arr);

    // Print the sorted array
    for(int i = 0; i < SIZE; i++) {
        std::cout << input_arr[i] << " ";
    }
    return 0;  // Return a success code
}
