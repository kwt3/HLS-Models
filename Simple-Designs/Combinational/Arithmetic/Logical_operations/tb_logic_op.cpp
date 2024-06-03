#include <iostream>
#include "logic_op.hpp"

int main() {
    bool A_bool = true;
    bool B_bool = false;
    int A_int = 4; // 0100 in binary
    int B_int = 1;
    bool result_bool;
    int result_int;

    // Test AND operator for bool
    LogicOperator op1 = LogicOperator::AND;
    wrapper_function(A_bool, B_bool, A_int, B_int, op1, result_bool, result_int);
    std::cout << "Result of AND operation (bool): " << result_bool << std::endl;

    // Test LEFT SHIFT operator for int
    LogicOperator op5 = LogicOperator::LEFT_SHIFT;
    wrapper_function(A_bool, B_bool, A_int, B_int, op5, result_bool, result_int);
    std::cout << "Result of LEFT SHIFT operation (int): " << result_int << std::endl;

    return 0;
}

//int main() {
//    bool A_bool = true;
//    bool B_bool = false;
//    int A_int = 4; // 0100 in binary
//    int B_int = 1;
//
//    // Test AND operator for bool
//    LogicOperator op1 = LogicOperator::AND;
//    std::cout << "Result of AND operation (bool): " << perform_logic_operation(A_bool, B_bool, op1) << std::endl;
//
//    // Test OR operator for bool
//    LogicOperator op2 = LogicOperator::OR;
//    std::cout << "Result of OR operation (bool): " << perform_logic_operation(A_bool, B_bool, op2) << std::endl;
//
//    // Test XOR operator for bool
//    LogicOperator op3 = LogicOperator::XOR;
//    std::cout << "Result of XOR operation (bool): " << perform_logic_operation(A_bool, B_bool, op3) << std::endl;
//
//    // Test NAND operator for bool
//    LogicOperator op4 = LogicOperator::NAND;
//    std::cout << "Result of NAND operation (bool): " << perform_logic_operation(A_bool, B_bool, op4) << std::endl;
//
//    // Test LEFT SHIFT operator for int
//    LogicOperator op5 = LogicOperator::LEFT_SHIFT;
//    std::cout << "Result of LEFT SHIFT operation (int): " << perform_logic_operation(A_int, B_int, op5) << std::endl;
//
//    // Test RIGHT SHIFT operator for int
//    LogicOperator op6 = LogicOperator::RIGHT_SHIFT;
//    std::cout << "Result of RIGHT SHIFT operation (int): " << perform_logic_operation(A_int, B_int, op6) << std::endl;
//
//    return 0;
//}
