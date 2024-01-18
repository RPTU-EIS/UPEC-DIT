# UPEC-DIT
This repository contains experiments and results on using UPEC to formally prove data-independent timing in hardware.

The method was originally published at DAC'22: 

*L. Deutschmann, J. Müller, M. R. Fadiheh, D. Stoffel, and W. Kunz, “Towards a formally verified hardware root-of-trust for data-oblivious computing,” in Proceedings of the 59th ACM/IEEE Design Automation Conference, ser. DAC’22. New York, NY, USA: Association for Computing Machinery, 2022, p. 727–732. [Online]. Available: https://doi.org/10.1145/3489517.3530981*

We also revised the approach to further increase its scalability. 
A preprint of the updated methodology is available here:
https://arxiv.org/abs/2308.07757

All experiments were conducted using OneSpin 360 DV by Siemens EDA. 
Setup scripts can be found in each folder.

For an easy-to-understand example, we suggest you take a look at our [experiment on this SHA cryptographic accelerator](https://github.com/RPTU-EIS/UPEC-DIT/blob/master/examples/functional-units/SHA-Cores/sha512_dit.sva).
