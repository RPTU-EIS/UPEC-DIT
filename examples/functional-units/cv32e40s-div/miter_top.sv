module miter_top (
  input clk,
  input rst,
  output logic[31:0] alu_clz_data_rev_o_1,
  output logic[31:0] alu_clz_data_rev_o_2,
  output logic alu_clz_en_o_1,
  output logic alu_clz_en_o_2,
  input logic[5:0] alu_clz_result_i_1,
  input logic[5:0] alu_clz_result_i_2,
  input logic[31:0] alu_op_b_shifted_i_1,
  input logic[31:0] alu_op_b_shifted_i_2,
  output logic[5:0] alu_shift_amt_o_1,
  output logic[5:0] alu_shift_amt_o_2,
  output logic alu_shift_en_o_1,
  output logic alu_shift_en_o_2,
  input logic data_ind_timing_i_1,
  input logic data_ind_timing_i_2,
  input logic div_en_i_1,
  input logic div_en_i_2,
  input logic[31:0] op_a_i_1,
  input logic[31:0] op_a_i_2,
  input logic[31:0] op_b_i_1,
  input logic[31:0] op_b_i_2,
  input cv32e40s_pkg::div_opcode_e operator_i_1,
  input cv32e40s_pkg::div_opcode_e operator_i_2,
  input logic ready_i_1,
  input logic ready_i_2,
  output logic ready_o_1,
  output logic ready_o_2,
  output logic[31:0] result_o_1,
  output logic[31:0] result_o_2,
  input logic valid_i_1,
  input logic valid_i_2,
  output logic valid_o_1,
  output logic valid_o_2
);

logic rst_n;
assign rst_n = !rst;

cv32e40s_div U1(
  .alu_clz_data_rev_o(alu_clz_data_rev_o_1),
  .alu_clz_en_o(alu_clz_en_o_1),
  .alu_clz_result_i(alu_clz_result_i_1),
  .alu_op_b_shifted_i(alu_op_b_shifted_i_1),
  .alu_shift_amt_o(alu_shift_amt_o_1),
  .alu_shift_en_o(alu_shift_en_o_1),
  .clk(clk),
  .data_ind_timing_i(data_ind_timing_i_1),
  .div_en_i(div_en_i_1),
  .op_a_i(op_a_i_1),
  .op_b_i(op_b_i_1),
  .operator_i(operator_i_1),
  .ready_i(ready_i_1),
  .ready_o(ready_o_1),
  .result_o(result_o_1),
  .rst_n(rst_n),
  .valid_i(valid_i_1),
  .valid_o(valid_o_1)
);

cv32e40s_div U2(
  .alu_clz_data_rev_o(alu_clz_data_rev_o_2),
  .alu_clz_en_o(alu_clz_en_o_2),
  .alu_clz_result_i(alu_clz_result_i_2),
  .alu_op_b_shifted_i(alu_op_b_shifted_i_2),
  .alu_shift_amt_o(alu_shift_amt_o_2),
  .alu_shift_en_o(alu_shift_en_o_2),
  .clk(clk),
  .data_ind_timing_i(data_ind_timing_i_2),
  .div_en_i(div_en_i_2),
  .op_a_i(op_a_i_2),
  .op_b_i(op_b_i_2),
  .operator_i(operator_i_2),
  .ready_i(ready_i_2),
  .ready_o(ready_o_2),
  .result_o(result_o_2),
  .rst_n(rst_n),
  .valid_i(valid_i_2),
  .valid_o(valid_o_2)
);

endmodule // miter_top
