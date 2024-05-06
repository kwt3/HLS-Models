# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp"
# 1 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.hpp" 1



template<typename T>
T mux(T data0, T data1, bool select);
# 2 "C:/Users/kwokt/HLS-Models/Simple-Designs/Combinational/Arithmetic/Multiplexer/mux.cpp" 2

template<typename T>
T mux(T data0, T data1, bool select) {
    if (select) {
        return data1;
    } else {
        return data0;
    }
}


template int mux<int>(int data0, int data1, bool select);
