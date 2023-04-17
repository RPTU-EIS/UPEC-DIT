module DivSqrtRecF64_Miter
  (
    input         clock,
    input         reset,

    //output        io_inReady_div,
    //output        io_inReady_sqrt,
    input         io_inValid,
    input         io_sqrtOp,
    input  [64:0] io_a1, io_a2,
    input  [64:0] io_b1, io_b2,
    input  [2:0]  io_roundingMode
    //output        io_outValid_div,
    //output        io_outValid_sqrt,
    //output [64:0] io_out,
    //output [4:0]  io_exceptionFlags
  );

  DivSqrtRecF64 U1
  (
    .clock(clock),
    .reset(reset),

    .io_inValid(io_inValid),
    .io_sqrtOp(io_sqrtOp),
    .io_a(io_a1),
    .io_b(io_b1),
    .io_roundingMode(io_roundingMode),

    .io_inReady_div(),
    .io_inReady_sqrt(),
    .io_outValid_div(),
    .io_outValid_sqrt(),
    .io_out(),
    .io_exceptionFlags()
  );

  DivSqrtRecF64 U2
  (
    .clock(clock),
    .reset(reset),

    .io_inValid(io_inValid),
    .io_sqrtOp(io_sqrtOp),
    .io_a(io_a2),
    .io_b(io_b2),
    .io_roundingMode(io_roundingMode),

    .io_inReady_div(),
    .io_inReady_sqrt(),
    .io_outValid_div(),
    .io_outValid_sqrt(),
    .io_out(),
    .io_exceptionFlags()
  );

endmodule;
