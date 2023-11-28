****** Excercise 1-2 ************

.include '7nm_TT.pm'
.include 'asap7sc7p5t_INVBUF_RVT.sp'

********** Parameters ************
.param
*+ vdd = 0.7v
*+ vin = 0v
.global Vdd GND

************ Supply **************
Vvdd vdd  0	0.7v
Vgnd gnd  0	0v
Vvin vin  0	0.7v

********************** circuit**************
**** smallest inverter **
Xinv_s gnd vdd vin out1 INVx1_ASAP7_75t_R

**** larggest inverter **
Xinv_l gnd vdd vin out2 INVx13_ASAP7_75t_R



.dc Vvin 0V 0.7V 0.01V sweep Vvdd 0.4v 0.7v 0.1v

************** simulation *********************
.option post probe
.probe v(*) 
.option accurate
.op
.temp 25

.end 
