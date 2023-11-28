****** Excercise 1-2 ************

.include '7nm_TT.pm'
.include '16mos.pm'

********** Parameters ************
.param
*+ vdd = 0.7v
*+ vin = 0v
.global Vdd GND

.probe tran v(*)  i(*)

.tran 10p 50n

************ Supply **************
Vvdd vdd  0	0.7v
Vgnd gnd  0	0v
Vvin vin  0	PULSE(0V 0.7V 0ns 0.1ns 0.1ns 20ns 40ns)

********************** circuit**************

**********************16nm******************
mp	vout	vin	vdd	vdd	pmos
mn	vout	vin	gnd	gnd	nmos
mp1	vout	vin	vdd	vdd	pmos
mp2	vout	vin	vdd	vdd	pmos
mp3	vout	vin	vdd	vdd	pmos

**********************7nm*******************
mpf      vout1    vin     vdd     vdd     pmos_rvt    m=2
mnf      vout1    vin     gnd     gnd     nmos_rvt    m=1
mpf1      vout2    vout1     vdd     vdd     pmos_rvt    m=1
mnf1      vout2    vout1     gnd     gnd     nmos_rvt    m=2
mpf2      vout3    vout2     vdd     vdd     pmos_rvt    m=1
mnf2      vout3    vout2     gnd     gnd     nmos_rvt    m=2


.dc Vvin 0V 0.7V 0.01V 

************** simulation *********************
.option post probe
.probe v(*) 
.option accurate
.op
.temp 25

*.op
*.option post
*.options probe
*.probe v(*) v(*)
*.option accurate


.end 
