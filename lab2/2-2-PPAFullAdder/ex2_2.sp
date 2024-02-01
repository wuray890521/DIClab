****** Excercise 2-2cmos ************
.include '7nm_TT.pm'
.include 'INV_NAND.sp' 
.include 'Measure.sp'
.VEC 'testbench.vec'
********** Parameters ************
.param
+ vdd = 0.7v
+ vin = 0v
.probe tran v(*)  i(*)
.tran 10p 6n

************ Supply **************
.global VDD 
Vvdd VDD 0 0.7v
*Vva A 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 20ns 40ns)
*Vvb B 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 12ns 24ns)
*Vvc Cin 0 PULSE(0V 0.7V 0ns 0.1ns 0.1ns 15ns 30ns)

********circuit*********
******* 7 nm ***********
*********Inputs(please use these signals as inputs for your desing)*********************************
Xbuf_A A A_in BUFFER
Xbuf_B B B_in BUFFER
Xbuf_C Cin Cin_buf BUFFER
****************************************************************************************************

M1 p4 A_in VDD VDD pmos_rvt m=1
M2 p4 B_in VDD VDD pmos_rvt m=1


M3 p35 B_in VDD VDD pmos_rvt m=1
M5 n46 A_in p35 VDD pmos_rvt m=1

M4 p4 Cin_buf n46 VDD pmos_rvt m=1
M6 n46 Cin_buf n89 GND nmos_rvt m=1


M7 n46 A_in n710 GND nmos_rvt m=1
M10 n710 B_in GND GND nmos_rvt m=1


M8 n89 A_in GND GND nmos_rvt m=1
M9 n89 B_in GND GND nmos_rvt m=1



M11 p11_15 A_in VDD VDD pmos_rvt m=1
M12 p11_15 B_in VDD VDD pmos_rvt m=1
M13 p11_15 Cin_buf VDD VDD pmos_rvt m=1


M14 p14_16 B_in VDD VDD pmos_rvt m=1
M16 p16_17 A_in p14_16 VDD pmos_rvt m=1
M17 n15_18 Cin_buf p16_17 VDD pmos_rvt m=1


M15 n15_18 n46 p11_15 VDD pmos_rvt m=1
M18 n15_18 n46 n18_20 GND nmos_rvt m=1


M20 n18_20 A_in GND GND nmos_rvt m=1
M21 n18_20 B_in GND GND nmos_rvt m=1
M22 n18_20 Cin_buf GND GND nmos_rvt m=1


M19 n15_18 Cin_buf n19_23 GND nmos_rvt m=1
M23 n19_23 A_in n23_24 GND nmos_rvt m=1
M24 n23_24 B_in GND GND nmos_rvt m=1

mpf Carry_out n46 VDD VDD pmos_rvt m=1
mnf Carry_out n46 GND GND nmos_rvt m=1

mpf1 Sum n15_18 VDD VDD pmos_rvt m=1
mnf1 Sum n15_18 GND GND nmos_rvt m=1


*********Outputs (please note the name of the output ports)******************
Cload1 Carry_out GND 5f
Cload2 Sum  GND 5f
*****************************************************************************

************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
