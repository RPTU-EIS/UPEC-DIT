module ibex_miter import ibex_pkg::*; #(
  parameter bit                 PMPEnable        = 1'b0,
  parameter int unsigned        PMPGranularity   = 0,
  parameter int unsigned        PMPNumRegions    = 4,
  parameter int unsigned        MHPMCounterNum   = 0,
  parameter int unsigned        MHPMCounterWidth = 40,
  parameter bit                 RV32E            = 1'b0,
  parameter ibex_pkg::rv32m_e   RV32M            = ibex_pkg::RV32MFast,
  parameter ibex_pkg::rv32b_e   RV32B            = ibex_pkg::RV32BNone,
//  parameter ibex_pkg::regfile_e RegFile          = ibex_pkg::RegFileFF,
  parameter bit                 BranchTargetALU  = 1'b0,
  parameter bit                 WritebackStage   = 1'b0,
  parameter bit                 ICache           = 1'b0,
  parameter bit                 ICacheECC        = 1'b0,
  parameter bit                 BranchPredictor  = 1'b0,
  parameter bit                 DbgTriggerEn     = 1'b0,
  parameter int unsigned        DbgHwBreakNum    = 1,
  parameter bit                 SecureIbex       = 1'b0,
  parameter int unsigned        DmHaltAddr       = 32'h1A110800,
  parameter int unsigned        DmExceptionAddr  = 32'h1A110808
) (
  input clk,
  input rst,

  input  logic [31:0]                  hart_id_i, // Hart ID, usually static, can be read from mhartid CSR
  input  logic [31:0]                  boot_addr_i, // First program counter after reset = boot_addr_i + 0x80

  // Instruction memory interface
  output logic                         instr_req_o1, instr_req_o2, // Request valid, must stay high until instr_gnt_i is high for one cycle
  input  logic                         instr_gnt_i, // The other side accepted the request. instr_req_o may be deasserted in the next cycle.
  input  logic                         instr_rvalid_i, // instr_rdata_i holds valid data when instr_rvalid_i is high. This signal will be high for exactly one cycle per request.
  output logic [31:0]                  instr_addr_o1, instr_addr_o2, // Address, word aligned
  input  logic [31:0]                  instr_rdata_i1, instr_rdata_i2, // Data read from memory
//  input  logic                         instr_err_i, // Memory access error

  // Data memory interface
  output logic                         data_req_o1, data_req_o2, // Request valid, must stay high until data_gnt_i is high for one cycle
  input  logic                         data_gnt_i, // The other side accepted the request. Outputs may change in the next cycle.
  input  logic                         data_rvalid_i, // data_err_i and data_rdata_i hold valid data when data_rvalid_i is high. This signal will be high for exactly one cycle per request.
  output logic                         data_we_o1, data_we_o2, // Write Enable, high for writes, low for reads. Sent together with data_req_o
  output logic [3:0]                   data_be_o1, data_be_o2, // Byte Enable. Is set for the bytes to write/read, sent together with data_req_o
  output logic [31:0]                  data_addr_o1, data_addr_o2, // Address, word aligned
  output logic [31:0]                  data_wdata_o1, data_wdata_o2, // Data to be written to memory, sent together with data_req_o
  input  logic [31:0]                  data_rdata_i1, data_rdata_i2, // Data read from memory
//  input  logic                         data_err_i, // Error response from the bus or the memory: request cannot be handled. High in case of an error.

  // Register file interface
  output logic                         dummy_instr_id_o1, dummy_instr_id_o2,
  output logic [4:0]                   rf_raddr_a_o1, rf_raddr_a_o2,
  output logic [4:0]                   rf_raddr_b_o1, rf_raddr_b_o2,
  output logic [4:0]                   rf_waddr_wb_o1, rf_waddr_wb_o2,
  output logic                         rf_we_wb_o1, rf_we_wb_o2,
  output logic [RegFileDataWidth-1:0]  rf_wdata_wb_ecc_o1, rf_wdata_wb_ecc_o2,
  input  logic [RegFileDataWidth-1:0]  rf_rdata_a_ecc_i1, rf_rdata_a_ecc_i2,
  input  logic [RegFileDataWidth-1:0]  rf_rdata_b_ecc_i1, rf_rdata_b_ecc_i2,

  // RAMs interface
  output logic [IC_NUM_WAYS-1:0]       ic_tag_req_o1, ic_tag_req_o2,
  output logic                         ic_tag_write_o1, ic_tag_write_o2,
  output logic [IC_INDEX_W-1:0]        ic_tag_addr_o1, ic_tag_addr_o2,
  output logic [TagSizeECC-1:0]        ic_tag_wdata_o1, ic_tag_wdata_o2,
  input  logic [TagSizeECC-1:0]        ic_tag_rdata_i [IC_NUM_WAYS],
  output logic [IC_NUM_WAYS-1:0]       ic_data_req_o1, ic_data_req_o2,
  output logic                         ic_data_write_o1, ic_data_write_o2,
  output logic [IC_INDEX_W-1:0]        ic_data_addr_o1, ic_data_addr_o2,
  output logic [LineSizeECC-1:0]       ic_data_wdata_o1, ic_data_wdata_o2,
  input  logic [LineSizeECC-1:0]       ic_data_rdata_i [IC_NUM_WAYS],

  // Interrupt inputs
//  input  logic                         irq_software_i, // Connected to memory-mapped (inter-processor) interrupt register
//  input  logic                         irq_timer_i, // Connected to timer module
//  input  logic                         irq_external_i, // Connected to platform-level interrupt controller
//  input  logic [14:0]                  irq_fast_i, // 15 fast, local interrupts
//  input  logic                         irq_nm_i,       // non-maskeable interrupt (NMI)
  output logic                         irq_pending_o1, irq_pending_o2,

  // Debug Interface
//  input  logic                         debug_req_i, // Request to enter Debug Mode
  output crash_dump_t crash_dump_o1, crash_dump_o2,

  // CPU Control Signals
//  input  logic                         fetch_enable_i, // Allow the core to fetch instructions. If this bit is set to low, the core will pause fetching new instructions.
  output logic                         alert_minor_o1, alert_minor_o2, // Core has detected a fault which it can safely recover from. Can be used by a system to log errors over time and detect tampering / attack. This signal is a pulse, one cycle per alert.
  output logic                         alert_major_o1, alert_major_o2, // Core has detected a fault which cannot be recovered from. Can be used by a system to reset the core and possibly take other remedial action. This signal is a pulse, but might be set for multiple cycles per alert.
  output logic                         core_busy_o1, core_busy_o2
);

  localparam bit          DummyInstructions = 1'b0;//SecureIbex;
  localparam bit          RegFileECC        = 1'b0;//SecureIbex;
  localparam int unsigned RegFileDataWidth  = RegFileECC ? 32 + 7 : 32;
  localparam int unsigned BusSizeECC        = ICacheECC ? (BUS_SIZE + 7) : BUS_SIZE;
  localparam int unsigned LineSizeECC       = BusSizeECC * IC_LINE_BEATS;
  localparam int unsigned TagSizeECC        = ICacheECC ? (IC_TAG_SIZE + 6) : IC_TAG_SIZE;

  ibex_core #(
    .PMPEnable         ( PMPEnable         ),
    .PMPGranularity    ( PMPGranularity    ),
    .PMPNumRegions     ( PMPNumRegions     ),
    .MHPMCounterNum    ( MHPMCounterNum    ),
    .MHPMCounterWidth  ( MHPMCounterWidth  ),
    .RV32E             ( RV32E             ),
    .RV32M             ( RV32M             ),
    .RV32B             ( RV32B             ),
    .BranchTargetALU   ( BranchTargetALU   ),
    .ICache            ( ICache            ),
    .ICacheECC         ( ICacheECC         ),
    .BusSizeECC        ( BusSizeECC        ),
    .TagSizeECC        ( TagSizeECC        ),
    .LineSizeECC       ( LineSizeECC       ),
    .BranchPredictor   ( BranchPredictor   ),
    .DbgTriggerEn      ( DbgTriggerEn      ),
    .DbgHwBreakNum     ( DbgHwBreakNum     ),
    .WritebackStage    ( WritebackStage    ),
    .SecureIbex        ( SecureIbex        ),
    .DummyInstructions ( DummyInstructions ),
    .RegFileECC        ( RegFileECC        ),
    .RegFileDataWidth  ( RegFileDataWidth  ),
    .DmHaltAddr        ( DmHaltAddr        ),
    .DmExceptionAddr   ( DmExceptionAddr   )
  ) P1 (
    .clk_i(clk),
    .rst_ni(!rst),

    .hart_id_i(hart_id_i),
    .boot_addr_i(boot_addr_i),

    .instr_req_o(instr_req_o1),
    .instr_gnt_i(instr_gnt_i),
    .instr_rvalid_i(instr_rvalid_i),
    .instr_addr_o(instr_addr_o1),
    .instr_rdata_i(instr_rdata_i1),
    .instr_err_i(1'b0),

    .data_req_o(data_req_o1),
    .data_gnt_i(data_gnt_i),
    .data_rvalid_i(data_rvalid_i),
    .data_we_o(data_we_o1),
    .data_be_o(data_be_o1),
    .data_addr_o(data_addr_o1),
    .data_wdata_o(data_wdata_o1),
    .data_rdata_i(data_rdata_i1),
    .data_err_i(1'b0),

    .dummy_instr_id_o(dummy_instr_id_o1),
    .rf_raddr_a_o(rf_raddr_a_o1),
    .rf_raddr_b_o(rf_raddr_b_o1),
    .rf_waddr_wb_o(rf_waddr_wb_o1),
    .rf_we_wb_o(rf_we_wb_o1),
    .rf_wdata_wb_ecc_o(rf_wdata_wb_ecc_o1),
    .rf_rdata_a_ecc_i(rf_rdata_a_ecc_i1),
    .rf_rdata_b_ecc_i(rf_rdata_b_ecc_i1),

    .ic_tag_req_o(ic_tag_req_o1),
    .ic_tag_write_o(ic_tag_write_o1),
    .ic_tag_addr_o(ic_tag_addr_o1),
    .ic_tag_wdata_o(ic_tag_wdata_o1),
    .ic_tag_rdata_i(ic_tag_rdata_i),
    .ic_data_req_o(ic_data_req_o1),
    .ic_data_write_o(ic_data_write_o1),
    .ic_data_addr_o(ic_data_addr_o1),
    .ic_data_wdata_o(ic_data_wdata_o1),
    .ic_data_rdata_i(ic_data_rdata_i),

    .irq_software_i(1'b0),
    .irq_timer_i(1'b0),
    .irq_external_i(1'b0),
    .irq_fast_i(15'h0),
    .irq_nm_i(1'b0),
    .irq_pending_o(irq_pending_o1),

    .debug_req_i(1'b0),
    .crash_dump_o(crash_dump_o1),

    .fetch_enable_i(1'b1),
    .alert_minor_o(alert_minor_o1),
    .alert_major_o(alert_major_o1),
    .core_busy_o(core_busy_o1)
  );

  ibex_core #(
    .PMPEnable         ( PMPEnable         ),
    .PMPGranularity    ( PMPGranularity    ),
    .PMPNumRegions     ( PMPNumRegions     ),
    .MHPMCounterNum    ( MHPMCounterNum    ),
    .MHPMCounterWidth  ( MHPMCounterWidth  ),
    .RV32E             ( RV32E             ),
    .RV32M             ( RV32M             ),
    .RV32B             ( RV32B             ),
    .BranchTargetALU   ( BranchTargetALU   ),
    .ICache            ( ICache            ),
    .ICacheECC         ( ICacheECC         ),
    .BusSizeECC        ( BusSizeECC        ),
    .TagSizeECC        ( TagSizeECC        ),
    .LineSizeECC       ( LineSizeECC       ),
    .BranchPredictor   ( BranchPredictor   ),
    .DbgTriggerEn      ( DbgTriggerEn      ),
    .DbgHwBreakNum     ( DbgHwBreakNum     ),
    .WritebackStage    ( WritebackStage    ),
    .SecureIbex        ( SecureIbex        ),
    .DummyInstructions ( DummyInstructions ),
    .RegFileECC        ( RegFileECC        ),
    .RegFileDataWidth  ( RegFileDataWidth  ),
    .DmHaltAddr        ( DmHaltAddr        ),
    .DmExceptionAddr   ( DmExceptionAddr   )
  ) P2 (
    .clk_i(clk),
    .rst_ni(!rst),

    .hart_id_i(hart_id_i),
    .boot_addr_i(boot_addr_i),

    .instr_req_o(instr_req_o2),
    .instr_gnt_i(instr_gnt_i),
    .instr_rvalid_i(instr_rvalid_i),
    .instr_addr_o(instr_addr_o2),
    .instr_rdata_i(instr_rdata_i2),
    .instr_err_i(1'b0),

    .data_req_o(data_req_o2),
    .data_gnt_i(data_gnt_i),
    .data_rvalid_i(data_rvalid_i),
    .data_we_o(data_we_o2),
    .data_be_o(data_be_o2),
    .data_addr_o(data_addr_o2),
    .data_wdata_o(data_wdata_o2),
    .data_rdata_i(data_rdata_i2),
    .data_err_i(1'b0),

    .dummy_instr_id_o(dummy_instr_id_o2),
    .rf_raddr_a_o(rf_raddr_a_o2),
    .rf_raddr_b_o(rf_raddr_b_o2),
    .rf_waddr_wb_o(rf_waddr_wb_o2),
    .rf_we_wb_o(rf_we_wb_o2),
    .rf_wdata_wb_ecc_o(rf_wdata_wb_ecc_o2),
    .rf_rdata_a_ecc_i(rf_rdata_a_ecc_i2),
    .rf_rdata_b_ecc_i(rf_rdata_b_ecc_i2),

    .ic_tag_req_o(ic_tag_req_o2),
    .ic_tag_write_o(ic_tag_write_o2),
    .ic_tag_addr_o(ic_tag_addr_o2),
    .ic_tag_wdata_o(ic_tag_wdata_o2),
    .ic_tag_rdata_i(ic_tag_rdata_i),
    .ic_data_req_o(ic_data_req_o2),
    .ic_data_write_o(ic_data_write_o2),
    .ic_data_addr_o(ic_data_addr_o2),
    .ic_data_wdata_o(ic_data_wdata_o2),
    .ic_data_rdata_i(ic_data_rdata_i),

    .irq_software_i(1'b0),
    .irq_timer_i(1'b0),
    .irq_external_i(1'b0),
    .irq_fast_i(15'h0),
    .irq_nm_i(1'b0),
    .irq_pending_o(irq_pending_o2),

    .debug_req_i(1'b0),
    .crash_dump_o(crash_dump_o2),

    .fetch_enable_i(1'b1),
    .alert_minor_o(alert_minor_o2),
    .alert_major_o(alert_major_o2),
    .core_busy_o(core_busy_o2)
  );

endmodule;
