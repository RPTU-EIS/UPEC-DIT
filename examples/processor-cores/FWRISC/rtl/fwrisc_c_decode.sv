/****************************************************************************
 * fwrisc_c_decode.sv
 *
 * This implementation significantly borrows from the Ibex core 
 * implementation, so the lowRISC copyright and license information is
 * shown below. 
 *
 * Copyright lowRISC contributors.
 * Copyright 2018 ETH Zurich and University of Bologna, see also CREDITS.md.
 * Licensed under the Apache License, Version 2.0, see LICENSE for details.
 * SPDX-License-Identifier: Apache-2.0
 *
 * Modifications and adaptations are: Copyright 2019 Matthew Ballance
 * 
 * Licensed under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in
 * writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied.  See
 * the License for the specific language governing
 * permissions and limitations under the License.
 ****************************************************************************/

/**
 * Module: fwrisc_c_decode
 * 
 * Expands a RISC-V compressed instruction to a 32-bit instruction
 */
module fwrisc_c_decode(
		input				clock,
		input				reset,
		input[15:0]			instr_i,
		output reg[31:0]	instr
		);
	
	parameter [6:0]
		OPCODE_OP_IMM = 7'b0010011,
		OPCODE_LOAD   = 7'b0000011,
		OPCODE_JAL    = 7'b1101111,
		OPCODE_LUI    = 7'b0110111,
		OPCODE_OP     = 7'b0110011,
		OPCODE_BRANCH = 7'b1100011,
		OPCODE_JALR   = 7'b1100111,
		OPCODE_STORE  = 7'b0100011
		;

	always @* begin
		instr         = 0;

		case (instr_i[1:0])
			// C0
			2'b00: begin
				case (instr_i[15:13])
					3'b000: begin
						// c.addi4spn -> addi rd', x2, imm
						instr = {2'b0, instr_i[10:7], instr_i[12:11], instr_i[5],
								instr_i[6], 2'b00, 5'h02, 3'b000, 2'b01, instr_i[4:2], {OPCODE_OP_IMM}};
					end

					3'b010: begin
						// c.lw -> lw rd', imm(rs1')
						instr = {5'b0, instr_i[5], instr_i[12:10], instr_i[6],
								2'b00, 2'b01, instr_i[9:7], 3'b010, 2'b01, instr_i[4:2], {OPCODE_LOAD}};
					end

					3'b110: begin
						// c.sw -> sw rs2', imm(rs1')
						instr = {5'b0, instr_i[5], instr_i[12], 2'b01, instr_i[4:2],
								2'b01, instr_i[9:7], 3'b010, instr_i[11:10], instr_i[6],
								2'b00, {OPCODE_STORE}};
					end
				endcase
			end

			// C1
			//
			// Register address checks for RV32E are performed in the regular instruction decoder.
			// If this check fails, an illegal instruction exception is triggered and the controller
			// writes the actual faulting instruction to mtval.
			2'b01: begin
				case (instr_i[15:13])
					3'b000: begin
						// c.addi -> addi rd, rd, nzimm
						// c.nop
						instr = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2],
								instr_i[11:7], 3'b0, instr_i[11:7], {OPCODE_OP_IMM}};
					end

					3'b001, 3'b101: begin
						// 001: c.jal -> jal x1, imm
						// 101: c.j   -> jal x0, imm
						instr = {instr_i[12], instr_i[8], instr_i[10:9], instr_i[6],
								instr_i[7], instr_i[2], instr_i[11], instr_i[5:3],
								{9 {instr_i[12]}}, 4'b0, ~instr_i[15], {OPCODE_JAL}};
					end

					3'b010: begin
						// c.li -> addi rd, x0, nzimm
						// (c.li hints are translated into an addi hint)
						instr = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 5'b0,
								3'b0, instr_i[11:7], {OPCODE_OP_IMM}};
					end

					3'b011: begin
						// c.lui -> lui rd, imm
						// (c.lui hints are translated into a lui hint)
						instr = {{15 {instr_i[12]}}, instr_i[6:2], instr_i[11:7], {OPCODE_LUI}};

						if (instr_i[11:7] == 5'h02) begin
							// c.addi16sp -> addi x2, x2, nzimm
							instr = {{3 {instr_i[12]}}, instr_i[4:3], instr_i[5], instr_i[2],
									instr_i[6], 4'b0, 5'h02, 3'b000, 5'h02, {OPCODE_OP_IMM}};
						end

					end

					3'b100: begin
						case (instr_i[11:10])
							2'b00,
							2'b01: begin
								// 00: c.srli -> srli rd, rd, shamt
								// 01: c.srai -> srai rd, rd, shamt
								// (c.srli/c.srai hints are translated into a srli/srai hint)
								instr = {1'b0, instr_i[10], 5'b0, instr_i[6:2], 2'b01, instr_i[9:7],
										3'b101, 2'b01, instr_i[9:7], {OPCODE_OP_IMM}};
							end

							2'b10: begin
								// c.andi -> andi rd, rd, imm
								instr = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 2'b01, instr_i[9:7],
										3'b111, 2'b01, instr_i[9:7], {OPCODE_OP_IMM}};
							end

							2'b11: begin
								case ({instr_i[12], instr_i[6:5]})
									3'b000: begin
										// c.sub -> sub rd', rd', rs2'
										instr = {2'b01, 5'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7],
												3'b000, 2'b01, instr_i[9:7], {OPCODE_OP}};
									end

									3'b001: begin
										// c.xor -> xor rd', rd', rs2'
										instr = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b100,
												2'b01, instr_i[9:7], {OPCODE_OP}};
									end

									3'b010: begin
										// c.or  -> or  rd', rd', rs2'
										instr = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b110,
												2'b01, instr_i[9:7], {OPCODE_OP}};
									end

									3'b011: begin
										// c.and -> and rd', rd', rs2'
										instr = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b111,
												2'b01, instr_i[9:7], {OPCODE_OP}};
									end
								endcase
							end
						endcase
					end

					3'b110, 3'b111: begin
						// 0: c.beqz -> beq rs1', x0, imm
						// 1: c.bnez -> bne rs1', x0, imm
						instr = {{4 {instr_i[12]}}, instr_i[6:5], instr_i[2], 5'b0, 2'b01,
								instr_i[9:7], 2'b00, instr_i[13], instr_i[11:10], instr_i[4:3],
								instr_i[12], {OPCODE_BRANCH}};
					end

				endcase
			end

			// C2
			//
			// Register address checks for RV32E are performed in the regular instruction decoder.
			// If this check fails, an illegal instruction exception is triggered and the controller
			// writes the actual faulting instruction to mtval.
			2'b10: begin
				case (instr_i[15:13])
					3'b000: begin
						// c.slli -> slli rd, rd, shamt
						// (c.ssli hints are translated into a slli hint)
						instr = {7'b0, instr_i[6:2], instr_i[11:7], 3'b001, instr_i[11:7], {OPCODE_OP_IMM}};
					end

					3'b010: begin
						// c.lwsp -> lw rd, imm(x2)
						instr = {4'b0, instr_i[3:2], instr_i[12], instr_i[6:4], 2'b00, 5'h02,
								3'b010, instr_i[11:7], OPCODE_LOAD};
					end

					3'b100: begin
						if (instr_i[12] == 1'b0) begin
							if (instr_i[6:2] != 5'b0) begin
								// c.mv -> add rd/rs1, x0, rs2
								// (c.mv hints are translated into an add hint)
								instr = {7'b0, instr_i[6:2], 5'b0, 3'b0, instr_i[11:7], {OPCODE_OP}};
							end else begin
								// c.jr -> jalr x0, rd/rs1, 0
								instr = {12'b0, instr_i[11:7], 3'b0, 5'b0, {OPCODE_JALR}};
							end
						end else begin
							if (instr_i[6:2] != 5'b0) begin
								// c.add -> add rd, rd, rs2
								// (c.add hints are translated into an add hint)
								instr = {7'b0, instr_i[6:2], instr_i[11:7], 3'b0, instr_i[11:7], {OPCODE_OP}};
							end else begin
								if (instr_i[11:7] == 5'b0) begin
									// c.ebreak -> ebreak
									instr = {32'h00_10_00_73};
								end else begin
									// c.jalr -> jalr x1, rs1, 0
									instr = {12'b0, instr_i[11:7], 3'b000, 5'b00001, {OPCODE_JALR}};
								end
							end
						end
					end

					3'b110: begin
						// c.swsp -> sw rs2, imm(x2)
						instr = {4'b0, instr_i[8:7], instr_i[12], instr_i[6:2], 5'h02, 3'b010,
								instr_i[11:9], 2'b00, {OPCODE_STORE}};
					end
				endcase
			end

			default: begin
				// 32 bit (or more) instruction
				instr = instr_i;
			end
		endcase
	end

endmodule

