module property_checker
  (
  input clock,
  input reset
  );

  default clocking default_clk @(posedge clock); endclocking

  localparam MAX_LATENCY = 10;


    // ======================== //
   // Control Input Constraint //
  // ======================== //

  property control_input_c;
    (U1.io_op           == U2.io_op          ) &&
    (U1.io_roundingMode == U2.io_roundingMode) &&
    (U1.io_validin      == U2.io_validin     );
  endproperty
  control_input_c_a: assume property (control_input_c);


    // ================= //
   // State Equivalence //
  // ================= //

  function automatic state_equivalence();
  state_equivalence = (
    (U1.io_validout_v                                            == U2.io_validout_v                                           ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant     == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant    ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags       == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags      ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA         ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB         ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC         ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB       == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB      ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC         ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny     == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny    ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA        ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB        ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC        ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum        ) &&
    (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd        == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd       ) &&
    (U1.mulAddRecFNToRaw_postMul_io_mulAddResult_b               == U2.mulAddRecFNToRaw_postMul_io_mulAddResult_b              ) &&
    (U1.mulAddRecFNToRaw_postMul_io_roundingMode_b               == U2.mulAddRecFNToRaw_postMul_io_roundingMode_b              ) &&
    (U1.roundingMode_stage0_b                                    == U2.roundingMode_stage0_b                                   ) &&
    (U1.roundRawFNToRecFN_io_in_b_isInf                          == U2.roundRawFNToRecFN_io_in_b_isInf                         ) &&
    (U1.roundRawFNToRecFN_io_in_b_isNaN                          == U2.roundRawFNToRecFN_io_in_b_isNaN                         ) &&
    (U1.roundRawFNToRecFN_io_in_b_isZero                         == U2.roundRawFNToRecFN_io_in_b_isZero                        ) &&
    (U1.roundRawFNToRecFN_io_in_b_sExp                           == U2.roundRawFNToRecFN_io_in_b_sExp                          ) &&
    (U1.roundRawFNToRecFN_io_in_b_sig                            == U2.roundRawFNToRecFN_io_in_b_sig                           ) &&
    (U1.roundRawFNToRecFN_io_in_b_sign                           == U2.roundRawFNToRecFN_io_in_b_sign                          ) &&
    (U1.roundRawFNToRecFN_io_invalidExc_b                        == U2.roundRawFNToRecFN_io_invalidExc_b                       ) &&
    (U1.roundRawFNToRecFN_io_roundingMode_b                      == U2.roundRawFNToRecFN_io_roundingMode_b                     ) &&
    (U1.valid_stage0_v                                           == U2.valid_stage0_v                                          )
  );
  endfunction


    // ========================== //
   // Control Output Equivalence //
  // ========================== //
  // ========================= //
 // Control State Equivalence //
// ========================= //

function automatic control_state_equivalence();
control_state_equivalence = (
  (U1.io_validout_v                                            == U2.io_validout_v                                           ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant     == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant    ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags       == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags      ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA         ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB         ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC         ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB       == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB      ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC          == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC         ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny     == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny    ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA        ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB        ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC        ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum         == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum        ) &&
  (U1.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd        == U2.mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd       ) &&
  (U1.mulAddRecFNToRaw_postMul_io_mulAddResult_b               == U2.mulAddRecFNToRaw_postMul_io_mulAddResult_b              ) &&
  (U1.mulAddRecFNToRaw_postMul_io_roundingMode_b               == U2.mulAddRecFNToRaw_postMul_io_roundingMode_b              ) &&
  (U1.roundingMode_stage0_b                                    == U2.roundingMode_stage0_b                                   ) &&
  (U1.roundRawFNToRecFN_io_in_b_isInf                          == U2.roundRawFNToRecFN_io_in_b_isInf                         ) &&
  (U1.roundRawFNToRecFN_io_in_b_isNaN                          == U2.roundRawFNToRecFN_io_in_b_isNaN                         ) &&
  (U1.roundRawFNToRecFN_io_in_b_isZero                         == U2.roundRawFNToRecFN_io_in_b_isZero                        ) &&
  (U1.roundRawFNToRecFN_io_in_b_sExp                           == U2.roundRawFNToRecFN_io_in_b_sExp                          ) &&
  (U1.roundRawFNToRecFN_io_in_b_sig                            == U2.roundRawFNToRecFN_io_in_b_sig                           ) &&
  (U1.roundRawFNToRecFN_io_in_b_sign                           == U2.roundRawFNToRecFN_io_in_b_sign                          ) &&
  (U1.roundRawFNToRecFN_io_invalidExc_b                        == U2.roundRawFNToRecFN_io_invalidExc_b                       ) &&
  (U1.roundRawFNToRecFN_io_roundingMode_b                      == U2.roundRawFNToRecFN_io_roundingMode_b                     ) &&
  (U1.valid_stage0_v                                           == U2.valid_stage0_v                                          )
);
endfunction

  function automatic control_output_equivalence();
  control_output_equivalence = (
    (U1.io_exceptionFlags == U2.io_exceptionFlags)
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

bind MulAddRecFNPipe_miter property_checker checker_bind(.reset(reset), .clock(clock));

