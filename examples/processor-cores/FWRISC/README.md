# Featherweight RISC-V

https://github.com/Featherweight-IP/fwrisc

The following timing characteristics have been found:

| Instructions        | Result                | Comment                            |
|---------------------|-----------------------|------------------------------------|
| Arithmetic (I-Type) | Data-Oblivious        |                                    |
| Arithmetic (R-Type) | Data-Oblivious        | Excluded shifts                    |
| Shifts              | Data-Dependent Timing | Timing depends on shift amount     |
| M-Extension         | (Data-Oblivious)      | Not implemented in decoder         |
| Loads               | Non Data-Oblivious*   | Exception for misaligned address   |
| Stores              | Non Data-Oblivious*   | Exception for misaligned address   |
| Jump (JAL, JALR)    | Non Data-Oblivious*   | Exception for misaligned address   |
| Branch              | Data-Dependent Timing | Take longer if the branch is taken |
