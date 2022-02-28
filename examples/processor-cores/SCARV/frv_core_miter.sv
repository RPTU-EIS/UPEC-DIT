module frv_core_miter (

  input clk,
  input rst,

  input  wire         rng_req_ready               , // RNG accepts request
  input  wire         rng_rsp_valid               , // RNG response data valid
  input  wire [ 2:0]  rng_rsp_status              , // RNG status
  input  wire [31:0]  rng_rsp_data1, rng_rsp_data2, // RNG response / sample data.

//  input  wire         int_nmi                     , // Non-maskable interrupt.
//  input  wire         int_external                , // External interrupt trigger line.
//  input  wire [ 3:0]  int_extern_cause            , // External interrupt cause code.
//  input  wire         int_software                , // Software interrupt trigger line.

  input  wire         imem_gnt                    , // request accepted
  input  wire         imem_recv                   , // Instruction memory recieve response.
  input  wire         imem_error                  , // Error
  input  wire [XL:0]  imem_rdata1, imem_rdata2    , // Read data

  input  wire         dmem_gnt                    , // request accepted
  input  wire         dmem_recv                   , // Data memory recieve response.
  input  wire         dmem_error                  , // Error
  input  wire [XL:0]  dmem_rdata1, dmem_rdata2      // Read data
);

parameter FRV_PC_RESET_VALUE = 32'h8000_0000;

// Use a BRAM/DMEM friendly register file?
parameter BRAM_REGFILE = 1'b0;

parameter CSR_MTVEC_RESET_VALUE = 32'hC0000000;
parameter CSR_MVENDORID         = 32'b0;
parameter CSR_MARCHID           = 32'b0;
parameter CSR_MIMPID            = 32'b0;
parameter CSR_MHARTID           = 32'b0;

// Base address of the MMIO region
parameter   MMIO_BASE_ADDR        = 32'h0000_1000;
parameter   MMIO_BASE_MASK        = 32'hFFFF_F000;

// Address of the memory mapped MTIME register
parameter   MMIO_MTIME_ADDR       = MMIO_BASE_ADDR;
// Address of the memory mapped MTIMECMP register
parameter   MMIO_MTIMECMP_ADDR    = MMIO_BASE_ADDR + 8;
// Value of MTIMECMP register on reset.
parameter   MMIO_MTIMECMP_RESET   = 64'hFFFFFFFFFFFFFFFF;

// If set, trace the instruction word through the pipeline. Otherwise,
// set it to zeros and let it be optimised away.
parameter TRACE_INSTR_WORD = 1'b1;

//
// XCrypto feature class config bits.
parameter XC_CLASS_BASELINE   = 1'b1;
parameter XC_CLASS_RANDOMNESS = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_MEMORY     = 1'b0 && XC_CLASS_BASELINE;
parameter XC_CLASS_BIT        = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_PACKED     = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_MULTIARITH = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_AES        = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_SHA2       = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_SHA3       = 1'b1 && XC_CLASS_BASELINE;
parameter XC_CLASS_LEAK       = 1'b1 && XC_CLASS_BASELINE;

// Randomise registers (if set) or zero them (if clear)
parameter XC_CLASS_LEAK_STRONG= 1'b1 && XC_CLASS_LEAK;

// Leakage fence instructions bubble the pipeline.
parameter XC_CLASS_LEAK_BUBBLE= 1'b1 && XC_CLASS_LEAK;

// Single cycle implementations of AES instructions?
parameter AES_SUB_FAST        = 1'b0;
parameter AES_MIX_FAST        = 1'b0;

//
// Partial Bitmanip Extension Support
parameter BITMANIP_BASELINE   = 1'b1;

//
// Address mapping to BRAMs
parameter BRAM_ADDR_MASK = 32'hFFFF8000;
parameter BRAM_ADDR_MATCH= 32'hC0000000;
parameter BRAM_ADDR_RANGE= 32'h00003FFF;

