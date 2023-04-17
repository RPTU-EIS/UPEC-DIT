module MulDiv_Miter
  (
    input         clock,
    input         reset,
    //output        io_req_ready,
    input         io_req_valid,
    input  [3:0]  io_req_bits_fn,
    input         io_req_bits_dw,
    input  [63:0] io_req_bits_in1_1, io_req_bits_in1_2,
    input  [63:0] io_req_bits_in2_1, io_req_bits_in2_2,
    input         io_kill,
    input         io_resp_ready
    //output        io_resp_valid,
    //output [63:0] io_resp_bits_data
  );

  MulDiv U1
  (
    .clock(clock),
    .reset(reset),

    .io_req_valid(io_req_valid),
    .io_req_bits_fn(io_req_bits_fn),
    .io_req_bits_dw(io_req_bits_dw),
    .io_req_bits_in1(io_req_bits_in1_1),
    .io_req_bits_in2(io_req_bits_in2_1),
    .io_kill(io_kill),
    .io_resp_ready(io_resp_ready),

    .io_req_ready(),
    .io_resp_valid(),
    .io_resp_bits_data()
  );

  MulDiv U2
  (
    .clock(clock),
    .reset(reset),

    .io_req_valid(io_req_valid),
    .io_req_bits_fn(io_req_bits_fn),
    .io_req_bits_dw(io_req_bits_dw),
    .io_req_bits_in1(io_req_bits_in1_2),
    .io_req_bits_in2(io_req_bits_in2_2),
    .io_kill(io_kill),
    .io_resp_ready(io_resp_ready),

    .io_req_ready(),
    .io_resp_valid(),
    .io_resp_bits_data()
  );

endmodule;
