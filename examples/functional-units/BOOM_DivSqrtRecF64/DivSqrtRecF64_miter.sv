`default_nettype wire

module DivSqrtRecF64_miter (
  input  logic        clock,
  input  logic        reset,
  input  logic [64:0] io_a_1,              io_a_2,
  input  logic [64:0] io_b_1,              io_b_2,
  output logic [4:0]  io_exceptionFlags_1, io_exceptionFlags_2,
  output logic        io_inReady_div_1,    io_inReady_div_2,
  output logic        io_inReady_sqrt_1,   io_inReady_sqrt_2,
  input  logic        io_inValid_1,        io_inValid_2,
  output logic [64:0] io_out_1,            io_out_2,
  output logic        io_outValid_div_1,   io_outValid_div_2,
  output logic        io_outValid_sqrt_1,  io_outValid_sqrt_2,
  input  logic [2:0]  io_roundingMode_1,   io_roundingMode_2,
  input  logic        io_sqrtOp_1,         io_sqrtOp_2
);

  DivSqrtRecF64 U1 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_a              (io_a_1             ),
    .io_b              (io_b_1             ),
    .io_exceptionFlags (io_exceptionFlags_1),
    .io_inReady_div    (io_inReady_div_1   ),
    .io_inReady_sqrt   (io_inReady_sqrt_1  ),
    .io_inValid        (io_inValid_1       ),
    .io_out            (io_out_1           ),
    .io_outValid_div   (io_outValid_div_1  ),
    .io_outValid_sqrt  (io_outValid_sqrt_1 ),
    .io_roundingMode   (io_roundingMode_1  ),
    .io_sqrtOp         (io_sqrtOp_1        )
  );

  DivSqrtRecF64 U2 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_a              (io_a_2             ),
    .io_b              (io_b_2             ),
    .io_exceptionFlags (io_exceptionFlags_2),
    .io_inReady_div    (io_inReady_div_2   ),
    .io_inReady_sqrt   (io_inReady_sqrt_2  ),
    .io_inValid        (io_inValid_2       ),
    .io_out            (io_out_2           ),
    .io_outValid_div   (io_outValid_div_2  ),
    .io_outValid_sqrt  (io_outValid_sqrt_2 ),
    .io_roundingMode   (io_roundingMode_2  ),
    .io_sqrtOp         (io_sqrtOp_2        )
  );

endmodule
