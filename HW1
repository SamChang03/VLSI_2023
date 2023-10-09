*** 110030039 Homework 1

.protect
.lib `cic018.l' tt
.unprotect
.option post

****Source****
vdd vdd 0 1.8
vg vg 0 pwl(0n 0v 1n 0v 1.5n 1.8v 4.5n 1.8v 5n 0v 6n 0v)
.param vin=0

**** Variable parameters / devices ****

.param l=.3u

.param n=4.23
.param w=1.8u
.param m=5

Mp vout vg vdd vdd p_18 w=n*w*m l=l 
Mn vout vg 0 0 n_18 w=w*m l=l 

C1 vout 0 0.1p

**** Analisis ****

.tran 10ps 7n

.alter
.lib `cic018.l' FF

.alter
.lib `cic018.l' SS

.alter
.lib `cic018.l' SF

.alter
.lib `cic018.l' FS

.end
