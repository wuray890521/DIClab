****** Excercise 1-2 ************

*.include '7nm_TT.pm'
.include '16mos.pm'
.include 'Buffer.sp'

********** Parameters ************
.param
*+ vdd = 0.7v
*+ vin = 0v
.global Vdd GND

.probe tran v(*)  i(*)

.tran 10p 200n

************ Supply **************
Vvdd vdd  0	0.7v
Vgnd gnd  0	0v
Vvin vin  0	PULSE(0V 0.7V 0ns 0.1ns 0.1ns 0.25ns 1ns)
*Vvin vin  GND

********************** circuit**************
**********************7nm*******************

xin     vin vout1 inverter
xbuffer     vout1 vout3 buffer
xbuffer1     vout3 vout4 buffer

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
 
