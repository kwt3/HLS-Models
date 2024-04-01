# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.hpp" 1



template<typename T>
T mux(T a, T b, bool sel);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer_2_to_1/mux2to1.cpp" 2

template<typename T>
T mux(T a, T b, bool sel) {
    return sel ? b : a;
}

template bool mux<bool>(bool a, bool b, bool sel);
