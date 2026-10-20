module property_checker
  (
  input clock,
  input reset
  );

  default clocking default_clk @(posedge clock); endclocking

  localparam MAX_LATENCY = 10;

 // ========================= //
 // Control State Equivalence //
// ========================= //

function automatic control_state_equivalence();
control_state_equivalence = (
  (U1.fpiu_out_REG                                                                                        == U2.fpiu_out_REG                                                                                       ) &&
  (U1.fpiu_outPipe_bits_1_exc                                                                             == U2.fpiu_outPipe_bits_1_exc                                                                            ) &&
  (U1.fpiu_outPipe_bits_1_toint                                                                           == U2.fpiu_outPipe_bits_1_toint                                                                          ) &&
  (U1.fpiu_outPipe_bits_2_exc                                                                             == U2.fpiu_outPipe_bits_2_exc                                                                            ) &&
  (U1.fpiu_outPipe_bits_2_toint                                                                           == U2.fpiu_outPipe_bits_2_toint                                                                          ) &&
  (U1.fpiu_outPipe_bits_exc                                                                               == U2.fpiu_outPipe_bits_exc                                                                              ) &&
  (U1.fpiu_outPipe_bits_toint                                                                             == U2.fpiu_outPipe_bits_toint                                                                            ) &&
  (U1.fpiu_outPipe_valid                                                                                  == U2.fpiu_outPipe_valid                                                                                 ) &&
  (U1.fpiu_outPipe_valid_1                                                                                == U2.fpiu_outPipe_valid_1                                                                               ) &&
  (U1.fpiu_outPipe_valid_2                                                                                == U2.fpiu_outPipe_valid_2                                                                               ) &&
  (U1.fpmu_double_b                                                                                       == U2.fpmu_double_b                                                                                      ) &&
  (U1.fpmu_double_outPipe_bits                                                                            == U2.fpmu_double_outPipe_bits                                                                           ) &&
  (U1.fpmu_double_outPipe_bits_1                                                                          == U2.fpmu_double_outPipe_bits_1                                                                         ) &&
  (U1.fpmu_double_outPipe_bits_2                                                                          == U2.fpmu_double_outPipe_bits_2                                                                         ) &&
  (U1.fpmu_double_outPipe_valid                                                                           == U2.fpmu_double_outPipe_valid                                                                          ) &&
  (U1.fpmu_double_outPipe_valid_1                                                                         == U2.fpmu_double_outPipe_valid_1                                                                        ) &&
  (U1.fpmu_double_v                                                                                       == U2.fpmu_double_v                                                                                      ) &&
  (U1.fpu_out_data_opts_bigger_swizzledNaN_1                                                              == U2.fpu_out_data_opts_bigger_swizzledNaN_1                                                             ) &&
  (U1.dfma.in_fmaCmd                                                                                      == U2.dfma.in_fmaCmd                                                                                     ) &&
  (U1.dfma.in_in1                                                                                         == U2.dfma.in_in1                                                                                        ) &&
  (U1.dfma.in_in2                                                                                         == U2.dfma.in_in2                                                                                        ) &&
  (U1.dfma.in_in3                                                                                         == U2.dfma.in_in3                                                                                        ) &&
  (U1.dfma.in_rm                                                                                          == U2.dfma.in_rm                                                                                         ) &&
  (U1.dfma.io_out_b_data                                                                                  == U2.dfma.io_out_b_data                                                                                 ) &&
  (U1.dfma.io_out_b_exc                                                                                   == U2.dfma.io_out_b_exc                                                                                  ) &&
  (U1.dfma.io_out_v                                                                                       == U2.dfma.io_out_v                                                                                      ) &&
  (U1.dfma.valid                                                                                          == U2.dfma.valid                                                                                         ) &&
  (U1.fpiu.in_fmt                                                                                         == U2.fpiu.in_fmt                                                                                        ) &&
  (U1.fpiu.in_in1                                                                                         == U2.fpiu.in_in1                                                                                        ) &&
  (U1.fpiu.in_in2                                                                                         == U2.fpiu.in_in2                                                                                        ) &&
  (U1.fpiu.in_ren2                                                                                        == U2.fpiu.in_ren2                                                                                       ) &&
  (U1.fpiu.in_rm                                                                                          == U2.fpiu.in_rm                                                                                         ) &&
  (U1.fpiu.in_typ                                                                                         == U2.fpiu.in_typ                                                                                        ) &&
  (U1.fpiu.in_typeTagOut                                                                                  == U2.fpiu.in_typeTagOut                                                                                 ) &&
  (U1.fpiu.in_wflags                                                                                      == U2.fpiu.in_wflags                                                                                     ) &&
  (U1.fpmu.inPipe_bits_in1                                                                                == U2.fpmu.inPipe_bits_in1                                                                               ) &&
  (U1.fpmu.inPipe_bits_in2                                                                                == U2.fpmu.inPipe_bits_in2                                                                               ) &&
  (U1.fpmu.inPipe_bits_ren2                                                                               == U2.fpmu.inPipe_bits_ren2                                                                              ) &&
  (U1.fpmu.inPipe_bits_rm                                                                                 == U2.fpmu.inPipe_bits_rm                                                                                ) &&
  (U1.fpmu.inPipe_bits_typeTagOut                                                                         == U2.fpmu.inPipe_bits_typeTagOut                                                                        ) &&
  (U1.fpmu.inPipe_bits_wflags                                                                             == U2.fpmu.inPipe_bits_wflags                                                                            ) &&
  (U1.fpmu.inPipe_valid                                                                                   == U2.fpmu.inPipe_valid                                                                                  ) &&
  (U1.fpmu.io_out_b_data                                                                                  == U2.fpmu.io_out_b_data                                                                                 ) &&
  (U1.fpmu.io_out_b_exc                                                                                   == U2.fpmu.io_out_b_exc                                                                                  ) &&
  (U1.fpmu.io_out_outPipe_bits_1_data                                                                     == U2.fpmu.io_out_outPipe_bits_1_data                                                                    ) &&
  (U1.fpmu.io_out_outPipe_bits_1_exc                                                                      == U2.fpmu.io_out_outPipe_bits_1_exc                                                                     ) &&
  (U1.fpmu.io_out_outPipe_bits_data                                                                       == U2.fpmu.io_out_outPipe_bits_data                                                                      ) &&
  (U1.fpmu.io_out_outPipe_bits_exc                                                                        == U2.fpmu.io_out_outPipe_bits_exc                                                                       ) &&
  (U1.fpmu.io_out_outPipe_valid                                                                           == U2.fpmu.io_out_outPipe_valid                                                                          ) &&
  (U1.fpmu.io_out_outPipe_valid_1                                                                         == U2.fpmu.io_out_outPipe_valid_1                                                                        ) &&
  (U1.fpmu.io_out_v                                                                                       == U2.fpmu.io_out_v                                                                                      ) &&
  (U1.sfma.in_fmaCmd                                                                                      == U2.sfma.in_fmaCmd                                                                                     ) &&
  (U1.sfma.in_in1                                                                                         == U2.sfma.in_in1                                                                                        ) &&
  (U1.sfma.in_in2                                                                                         == U2.sfma.in_in2                                                                                        ) &&
  (U1.sfma.in_in3                                                                                         == U2.sfma.in_in3                                                                                        ) &&
  (U1.sfma.in_rm                                                                                          == U2.sfma.in_rm                                                                                         ) &&
  (U1.sfma.io_out_b_data                                                                                  == U2.sfma.io_out_b_data                                                                                 ) &&
  (U1.sfma.io_out_b_exc                                                                                   == U2.sfma.io_out_b_exc                                                                                  ) &&
  (U1.sfma.io_out_v                                                                                       == U2.sfma.io_out_v                                                                                      ) &&
  (U1.sfma.valid                                                                                          == U2.sfma.valid                                                                                         ) &&
  (U1.dfma.fma.io_validout_v                                                                              == U2.dfma.fma.io_validout_v                                                                             ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                  ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                  ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                       == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                      ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                         == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                        ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                  ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                           ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                           ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                           ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                         == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                        ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                           ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                       == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                      ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                          ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                          ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                          ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                          ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                          == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                         ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                 == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                ) &&
  (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                 == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                ) &&
  (U1.dfma.fma.roundingMode_stage0_b                                                                      == U2.dfma.fma.roundingMode_stage0_b                                                                     ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                            == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                           ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                            == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                           ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                           == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                          ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                             == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                            ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sig                                                              == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sig                                                             ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sign                                                             == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sign                                                            ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                          == U2.dfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                         ) &&
  (U1.dfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                        == U2.dfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                       ) &&
  (U1.dfma.fma.valid_stage0_v                                                                             == U2.dfma.fma.valid_stage0_v                                                                            ) &&
  (U1.sfma.fma.io_validout_v                                                                              == U2.sfma.fma.io_validout_v                                                                             ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                  ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                  ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                       == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                      ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                         == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                        ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                  ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                           ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                           ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                           ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                         == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                        ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                           ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                       == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                      ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                          ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                          ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                          ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                          ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                          == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                         ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                 == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                ) &&
  (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                 == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                ) &&
  (U1.sfma.fma.roundingMode_stage0_b                                                                      == U2.sfma.fma.roundingMode_stage0_b                                                                     ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                            == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                           ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                            == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                           ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                           == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                          ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                             == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                            ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sig                                                              == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sig                                                             ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sign                                                             == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sign                                                            ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                          == U2.sfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                         ) &&
  (U1.sfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                        == U2.sfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                       ) &&
  (U1.sfma.fma.valid_stage0_v                                                                             == U2.sfma.fma.valid_stage0_v                                                                            )
);
endfunction

    // ======================== //
   // Control Input Constraint //
  // ======================== //

  property control_input_c;
    (U1.io_req_bits_fcsr_rm        == U2.io_req_bits_fcsr_rm       ) &&
    (U1.io_req_bits_uop_imm_packed == U2.io_req_bits_uop_imm_packed) &&
    (U1.io_req_bits_uop_uopc       == U2.io_req_bits_uop_uopc      ) &&
    (U1.io_req_valid               == U2.io_req_valid              );
  endproperty
  control_input_c_a: assume property (control_input_c);


    // ================= //
   // State Equivalence //
  // ================= //

  function automatic state_equivalence();
  state_equivalence = (
    (U1.fpiu_out_REG                                                                                        == U2.fpiu_out_REG                                                                                       ) &&
    (U1.fpiu_outPipe_bits_1_exc                                                                             == U2.fpiu_outPipe_bits_1_exc                                                                            ) &&
    (U1.fpiu_outPipe_bits_1_toint                                                                           == U2.fpiu_outPipe_bits_1_toint                                                                          ) &&
    (U1.fpiu_outPipe_bits_2_exc                                                                             == U2.fpiu_outPipe_bits_2_exc                                                                            ) &&
    (U1.fpiu_outPipe_bits_2_toint                                                                           == U2.fpiu_outPipe_bits_2_toint                                                                          ) &&
    (U1.fpiu_outPipe_bits_exc                                                                               == U2.fpiu_outPipe_bits_exc                                                                              ) &&
    (U1.fpiu_outPipe_bits_toint                                                                             == U2.fpiu_outPipe_bits_toint                                                                            ) &&
    (U1.fpiu_outPipe_valid                                                                                  == U2.fpiu_outPipe_valid                                                                                 ) &&
    (U1.fpiu_outPipe_valid_1                                                                                == U2.fpiu_outPipe_valid_1                                                                               ) &&
    (U1.fpiu_outPipe_valid_2                                                                                == U2.fpiu_outPipe_valid_2                                                                               ) &&
    (U1.fpmu_double_b                                                                                       == U2.fpmu_double_b                                                                                      ) &&
    (U1.fpmu_double_outPipe_bits                                                                            == U2.fpmu_double_outPipe_bits                                                                           ) &&
    (U1.fpmu_double_outPipe_bits_1                                                                          == U2.fpmu_double_outPipe_bits_1                                                                         ) &&
    (U1.fpmu_double_outPipe_bits_2                                                                          == U2.fpmu_double_outPipe_bits_2                                                                         ) &&
    (U1.fpmu_double_outPipe_valid                                                                           == U2.fpmu_double_outPipe_valid                                                                          ) &&
    (U1.fpmu_double_outPipe_valid_1                                                                         == U2.fpmu_double_outPipe_valid_1                                                                        ) &&
    (U1.fpmu_double_v                                                                                       == U2.fpmu_double_v                                                                                      ) &&
    (U1.fpu_out_data_opts_bigger_swizzledNaN_1                                                              == U2.fpu_out_data_opts_bigger_swizzledNaN_1                                                             ) &&
    (U1.dfma.in_fmaCmd                                                                                      == U2.dfma.in_fmaCmd                                                                                     ) &&
    (U1.dfma.in_in1                                                                                         == U2.dfma.in_in1                                                                                        ) &&
    (U1.dfma.in_in2                                                                                         == U2.dfma.in_in2                                                                                        ) &&
    (U1.dfma.in_in3                                                                                         == U2.dfma.in_in3                                                                                        ) &&
    (U1.dfma.in_rm                                                                                          == U2.dfma.in_rm                                                                                         ) &&
    (U1.dfma.io_out_b_data                                                                                  == U2.dfma.io_out_b_data                                                                                 ) &&
    (U1.dfma.io_out_b_exc                                                                                   == U2.dfma.io_out_b_exc                                                                                  ) &&
    (U1.dfma.io_out_v                                                                                       == U2.dfma.io_out_v                                                                                      ) &&
    (U1.dfma.valid                                                                                          == U2.dfma.valid                                                                                         ) &&
    (U1.fpiu.in_fmt                                                                                         == U2.fpiu.in_fmt                                                                                        ) &&
    (U1.fpiu.in_in1                                                                                         == U2.fpiu.in_in1                                                                                        ) &&
    (U1.fpiu.in_in2                                                                                         == U2.fpiu.in_in2                                                                                        ) &&
    (U1.fpiu.in_ren2                                                                                        == U2.fpiu.in_ren2                                                                                       ) &&
    (U1.fpiu.in_rm                                                                                          == U2.fpiu.in_rm                                                                                         ) &&
    (U1.fpiu.in_typ                                                                                         == U2.fpiu.in_typ                                                                                        ) &&
    (U1.fpiu.in_typeTagOut                                                                                  == U2.fpiu.in_typeTagOut                                                                                 ) &&
    (U1.fpiu.in_wflags                                                                                      == U2.fpiu.in_wflags                                                                                     ) &&
    (U1.fpmu.inPipe_bits_in1                                                                                == U2.fpmu.inPipe_bits_in1                                                                               ) &&
    (U1.fpmu.inPipe_bits_in2                                                                                == U2.fpmu.inPipe_bits_in2                                                                               ) &&
    (U1.fpmu.inPipe_bits_ren2                                                                               == U2.fpmu.inPipe_bits_ren2                                                                              ) &&
    (U1.fpmu.inPipe_bits_rm                                                                                 == U2.fpmu.inPipe_bits_rm                                                                                ) &&
    (U1.fpmu.inPipe_bits_typeTagOut                                                                         == U2.fpmu.inPipe_bits_typeTagOut                                                                        ) &&
    (U1.fpmu.inPipe_bits_wflags                                                                             == U2.fpmu.inPipe_bits_wflags                                                                            ) &&
    (U1.fpmu.inPipe_valid                                                                                   == U2.fpmu.inPipe_valid                                                                                  ) &&
    (U1.fpmu.io_out_b_data                                                                                  == U2.fpmu.io_out_b_data                                                                                 ) &&
    (U1.fpmu.io_out_b_exc                                                                                   == U2.fpmu.io_out_b_exc                                                                                  ) &&
    (U1.fpmu.io_out_outPipe_bits_1_data                                                                     == U2.fpmu.io_out_outPipe_bits_1_data                                                                    ) &&
    (U1.fpmu.io_out_outPipe_bits_1_exc                                                                      == U2.fpmu.io_out_outPipe_bits_1_exc                                                                     ) &&
    (U1.fpmu.io_out_outPipe_bits_data                                                                       == U2.fpmu.io_out_outPipe_bits_data                                                                      ) &&
    (U1.fpmu.io_out_outPipe_bits_exc                                                                        == U2.fpmu.io_out_outPipe_bits_exc                                                                       ) &&
    (U1.fpmu.io_out_outPipe_valid                                                                           == U2.fpmu.io_out_outPipe_valid                                                                          ) &&
    (U1.fpmu.io_out_outPipe_valid_1                                                                         == U2.fpmu.io_out_outPipe_valid_1                                                                        ) &&
    (U1.fpmu.io_out_v                                                                                       == U2.fpmu.io_out_v                                                                                      ) &&
    (U1.sfma.in_fmaCmd                                                                                      == U2.sfma.in_fmaCmd                                                                                     ) &&
    (U1.sfma.in_in1                                                                                         == U2.sfma.in_in1                                                                                        ) &&
    (U1.sfma.in_in2                                                                                         == U2.sfma.in_in2                                                                                        ) &&
    (U1.sfma.in_in3                                                                                         == U2.sfma.in_in3                                                                                        ) &&
    (U1.sfma.in_rm                                                                                          == U2.sfma.in_rm                                                                                         ) &&
    (U1.sfma.io_out_b_data                                                                                  == U2.sfma.io_out_b_data                                                                                 ) &&
    (U1.sfma.io_out_b_exc                                                                                   == U2.sfma.io_out_b_exc                                                                                  ) &&
    (U1.sfma.io_out_v                                                                                       == U2.sfma.io_out_v                                                                                      ) &&
    (U1.sfma.valid                                                                                          == U2.sfma.valid                                                                                         ) &&
    (U1.dfma.fma.io_validout_v                                                                              == U2.dfma.fma.io_validout_v                                                                             ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                  ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                  ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                       == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                      ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                         == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                        ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                   == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                  ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                           ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                           ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                           ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                         == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                        ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                            == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                           ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                       == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                      ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                          ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                          ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                          ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                           == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                          ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                          == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                         ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                 == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                ) &&
    (U1.dfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                 == U2.dfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                ) &&
    (U1.dfma.fma.roundingMode_stage0_b                                                                      == U2.dfma.fma.roundingMode_stage0_b                                                                     ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                            == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                           ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                            == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                           ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                           == U2.dfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                          ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                             == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                            ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sig                                                              == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sig                                                             ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_in_b_sign                                                             == U2.dfma.fma.roundRawFNToRecFN_io_in_b_sign                                                            ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                          == U2.dfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                         ) &&
    (U1.dfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                        == U2.dfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                       ) &&
    (U1.dfma.fma.valid_stage0_v                                                                             == U2.dfma.fma.valid_stage0_v                                                                            ) &&
    (U1.sfma.fma.io_validout_v                                                                              == U2.sfma.fma.io_validout_v                                                                             ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC                                  ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist                                  ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                       == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant                                      ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                         == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags                                        ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                   == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC                                  ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA                                           ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB                                           ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC                                           ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                         == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB                                        ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                            == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC                                           ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                       == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny                                      ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA                                          ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB                                          ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC                                          ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                           == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum                                          ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                          == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd                                         ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                 == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_mulAddResult_b                                                ) &&
    (U1.sfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                 == U2.sfma.fma.mulAddRecFNToRaw_postMul_io_roundingMode_b                                                ) &&
    (U1.sfma.fma.roundingMode_stage0_b                                                                      == U2.sfma.fma.roundingMode_stage0_b                                                                     ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                            == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isInf                                                           ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                            == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isNaN                                                           ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                           == U2.sfma.fma.roundRawFNToRecFN_io_in_b_isZero                                                          ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                             == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sExp                                                            ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sig                                                              == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sig                                                             ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_in_b_sign                                                             == U2.sfma.fma.roundRawFNToRecFN_io_in_b_sign                                                            ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                          == U2.sfma.fma.roundRawFNToRecFN_io_invalidExc_b                                                         ) &&
    (U1.sfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                        == U2.sfma.fma.roundRawFNToRecFN_io_roundingMode_b                                                       ) &&
    (U1.sfma.fma.valid_stage0_v                                                                             == U2.sfma.fma.valid_stage0_v                                                                            )
  );
  endfunction


    // ========================== //
   // Control Output Equivalence //
  // ========================== //

  function automatic control_output_equivalence();
  control_output_equivalence = (
    (U1.io_resp_bits_fflags_bits_flags == U2.io_resp_bits_fflags_bits_flags)
  );
  endfunction


    // ============== //
   // Reset Sequence //
  // ============== //

  sequence reset_sequence;
    (reset == 1'b1);
  endsequence


    // ================================ //
   // UPEC for Data-Independent Timing //
  // ================================ //

  property upec_dit_unrolled_p;
    state_equivalence()
  implies
    control_output_equivalence() [*MAX_LATENCY];
  endproperty
  upec_dit_unrolled_p_a: assert property (disable iff (reset) upec_dit_unrolled_p);


  property upec_dit_step_p;
    control_state_equivalence()
  implies
    ##1 control_state_equivalence() && control_output_equivalence();
  endproperty
  upec_dit_step_p_a: assert property (disable iff (reset) upec_dit_step_p);


  property upec_dit_base_p;
    reset_sequence
  implies
    ##1 control_state_equivalence() && control_output_equivalence();
  endproperty
  upec_dit_base_p_a: assert property (upec_dit_base_p);


endmodule

bind FPU_miter property_checker checker_bind(.reset(reset), .clock(clock));

