module div_miter
(
  input clk,
  input rst,
  input	i_wr1, i_wr2,
  input	i_signed1, i_signed2,
  input	[31:0] i_numerator1, i_numerator2,
  input	[31:0] i_denominator1, i_denominator2,
  output o_busy1, o_busy2,
  output o_valid1, o_valid2,
  output o_err1, o_err2,
  output [31:0]	o_quotient1, o_quotient2,
  output [3:0] o_flags1, o_flags2
);

  div DIV1
  (
    .i_clk(clk),
    .i_reset(rst),
    .i_wr(i_wr1),
    .i_signed(i_signed1),
    .i_numerator(i_numerator1),
    .i_denominator(i_denominator1),
    .o_busy(o_busy1),
    .o_valid(o_valid1),
    .o_err(o_err1),
    .o_quotient(o_quotient1),
    .o_flags(o_flags1)
  );

  div DIV2
  (
    .i_clk(clk),
    .i_reset(rst),
    .i_wr(i_wr2),
    .i_signed(i_signed2),
    .i_numerator(i_numerator2),
    .i_denominator(i_denominator2),
    .o_busy(o_busy2),
    .o_valid(o_valid2),
    .o_err(o_err2),
    .o_quotient(o_quotient2),
    .o_flags(o_flags2)
  );

endmodule;
