set SynModuleInfo {
  {SRCNAME matrix_multiply MODELNAME matrix_multiply RTLNAME matrix_multiply IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_multiply_mul_32s_32s_32_1_1 RTLNAME matrix_multiply_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matrix_multiply_flow_control_loop_pipe RTLNAME matrix_multiply_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_multiply_flow_control_loop_pipe_U}
    }
  }
}
