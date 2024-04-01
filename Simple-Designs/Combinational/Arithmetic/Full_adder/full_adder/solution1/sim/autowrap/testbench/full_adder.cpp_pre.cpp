# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.hpp" 1



void full_adder(bool a, bool b, bool carry_in, bool &sum, bool &carry_out);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Full_adder/full_adder.cpp" 2

void full_adder(bool a, bool b, bool carry_in, bool &sum, bool &carry_out) {
    sum = a ^ b ^ carry_in;
    carry_out = (a & b) | (carry_in & (a ^ b));
}
