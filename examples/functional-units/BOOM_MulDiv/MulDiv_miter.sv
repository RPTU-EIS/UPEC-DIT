`default_nettype wire

module MulDiv_miter (
  input  logic        clock,
  input  logic        reset,
  input  logic        io_kill_1,           io_kill_2,
  input  logic        io_req_bits_dw_1,    io_req_bits_dw_2,
  input  logic [3:0]  io_req_bits_fn_1,    io_req_bits_fn_2,
  input  logic [63:0] io_req_bits_in1_1,   io_req_bits_in1_2,
  input  logic [63:0] io_req_bits_in2_1,   io_req_bits_in2_2,
  output logic        io_req_ready_1,      io_req_ready_2,
  input  logic        io_req_valid_1,      io_req_valid_2,
  output logic [63:0] io_resp_bits_data_1, io_resp_bits_data_2,
  input  logic        io_resp_ready_1,     io_resp_ready_2,
  output logic        io_resp_valid_1,     io_resp_valid_2
);

  MulDiv U1 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_kill           (io_kill_1          ),
    .io_req_bits_dw    (io_req_bits_dw_1   ),
    .io_req_bits_fn    (io_req_bits_fn_1   ),
    .io_req_bits_in1   (io_req_bits_in1_1  ),
    .io_req_bits_in2   (io_req_bits_in2_1  ),
    .io_req_ready      (io_req_ready_1     ),
    .io_req_valid      (io_req_valid_1     ),
    .io_resp_bits_data (io_resp_bits_data_1),
    .io_resp_ready     (io_resp_ready_1    ),
    .io_resp_valid     (io_resp_valid_1    )
  );

  MulDiv U2 (
    .clock             (clock              ),
    .reset             (reset              ),
    .io_kill           (io_kill_2          ),
    .io_req_bits_dw    (io_req_bits_dw_2   ),
    .io_req_bits_fn    (io_req_bits_fn_2   ),
    .io_req_bits_in1   (io_req_bits_in1_2  ),
    .io_req_bits_in2   (io_req_bits_in2_2  ),
    .io_req_ready      (io_req_ready_2     ),
    .io_req_valid      (io_req_valid_2     ),
    .io_resp_bits_data (io_resp_bits_data_2),
    .io_resp_ready     (io_resp_ready_2    ),
    .io_resp_valid     (io_resp_valid_2    )
  );

endmodule
