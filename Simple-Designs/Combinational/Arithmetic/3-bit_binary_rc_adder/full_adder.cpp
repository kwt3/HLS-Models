#include "full_adder.hpp"

// Implementation of the full adder function
void full_adder(bool a, bool b, bool cin, bool& sum, bool& cout) {
    // Compute sum
    sum = a ^ b ^ cin;

    // Compute carry-out
    cout = (a & b) | (b & cin) | (cin & a);
}
