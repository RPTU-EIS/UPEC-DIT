module ariane_miter import ariane_pkg::*; #(
  parameter ariane_pkg::ariane_cfg_t ArianeCfg     = ariane_pkg::ArianeDefaultConfig
) (
  input  logic                         clk,
  input  logic                         rst,

//  output ariane_axi::req_t             axi_req_o,
  input  ariane_axi::resp_t            axi_resp_i

);

ariane #(
  .ArianeCfg(ArianeCfg)
) P1 (
  .clk_i(clk),
  .rst_ni(!rst),
  // Core ID, Cluster ID and boot address are considered more or less static
  .boot_addr_i(),  // reset boot address
  .hart_id_i(),  // hart id in a multicore environment (reflected in a CSR)
  // Interrupt inputs
  .irq_i(2'b0),        // level sensitive IR lines, mip & sip (async)
  .ipi_i(1'b0),        // inter-processor interrupts (async)
  // Timer facilities
  .time_irq_i(1'b0),   // timer interrupt in (async)
  .debug_req_i(1'b0),  // debug request (async)
  // memory side, AXI Master
  .axi_req_o(),
  .axi_resp_i(axi_resp_i)
);

ariane #(
  .ArianeCfg(ArianeCfg)
) P2 (
  .clk_i(clk),
  .rst_ni(!rst),
  // Core ID, Cluster ID and boot address are considered more or less static
  .boot_addr_i(),  // reset boot address
  .hart_id_i(),  // hart id in a multicore environment (reflected in a CSR)
  // Interrupt inputs
  .irq_i(2'b0),        // level sensitive IR lines, mip & sip (async)
  .ipi_i(1'b0),        // inter-processor interrupts (async)
  // Timer facilities
  .time_irq_i(1'b0),   // timer interrupt in (async)
  .debug_req_i(1'b0),  // debug request (async)
  // memory side, AXI Master
  .axi_req_o(),
  .axi_resp_i(axi_resp_i)
);

endmodule;
