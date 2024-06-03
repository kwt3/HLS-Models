#ifndef LOGIC_OPERATIONS_HPP
#define LOGIC_OPERATIONS_HPP

#include <iostream>

enum class LogicOperator {
    AND,
    OR,
    XOR,
    NAND,
    LEFT_SHIFT,
    RIGHT_SHIFT
};

bool perform_logic_operation(bool A, bool B, LogicOperator op);
int perform_logic_operation(int A, int B, LogicOperator op);

// Wrapper function prototype
extern "C" void wrapper_function(bool A_bool, bool B_bool, int A_int, int B_int, LogicOperator op, bool &result_bool, int &result_int);

#endif // LOGIC_OPERATIONS_HPP
