#include <iostream>
#include "encoder.hpp"

int main() {

    // Test case for boolean
    bool data_bool = true;

    // Call encoder function
    bool encoded_bool = encoder(data_bool);

    // Print result
    std::cout << "Input data: " << data_bool << std::endl;
    std::cout << "Encoded data: " << encoded_bool << std::endl;

   /*
    // Test cases
    ap_uint<8> data_input = 10;

    // Call the encoder function
    ap_uint<8> encoded_data = encoder(data_input);

    // Print the results
    std::cout << "Input data: " << data_input << std::endl;
    std::cout << "Encoded data: " << encoded_data << std::endl;
	*/
    return 0;
}