frv_core #(
.FRV_PC_RESET_VALUE (FRV_PC_RESET_VALUE ),
.BRAM_REGFILE       (BRAM_REGFILE       ),
.TRACE_INSTR_WORD   (TRACE_INSTR_WORD   ),
.MMIO_BASE_ADDR     (MMIO_BASE_ADDR     ),
.MMIO_BASE_MASK     (MMIO_BASE_MASK     ),
.XC_CLASS_BASELINE  (XC_CLASS_BASELINE  ),
.XC_CLASS_RANDOMNESS(XC_CLASS_RANDOMNESS),
.XC_CLASS_MEMORY    (XC_CLASS_MEMORY    ),
.XC_CLASS_BIT       (XC_CLASS_BIT       ),
.XC_CLASS_PACKED    (XC_CLASS_PACKED    ),
.XC_CLASS_MULTIARITH(XC_CLASS_MULTIARITH),
.XC_CLASS_AES       (XC_CLASS_AES       ),
.XC_CLASS_SHA2      (XC_CLASS_SHA2      ),
.XC_CLASS_SHA3      (XC_CLASS_SHA3      ),
.XC_CLASS_LEAK      (XC_CLASS_LEAK      ),
.XC_CLASS_LEAK_STRONG(XC_CLASS_LEAK_STRONG),
.XC_CLASS_LEAK_BUBBLE(XC_CLASS_LEAK_BUBBLE),
.AES_SUB_FAST       (AES_SUB_FAST       ),
.AES_MIX_FAST       (AES_MIX_FAST       ),
.BITMANIP_BASELINE  (BITMANIP_BASELINE  )
) P1 (
.g_clk           (clk             ), // global clock
.g_resetn        (!rst            ), // synchronous reset
.int_nmi         (1'b0            ),
.int_external    (1'b0            ), // External interrupt trigger line.
.int_extern_cause(4'b0            ),
.int_software    (1'b0            ), // Software interrupt trigger line.
.trs_valid       (                ), // Trace output valid.
.trs_pc          (                ), // Trace program counter object.
.trs_instr       (                ), // Instruction traced out.
.leak_prng       (                ), // Leakage fence PRNG value
.leak_fence_unc0 (                ), // Leakage fence uncore resource 0
.leak_fence_unc1 (                ), // Leakage fence uncore resource 1
.leak_fence_unc2 (                ), // Leakage fence uncore resource 2
.rng_req_valid   (                ), // Signal a new request to the RNG
.rng_req_op      (                ), // Operation to perform on the RNG
.rng_req_data    (                ), // Suplementary seed/init data
.rng_req_ready   (rng_req_ready   ), // RNG accepts request
.rng_rsp_valid   (rng_rsp_valid   ), // RNG response data valid
.rng_rsp_status  (rng_rsp_status  ), // RNG status
.rng_rsp_data    (rng_rsp_data1   ), // RNG response / sample data.
.rng_rsp_ready   (                ), // CPU accepts response.
.imem_req      (           ), // Start memory request
.imem_wen      (           ), // Write enable
.imem_strb     (           ), // Write strobe
.imem_wdata    (           ), // Write data
.imem_addr     (           ), // Read/Write address
.imem_gnt      (imem_gnt   ), // request accepted
.imem_recv     (imem_recv  ), // Instruction memory recieve response.
.imem_ack      (           ), // Response acknowledge
.imem_error    (imem_error ), // Error
.imem_rdata    (imem_rdata1), // Read data
.dmem_req      (           ), // Start memory request
.dmem_wen      (           ), // Write enable
.dmem_strb     (           ), // Write strobe
.dmem_wdata    (           ), // Write data
.dmem_addr     (           ), // Read/Write address
.dmem_gnt      (dmem_gnt   ), // request accepted
.dmem_recv     (dmem_recv  ), // Instruction memory recieve response.
.dmem_ack      (           ), // Response acknowledge
.dmem_error    (dmem_error ), // Error
.dmem_rdata    (dmem_rdata1)  // Read data
);

frv_core #(
.FRV_PC_RESET_VALUE (FRV_PC_RESET_VALUE ),
.BRAM_REGFILE       (BRAM_REGFILE       ),
.TRACE_INSTR_WORD   (TRACE_INSTR_WORD   ),
.MMIO_BASE_ADDR     (MMIO_BASE_ADDR     ),
.MMIO_BASE_MASK     (MMIO_BASE_MASK     ),
.XC_CLASS_BASELINE  (XC_CLASS_BASELINE  ),
.XC_CLASS_RANDOMNESS(XC_CLASS_RANDOMNESS),
.XC_CLASS_MEMORY    (XC_CLASS_MEMORY    ),
.XC_CLASS_BIT       (XC_CLASS_BIT       ),
.XC_CLASS_PACKED    (XC_CLASS_PACKED    ),
.XC_CLASS_MULTIARITH(XC_CLASS_MULTIARITH),
.XC_CLASS_AES       (XC_CLASS_AES       ),
.XC_CLASS_SHA2      (XC_CLASS_SHA2      ),
.XC_CLASS_SHA3      (XC_CLASS_SHA3      ),
.XC_CLASS_LEAK      (XC_CLASS_LEAK      ),
.XC_CLASS_LEAK_STRONG(XC_CLASS_LEAK_STRONG),
.XC_CLASS_LEAK_BUBBLE(XC_CLASS_LEAK_BUBBLE),
.AES_SUB_FAST       (AES_SUB_FAST       ),
.AES_MIX_FAST       (AES_MIX_FAST       ),
.BITMANIP_BASELINE  (BITMANIP_BASELINE  )
) P2 (
.g_clk           (clk             ), // global clock
.g_resetn        (!rst            ), // synchronous reset
.int_nmi         (1'b0            ),
.int_external    (1'b0            ), // External interrupt trigger line.
.int_extern_cause(4'b0            ),
.int_software    (1'b0            ), // Software interrupt trigger line.
.trs_valid       (                ), // Trace output valid.
.trs_pc          (                ), // Trace program counter object.
.trs_instr       (                ), // Instruction traced out.
.leak_prng       (                ), // Leakage fence PRNG value
.leak_fence_unc0 (                ), // Leakage fence uncore resource 0
.leak_fence_unc1 (                ), // Leakage fence uncore resource 1
.leak_fence_unc2 (                ), // Leakage fence uncore resource 2
.rng_req_valid   (                ), // Signal a new request to the RNG
.rng_req_op      (                ), // Operation to perform on the RNG
.rng_req_data    (                ), // Suplementary seed/init data
.rng_req_ready   (rng_req_ready   ), // RNG accepts request
.rng_rsp_valid   (rng_rsp_valid   ), // RNG response data valid
.rng_rsp_status  (rng_rsp_status  ), // RNG status
.rng_rsp_data    (rng_rsp_data2   ), // RNG response / sample data.
.rng_rsp_ready   (                ), // CPU accepts response.
.imem_req      (           ), // Start memory request
.imem_wen      (           ), // Write enable
.imem_strb     (           ), // Write strobe
.imem_wdata    (           ), // Write data
.imem_addr     (           ), // Read/Write address
.imem_gnt      (imem_gnt   ), // request accepted
.imem_recv     (imem_recv  ), // Instruction memory recieve response.
.imem_ack      (           ), // Response acknowledge
.imem_error    (imem_error ), // Error
.imem_rdata    (imem_rdata2), // Read data
.dmem_req      (           ), // Start memory request
.dmem_wen      (           ), // Write enable
.dmem_strb     (           ), // Write strobe
.dmem_wdata    (           ), // Write data
.dmem_addr     (           ), // Read/Write address
.dmem_gnt      (dmem_gnt   ), // request accepted
.dmem_recv     (dmem_recv  ), // Instruction memory recieve response.
.dmem_ack      (           ), // Response acknowledge
.dmem_error    (dmem_error ), // Error
.dmem_rdata    (dmem_rdata2)  // Read data
);

endmodule;
