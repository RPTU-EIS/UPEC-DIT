# Featherweight RISC-V

https://github.com/Featherweight-IP/fwrisc

Here, we investigate the Multiplication-Division-Shifting Unit of fwriscv.
We apply UPEC-DIT to the entire processor in /examples/processor-cores/FWRISC/

## FWRISC_MUL_DIV_SHIFT

The proof is split to prove timing-independence for different operands and operations separately.

The following timing variations have been found:
 * MUL, MULH, MULS and MULSH are constant-time (33 cycles)
 * DIV and REM are constant-time (33 cycles)
 * *SLL, SRL and STA have variable timing depending on the shift amount* (2 to 33 cycles)
 * Invalid OP types are constant-time in normal operation (2 cycles)

In total, the design is timing-independent of operand a, but dependent on b.

## Formal Verification with SymbiYosys (Open Source)

As a proof-of-concept, we data-independet timing with an open source verification tool, i.e., SymbiYosys (https://github.com/YosysHQ/sby).
Unfortunately, the non-commercial version does only provide very rudimentary SystemVerilog Assertion (SVA) support.
We split the prove for both operands a and b and integrated the assertion into the miter circuit ("miter_tb_a/b.sv").
To run the proofs, execute the corresponding .sby file in the sby/ directory with SymbiYosys.
For operand a, the proof holds as the design timing does not depend on it.
For operand b, the proof fails and produces a counterexample, exposing variable timing of the shift operation.
