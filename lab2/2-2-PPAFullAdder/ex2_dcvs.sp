****** Excercise 2-2 dcvs ************
.include '7nm_TT.pm'
.include 'INV_NAND.sp'
.include 'Measure.sp'

********** Parameters ************
.param
+ vdd = 0.7v
+ vin = 0v
.probe tran v(*)  i(*)
.tran 10p 200n
.meas pwr avg POWER
************ Supply **************
.global VDD A B Cin
Vvdd VDD 0 0.7v
Vva A 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 2ns 4ns)
Vvb B 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 3ns 6ns)
Vvc Cin 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 5ns 10ns)

********circuit*********
******* 7 nm ***********
*********Inputs(please use these signals as inputs for your desing)*********************************
Xbuf_A A A_in BUFFER
Xbuf_B B B_in BUFFER
Xbuf_C Cin Cin_buf BUFFER
Xinv A A_inv INV
Xinv1 B B_inv INV
Xinv2 Cin Cin_inv INV
Xbuf_A_inv A_inv A_inv_buf BUFFER
Xbuf_B_inv B_inv B_inv_buf BUFFER
Xbuf_C_inv Cin_inv Cin_inv_buf BUFFER
****************************************************************************************************
M1 Cout n8_9 VDD VDD pmos_rvt m=1
M2 n8_9 Cout VDD VDD pmos_rvt m=1

M3 n5 B Cout GND nmos_rvt m=1
M4 n6_7 A Cout GND nmos_rvt m=1
M5 n5 Cin GND GND nmos_rvt m=1
M6 n6_7 B GND GND nmos_rvt m=1
M7 n6_7 Cin GND GND nmos_rvt m=1

M8 n10_11 A_inv n8_9 GND nmos_rvt m=1
M9 n12 B_inv n8_9 GND nmos_rvt m=1
M10 n10_11 Cin_inv GND GND nmos_rvt m=1
M11 n10_11 B_inv GND GND nmos_rvt m=1
M12 n12 Cin_inv GND GND nmos_rvt m=1

Cload4 Cout GND 5f


M13 Sum n17_18 VDD VDD pmos_rvt m=1
M14 n17_18 Sum VDD VDD pmos_rvt m=1

M15 Sum A n19_20 GND nmos_rvt m=1
M16 Sum A_inv n21_22 GND nmos_rvt m=1

M17 n17_18 A_inv n19_20 GND nmos_rvt m=1
M18 n17_18 A n21_22 GND nmos_rvt m=1

M19 n19_20 B n23 GND nmos_rvt m=1
M20 n19_20 B_inv n24 GND nmos_rvt m=1

M21 n21_22 B_inv n23 GND nmos_rvt m=1
M22 n21_22 B n24 GND nmos_rvt m=1

M23 n23 Cin GND GND nmos_rvt m=1
M24 n24 Cin_inv GND GND nmos_rvt m=1


*Cload1 Sum GND 0.1f
Cload2 n17_18 GND 5f
*Cload11 Sum n 0.1f


************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
