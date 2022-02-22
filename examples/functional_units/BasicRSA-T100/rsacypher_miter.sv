module rsacypher_miter
  #(parameter KEYSIZE = 32)
  (
  input clk,
  input rst,

  input  [KEYSIZE-1:0] indata1, indata2,
  input  [KEYSIZE-1:0] inExp1, inExp2,
  input  [KEYSIZE-1:0] inMod1, inMod2,

  input  ds
  );

  RSACypher #(.KEYSIZE(KEYSIZE)) C1
  (
    .clk(clk),
    .reset(rst),
    .indata(indata1),
    .inExp(inExp1),
    .inMod(inMod1),
    .cypher(),
    .ds(ds),
    .ready()
  );

  RSACypher #(.KEYSIZE(KEYSIZE)) C2
  (
    .clk(clk),
    .reset(rst),
    .indata(indata2),
    .inExp(inExp2),
    .inMod(inMod2),
    .cypher(),
    .ds(ds),
    .ready()
  );

endmodule;
