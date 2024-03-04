#include "galois_lfsr.hpp"

void galois_lfsr(bool reset, uint32_t &q) {
    static uint32_t lfsr = 1;

    if (reset) {
        lfsr = 1;
    } else {
        bool feedback = (lfsr >> 31) ^ (lfsr >> 21) ^ (lfsr >> 1) ^ (lfsr >> 0);
        lfsr = (lfsr << 1) | feedback;
    }

    q = lfsr;
}
