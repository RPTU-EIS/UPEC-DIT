module fwriscv_rv32im_miter
  (
  input clk,
  input rst,

  output [31:0] iaddr1,  iaddr2,
  input  [31:0] idata1,  idata2,
  output        ivalid1, ivalid2,
  input         iready1, iready2,
  output        dvalid1, dvalid2,
  output [31:0] daddr1,  daddr2,
  output [31:0] dwdata1, dwdata2,
  output  [3:0] dwstb1,  dwstb2,
  output        dwrite1, dwrite2,
  input [31:0]  drdata1, drdata2,
  input         dready1, dready2
  );

  fwrisc_rv32im P1
  (
    .clock(clk),
    .reset(rst),
    .iaddr(iaddr1),
    .idata(idata1),
    .ivalid(ivalid1),
    .iready(iready1),
    .dvalid(dvalid1),
    .daddr(daddr1),
    .dwdata(dwdata1),
    .dwstb(dwstb1),
    .dwrite(dwrite1),
    .drdata(drdata1),
    .dready(dready1)
  );

  fwrisc_rv32im P2 
  (
    .clock(clk),
    .reset(rst),
    .iaddr(iaddr2),
    .idata(idata2),
    .ivalid(ivalid2),
    .iready(iready2),
    .dvalid(dvalid2),
    .daddr(daddr2),
    .dwdata(dwdata2),
    .dwstb(dwstb2),
    .dwrite(dwrite2),
    .drdata(drdata2),
    .dready(dready2)
  );

endmodule;
