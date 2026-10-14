`default_nettype wire

module IntToFP_miter (
  input  logic        clock,
  input  logic        reset,
  input  logic [63:0] io_in_bits_in1_1,       io_in_bits_in1_2,
  input  logic [2:0]  io_in_bits_rm_1,        io_in_bits_rm_2,
  input  logic [1:0]  io_in_bits_typ_1,       io_in_bits_typ_2,
  input  logic [1:0]  io_in_bits_typeTagIn_1, io_in_bits_typeTagIn_2,
  input  logic        io_in_bits_wflags_1,    io_in_bits_wflags_2,
  input  logic        io_in_valid_1,          io_in_valid_2,
  output logic [64:0] io_out_bits_data_1,     io_out_bits_data_2,
  output logic [4:0]  io_out_bits_exc_1,      io_out_bits_exc_2,
  output logic        io_out_valid_1,         io_out_valid_2
);

  IntToFP U1 (
    .clock                (clock                 ),
    .reset                (reset                 ),
    .io_in_bits_in1       (io_in_bits_in1_1      ),
    .io_in_bits_rm        (io_in_bits_rm_1       ),
    .io_in_bits_typ       (io_in_bits_typ_1      ),
    .io_in_bits_typeTagIn (io_in_bits_typeTagIn_1),
    .io_in_bits_wflags    (io_in_bits_wflags_1   ),
    .io_in_valid          (io_in_valid_1         ),
    .io_out_bits_data     (io_out_bits_data_1    ),
    .io_out_bits_exc      (io_out_bits_exc_1     ),
    .io_out_valid         (io_out_valid_1        )
  );

  IntToFP U2 (
    .clock                (clock                 ),
    .reset                (reset                 ),
    .io_in_bits_in1       (io_in_bits_in1_2      ),
    .io_in_bits_rm        (io_in_bits_rm_2       ),
    .io_in_bits_typ       (io_in_bits_typ_2      ),
    .io_in_bits_typeTagIn (io_in_bits_typeTagIn_2),
    .io_in_bits_wflags    (io_in_bits_wflags_2   ),
    .io_in_valid          (io_in_valid_2         ),
    .io_out_bits_data     (io_out_bits_data_2    ),
    .io_out_bits_exc      (io_out_bits_exc_2     ),
    .io_out_valid         (io_out_valid_2        )
  );

endmodule
