# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.hpp" 1



# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/half_adder.hpp" 1



template <typename T>
void half_adder(T A, T B, T& sum, T& carry);
# 5 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.hpp" 2

template <typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Arithmetic/Adders/Full_adder/full_adder.cpp" 2

template<typename T>
void full_adder(T A, T B, T C_In, T& sum, T& carry) {
    T s1, c1, c2;

    half_adder(A, B, c1, s1);

    half_adder(C_In, s1, c2, sum);

    carry = c1 || c2;
}


template void full_adder<bool>(bool A, bool B, bool C_In, bool& sum, bool& carry);
