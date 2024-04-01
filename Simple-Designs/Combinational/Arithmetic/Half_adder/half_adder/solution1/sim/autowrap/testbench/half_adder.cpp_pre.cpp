# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Half_adder/half_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Half_adder/half_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Half_adder/half_adder.hpp" 1



void half_adder(bool a, bool b, bool &sum, bool &carry_out);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Half_adder/half_adder.cpp" 2

void half_adder(bool a, bool b, bool &sum, bool &carry_out) {
    sum = a ^ b;
    carry_out = a & b;
}
