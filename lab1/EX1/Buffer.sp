.protect
.include '7nm_TT.pm'
.unprotect

.subckt inverter vin vout1
	mpf      vout1    vin     vdd     vdd     pmos_rvt    m=2
	mnf      vout1    vin     gnd     gnd     nmos_rvt    m=1
.ends

.subckt buffer vin vout2
	xinv1	vin	vout	inverter
	xinv2	vout	vout2	inverter
.ends