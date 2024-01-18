module aes_miter
  (
  input clk,
  input rst,
  input encdec1, encdec2,
  input init1, init2,
  input next1, next2,
  input [255:0] key1, key2,
  input keylen1, keylen2,
  input [127:0] block1, block2,

  output ready1, ready2,
  output [127:0] result1, result2,
  output result_valid1, result_valid2
  );

  aes_core C1
  (
    .clk(clk),
    .reset_n(!rst),
    .encdec(encdec1),
    .init(init1),
    .next(next1),
    .key(key1),
    .keylen(keylen1),
    .block(block1),
    .ready(ready1),
    .result(result1),
    .result_valid(result_valid1)
  );

  aes_core C2
  (
    .clk(clk),
    .reset_n(!rst),
    .encdec(encdec2),
    .init(init2),
    .next(next2),
    .key(key2),
    .keylen(keylen2),
    .block(block2),
    .ready(ready2),
    .result(result2),
    .result_valid(result_valid2)
  );

endmodule;
