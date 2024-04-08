#include <iostream>
#include "logic_op.hpp"

int main() {
    bool A = true;
    bool B = false;

    // Test AND operator
    LogicOperator op1 = LogicOperator::AND;
    std::cout << "Result of AND operation: " << perform_logic_operation(A, B, op1) << std::endl;

    // Test OR operator
    LogicOperator op2 = LogicOperator::OR;
    std::cout << "Result of OR operation: " << perform_logic_operation(A, B, op2) << std::endl;

    // Test XOR operator
    LogicOperator op3 = LogicOperator::XOR;
    std::cout << "Result of XOR operation: " << perform_logic_operation(A, B, op3) << std::endl;

    // Test NAND operator
    LogicOperator op4 = LogicOperator::NAND;
    std::cout << "Result of NAND operation: " << perform_logic_operation(A, B, op4) << std::endl;

    return 0;
}
