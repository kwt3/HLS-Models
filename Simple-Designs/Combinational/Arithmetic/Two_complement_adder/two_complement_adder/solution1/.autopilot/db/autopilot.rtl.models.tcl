set SynModuleInfo {
  {SRCNAME two_complement_adder_Pipeline_VITIS_LOOP_8_1 MODELNAME two_complement_adder_Pipeline_VITIS_LOOP_8_1 RTLNAME two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_8_1
    SUBMODULES {
      {MODELNAME two_complement_adder_flow_control_loop_pipe_sequential_init RTLNAME two_complement_adder_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME two_complement_adder_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME two_complement_adder_Pipeline_VITIS_LOOP_16_2 MODELNAME two_complement_adder_Pipeline_VITIS_LOOP_16_2 RTLNAME two_complement_adder_two_complement_adder_Pipeline_VITIS_LOOP_16_2}
  {SRCNAME two_complement_adder MODELNAME two_complement_adder RTLNAME two_complement_adder IS_TOP 1
    SUBMODULES {
      {MODELNAME two_complement_adder_temp_sum_RAM_AUTO_1R1W RTLNAME two_complement_adder_temp_sum_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
