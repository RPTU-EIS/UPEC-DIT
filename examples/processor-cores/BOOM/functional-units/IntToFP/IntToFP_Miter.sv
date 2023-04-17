module IntToFP_Miter
  (
    input         clock,
    input         reset,
    input  [63:0] io_in_bits_in1_1, io_in_bits_in1_2,
    input  [2:0]  io_in_bits_rm,
    input  [1:0]  io_in_bits_typ,
    input  [1:0]  io_in_bits_typeTagIn,
    input         io_in_bits_wflags,
    input         io_in_valid

    //output [63:0] io_out_bits_data,
    //output [3:0]  io_out_bits_exc,
    //output        io_out_valid
  );

  IntToFP U1
  (
    .clock(clock),
    .reset(reset),

    .io_in_bits_in1(io_in_bits_in1_1),
    .io_in_bits_rm(io_in_bits_rm),
    .io_in_bits_typ(io_in_bits_typ),
    .io_in_bits_typeTagIn(io_in_bits_typeTagIn),
    .io_in_bits_wflags(io_in_bits_wflags),
    .io_in_valid(io_in_valid),

    .io_out_bits_data(),
    .io_out_bits_exc(),
    .io_out_valid()
  );

  IntToFP U2
  (
    .clock(clock),
    .reset(reset),

    .io_in_bits_in1(io_in_bits_in1_2),
    .io_in_bits_rm(io_in_bits_rm),
    .io_in_bits_typ(io_in_bits_typ),
    .io_in_bits_typeTagIn(io_in_bits_typeTagIn),
    .io_in_bits_wflags(io_in_bits_wflags),
    .io_in_valid(io_in_valid),

    .io_out_bits_data(),
    .io_out_bits_exc(),
    .io_out_valid()
  );

endmodule;
