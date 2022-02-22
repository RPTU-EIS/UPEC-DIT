# BasicRSA-T100

(Trojan-infected) RSA module taken from:
https://trust-hub.org/#/benchmarks/chip-level-trojan

UPEC-DIT showed that the timing of the RSA algorithm strongly depends on all three data inputs:
 - The plain/cypher text
 - Exponent (key)
 - Modulo

All of them come from the variable-latency multiplication in combination with square-and-multiply exponentiation.

The properties (SVA+Tidal) can be found in _rsacypher_dit.sva_.
