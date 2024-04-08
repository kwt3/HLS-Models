#ifndef LOGIC_OPERATIONS_HPP
#define LOGIC_OPERATIONS_HPP

#include <iostream>

enum class LogicOperator {
    AND,
    OR,
    XOR,
    NAND
};

bool perform_logic_operation(bool A, bool B, LogicOperator op);

#endif // LOGIC_OPERATIONS_HPP
