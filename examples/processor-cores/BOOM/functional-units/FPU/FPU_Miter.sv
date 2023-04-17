module FPU_Miter
  (
    input         clock,
    input         reset,

    input  [2:0]  io_req_bits_fcsr_rm,
    input  [64:0] io_req_bits_rs1_data1, io_req_bits_rs1_data2,
    input  [64:0] io_req_bits_rs2_data1, io_req_bits_rs2_data2,
    input  [64:0] io_req_bits_rs3_data1, io_req_bits_rs3_data2,
    input  [19:0] io_req_bits_uop_imm_packed1, io_req_bits_uop_imm_packed2,
    input  [6:0]  io_req_bits_uop_uopc,
    input         io_req_valid

  //  output [64:0] io_resp_bits_data,
  //  output [4:0]  io_resp_bits_fflags_bits_flags,
  //  output        io_resp_bits_fflags_valid,
  //  output        io_resp_valid
  );

  FPU U1
  (
    .clock(clock),
    .reset(reset),

    .io_req_bits_fcsr_rm(io_req_bits_fcsr_rm),
    .io_req_bits_rs1_data(io_req_bits_rs1_data1),
    .io_req_bits_rs2_data(io_req_bits_rs2_data1),
    .io_req_bits_rs3_data(io_req_bits_rs3_data1),
    .io_req_bits_uop_imm_packed(io_req_bits_uop_imm_packed1),
    .io_req_bits_uop_uopc(io_req_bits_uop_uopc),
    .io_req_valid(io_req_valid),

    .io_resp_bits_data(),
    .io_resp_bits_fflags_bits_flags(),
    .io_resp_bits_fflags_valid(),
    .io_resp_valid()
  );

  FPU U2
  (
    .clock(clock),
    .reset(reset),

    .io_req_bits_fcsr_rm(io_req_bits_fcsr_rm),
    .io_req_bits_rs1_data(io_req_bits_rs1_data2),
    .io_req_bits_rs2_data(io_req_bits_rs2_data2),
    .io_req_bits_rs3_data(io_req_bits_rs3_data2),
    .io_req_bits_uop_imm_packed(io_req_bits_uop_imm_packed2),
    .io_req_bits_uop_uopc(io_req_bits_uop_uopc),
    .io_req_valid(io_req_valid),

    .io_resp_bits_data(),
    .io_resp_bits_fflags_bits_flags(),
    .io_resp_bits_fflags_valid(),
    .io_resp_valid()
  );

endmodule;
