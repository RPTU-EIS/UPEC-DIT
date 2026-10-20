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
    (U1.io_inValid      == U2.io_inValid     ) &&
    (U1.io_roundingMode == U2.io_roundingMode) &&
    (U1.io_sqrtOp       == U2.io_sqrtOp      );
  endproperty
  control_input_c_a: assume property (control_input_c);


    // ================= //
   // State Equivalence //
  // ================= //

  function automatic state_equivalence();
  state_equivalence = (
    (U1.mul.reg_a_s1                          == U2.mul.reg_a_s1                         ) &&
    (U1.mul.reg_a_s2                          == U2.mul.reg_a_s2                         ) &&
    (U1.mul.reg_b_s1                          == U2.mul.reg_b_s1                         ) &&
    (U1.mul.reg_b_s2                          == U2.mul.reg_b_s2                         ) &&
    (U1.mul.reg_result_s3                     == U2.mul.reg_result_s3                    ) &&
    (U1.mul.val_s1                            == U2.mul.val_s1                           ) &&
    (U1.mul.val_s2                            == U2.mul.val_s2                           ) &&
    (U1.ds.divSqrtRecF64ToRaw.bit0FractA_PB   == U2.ds.divSqrtRecF64ToRaw.bit0FractA_PB  ) &&
    (U1.ds.divSqrtRecF64ToRaw.bit0FractA_PC   == U2.ds.divSqrtRecF64ToRaw.bit0FractA_PC  ) &&
    (U1.ds.divSqrtRecF64ToRaw.cycleNum_A      == U2.ds.divSqrtRecF64ToRaw.cycleNum_A     ) &&
    (U1.ds.divSqrtRecF64ToRaw.cycleNum_B      == U2.ds.divSqrtRecF64ToRaw.cycleNum_B     ) &&
    (U1.ds.divSqrtRecF64ToRaw.cycleNum_C      == U2.ds.divSqrtRecF64ToRaw.cycleNum_C     ) &&
    (U1.ds.divSqrtRecF64ToRaw.cycleNum_E      == U2.ds.divSqrtRecF64ToRaw.cycleNum_E     ) &&
    (U1.ds.divSqrtRecF64ToRaw.E_E_div         == U2.ds.divSqrtRecF64ToRaw.E_E_div        ) &&
    (U1.ds.divSqrtRecF64ToRaw.ER1_B_sqrt      == U2.ds.divSqrtRecF64ToRaw.ER1_B_sqrt     ) &&
    (U1.ds.divSqrtRecF64ToRaw.ESqrR1_B_sqrt   == U2.ds.divSqrtRecF64ToRaw.ESqrR1_B_sqrt  ) &&
    (U1.ds.divSqrtRecF64ToRaw.fractA_PA       == U2.ds.divSqrtRecF64ToRaw.fractA_PA      ) &&
    (U1.ds.divSqrtRecF64ToRaw.fractB_PA       == U2.ds.divSqrtRecF64ToRaw.fractB_PA      ) &&
    (U1.ds.divSqrtRecF64ToRaw.fractB_PB       == U2.ds.divSqrtRecF64ToRaw.fractB_PB      ) &&
    (U1.ds.divSqrtRecF64ToRaw.fractB_PC       == U2.ds.divSqrtRecF64ToRaw.fractB_PC      ) &&
    (U1.ds.divSqrtRecF64ToRaw.fractR0_A       == U2.ds.divSqrtRecF64ToRaw.fractR0_A      ) &&
    (U1.ds.divSqrtRecF64ToRaw.hiSqrR0_A_sqrt  == U2.ds.divSqrtRecF64ToRaw.hiSqrR0_A_sqrt ) &&
    (U1.ds.divSqrtRecF64ToRaw.isInf_PA        == U2.ds.divSqrtRecF64ToRaw.isInf_PA       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isInf_PB        == U2.ds.divSqrtRecF64ToRaw.isInf_PB       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isInf_PC        == U2.ds.divSqrtRecF64ToRaw.isInf_PC       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isNaN_PA        == U2.ds.divSqrtRecF64ToRaw.isNaN_PA       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isNaN_PB        == U2.ds.divSqrtRecF64ToRaw.isNaN_PB       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isNaN_PC        == U2.ds.divSqrtRecF64ToRaw.isNaN_PC       ) &&
    (U1.ds.divSqrtRecF64ToRaw.isNegRemT_E     == U2.ds.divSqrtRecF64ToRaw.isNegRemT_E    ) &&
    (U1.ds.divSqrtRecF64ToRaw.isZero_PA       == U2.ds.divSqrtRecF64ToRaw.isZero_PA      ) &&
    (U1.ds.divSqrtRecF64ToRaw.isZero_PB       == U2.ds.divSqrtRecF64ToRaw.isZero_PB      ) &&
    (U1.ds.divSqrtRecF64ToRaw.isZero_PC       == U2.ds.divSqrtRecF64ToRaw.isZero_PC      ) &&
    (U1.ds.divSqrtRecF64ToRaw.isZeroRemT_E    == U2.ds.divSqrtRecF64ToRaw.isZeroRemT_E   ) &&
    (U1.ds.divSqrtRecF64ToRaw.majorExc_PA     == U2.ds.divSqrtRecF64ToRaw.majorExc_PA    ) &&
    (U1.ds.divSqrtRecF64ToRaw.majorExc_PB     == U2.ds.divSqrtRecF64ToRaw.majorExc_PB    ) &&
    (U1.ds.divSqrtRecF64ToRaw.majorExc_PC     == U2.ds.divSqrtRecF64ToRaw.majorExc_PC    ) &&
    (U1.ds.divSqrtRecF64ToRaw.nextMulAdd9A_A  == U2.ds.divSqrtRecF64ToRaw.nextMulAdd9A_A ) &&
    (U1.ds.divSqrtRecF64ToRaw.nextMulAdd9B_A  == U2.ds.divSqrtRecF64ToRaw.nextMulAdd9B_A ) &&
    (U1.ds.divSqrtRecF64ToRaw.partNegSigma0_A == U2.ds.divSqrtRecF64ToRaw.partNegSigma0_A) &&
    (U1.ds.divSqrtRecF64ToRaw.roundingMode_PA == U2.ds.divSqrtRecF64ToRaw.roundingMode_PA) &&
    (U1.ds.divSqrtRecF64ToRaw.roundingMode_PB == U2.ds.divSqrtRecF64ToRaw.roundingMode_PB) &&
    (U1.ds.divSqrtRecF64ToRaw.roundingMode_PC == U2.ds.divSqrtRecF64ToRaw.roundingMode_PC) &&
    (U1.ds.divSqrtRecF64ToRaw.sExp_PA         == U2.ds.divSqrtRecF64ToRaw.sExp_PA        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sExp_PB         == U2.ds.divSqrtRecF64ToRaw.sExp_PB        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sExp_PC         == U2.ds.divSqrtRecF64ToRaw.sExp_PC        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sign_PA         == U2.ds.divSqrtRecF64ToRaw.sign_PA        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sign_PB         == U2.ds.divSqrtRecF64ToRaw.sign_PB        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sign_PC         == U2.ds.divSqrtRecF64ToRaw.sign_PC        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sigT_E          == U2.ds.divSqrtRecF64ToRaw.sigT_E         ) &&
    (U1.ds.divSqrtRecF64ToRaw.sigX1_B         == U2.ds.divSqrtRecF64ToRaw.sigX1_B        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sigXN_C         == U2.ds.divSqrtRecF64ToRaw.sigXN_C        ) &&
    (U1.ds.divSqrtRecF64ToRaw.sqrSigma1_C     == U2.ds.divSqrtRecF64ToRaw.sqrSigma1_C    ) &&
    (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PA       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PA      ) &&
    (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PB       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PB      ) &&
    (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PC       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PC      ) &&
    (U1.ds.divSqrtRecF64ToRaw.u_C_sqrt        == U2.ds.divSqrtRecF64ToRaw.u_C_sqrt       ) &&
    (U1.ds.divSqrtRecF64ToRaw.valid_PA        == U2.ds.divSqrtRecF64ToRaw.valid_PA       ) &&
    (U1.ds.divSqrtRecF64ToRaw.valid_PB        == U2.ds.divSqrtRecF64ToRaw.valid_PB       ) &&
    (U1.ds.divSqrtRecF64ToRaw.valid_PC        == U2.ds.divSqrtRecF64ToRaw.valid_PC       )
  );
  endfunction


    // ========================== //
   // Control Output Equivalence //
  // ========================== //

  function automatic control_output_equivalence();
  control_output_equivalence = (
    (U1.io_exceptionFlags == U2.io_exceptionFlags) &&
    (U1.io_inReady_div    == U2.io_inReady_div   ) &&
    (U1.io_inReady_sqrt   == U2.io_inReady_sqrt  ) &&
    (U1.io_outValid_div   == U2.io_outValid_div  ) &&
    (U1.io_outValid_sqrt  == U2.io_outValid_sqrt )
  );
  endfunction

    // ========================= //
 // Control State Equivalence //
