#include "arithmetic_shift_register.hpp"

void arithmetic_shift_register(uint64_t data, bool load, bool ena, ap_uint<2> amount, uint64_t &q) {
    static uint64_t shift_register = 0;

    if (load) {
        shift_register = data;
    } else if (ena) {
        switch (amount) {
            case 0:
                q = shift_register << 1;
                break;
            case 1:
                q = shift_register << 8;
                break;
            case 2:
                q = (shift_register >> 1) | (shift_register[63] << 63);
                break;
            case 3:
                q = (shift_register >> 8) | ((shift_register(7,0)) << 56);
                break;
            default:
                q = shift_register;
        }
    }
}
