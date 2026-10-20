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
    (U1.io_kill        == U2.io_kill       ) &&
    (U1.io_req_bits_dw == U2.io_req_bits_dw) &&
    (U1.io_req_bits_fn == U2.io_req_bits_fn) &&
    (U1.io_req_valid   == U2.io_req_valid  ) &&
    (U1.io_resp_ready  == U2.io_resp_ready );
  endproperty
  control_input_c_a: assume property (control_input_c);


    // ================= //
   // State Equivalence //
  // ================= //

  function automatic state_equivalence();
  state_equivalence = (
    (U1.count     == U2.count    ) &&
    (U1.divisor   == U2.divisor  ) &&
    (U1.isHi      == U2.isHi     ) &&
    (U1.neg_out   == U2.neg_out  ) &&
    (U1.remainder == U2.remainder) &&
    (U1.req_dw    == U2.req_dw   ) &&
    (U1.resHi     == U2.resHi    ) &&
    (U1.state     == U2.state    )
  );
  endfunction


    // ========================== //
   // Control Output Equivalence //
  // ========================== //

  function automatic control_output_equivalence();
  control_output_equivalence = (
    (U1.io_req_ready  == U2.io_req_ready ) &&
    (U1.io_resp_valid == U2.io_resp_valid)
  );
  endfunction

  // ========================= //
 // Control State Equivalence //
// ========================= //

function automatic control_state_equivalence();
control_state_equivalence = (
  (U1.count     == U2.count    ) &&
  (U1.divisor   == U2.divisor  ) &&
  (U1.isHi      == U2.isHi     ) &&
  (U1.neg_out   == U2.neg_out  ) &&
  (U1.remainder == U2.remainder) &&
  (U1.req_dw    == U2.req_dw   ) &&
  (U1.resHi     == U2.resHi    ) &&
  (U1.state     == U2.state    )
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

bind MulDiv_miter property_checker checker_bind(.reset(reset), .clock(clock));

