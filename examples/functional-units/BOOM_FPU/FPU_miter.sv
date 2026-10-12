`default_nettype wire

module FPU_miter (
  input  logic        clock,
  input  logic        reset,
  input  logic [2:0]  io_req_bits_fcsr_rm_1,            io_req_bits_fcsr_rm_2,
  input  logic [64:0] io_req_bits_rs1_data_1,           io_req_bits_rs1_data_2,
  input  logic [64:0] io_req_bits_rs2_data_1,           io_req_bits_rs2_data_2,
  input  logic [64:0] io_req_bits_rs3_data_1,           io_req_bits_rs3_data_2,
  input  logic [19:0] io_req_bits_uop_imm_packed_1,     io_req_bits_uop_imm_packed_2,
  input  logic [6:0]  io_req_bits_uop_uopc_1,           io_req_bits_uop_uopc_2,
  input  logic        io_req_valid_1,                   io_req_valid_2,
  output logic [64:0] io_resp_bits_data_1,              io_resp_bits_data_2,
  output logic [4:0]  io_resp_bits_fflags_bits_flags_1, io_resp_bits_fflags_bits_flags_2,
  output logic        io_resp_bits_fflags_valid_1,      io_resp_bits_fflags_valid_2,
  output logic        io_resp_valid_1,                  io_resp_valid_2
);

  FPU U1 (
    .clock                          (clock                           ),
    .reset                          (reset                           ),
    .io_req_bits_fcsr_rm            (io_req_bits_fcsr_rm_1           ),
    .io_req_bits_rs1_data           (io_req_bits_rs1_data_1          ),
    .io_req_bits_rs2_data           (io_req_bits_rs2_data_1          ),
    .io_req_bits_rs3_data           (io_req_bits_rs3_data_1          ),
    .io_req_bits_uop_imm_packed     (io_req_bits_uop_imm_packed_1    ),
    .io_req_bits_uop_uopc           (io_req_bits_uop_uopc_1          ),
    .io_req_valid                   (io_req_valid_1                  ),
    .io_resp_bits_data              (io_resp_bits_data_1             ),
    .io_resp_bits_fflags_bits_flags (io_resp_bits_fflags_bits_flags_1),
    .io_resp_bits_fflags_valid      (io_resp_bits_fflags_valid_1     ),
    .io_resp_valid                  (io_resp_valid_1                 )
  );

  FPU U2 (
    .clock                          (clock                           ),
    .reset                          (reset                           ),
    .io_req_bits_fcsr_rm            (io_req_bits_fcsr_rm_2           ),
    .io_req_bits_rs1_data           (io_req_bits_rs1_data_2          ),
    .io_req_bits_rs2_data           (io_req_bits_rs2_data_2          ),
    .io_req_bits_rs3_data           (io_req_bits_rs3_data_2          ),
    .io_req_bits_uop_imm_packed     (io_req_bits_uop_imm_packed_2    ),
    .io_req_bits_uop_uopc           (io_req_bits_uop_uopc_2          ),
    .io_req_valid                   (io_req_valid_2                  ),
    .io_resp_bits_data              (io_resp_bits_data_2             ),
    .io_resp_bits_fflags_bits_flags (io_resp_bits_fflags_bits_flags_2),
    .io_resp_bits_fflags_valid      (io_resp_bits_fflags_valid_2     ),
    .io_resp_valid                  (io_resp_valid_2                 )
  );

endmodule
