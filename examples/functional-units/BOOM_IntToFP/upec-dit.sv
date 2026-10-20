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
    (U1.io_in_bits_rm        == U2.io_in_bits_rm       ) &&
    (U1.io_in_bits_typ       == U2.io_in_bits_typ      ) &&
    (U1.io_in_bits_typeTagIn == U2.io_in_bits_typeTagIn) &&
    (U1.io_in_bits_wflags    == U2.io_in_bits_wflags   ) &&
    (U1.io_in_valid          == U2.io_in_valid         );
  endproperty
  control_input_c_a: assume property (control_input_c);


    // ================= //
   // State Equivalence //
  // ================= //

  function automatic state_equivalence();
  state_equivalence = (
    (U1.inPipe_bits_in1       == U2.inPipe_bits_in1      ) &&
    (U1.inPipe_bits_rm        == U2.inPipe_bits_rm       ) &&
    (U1.inPipe_bits_typ       == U2.inPipe_bits_typ      ) &&
    (U1.inPipe_bits_typeTagIn == U2.inPipe_bits_typeTagIn) &&
    (U1.inPipe_bits_wflags    == U2.inPipe_bits_wflags   ) &&
    (U1.inPipe_valid          == U2.inPipe_valid         ) &&
    (U1.io_out_b_data         == U2.io_out_b_data        ) &&
    (U1.io_out_b_exc          == U2.io_out_b_exc         ) &&
    (U1.io_out_v              == U2.io_out_v             )
  );
  endfunction

  // ========================= //
 // Control State Equivalence //
// ========================= //

function automatic control_state_equivalence();
control_state_equivalence = (
  (U1.inPipe_bits_in1       == U2.inPipe_bits_in1      ) &&
  (U1.inPipe_bits_rm        == U2.inPipe_bits_rm       ) &&
  (U1.inPipe_bits_typ       == U2.inPipe_bits_typ      ) &&
  (U1.inPipe_bits_typeTagIn == U2.inPipe_bits_typeTagIn) &&
  (U1.inPipe_bits_wflags    == U2.inPipe_bits_wflags   ) &&
  (U1.inPipe_valid          == U2.inPipe_valid         ) &&
  (U1.io_out_b_data         == U2.io_out_b_data        ) &&
  (U1.io_out_b_exc          == U2.io_out_b_exc         ) &&
  (U1.io_out_v              == U2.io_out_v             )
);
endfunction

    // ========================== //
   // Control Output Equivalence //
  // ========================== //

  function automatic control_output_equivalence();
  control_output_equivalence = (
    (U1.io_out_bits_exc == U2.io_out_bits_exc)
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

bind IntToFP_miter property_checker checker_bind(.reset(reset), .clock(clock));

