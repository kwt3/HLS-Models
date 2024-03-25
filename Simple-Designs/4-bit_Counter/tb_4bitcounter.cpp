#include <iostream>
#include <ap_int.h>

// Function prototype
void counter(ap_uint<1> &reset, ap_uint<4> &out);

int main() {
    ap_uint<1> reset;
    ap_uint<4> out;

    // Test the counter
    for (int i = 0; i < 20; i++) {
        // Reset the counter at i = 10
        reset = (i == 10) ? 1 : 0;

        // Call the counter function
        counter(reset, out);

        // Print the output
        std::cout << "At time " << i << ", count = " << out.to_uint() << std::endl;
    }

    return 0;
}
