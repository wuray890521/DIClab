###################################################################

# Created by write_sdc on Mon Jan 15 21:21:06 2024

###################################################################
set sdc_version 2.1

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_load -pin_load 0.05 [get_ports out_valid]
set_load -pin_load 0.05 [get_ports {OUT[12]}]
set_load -pin_load 0.05 [get_ports {OUT[11]}]
set_load -pin_load 0.05 [get_ports {OUT[10]}]
set_load -pin_load 0.05 [get_ports {OUT[9]}]
set_load -pin_load 0.05 [get_ports {OUT[8]}]
set_load -pin_load 0.05 [get_ports {OUT[7]}]
set_load -pin_load 0.05 [get_ports {OUT[6]}]
set_load -pin_load 0.05 [get_ports {OUT[5]}]
set_load -pin_load 0.05 [get_ports {OUT[4]}]
set_load -pin_load 0.05 [get_ports {OUT[3]}]
set_load -pin_load 0.05 [get_ports {OUT[2]}]
set_load -pin_load 0.05 [get_ports {OUT[1]}]
set_load -pin_load 0.05 [get_ports {OUT[0]}]
create_clock [get_ports clk]  -period 1000  -waveform {0 500}
set_max_delay 1000  -from [list [get_ports rst_n] [get_ports clk] [get_ports in_valid] [get_ports \
weight_valid] [get_ports {I1[3]}] [get_ports {I1[2]}] [get_ports {I1[1]}]      \
[get_ports {I1[0]}] [get_ports {I2[3]}] [get_ports {I2[2]}] [get_ports         \
{I2[1]}] [get_ports {I2[0]}] [get_ports {I3[3]}] [get_ports {I3[2]}]           \
[get_ports {I3[1]}] [get_ports {I3[0]}] [get_ports {I4[3]}] [get_ports         \
{I4[2]}] [get_ports {I4[1]}] [get_ports {I4[0]}] [get_ports {I5[3]}]           \
[get_ports {I5[2]}] [get_ports {I5[1]}] [get_ports {I5[0]}] [get_ports         \
{I6[3]}] [get_ports {I6[2]}] [get_ports {I6[1]}] [get_ports {I6[0]}]           \
[get_ports {I7[3]}] [get_ports {I7[2]}] [get_ports {I7[1]}] [get_ports         \
{I7[0]}] [get_ports {I8[3]}] [get_ports {I8[2]}] [get_ports {I8[1]}]           \
[get_ports {I8[0]}] [get_ports {I9[3]}] [get_ports {I9[2]}] [get_ports         \
{I9[1]}] [get_ports {I9[0]}] [get_ports {I10[3]}] [get_ports {I10[2]}]         \
[get_ports {I10[1]}] [get_ports {I10[0]}] [get_ports {I11[3]}] [get_ports      \
{I11[2]}] [get_ports {I11[1]}] [get_ports {I11[0]}] [get_ports {I12[3]}]       \
[get_ports {I12[2]}] [get_ports {I12[1]}] [get_ports {I12[0]}] [get_ports      \
{I13[3]}] [get_ports {I13[2]}] [get_ports {I13[1]}] [get_ports {I13[0]}]       \
[get_ports {I14[3]}] [get_ports {I14[2]}] [get_ports {I14[1]}] [get_ports      \
{I14[0]}] [get_ports {I15[3]}] [get_ports {I15[2]}] [get_ports {I15[1]}]       \
[get_ports {I15[0]}] [get_ports {I16[3]}] [get_ports {I16[2]}] [get_ports      \
{I16[1]}] [get_ports {I16[0]}] [get_ports {I17[3]}] [get_ports {I17[2]}]       \
[get_ports {I17[1]}] [get_ports {I17[0]}] [get_ports {I18[3]}] [get_ports      \
{I18[2]}] [get_ports {I18[1]}] [get_ports {I18[0]}] [get_ports {I19[3]}]       \
[get_ports {I19[2]}] [get_ports {I19[1]}] [get_ports {I19[0]}] [get_ports      \
{I20[3]}] [get_ports {I20[2]}] [get_ports {I20[1]}] [get_ports {I20[0]}]       \
[get_ports {I21[3]}] [get_ports {I21[2]}] [get_ports {I21[1]}] [get_ports      \
{I21[0]}] [get_ports {I22[3]}] [get_ports {I22[2]}] [get_ports {I22[1]}]       \
[get_ports {I22[0]}] [get_ports {I23[3]}] [get_ports {I23[2]}] [get_ports      \
{I23[1]}] [get_ports {I23[0]}] [get_ports {I24[3]}] [get_ports {I24[2]}]       \
[get_ports {I24[1]}] [get_ports {I24[0]}] [get_ports {I25[3]}] [get_ports      \
{I25[2]}] [get_ports {I25[1]}] [get_ports {I25[0]}] [get_ports {I26[3]}]       \
[get_ports {I26[2]}] [get_ports {I26[1]}] [get_ports {I26[0]}] [get_ports      \
{I27[3]}] [get_ports {I27[2]}] [get_ports {I27[1]}] [get_ports {I27[0]}]       \
[get_ports {I28[3]}] [get_ports {I28[2]}] [get_ports {I28[1]}] [get_ports      \
{I28[0]}] [get_ports {I29[3]}] [get_ports {I29[2]}] [get_ports {I29[1]}]       \
[get_ports {I29[0]}] [get_ports {I30[3]}] [get_ports {I30[2]}] [get_ports      \
{I30[1]}] [get_ports {I30[0]}] [get_ports {I31[3]}] [get_ports {I31[2]}]       \
[get_ports {I31[1]}] [get_ports {I31[0]}] [get_ports {I32[3]}] [get_ports      \
{I32[2]}] [get_ports {I32[1]}] [get_ports {I32[0]}] [get_ports {W1[3]}]        \
[get_ports {W1[2]}] [get_ports {W1[1]}] [get_ports {W1[0]}] [get_ports         \
{W2[3]}] [get_ports {W2[2]}] [get_ports {W2[1]}] [get_ports {W2[0]}]           \
[get_ports {W3[3]}] [get_ports {W3[2]}] [get_ports {W3[1]}] [get_ports         \
{W3[0]}] [get_ports {W4[3]}] [get_ports {W4[2]}] [get_ports {W4[1]}]           \
[get_ports {W4[0]}] [get_ports {W5[3]}] [get_ports {W5[2]}] [get_ports         \
{W5[1]}] [get_ports {W5[0]}] [get_ports {W6[3]}] [get_ports {W6[2]}]           \
[get_ports {W6[1]}] [get_ports {W6[0]}] [get_ports {W7[3]}] [get_ports         \
{W7[2]}] [get_ports {W7[1]}] [get_ports {W7[0]}] [get_ports {W8[3]}]           \
[get_ports {W8[2]}] [get_ports {W8[1]}] [get_ports {W8[0]}] [get_ports         \
{W9[3]}] [get_ports {W9[2]}] [get_ports {W9[1]}] [get_ports {W9[0]}]           \
[get_ports {W10[3]}] [get_ports {W10[2]}] [get_ports {W10[1]}] [get_ports      \
{W10[0]}] [get_ports {W11[3]}] [get_ports {W11[2]}] [get_ports {W11[1]}]       \
[get_ports {W11[0]}] [get_ports {W12[3]}] [get_ports {W12[2]}] [get_ports      \
{W12[1]}] [get_ports {W12[0]}] [get_ports {W13[3]}] [get_ports {W13[2]}]       \
[get_ports {W13[1]}] [get_ports {W13[0]}] [get_ports {W14[3]}] [get_ports      \
{W14[2]}] [get_ports {W14[1]}] [get_ports {W14[0]}] [get_ports {W15[3]}]       \
[get_ports {W15[2]}] [get_ports {W15[1]}] [get_ports {W15[0]}] [get_ports      \
{W16[3]}] [get_ports {W16[2]}] [get_ports {W16[1]}] [get_ports {W16[0]}]       \
[get_ports {W17[3]}] [get_ports {W17[2]}] [get_ports {W17[1]}] [get_ports      \
{W17[0]}] [get_ports {W18[3]}] [get_ports {W18[2]}] [get_ports {W18[1]}]       \
[get_ports {W18[0]}] [get_ports {W19[3]}] [get_ports {W19[2]}] [get_ports      \
{W19[1]}] [get_ports {W19[0]}] [get_ports {W20[3]}] [get_ports {W20[2]}]       \
[get_ports {W20[1]}] [get_ports {W20[0]}] [get_ports {W21[3]}] [get_ports      \
{W21[2]}] [get_ports {W21[1]}] [get_ports {W21[0]}] [get_ports {W22[3]}]       \
[get_ports {W22[2]}] [get_ports {W22[1]}] [get_ports {W22[0]}] [get_ports      \
{W23[3]}] [get_ports {W23[2]}] [get_ports {W23[1]}] [get_ports {W23[0]}]       \
[get_ports {W24[3]}] [get_ports {W24[2]}] [get_ports {W24[1]}] [get_ports      \
{W24[0]}] [get_ports {W25[3]}] [get_ports {W25[2]}] [get_ports {W25[1]}]       \
[get_ports {W25[0]}] [get_ports {W26[3]}] [get_ports {W26[2]}] [get_ports      \
{W26[1]}] [get_ports {W26[0]}] [get_ports {W27[3]}] [get_ports {W27[2]}]       \
[get_ports {W27[1]}] [get_ports {W27[0]}] [get_ports {W28[3]}] [get_ports      \
{W28[2]}] [get_ports {W28[1]}] [get_ports {W28[0]}] [get_ports {W29[3]}]       \
[get_ports {W29[2]}] [get_ports {W29[1]}] [get_ports {W29[0]}] [get_ports      \
{W30[3]}] [get_ports {W30[2]}] [get_ports {W30[1]}] [get_ports {W30[0]}]       \
[get_ports {W31[3]}] [get_ports {W31[2]}] [get_ports {W31[1]}] [get_ports      \
{W31[0]}] [get_ports {W32[3]}] [get_ports {W32[2]}] [get_ports {W32[1]}]       \
[get_ports {W32[0]}]]  -to [list [get_ports out_valid] [get_ports {OUT[12]}] [get_ports {OUT[11]}]   \
[get_ports {OUT[10]}] [get_ports {OUT[9]}] [get_ports {OUT[8]}] [get_ports     \
{OUT[7]}] [get_ports {OUT[6]}] [get_ports {OUT[5]}] [get_ports {OUT[4]}]       \
[get_ports {OUT[3]}] [get_ports {OUT[2]}] [get_ports {OUT[1]}] [get_ports      \
{OUT[0]}]]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  500  [get_ports in_valid]
set_input_delay -clock clk  500  [get_ports weight_valid]
set_input_delay -clock clk  500  [get_ports {I1[3]}]
set_input_delay -clock clk  500  [get_ports {I1[2]}]
set_input_delay -clock clk  500  [get_ports {I1[1]}]
set_input_delay -clock clk  500  [get_ports {I1[0]}]
set_input_delay -clock clk  500  [get_ports {I2[3]}]
set_input_delay -clock clk  500  [get_ports {I2[2]}]
set_input_delay -clock clk  500  [get_ports {I2[1]}]
set_input_delay -clock clk  500  [get_ports {I2[0]}]
set_input_delay -clock clk  500  [get_ports {I3[3]}]
set_input_delay -clock clk  500  [get_ports {I3[2]}]
set_input_delay -clock clk  500  [get_ports {I3[1]}]
set_input_delay -clock clk  500  [get_ports {I3[0]}]
set_input_delay -clock clk  500  [get_ports {I4[3]}]
set_input_delay -clock clk  500  [get_ports {I4[2]}]
set_input_delay -clock clk  500  [get_ports {I4[1]}]
set_input_delay -clock clk  500  [get_ports {I4[0]}]
set_input_delay -clock clk  500  [get_ports {I5[3]}]
set_input_delay -clock clk  500  [get_ports {I5[2]}]
set_input_delay -clock clk  500  [get_ports {I5[1]}]
set_input_delay -clock clk  500  [get_ports {I5[0]}]
set_input_delay -clock clk  500  [get_ports {I6[3]}]
set_input_delay -clock clk  500  [get_ports {I6[2]}]
set_input_delay -clock clk  500  [get_ports {I6[1]}]
set_input_delay -clock clk  500  [get_ports {I6[0]}]
set_input_delay -clock clk  500  [get_ports {I7[3]}]
set_input_delay -clock clk  500  [get_ports {I7[2]}]
set_input_delay -clock clk  500  [get_ports {I7[1]}]
set_input_delay -clock clk  500  [get_ports {I7[0]}]
set_input_delay -clock clk  500  [get_ports {I8[3]}]
set_input_delay -clock clk  500  [get_ports {I8[2]}]
set_input_delay -clock clk  500  [get_ports {I8[1]}]
set_input_delay -clock clk  500  [get_ports {I8[0]}]
set_input_delay -clock clk  500  [get_ports {I9[3]}]
set_input_delay -clock clk  500  [get_ports {I9[2]}]
set_input_delay -clock clk  500  [get_ports {I9[1]}]
set_input_delay -clock clk  500  [get_ports {I9[0]}]
set_input_delay -clock clk  500  [get_ports {I10[3]}]
set_input_delay -clock clk  500  [get_ports {I10[2]}]
set_input_delay -clock clk  500  [get_ports {I10[1]}]
set_input_delay -clock clk  500  [get_ports {I10[0]}]
set_input_delay -clock clk  500  [get_ports {I11[3]}]
set_input_delay -clock clk  500  [get_ports {I11[2]}]
set_input_delay -clock clk  500  [get_ports {I11[1]}]
set_input_delay -clock clk  500  [get_ports {I11[0]}]
set_input_delay -clock clk  500  [get_ports {I12[3]}]
set_input_delay -clock clk  500  [get_ports {I12[2]}]
set_input_delay -clock clk  500  [get_ports {I12[1]}]
set_input_delay -clock clk  500  [get_ports {I12[0]}]
set_input_delay -clock clk  500  [get_ports {I13[3]}]
set_input_delay -clock clk  500  [get_ports {I13[2]}]
set_input_delay -clock clk  500  [get_ports {I13[1]}]
set_input_delay -clock clk  500  [get_ports {I13[0]}]
set_input_delay -clock clk  500  [get_ports {I14[3]}]
set_input_delay -clock clk  500  [get_ports {I14[2]}]
set_input_delay -clock clk  500  [get_ports {I14[1]}]
set_input_delay -clock clk  500  [get_ports {I14[0]}]
set_input_delay -clock clk  500  [get_ports {I15[3]}]
set_input_delay -clock clk  500  [get_ports {I15[2]}]
set_input_delay -clock clk  500  [get_ports {I15[1]}]
set_input_delay -clock clk  500  [get_ports {I15[0]}]
set_input_delay -clock clk  500  [get_ports {I16[3]}]
set_input_delay -clock clk  500  [get_ports {I16[2]}]
set_input_delay -clock clk  500  [get_ports {I16[1]}]
set_input_delay -clock clk  500  [get_ports {I16[0]}]
set_input_delay -clock clk  500  [get_ports {I17[3]}]
set_input_delay -clock clk  500  [get_ports {I17[2]}]
set_input_delay -clock clk  500  [get_ports {I17[1]}]
set_input_delay -clock clk  500  [get_ports {I17[0]}]
set_input_delay -clock clk  500  [get_ports {I18[3]}]
set_input_delay -clock clk  500  [get_ports {I18[2]}]
set_input_delay -clock clk  500  [get_ports {I18[1]}]
set_input_delay -clock clk  500  [get_ports {I18[0]}]
set_input_delay -clock clk  500  [get_ports {I19[3]}]
set_input_delay -clock clk  500  [get_ports {I19[2]}]
set_input_delay -clock clk  500  [get_ports {I19[1]}]
set_input_delay -clock clk  500  [get_ports {I19[0]}]
set_input_delay -clock clk  500  [get_ports {I20[3]}]
set_input_delay -clock clk  500  [get_ports {I20[2]}]
set_input_delay -clock clk  500  [get_ports {I20[1]}]
set_input_delay -clock clk  500  [get_ports {I20[0]}]
set_input_delay -clock clk  500  [get_ports {I21[3]}]
set_input_delay -clock clk  500  [get_ports {I21[2]}]
set_input_delay -clock clk  500  [get_ports {I21[1]}]
set_input_delay -clock clk  500  [get_ports {I21[0]}]
set_input_delay -clock clk  500  [get_ports {I22[3]}]
set_input_delay -clock clk  500  [get_ports {I22[2]}]
set_input_delay -clock clk  500  [get_ports {I22[1]}]
set_input_delay -clock clk  500  [get_ports {I22[0]}]
set_input_delay -clock clk  500  [get_ports {I23[3]}]
set_input_delay -clock clk  500  [get_ports {I23[2]}]
set_input_delay -clock clk  500  [get_ports {I23[1]}]
set_input_delay -clock clk  500  [get_ports {I23[0]}]
set_input_delay -clock clk  500  [get_ports {I24[3]}]
set_input_delay -clock clk  500  [get_ports {I24[2]}]
set_input_delay -clock clk  500  [get_ports {I24[1]}]
set_input_delay -clock clk  500  [get_ports {I24[0]}]
set_input_delay -clock clk  500  [get_ports {I25[3]}]
set_input_delay -clock clk  500  [get_ports {I25[2]}]
set_input_delay -clock clk  500  [get_ports {I25[1]}]
set_input_delay -clock clk  500  [get_ports {I25[0]}]
set_input_delay -clock clk  500  [get_ports {I26[3]}]
set_input_delay -clock clk  500  [get_ports {I26[2]}]
set_input_delay -clock clk  500  [get_ports {I26[1]}]
set_input_delay -clock clk  500  [get_ports {I26[0]}]
set_input_delay -clock clk  500  [get_ports {I27[3]}]
set_input_delay -clock clk  500  [get_ports {I27[2]}]
set_input_delay -clock clk  500  [get_ports {I27[1]}]
set_input_delay -clock clk  500  [get_ports {I27[0]}]
set_input_delay -clock clk  500  [get_ports {I28[3]}]
set_input_delay -clock clk  500  [get_ports {I28[2]}]
set_input_delay -clock clk  500  [get_ports {I28[1]}]
set_input_delay -clock clk  500  [get_ports {I28[0]}]
set_input_delay -clock clk  500  [get_ports {I29[3]}]
set_input_delay -clock clk  500  [get_ports {I29[2]}]
set_input_delay -clock clk  500  [get_ports {I29[1]}]
set_input_delay -clock clk  500  [get_ports {I29[0]}]
set_input_delay -clock clk  500  [get_ports {I30[3]}]
set_input_delay -clock clk  500  [get_ports {I30[2]}]
set_input_delay -clock clk  500  [get_ports {I30[1]}]
set_input_delay -clock clk  500  [get_ports {I30[0]}]
set_input_delay -clock clk  500  [get_ports {I31[3]}]
set_input_delay -clock clk  500  [get_ports {I31[2]}]
set_input_delay -clock clk  500  [get_ports {I31[1]}]
set_input_delay -clock clk  500  [get_ports {I31[0]}]
set_input_delay -clock clk  500  [get_ports {I32[3]}]
set_input_delay -clock clk  500  [get_ports {I32[2]}]
set_input_delay -clock clk  500  [get_ports {I32[1]}]
set_input_delay -clock clk  500  [get_ports {I32[0]}]
set_input_delay -clock clk  500  [get_ports {W1[3]}]
set_input_delay -clock clk  500  [get_ports {W1[2]}]
set_input_delay -clock clk  500  [get_ports {W1[1]}]
set_input_delay -clock clk  500  [get_ports {W1[0]}]
set_input_delay -clock clk  500  [get_ports {W2[3]}]
set_input_delay -clock clk  500  [get_ports {W2[2]}]
set_input_delay -clock clk  500  [get_ports {W2[1]}]
set_input_delay -clock clk  500  [get_ports {W2[0]}]
set_input_delay -clock clk  500  [get_ports {W3[3]}]
set_input_delay -clock clk  500  [get_ports {W3[2]}]
set_input_delay -clock clk  500  [get_ports {W3[1]}]
set_input_delay -clock clk  500  [get_ports {W3[0]}]
set_input_delay -clock clk  500  [get_ports {W4[3]}]
set_input_delay -clock clk  500  [get_ports {W4[2]}]
set_input_delay -clock clk  500  [get_ports {W4[1]}]
set_input_delay -clock clk  500  [get_ports {W4[0]}]
set_input_delay -clock clk  500  [get_ports {W5[3]}]
set_input_delay -clock clk  500  [get_ports {W5[2]}]
set_input_delay -clock clk  500  [get_ports {W5[1]}]
set_input_delay -clock clk  500  [get_ports {W5[0]}]
set_input_delay -clock clk  500  [get_ports {W6[3]}]
set_input_delay -clock clk  500  [get_ports {W6[2]}]
set_input_delay -clock clk  500  [get_ports {W6[1]}]
set_input_delay -clock clk  500  [get_ports {W6[0]}]
set_input_delay -clock clk  500  [get_ports {W7[3]}]
set_input_delay -clock clk  500  [get_ports {W7[2]}]
set_input_delay -clock clk  500  [get_ports {W7[1]}]
set_input_delay -clock clk  500  [get_ports {W7[0]}]
set_input_delay -clock clk  500  [get_ports {W8[3]}]
set_input_delay -clock clk  500  [get_ports {W8[2]}]
set_input_delay -clock clk  500  [get_ports {W8[1]}]
set_input_delay -clock clk  500  [get_ports {W8[0]}]
set_input_delay -clock clk  500  [get_ports {W9[3]}]
set_input_delay -clock clk  500  [get_ports {W9[2]}]
set_input_delay -clock clk  500  [get_ports {W9[1]}]
set_input_delay -clock clk  500  [get_ports {W9[0]}]
set_input_delay -clock clk  500  [get_ports {W10[3]}]
set_input_delay -clock clk  500  [get_ports {W10[2]}]
set_input_delay -clock clk  500  [get_ports {W10[1]}]
set_input_delay -clock clk  500  [get_ports {W10[0]}]
set_input_delay -clock clk  500  [get_ports {W11[3]}]
set_input_delay -clock clk  500  [get_ports {W11[2]}]
set_input_delay -clock clk  500  [get_ports {W11[1]}]
set_input_delay -clock clk  500  [get_ports {W11[0]}]
set_input_delay -clock clk  500  [get_ports {W12[3]}]
set_input_delay -clock clk  500  [get_ports {W12[2]}]
set_input_delay -clock clk  500  [get_ports {W12[1]}]
set_input_delay -clock clk  500  [get_ports {W12[0]}]
set_input_delay -clock clk  500  [get_ports {W13[3]}]
set_input_delay -clock clk  500  [get_ports {W13[2]}]
set_input_delay -clock clk  500  [get_ports {W13[1]}]
set_input_delay -clock clk  500  [get_ports {W13[0]}]
set_input_delay -clock clk  500  [get_ports {W14[3]}]
set_input_delay -clock clk  500  [get_ports {W14[2]}]
set_input_delay -clock clk  500  [get_ports {W14[1]}]
set_input_delay -clock clk  500  [get_ports {W14[0]}]
set_input_delay -clock clk  500  [get_ports {W15[3]}]
set_input_delay -clock clk  500  [get_ports {W15[2]}]
set_input_delay -clock clk  500  [get_ports {W15[1]}]
set_input_delay -clock clk  500  [get_ports {W15[0]}]
set_input_delay -clock clk  500  [get_ports {W16[3]}]
set_input_delay -clock clk  500  [get_ports {W16[2]}]
set_input_delay -clock clk  500  [get_ports {W16[1]}]
set_input_delay -clock clk  500  [get_ports {W16[0]}]
set_input_delay -clock clk  500  [get_ports {W17[3]}]
set_input_delay -clock clk  500  [get_ports {W17[2]}]
set_input_delay -clock clk  500  [get_ports {W17[1]}]
set_input_delay -clock clk  500  [get_ports {W17[0]}]
set_input_delay -clock clk  500  [get_ports {W18[3]}]
set_input_delay -clock clk  500  [get_ports {W18[2]}]
set_input_delay -clock clk  500  [get_ports {W18[1]}]
set_input_delay -clock clk  500  [get_ports {W18[0]}]
set_input_delay -clock clk  500  [get_ports {W19[3]}]
set_input_delay -clock clk  500  [get_ports {W19[2]}]
set_input_delay -clock clk  500  [get_ports {W19[1]}]
set_input_delay -clock clk  500  [get_ports {W19[0]}]
set_input_delay -clock clk  500  [get_ports {W20[3]}]
set_input_delay -clock clk  500  [get_ports {W20[2]}]
set_input_delay -clock clk  500  [get_ports {W20[1]}]
set_input_delay -clock clk  500  [get_ports {W20[0]}]
set_input_delay -clock clk  500  [get_ports {W21[3]}]
set_input_delay -clock clk  500  [get_ports {W21[2]}]
set_input_delay -clock clk  500  [get_ports {W21[1]}]
set_input_delay -clock clk  500  [get_ports {W21[0]}]
set_input_delay -clock clk  500  [get_ports {W22[3]}]
set_input_delay -clock clk  500  [get_ports {W22[2]}]
set_input_delay -clock clk  500  [get_ports {W22[1]}]
set_input_delay -clock clk  500  [get_ports {W22[0]}]
set_input_delay -clock clk  500  [get_ports {W23[3]}]
set_input_delay -clock clk  500  [get_ports {W23[2]}]
set_input_delay -clock clk  500  [get_ports {W23[1]}]
set_input_delay -clock clk  500  [get_ports {W23[0]}]
set_input_delay -clock clk  500  [get_ports {W24[3]}]
set_input_delay -clock clk  500  [get_ports {W24[2]}]
set_input_delay -clock clk  500  [get_ports {W24[1]}]
set_input_delay -clock clk  500  [get_ports {W24[0]}]
set_input_delay -clock clk  500  [get_ports {W25[3]}]
set_input_delay -clock clk  500  [get_ports {W25[2]}]
set_input_delay -clock clk  500  [get_ports {W25[1]}]
set_input_delay -clock clk  500  [get_ports {W25[0]}]
set_input_delay -clock clk  500  [get_ports {W26[3]}]
set_input_delay -clock clk  500  [get_ports {W26[2]}]
set_input_delay -clock clk  500  [get_ports {W26[1]}]
set_input_delay -clock clk  500  [get_ports {W26[0]}]
set_input_delay -clock clk  500  [get_ports {W27[3]}]
set_input_delay -clock clk  500  [get_ports {W27[2]}]
set_input_delay -clock clk  500  [get_ports {W27[1]}]
set_input_delay -clock clk  500  [get_ports {W27[0]}]
set_input_delay -clock clk  500  [get_ports {W28[3]}]
set_input_delay -clock clk  500  [get_ports {W28[2]}]
set_input_delay -clock clk  500  [get_ports {W28[1]}]
set_input_delay -clock clk  500  [get_ports {W28[0]}]
set_input_delay -clock clk  500  [get_ports {W29[3]}]
set_input_delay -clock clk  500  [get_ports {W29[2]}]
set_input_delay -clock clk  500  [get_ports {W29[1]}]
set_input_delay -clock clk  500  [get_ports {W29[0]}]
set_input_delay -clock clk  500  [get_ports {W30[3]}]
set_input_delay -clock clk  500  [get_ports {W30[2]}]
set_input_delay -clock clk  500  [get_ports {W30[1]}]
set_input_delay -clock clk  500  [get_ports {W30[0]}]
set_input_delay -clock clk  500  [get_ports {W31[3]}]
set_input_delay -clock clk  500  [get_ports {W31[2]}]
set_input_delay -clock clk  500  [get_ports {W31[1]}]
set_input_delay -clock clk  500  [get_ports {W31[0]}]
set_input_delay -clock clk  500  [get_ports {W32[3]}]
set_input_delay -clock clk  500  [get_ports {W32[2]}]
set_input_delay -clock clk  500  [get_ports {W32[1]}]
set_input_delay -clock clk  500  [get_ports {W32[0]}]
set_output_delay -clock clk  500  [get_ports out_valid]
set_output_delay -clock clk  500  [get_ports {OUT[12]}]
set_output_delay -clock clk  500  [get_ports {OUT[11]}]
set_output_delay -clock clk  500  [get_ports {OUT[10]}]
set_output_delay -clock clk  500  [get_ports {OUT[9]}]
set_output_delay -clock clk  500  [get_ports {OUT[8]}]
set_output_delay -clock clk  500  [get_ports {OUT[7]}]
set_output_delay -clock clk  500  [get_ports {OUT[6]}]
set_output_delay -clock clk  500  [get_ports {OUT[5]}]
set_output_delay -clock clk  500  [get_ports {OUT[4]}]
set_output_delay -clock clk  500  [get_ports {OUT[3]}]
set_output_delay -clock clk  500  [get_ports {OUT[2]}]
set_output_delay -clock clk  500  [get_ports {OUT[1]}]
set_output_delay -clock clk  500  [get_ports {OUT[0]}]
