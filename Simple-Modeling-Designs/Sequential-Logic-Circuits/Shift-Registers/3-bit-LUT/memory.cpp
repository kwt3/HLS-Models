#include "memory.hpp"

void memory(bool shift_enable, uint8_t S, bool A, bool B, bool C, uint8_t &Z) {
    static uint8_t shift_register = 0;

    if (shift_enable) {
        // Shift in the new data
        shift_register = (shift_register << 1) | S;
    }

    // Multiplexers to select the output based on ABC
    if (!A && !B && !C) {
        Z = shift_register(0, 0);
    } else if (!A && !B && C) {
        Z = shift_register(1, 1);
    } else if (!A && B && !C) {
        Z = shift_register(2, 2);
    } else if (!A && B && C) {
        Z = shift_register(3, 3);
    } else if (A && !B && !C) {
        Z = shift_register(4, 4);
    } else if (A && !B && C) {
        Z = shift_register(5, 5);
    } else if (A && B && !C) {
        Z = shift_register(6, 6);
    } else { // (A && B && C)
        Z = shift_register(7, 7);
    }
}
