*NAND
.subckt NAND A B X 
Mpf X B VDD VDD pmos_rvt nfin=2
Mpf1 X A VDD VDD pmos_rvt nfin=2
Mmf NN A GND GND nmos_rvt nfin=3
Mnf1 X B NN GND nmos_rvt nfin=3
.ends

*INV
.subckt INV A X 
mpf X A VDD VDD pmos_rvt m=2
mnf X A GND GND nmos_rvt m=3
.ends

*AND
.subckt AND A B X1 
Xand A B X NAND
Xinv X X1 INV
.ends

*NOR
.subckt NOR A B X
Mpf PP B VDD VDD pmos_rvt nfin=2
Mpf1 X A PP VDD pmos_rvt nfin=2
Mnf X A GND GND nmos_rvt nfin=3
Mnf1 X B GND GND nmos_rvt nfin=3
.ends

*OR
.subckt OR A B X1 
Xnor A B X NOR
Xinv X X1 INV
.ends

*XOR
.subckt XOR A B X3 
Xinv A A1 INV
Xinv1 B B1 INV
Xand A1 B X1 AND
Xand1 A B1 X2 AND
Xor X1 X2 X3 OR
.ends

*buffer
.subckt BUFFER in out
Xinv in A1 INV
Xinv1 A1 out INV
.ends