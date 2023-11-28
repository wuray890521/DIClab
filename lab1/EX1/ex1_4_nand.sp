****** Excercise 1-4 ************

.include '7nm_TT.pm'
.include 'asap7sc7p5t_INVBUF_RVT.sp'
.include 'asap7sc7p5t_SIMPLE_RVT.sp'


.temp 25

********** Parameters ************
.param
+ vdd = 0.7v
+ vin = 0v

.probe tran v(*)  i(*)

.tran 10p 200n

************ measure *************
.meas tran TpHL Trig v(B) val='0.5*vdd' rise=1
+ 		   		Targ v(Y) val='0.5*vdd' fall=1

.meas tran TpLH Trig v(B) val='0.5*vdd' fall=1
+ 		   		Targ v(Y) val='0.5*vdd' rise=1

.meas tpd 	param='(TpHL+TpLH)/2' $ average prop delay

.meas trise TRIG v(Y) VAL='0.1*vdd' RISE=1
+ 			TARG v(Y) VAL='0.9*vdd' RISE=1

.meas tfall TRIG v(Y) VAL='0.9*vdd' fall=1
+ 			TARG v(Y) VAL='0.1*vdd' fall=1

.meas pwr avg POWER

************ Supply **************
Vvdd	vdd	0	0.7v
Vgnd	gnd	0	0v
Va	A	0	0.7v
Vb	B	0	PULSE(0V 0.7V 0ns 0.1ns 0.1ns 20ns 40ns)
Vc	C	0	PULSE(0V 0.7V 0ns 0.1ns 0.1ns 5ns 10ns)


****************** circuit ****************
*** NAND & buffer & FO4
Xand1 gnd vdd C B Y   NAND2XP33_ASAP7_75T_R
Xinv1 gnd vdd Y   Yb1 INVx1_ASAP7_75t_R
Xinv2 gnd vdd Yb1 Yb2 INVx1_ASAP7_75t_R
Xinv3 gnd vdd Yb2 Yb3 INVx1_ASAP7_75t_R
Xinv4 gnd vdd Yb3 Yb4 INVx1_ASAP7_75t_R
Xinv5 gnd vdd Yb4 Yb5 INVx1_ASAP7_75t_R
Xinv6 gnd vdd Yb5 Yb6 INVx1_ASAP7_75t_R
Cload Yb6 gnd 10f


************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
 
