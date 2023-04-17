module MulAddRecFNPipe_Miter
  (
    input         clock,
    input         reset,

    input  [64:0] io_a1, io_a2,
    input  [64:0] io_b1, io_b2,
    input  [64:0] io_c1, io_c2,
    input  [1:0]  io_op,
    input  [2:0]  io_roundingMode,
    input         io_validin

    //output [4:0]  io_exceptionFlags,
    //output [64:0] io_out,
    //output        io_validout
  );

  MulAddRecFNPipe U1
  (
    .clock(clock),
    .reset(reset),

    .io_a(io_a1),
    .io_b(io_b1),
    .io_c(io_c1),
    .io_op(io_op),
    .io_roundingMode(io_roundingMode),
    .io_validin(io_validin),

    .io_exceptionFlags(),
    .io_out(),
    .io_validout()
  );

  MulAddRecFNPipe U2
  (
    .clock(clock),
    .reset(reset),

    .io_a(io_a2),
    .io_b(io_b2),
    .io_c(io_c2),
    .io_op(io_op),
    .io_roundingMode(io_roundingMode),
    .io_validin(io_validin),

    .io_exceptionFlags(),
    .io_out(),
    .io_validout()
  );

endmodule;