// ========================= //

function automatic control_state_equivalence();
control_state_equivalence = (
  (U1.mul.reg_a_s1                          == U2.mul.reg_a_s1                         ) &&
  (U1.mul.reg_a_s2                          == U2.mul.reg_a_s2                         ) &&
  (U1.mul.reg_b_s1                          == U2.mul.reg_b_s1                         ) &&
  (U1.mul.reg_b_s2                          == U2.mul.reg_b_s2                         ) &&
  (U1.mul.reg_result_s3                     == U2.mul.reg_result_s3                    ) &&
  (U1.mul.val_s1                            == U2.mul.val_s1                           ) &&
  (U1.mul.val_s2                            == U2.mul.val_s2                           ) &&
  (U1.ds.divSqrtRecF64ToRaw.bit0FractA_PB   == U2.ds.divSqrtRecF64ToRaw.bit0FractA_PB  ) &&
  (U1.ds.divSqrtRecF64ToRaw.bit0FractA_PC   == U2.ds.divSqrtRecF64ToRaw.bit0FractA_PC  ) &&
  (U1.ds.divSqrtRecF64ToRaw.cycleNum_A      == U2.ds.divSqrtRecF64ToRaw.cycleNum_A     ) &&
  (U1.ds.divSqrtRecF64ToRaw.cycleNum_B      == U2.ds.divSqrtRecF64ToRaw.cycleNum_B     ) &&
  (U1.ds.divSqrtRecF64ToRaw.cycleNum_C      == U2.ds.divSqrtRecF64ToRaw.cycleNum_C     ) &&
  (U1.ds.divSqrtRecF64ToRaw.cycleNum_E      == U2.ds.divSqrtRecF64ToRaw.cycleNum_E     ) &&
  (U1.ds.divSqrtRecF64ToRaw.E_E_div         == U2.ds.divSqrtRecF64ToRaw.E_E_div        ) &&
  (U1.ds.divSqrtRecF64ToRaw.ER1_B_sqrt      == U2.ds.divSqrtRecF64ToRaw.ER1_B_sqrt     ) &&
  (U1.ds.divSqrtRecF64ToRaw.ESqrR1_B_sqrt   == U2.ds.divSqrtRecF64ToRaw.ESqrR1_B_sqrt  ) &&
  (U1.ds.divSqrtRecF64ToRaw.fractA_PA       == U2.ds.divSqrtRecF64ToRaw.fractA_PA      ) &&
  (U1.ds.divSqrtRecF64ToRaw.fractB_PA       == U2.ds.divSqrtRecF64ToRaw.fractB_PA      ) &&
  (U1.ds.divSqrtRecF64ToRaw.fractB_PB       == U2.ds.divSqrtRecF64ToRaw.fractB_PB      ) &&
  (U1.ds.divSqrtRecF64ToRaw.fractB_PC       == U2.ds.divSqrtRecF64ToRaw.fractB_PC      ) &&
  (U1.ds.divSqrtRecF64ToRaw.fractR0_A       == U2.ds.divSqrtRecF64ToRaw.fractR0_A      ) &&
  (U1.ds.divSqrtRecF64ToRaw.hiSqrR0_A_sqrt  == U2.ds.divSqrtRecF64ToRaw.hiSqrR0_A_sqrt ) &&
  (U1.ds.divSqrtRecF64ToRaw.isInf_PA        == U2.ds.divSqrtRecF64ToRaw.isInf_PA       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isInf_PB        == U2.ds.divSqrtRecF64ToRaw.isInf_PB       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isInf_PC        == U2.ds.divSqrtRecF64ToRaw.isInf_PC       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isNaN_PA        == U2.ds.divSqrtRecF64ToRaw.isNaN_PA       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isNaN_PB        == U2.ds.divSqrtRecF64ToRaw.isNaN_PB       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isNaN_PC        == U2.ds.divSqrtRecF64ToRaw.isNaN_PC       ) &&
  (U1.ds.divSqrtRecF64ToRaw.isNegRemT_E     == U2.ds.divSqrtRecF64ToRaw.isNegRemT_E    ) &&
  (U1.ds.divSqrtRecF64ToRaw.isZero_PA       == U2.ds.divSqrtRecF64ToRaw.isZero_PA      ) &&
  (U1.ds.divSqrtRecF64ToRaw.isZero_PB       == U2.ds.divSqrtRecF64ToRaw.isZero_PB      ) &&
  (U1.ds.divSqrtRecF64ToRaw.isZero_PC       == U2.ds.divSqrtRecF64ToRaw.isZero_PC      ) &&
  (U1.ds.divSqrtRecF64ToRaw.isZeroRemT_E    == U2.ds.divSqrtRecF64ToRaw.isZeroRemT_E   ) &&
  (U1.ds.divSqrtRecF64ToRaw.majorExc_PA     == U2.ds.divSqrtRecF64ToRaw.majorExc_PA    ) &&
  (U1.ds.divSqrtRecF64ToRaw.majorExc_PB     == U2.ds.divSqrtRecF64ToRaw.majorExc_PB    ) &&
  (U1.ds.divSqrtRecF64ToRaw.majorExc_PC     == U2.ds.divSqrtRecF64ToRaw.majorExc_PC    ) &&
  (U1.ds.divSqrtRecF64ToRaw.nextMulAdd9A_A  == U2.ds.divSqrtRecF64ToRaw.nextMulAdd9A_A ) &&
  (U1.ds.divSqrtRecF64ToRaw.nextMulAdd9B_A  == U2.ds.divSqrtRecF64ToRaw.nextMulAdd9B_A ) &&
  (U1.ds.divSqrtRecF64ToRaw.partNegSigma0_A == U2.ds.divSqrtRecF64ToRaw.partNegSigma0_A) &&
  (U1.ds.divSqrtRecF64ToRaw.roundingMode_PA == U2.ds.divSqrtRecF64ToRaw.roundingMode_PA) &&
  (U1.ds.divSqrtRecF64ToRaw.roundingMode_PB == U2.ds.divSqrtRecF64ToRaw.roundingMode_PB) &&
  (U1.ds.divSqrtRecF64ToRaw.roundingMode_PC == U2.ds.divSqrtRecF64ToRaw.roundingMode_PC) &&
  (U1.ds.divSqrtRecF64ToRaw.sExp_PA         == U2.ds.divSqrtRecF64ToRaw.sExp_PA        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sExp_PB         == U2.ds.divSqrtRecF64ToRaw.sExp_PB        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sExp_PC         == U2.ds.divSqrtRecF64ToRaw.sExp_PC        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sign_PA         == U2.ds.divSqrtRecF64ToRaw.sign_PA        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sign_PB         == U2.ds.divSqrtRecF64ToRaw.sign_PB        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sign_PC         == U2.ds.divSqrtRecF64ToRaw.sign_PC        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sigT_E          == U2.ds.divSqrtRecF64ToRaw.sigT_E         ) &&
  (U1.ds.divSqrtRecF64ToRaw.sigX1_B         == U2.ds.divSqrtRecF64ToRaw.sigX1_B        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sigXN_C         == U2.ds.divSqrtRecF64ToRaw.sigXN_C        ) &&
  (U1.ds.divSqrtRecF64ToRaw.sqrSigma1_C     == U2.ds.divSqrtRecF64ToRaw.sqrSigma1_C    ) &&
  (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PA       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PA      ) &&
  (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PB       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PB      ) &&
  (U1.ds.divSqrtRecF64ToRaw.sqrtOp_PC       == U2.ds.divSqrtRecF64ToRaw.sqrtOp_PC      ) &&
  (U1.ds.divSqrtRecF64ToRaw.u_C_sqrt        == U2.ds.divSqrtRecF64ToRaw.u_C_sqrt       ) &&
  (U1.ds.divSqrtRecF64ToRaw.valid_PA        == U2.ds.divSqrtRecF64ToRaw.valid_PA       ) &&
  (U1.ds.divSqrtRecF64ToRaw.valid_PB        == U2.ds.divSqrtRecF64ToRaw.valid_PB       ) &&
  (U1.ds.divSqrtRecF64ToRaw.valid_PC        == U2.ds.divSqrtRecF64ToRaw.valid_PC       )
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

bind DivSqrtRecF64_miter property_checker checker_bind(.reset(reset), .clock(clock));

