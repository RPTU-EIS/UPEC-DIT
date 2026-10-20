# BOOM_MulDiv

*Note*: The source code of the MulDiv module has been extracted from the BOOM core with an LLM.

---------

The module has data-dependent timing for all the division instructions (DIV (4), DIVU (5), REM (6), REMU (7)).
A negative sign produces an increased latency, but also the counter value of the division strongly depends on the data.

The multiplication instructions (MUL (0), MULH (1), MULHSU (2), MULHU (3)) are data-oblivious.

The other fn values (8-15) should not occur during normal operation (see "Multiplier.scala" and "ALU.scala")." 
