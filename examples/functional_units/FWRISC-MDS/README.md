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
