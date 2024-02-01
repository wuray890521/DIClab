****** Excercise 2-4 ************
.include '7nm_TT.pm'
.include 'asap7sc7p5t_AO_RVT.sp'
.include 'asap7sc7p5t_INVBUF_RVT.sp'
.include 'asap7sc7p5t_OA_RVT.sp'
.include 'asap7sc7p5t_SEQ_RVT.sp'
.include 'asap7sc7p5t_SIMPLE_RVT.sp'
.include 'Measure.sp'
*.include 'Measure_1.sp'
.VEC "PATTERN.vec"

.temp 25

********** Parameters ************
.param
+ vdd = 0.7v
+ vin = 0v

.probe tran v(*)  i(*)

.tran 1f 55n

************ measure *************

************ Supply **************
Vvdd	VDD	0	0.7v
Vvss	VSS	0	0v
*Va A[0] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 1ns 2ns)
*Va1 A[1] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 2ns 4ns)
*Va2 A[2] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 3ns 6ns)
*Va3 A[3] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 4ns 8ns)
*Vb B[0] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 5ns 10ns)
*Vb1 B[1] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 6ns 12ns)
*Vb2 B[2] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 7ns 14ns)
*Vb3 B[3] 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 8ns 16ns)

****************** circuit ****************
XU3 VSS VDD  A[0] B[0] Output[0] XOR2xp5_ASAP7_75t_R
XU4 VSS VDD  B[0] A[0] n11 NAND2xp5_ASAP7_75t_R
XU5 VSS VDD  B[1] A[1] n11 A0  Output[1] FAx1_ASAP7_75t_R
XU6 VSS VDD  B[2] A[2] n6 XNOR2xp5_ASAP7_75t_R
XU7 VSS VDD  B[1] A[1] n9 NAND2xp5_ASAP7_75t_R
XU8 VSS VDD  n11 n9 n4 NAND2xp5_ASAP7_75t_R
XU9 VSS VDD  B[1] A[1] n7 OR2x2_ASAP7_75t_R
XU10 VSS VDD  n4 n7 n5 NAND2xp5_ASAP7_75t_R
XU11 VSS VDD  n6 n5 Output[2] XOR2xp5_ASAP7_75t_R
XU12 VSS VDD  n7 n8 INVx1_ASAP7_75t_R
XU13 VSS VDD  B[2] A[2] n10 NAND2xp5_ASAP7_75t_R
XU14 VSS VDD  n8 n10 n14 NAND2xp5_ASAP7_75t_R
XU15 VSS VDD  B[2] A[2] n13 OR2x2_ASAP7_75t_R
XU16 VSS VDD  n11 n10 n9 n12 NAND3xp33_ASAP7_75t_R
XU17 VSS VDD  n14 n13 n12 n16 NAND3xp33_ASAP7_75t_R
XU18 VSS VDD  B[3] A[3] n15 XNOR2xp5_ASAP7_75t_R
XU19 VSS VDD  n16 n15 Output[3] XOR2xp5_ASAP7_75t_R
XU20 VSS VDD  n16 n18 INVx1_ASAP7_75t_R
XU21 VSS VDD  B[3] A[3] n17 OR2x2_ASAP7_75t_R
XU22 VSS VDD  n18 n17 n20 NAND2xp5_ASAP7_75t_R
XU23 VSS VDD  B[3] A[3] n19 NAND2xp5_ASAP7_75t_R
XU24 VSS VDD  n20 n19 Output[4] NAND2xp5_ASAP7_75t_R


************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
 
