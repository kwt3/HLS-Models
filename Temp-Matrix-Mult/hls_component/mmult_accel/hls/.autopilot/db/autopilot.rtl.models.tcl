set SynModuleInfo {
  {SRCNAME mmult_accel MODELNAME mmult_accel RTLNAME mmult_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME mmult_accel_mul_31ns_32ns_63_1_1 RTLNAME mmult_accel_mul_31ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmult_accel_mul_32ns_32ns_62_1_1 RTLNAME mmult_accel_mul_32ns_32ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmult_accel_mul_32ns_32ns_64_1_1 RTLNAME mmult_accel_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mmult_accel_mac_muladd_8ns_8ns_32ns_32_4_1 RTLNAME mmult_accel_mac_muladd_8ns_8ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME mmult_accel_gmem0_m_axi RTLNAME mmult_accel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mmult_accel_gmem1_m_axi RTLNAME mmult_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mmult_accel_gmem2_m_axi RTLNAME mmult_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mmult_accel_control_s_axi RTLNAME mmult_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
