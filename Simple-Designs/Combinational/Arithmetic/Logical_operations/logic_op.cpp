#include "logic_op.hpp"

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
            return false; // Invalid operation
    }
}