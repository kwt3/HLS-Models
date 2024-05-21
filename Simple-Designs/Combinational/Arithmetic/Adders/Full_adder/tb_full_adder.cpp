#include <iostream>
#include "full_adder.hpp"
#include <ap_int.h>


// // Used for ap_int<8> output formatting
// std::ostream& operator<<(std::ostream& os, const ap_int<8>& val) {
//     //os << val.to_string(); // Outputting the value using its binary representation
// 	os << static_cast<int>(val);
// 	return os;
// }



// // Used for ap_uint<8> output formatting
// std::ostream& operator<<(std::ostream& os, const ap_uint<8>& val) {
//     os << static_cast<unsigned int>(val); // Outputting the integer value
//     return os;
// }


int main() {
    
	// // Test vectors
    // bool a_values[] = {0, 1, 0, 1};
    // bool b_values[] = {0, 0, 1, 1};
    // bool cin_values[] = {0, 1, 1, 0};

    // for (int i = 0; i < 4; ++i) {
    //     bool A = a_values[i];
    //     bool B = b_values[i];
    //     bool C_In = cin_values[i];
    //     bool sum, carry;

    //     // Call your full_adder function
    //     full_adder(A, B, C_In, sum, carry);

    //     std::cout << "Input: A=" << A << ", B=" << B << ", C_In=" << C_In;
    //     std::cout << " | Output: Sum=" << sum << ", Carry=" << carry << std::endl;
    // }
    

    // Test case for int
    int a_int = 5;
    int b_int = 3;
    int cin_int = 1;
    int sum_int, carry_int;

    full_adder(a_int, b_int, cin_int, sum_int, carry_int);
    std::cout << "Input: A=" << a_int << ", B=" << b_int << ", C_In=" << cin_int;
    std::cout << " | Output: Sum=" << sum_int << ", Carry=" << carry_int << std::endl;

	
    // // Test case for ap_int<8>
    // ap_int<8> a_ap_int = 0b00001011;
    // ap_int<8> b_ap_int = 0b00000101;
    // ap_int<8> cin_ap_int = 1;
    // ap_int<8> sum_ap_int, carry_ap_int;

    // full_adder(a_ap_int, b_ap_int, cin_ap_int, sum_ap_int, carry_ap_int);
    // std::cout << "Input: A=" << a_ap_int << ", B=" << b_ap_int << ", C_In=" << cin_ap_int;
    // std::cout << " | Output: Sum=" << sum_ap_int << ", Carry=" << carry_ap_int << std::endl;
	
    
    // // Test case for ap_uint<8>
    // ap_uint<8> a_ap_uint = 0b00001011;
    // ap_uint<8> b_ap_uint = 0b00000101;
    // ap_uint<8> cin_ap_uint = 1;
    // ap_uint<8> sum_ap_uint, carry_ap_uint;

    // full_adder(a_ap_uint, b_ap_uint, cin_ap_uint, sum_ap_uint, carry_ap_uint);
    // std::cout << "Input: A=" << a_ap_uint << ", B=" << b_ap_uint << ", C_In=" << cin_ap_uint;
    // std::cout << " | Output: Sum=" << sum_ap_uint << ", Carry=" << carry_ap_uint << std::endl;

    return 0;
}
