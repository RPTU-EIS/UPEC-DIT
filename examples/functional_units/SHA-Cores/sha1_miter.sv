module sha1_miter
  (
  input           clk,
  input           rst,
  input   [31:0]  text_i1, text_i2,
  output  [31:0]  text_o1, text_o2,
  input   [2:0]   cmd_i1, cmd_i2,
  input           cmd_w_i1, cmd_w_i2,
  output  [3:0]   cmd_o1, cmd_o2
  );

  sha1 SHA1_1
  (
    .clk_i(clk),
    .rst_i(rst),
    .text_i(text_i1),
    .text_o(text_o1),
    .cmd_i(cmd_i1),
    .cmd_w_i(cmd_w_i1),
    .cmd_o(cmd_o1)
  );

  sha1 SHA1_2
  (
    .clk_i(clk),
    .rst_i(rst),
    .text_i(text_i2),
    .text_o(text_o2),
    .cmd_i(cmd_i2),
    .cmd_w_i(cmd_w_i2),
    .cmd_o(cmd_o2)
  );

endmodule;
