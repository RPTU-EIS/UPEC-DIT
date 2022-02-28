# Ibex RISC-V Core

https://github.com/lowRISC/ibex

The Ibex Core implements a *data independent timing* mode. When enabled, execution times and power consumption of all instructions shall be independent of input data. In our experiments, we considered both *data independent timing* as well as normal operation mode.

Furthermore, both *Slow* and *Fast* multiply configurations were considered. In the table, the left entry of the *Multiplication* row marks the *Slow* multiplier, the right entry the *Fast* Multiplier.

|Instruction Class|Normal Operation Mode |    Data Independent Timing Mode     |
|-----------------|:--------------------:|:-----------------------------------:|
|R-Type Arithmetic|:white_check_mark:    |:white_check_mark:                   |
|I-Type Arithmetic|:white_check_mark:    |:white_check_mark:                   |
|Load             |:warning:             |:warning:                            |
|Store            |:warning:             |:warning:                            |
|Branch           |:x:                   |:white_check_mark:                   |
|Jump             |:white_check_mark:    |:white_check_mark:                   |
|Multiplication   |:x:/:white_check_mark:|:white_check_mark:/:white_check_mark:|
|Division         |:x:                   |:white_check_mark:                   |
|CSR Access       |:white_check_mark:    |:white_check_mark:                   |

:white_check_mark: = Operations execute in constant-time \
:warning: = Only oblivious under certain conditions \
:x: = Operation timing depends strongly on data

In normal operation mode, *slow* multiplication and division implement fast paths for certain scenarios like a multiplication with zero. When *data independent timing* mode is enabled, these fast paths are switched off.

Taken branches cause a timing penalty during normal operation, since the prefetch buffer has to be flushed.
If a branch is not taken, it causes no overhead. When *data independent timing* mode is enabled, both taken and not-taken take the same time until the next instruction is executed. \
Constant-time programming usually does not allow any branches on confidential data at all.
However, in *data independent timing* mode, balanced branches could also be used to make decisions based on confidential data.

Load and store operations are a special case.
The way Ibex handles a misaligned memory access is to split it into two separate, aligned accesses.
For example, a LW Instruction on address 2 would first load the last two bytes of address 0 and then the first 2 bytes of address 4. \
Since the address of a load or store instruction is dependent on data, this can cause a timing variability.
Usually, the software should ensure that no misaligned access occurs. Yet, faulty or malicious software could result in a security vulnerability. \
A possible fix would be to simply disable the feature for misaligned accesses whenever *data independent timing* mode is on. This was proposed in a GitHub issue on Ibex. \
https://github.com/lowRISC/ibex/issues/1414 \
What is also interesting is that this problem would also leak information if strong obfuscation mechanisms like a oblivious RAM controller were in place.
Within ORAM, memory access patterns are hidden and all data is encrypted.
However, ORAM does not hide the number of accesses in total, and therefore does not prevent this information leak.
