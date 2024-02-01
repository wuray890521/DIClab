****** Excercise 2-1 ************
.include '7nm_TT.pm'
.include 'asap7_75t_R_24.cdl'
.include 'Measure.sp'
.VEC 'testbench.vec'

********** Parameters ************
.param
+ vdd = 0.7v
+ vin = 0v

.probe tran v(*)  i(*)

.tran 10p 50n

************ Supply **************
.global VDD 
Vvdd VDD 0 0.7v
*Vva A 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 20ns 40ns)
*Vvb B 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 12ns 24ns)
*Vvc C 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 5ns 10ns)

********circuit*********
Xbuffer1 A VDD GND a_in BUFx10_ASAP7_75t_R
Xbuffer2 B VDD GND b_in BUFx10_ASAP7_75t_R
Xbuffer3 Cin VDD GND cin_buf BUFx10_ASAP7_75t_R
XOR a_in b_in VDD GND A1 XOR2x1_ASAP7_75t_R
XOR1 A1 cin_buf VDD GND sum XOR2x1_ASAP7_75t_R
Xmaj a_in b_in cin_buf VDD GND carry_out MAJx2_ASAP7_75t_R 
*Xbuffer4 Cout Cout1 BUFx10_ASAP7_75t_R

Cload1 sum GND 5f
Cload2 carry_out GND 5f

************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
