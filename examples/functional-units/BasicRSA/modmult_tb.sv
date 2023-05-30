`timescale 1 ns/10 ps

module modmult_tb #(parameter MPWID = 32);
  
  logic clk;
  logic rst;

  logic ds;
  logic [MPWID-1:0] mpand;
  logic [MPWID-1:0] mplier;
  logic [MPWID-1:0] modulus;
  
  logic ready;
  logic [MPWID-1:0] product;
  
  always #10 clk = ~clk;

  modmult #(.MPWID(MPWID)) uut
  (
    .clk(clk),
    .reset(rst),
    .mpand(mpand),
    .mplier(mplier),
    .modulus(modulus),
    .product(product),
    .ds(ds),
    .ready(ready)
  );
  
  initial begin 
  
    /*
    Documentation states: "The multiplier and multiplicand must have a value less than the modulus"
    For example, 997*7 % 19 produces a false result
    
    929 * 31 % 19 = 883 takes 6 cycles
    31 * 929 % 19 = 883 takes 11 cycles
    
    In general, the latency of the operation is T = ceil(log2(mplier))+1
    */
  
    clk <= 1'b0;
    rst <= 1'b1;
    ds <= 1'b0;
    mpand <= 929;
    mplier <= 31;
    modulus <= 997;
    
    #40
    
    rst <= 1'b0;
    ds <= 1'b1;
  
    #20
    
    ds <= 1'b0;
    
    #120
    
    mpand <= 31;
    mplier <= 929;
    ds <= 1'b1;
  
    #20
    
    ds <= 1'b0;
  
  end

endmodule
