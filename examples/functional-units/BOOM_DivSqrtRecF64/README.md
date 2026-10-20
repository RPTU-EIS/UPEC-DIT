# BOOM_DivSqrtRecF64

*Note*: The source code of the DivSqrtRecF64 module has been extracted from the BOOM core with an LLM.

-----------

Documentation of this functional unit:
https://github.com/ucb-bar/berkeley-hardfloat/blob/master/doc/divSqrtRecodedFloat64_mulAddZ31.txt

In above file, we can find information about the latency:
"From the beginning of the starting clock cycle to the end of the final
cycle, a single operation has the following latency:

    division:     19 cycles or less;
    square root:  27 cycles or less.

Latencies shorter than the maximum occur only for special cases, such as
when the argument of a square root is negative. The minimum special-case
latency is 2 cycles, for either division or square root."

UPEC-DIT shows these special cases as counterexamples, usually where one instance receives zero as an operand.