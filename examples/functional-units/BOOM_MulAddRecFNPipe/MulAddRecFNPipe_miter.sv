`default_nettype wire

module MulAddRecFNPipe_miter (
  input  logic        clock,
  input  logic        reset,
  input  logic [64:0] io_a_1,              io_a_2,
  input  logic [64:0] io_b_1,              io_b_2,
  input  logic [64:0] io_c_1,              io_c_2,
  output logic [4:0]  io_exceptionFlags_1, io_exceptionFlags_2,
  input  logic [1:0]  io_op_1,             io_op_2,
  output logic [64:0] io_out_1,            io_out_2,
  input  logic [2:0]  io_roundingMode_1,   io_roundingMode_2,
  input  logic        io_validin_1,        io_validin_2,
  output logic        io_validout_1,       io_validout_2
);

  MulAddRecFNPipe U1 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_a              (io_a_1             ),
    .io_b              (io_b_1             ),
    .io_c              (io_c_1             ),
    .io_exceptionFlags (io_exceptionFlags_1),
    .io_op             (io_op_1            ),
    .io_out            (io_out_1           ),
    .io_roundingMode   (io_roundingMode_1  ),
    .io_validin        (io_validin_1       ),
    .io_validout       (io_validout_1      )
  );

  MulAddRecFNPipe U2 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_a              (io_a_2             ),
    .io_b              (io_b_2             ),
    .io_c              (io_c_2             ),
    .io_exceptionFlags (io_exceptionFlags_2),
    .io_op             (io_op_2            ),
    .io_out            (io_out_2           ),
    .io_roundingMode   (io_roundingMode_2  ),
    .io_validin        (io_validin_2       ),
    .io_validout       (io_validout_2      )
  );

endmodule
