#include <iostream>
#include "decoder.hpp"

int main() {

    // Test case for boolean
    bool data_bool = true;

    // Call decoder function
    bool decoded_bool = decoder(data_bool);

    // Print result
    std::cout << "Input data: " << data_bool << std::endl;
    std::cout << "Decoded data: " << decoded_bool << std::endl;

    return 0;
}
