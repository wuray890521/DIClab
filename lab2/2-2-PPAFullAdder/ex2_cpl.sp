 ****** Excercise 2-2 cpl ************
.include '7nm_TT.pm'
.include 'INV_NAND.sp'
.include 'Measure.sp'
*.VEC 'testbench.vec'

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
Vva A 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 4ns 8ns)
Vvb B 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 2ns 4ns)
Vvc Cin 0 PULSE(0V 0.7V 0.1ns 0.1ns 0.1ns 5ns 10ns)
********circuit*********
******* 7 nm ***********
MinvAp A_inv A VDD VDD pmos_rvt pmos=1
MinvAn A_inv A GND GND nmos_rvt nmos=1
MinvBp B_inv B VDD VDD pmos_rvt pmos=1
MinvBn B_inv B GND GND nmos_rvt nmos=1
MinvCinp Cin_inv Cin VDD VDD pmos_rvt pmos=1
MinvCinn Cin_inv Cin GND GND nmos_rvt nmos=1

M1 d1 A B_inv GND nmos_rvt nmos=1
M2 d1 A_inv B GND nmos_rvt nmos=1
M3 d2 A B GND nmos_rvt nmos=1
M4 d2 A_inv B_inv GND nmos_rvt nmos=1

M5 d3 Cin_inv d1 GND nmos_rvt nmos=1
M6 d3 Cin d2 GND nmos_rvt nmos=1
M7 d4 Cin d1 GND nmos_rvt nmos=1
M8 d4 Cin_inv d2 GND nmos_rvt nmos=1

M9 d4 d3 VDD VDD pmos_rvt pmos=1
M10 d3 d4 VDD VDD pmos_rvt pmos=1

M11 Sum_inv d3 VDD VDD pmos_rvt pmos=2
M12 Sum_inv d3 GND GND nmos_rvt nmos=1
M13 Sum d4 VDD VDD pmos_rvt pmos=2
M14 Sum d4 GND GND nmos_rvt nmos=1



M15 d5 A B GND nmos_rvt nmos=1
M16 d5 A_inv GND GND nmos_rvt nmos=1
M17 d6 A GND GND nmos_rvt nmos=1
M18 d6 A_inv B_inv GND nmos_rvt nmos=1
M19 d7 A VDD GND nmos_rvt nmos=1
M20 d7 A_inv B GND nmos_rvt nmos=1
M21 d8 A B_inv GND nmos_rvt nmos=1
M22 d8 A_inv VDD GND nmos_rvt nmos=1

M23 d9 Cin_inv d5 GND nmos_rvt nmos=1
M24 d9 Cin d7 GND nmos_rvt nmos=1
M25 d10 Cin_inv d8 GND nmos_rvt nmos=1
M26 d10 Cin d6 GND nmos_rvt nmos=1

M27 d9 d10 VDD VDD pmos_rvt pmos=1
M28 d10 d9 VDD VDD pmos_rvt pmos=1

M29 Cout_inv d9 VDD VDD pmos_rvt pmos=1
M30 Cout_inv d9 GND GND nmos_rvt nmos=1
M31 Cout d10 VDD VDD pmos_rvt pmos=1
M32 Cout d10 GND GND nmos_rvt nmos=1




C1 GND Sum 5fF
C2 GND Cout 5fF




************** simulation *********************
.op
.option post
.options probe
.probe v(*) i(*)
.option accurate

.end
