*** 110030039 Homework 2
*** Part II
*** NAND_3

.protect
.lib `cic018.l' tt
.temp 25
.unprotect
.option post
+ post
+ captab
+ ABSTOL=1e-7 RELTOL=1e-7 ACCURATE=1

****Source****
vdd vdd 0 1.8
vina vina 0 1.8
vinb vinb 0 1.8
vinc vinc 0 1.8

**** Variable parameters / devices ****
.param n=2.43

Mpa vout vina vdd vdd p_18 w=.2u*n l=.2u m=1
Mpb vout vinb vdd vdd p_18 w=.2u*n l=.2u m=1
Mpc vout vinc vdd vdd p_18 w=.2u*n l=.2u m=1

Mnc vout vinc vbd 0 n_18 w=1.2u l=.2u m=1
Mnb vbd vinb vad 0 n_18 w=1.2u l=.2u m=1
Mna vad vina 0 0 n_18 w=1.2u l=.2u m=1

**** Analisis ****
.dc vinc 0 1.8 10m
.meas DC vil find v(vina) when deriv('v(vout)')=-1
.meas DC voh find v(vout) when deriv('v(vout)')=-1
.meas DC vih find v(vina) when deriv('v(vout)')=-1 rise=1
.meas DC vol find v(vout) when deriv('v(vout)')=-1 rise=1
.op

.end

