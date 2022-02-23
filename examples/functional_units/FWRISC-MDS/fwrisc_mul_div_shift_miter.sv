module fwrisc_mul_div_shift_miter
  #(
  parameter ENABLE_MUL_DIV=1,
  parameter ENABLE_MUL=ENABLE_MUL_DIV,
  parameter ENABLE_DIV=ENABLE_MUL_DIV,
  parameter SINGLE_CYCLE_SHIFT=0
  )
  (
  input clk,
  input rst,

  input [31:0] in_a1, in_a2,
  input [31:0] in_b1, in_b2,
  input [3:0]  op1, op2,
  input        in_valid1, in_valid2,
  output reg [31:0]  out1, out2,
  output reg      out_valid1, out_valid2
  );

  fwrisc_mul_div_shift
  #(
  .ENABLE_MUL_DIV(ENABLE_MUL_DIV),
  .ENABLE_MUL(ENABLE_MUL),
  .ENABLE_DIV(ENABLE_DIV),
  .SINGLE_CYCLE_SHIFT(SINGLE_CYCLE_SHIFT)
  )
  MDS1
  (
    .clock(clk),
    .reset(rst),
    .in_a(in_a1),
    .in_b(in_b1),
    .op(op1),
    .in_valid(in_valid1),
    .out(out1),
    .out_valid(out_valid1)
  );

  fwrisc_mul_div_shift
  #(
  .ENABLE_MUL_DIV(ENABLE_MUL_DIV),
  .ENABLE_MUL(ENABLE_MUL),
  .ENABLE_DIV(ENABLE_DIV),
  .SINGLE_CYCLE_SHIFT(SINGLE_CYCLE_SHIFT)
  )
  MDS2
  (
    .clock(clk),
    .reset(rst),
    .in_a(in_a2),
    .in_b(in_b2),
    .op(op2),
    .in_valid(in_valid2),
    .out(out2),
    .out_valid(out_valid2)
  );

endmodule;
