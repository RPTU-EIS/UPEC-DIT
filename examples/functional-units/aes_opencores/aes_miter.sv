module aes_miter
  (
  input clk,
  input rst,

  input ld1, ld2,
  input [127:0] key1, key2,
  input [127:0] text_in1, text_in2,

  output done1, done2,
  output [127:0] text_out1, text_out2
  );

  aes_cipher_top C1
  (
    .clk(clk),
    .rst(rst),
    .ld(ld1),
    .key(key1),
    .text_in(text_in1),
    .done(done1),
    .text_out(text_out1)
  );

  aes_cipher_top C2
  (
    .clk(clk),
    .rst(rst),
    .ld(ld2),
    .key(key2),
    .text_in(text_in2),
    .done(done2),
    .text_out(text_out2)
  );

endmodule;
