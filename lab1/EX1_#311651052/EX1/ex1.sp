****** Excercise 1-1 ************

.include '16mos.pm'
.include '7nm_TT.pm'

************** simulation *********************
.option post probe
.option accurate
.op
.temp 25

.probe dc v(*) i(*) 
+ idn=par('abs(Id(mn))')
+ idp=par('abs(Id(mp))')

.dc vgs 0V 0.7V 0.01V 

********** Parameters ************
.param 
+ width = 16nm

************ Supply **************
Vvdd vdd 0 0.7v
Vgnd gnd 0 0v
Vdn  dn  0 0.7v
Vdp  dp  0 0v
Vgs g gnd 0
*Vgsp gsp gnd vgs

*Vin in gnd 

******* 16 nm ***********
Mn	dn	g	gnd	gnd	NMOS	w=16nm	l=16nm	
Mp	dp	g	vdd	vdd	PMOS	w=16nm	l=16nm	
******* 7 nm ***********
Mn1		dn	g	gnd	gnd	nmos_rvt	m=1
Mp1		dp	g	vdd	vdd	pmos_rvt	m=1

*********** designing beta=1 inverter ***********
*Mn	vdd	g	gnd	gnd	NMOS	w=16nm	l=16nm	
*Mp	vdd	g	vdd	vdd	PMOS	w=width	l=16nm	


.end 
