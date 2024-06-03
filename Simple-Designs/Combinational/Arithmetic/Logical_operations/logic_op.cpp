#include "logic_op.hpp"

// Boolean operations
bool perform_logic_operation(bool A, bool B, LogicOperator op) {
    switch (op) {
        case LogicOperator::AND:
            return A && B;
        case LogicOperator::OR:
            return A || B;
        case LogicOperator::XOR:
            return A ^ B;
        case LogicOperator::NAND:
            return !(A && B);
        default:
            return false;
    }
}

// Integer operations
int perform_logic_operation(int A, int B, LogicOperator op) {
    switch (op) {
        case LogicOperator::AND:
            return A & B;
        case LogicOperator::OR:
            return A | B;
        case LogicOperator::XOR:
            return A ^ B;
        case LogicOperator::NAND:
            return ~(A & B);
        case LogicOperator::LEFT_SHIFT:
            return A << B;  // Left shift A by B bits
        case LogicOperator::RIGHT_SHIFT:
            return A >> B;  // Right shift A by B bits
        default:
            return 0;
    }
}

// Wrapper function
extern "C" void wrapper_function(bool A_bool, bool B_bool, int A_int, int B_int, LogicOperator op, bool &result_bool, int &result_int) {
    result_bool = perform_logic_operation(A_bool, B_bool, op);
    result_int = perform_logic_operation(A_int, B_int, op);
}
