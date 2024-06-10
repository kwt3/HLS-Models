#include "bubble_sort_v1.hpp"
#include <iostream>

int main() {
    data_t array[MAX_SIZE];
    int size;

    std::cout << "Enter the size of the array and its elements: ";
    std::cin >> size;
    for (int i = 0; i < size; i++) {
        std::cin >> array[i];
    }

    bubbleSort(array, size);

    std::cout << "Sorted array: ";
    for (int i = 0; i < size; i++) {
        std::cout << array[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}

