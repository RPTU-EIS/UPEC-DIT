module modmult_miter
  #(parameter MPWID = 32)
  (
  input clk,
  input rst,

  input logic [MPWID-1:0] mpand1, mpand2,
  input logic [MPWID-1:0] mplier1, mplier2,
  input logic [MPWID-1:0] modulus1, modulus2,

  input logic ds
  );

  modmult #(.MPWID(MPWID)) C1
  (
    .clk(clk),
    .reset(rst),
    .mpand(mpand1),
    .mplier(mplier1),
    .modulus(modulus1),
    .product(),
    .ds(ds),
    .ready()
  );

  modmult #(.MPWID(MPWID)) C2
  (
    .clk(clk),
    .reset(rst),
    .mpand(mpand2),
    .mplier(mplier2),
    .modulus(modulus2),
    .product(),
    .ds(ds),
    .ready()
  );

endmodule;
