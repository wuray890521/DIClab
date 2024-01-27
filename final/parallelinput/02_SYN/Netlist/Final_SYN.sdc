###################################################################

# Created by write_sdc on Wed Jan 17 19:28:22 2024

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
weight_valid] [get_ports {I[127]}] [get_ports {I[126]}] [get_ports {I[125]}]   \
[get_ports {I[124]}] [get_ports {I[123]}] [get_ports {I[122]}] [get_ports      \
{I[121]}] [get_ports {I[120]}] [get_ports {I[119]}] [get_ports {I[118]}]       \
[get_ports {I[117]}] [get_ports {I[116]}] [get_ports {I[115]}] [get_ports      \
{I[114]}] [get_ports {I[113]}] [get_ports {I[112]}] [get_ports {I[111]}]       \
[get_ports {I[110]}] [get_ports {I[109]}] [get_ports {I[108]}] [get_ports      \
{I[107]}] [get_ports {I[106]}] [get_ports {I[105]}] [get_ports {I[104]}]       \
[get_ports {I[103]}] [get_ports {I[102]}] [get_ports {I[101]}] [get_ports      \
{I[100]}] [get_ports {I[99]}] [get_ports {I[98]}] [get_ports {I[97]}]          \
[get_ports {I[96]}] [get_ports {I[95]}] [get_ports {I[94]}] [get_ports         \
{I[93]}] [get_ports {I[92]}] [get_ports {I[91]}] [get_ports {I[90]}]           \
[get_ports {I[89]}] [get_ports {I[88]}] [get_ports {I[87]}] [get_ports         \
{I[86]}] [get_ports {I[85]}] [get_ports {I[84]}] [get_ports {I[83]}]           \
[get_ports {I[82]}] [get_ports {I[81]}] [get_ports {I[80]}] [get_ports         \
{I[79]}] [get_ports {I[78]}] [get_ports {I[77]}] [get_ports {I[76]}]           \
[get_ports {I[75]}] [get_ports {I[74]}] [get_ports {I[73]}] [get_ports         \
{I[72]}] [get_ports {I[71]}] [get_ports {I[70]}] [get_ports {I[69]}]           \
[get_ports {I[68]}] [get_ports {I[67]}] [get_ports {I[66]}] [get_ports         \
{I[65]}] [get_ports {I[64]}] [get_ports {I[63]}] [get_ports {I[62]}]           \
[get_ports {I[61]}] [get_ports {I[60]}] [get_ports {I[59]}] [get_ports         \
{I[58]}] [get_ports {I[57]}] [get_ports {I[56]}] [get_ports {I[55]}]           \
[get_ports {I[54]}] [get_ports {I[53]}] [get_ports {I[52]}] [get_ports         \
{I[51]}] [get_ports {I[50]}] [get_ports {I[49]}] [get_ports {I[48]}]           \
[get_ports {I[47]}] [get_ports {I[46]}] [get_ports {I[45]}] [get_ports         \
{I[44]}] [get_ports {I[43]}] [get_ports {I[42]}] [get_ports {I[41]}]           \
[get_ports {I[40]}] [get_ports {I[39]}] [get_ports {I[38]}] [get_ports         \
{I[37]}] [get_ports {I[36]}] [get_ports {I[35]}] [get_ports {I[34]}]           \
[get_ports {I[33]}] [get_ports {I[32]}] [get_ports {I[31]}] [get_ports         \
{I[30]}] [get_ports {I[29]}] [get_ports {I[28]}] [get_ports {I[27]}]           \
[get_ports {I[26]}] [get_ports {I[25]}] [get_ports {I[24]}] [get_ports         \
{I[23]}] [get_ports {I[22]}] [get_ports {I[21]}] [get_ports {I[20]}]           \
[get_ports {I[19]}] [get_ports {I[18]}] [get_ports {I[17]}] [get_ports         \
{I[16]}] [get_ports {I[15]}] [get_ports {I[14]}] [get_ports {I[13]}]           \
[get_ports {I[12]}] [get_ports {I[11]}] [get_ports {I[10]}] [get_ports {I[9]}] \
[get_ports {I[8]}] [get_ports {I[7]}] [get_ports {I[6]}] [get_ports {I[5]}]    \
[get_ports {I[4]}] [get_ports {I[3]}] [get_ports {I[2]}] [get_ports {I[1]}]    \
[get_ports {I[0]}] [get_ports {W[127]}] [get_ports {W[126]}] [get_ports        \
{W[125]}] [get_ports {W[124]}] [get_ports {W[123]}] [get_ports {W[122]}]       \
[get_ports {W[121]}] [get_ports {W[120]}] [get_ports {W[119]}] [get_ports      \
{W[118]}] [get_ports {W[117]}] [get_ports {W[116]}] [get_ports {W[115]}]       \
[get_ports {W[114]}] [get_ports {W[113]}] [get_ports {W[112]}] [get_ports      \
{W[111]}] [get_ports {W[110]}] [get_ports {W[109]}] [get_ports {W[108]}]       \
[get_ports {W[107]}] [get_ports {W[106]}] [get_ports {W[105]}] [get_ports      \
{W[104]}] [get_ports {W[103]}] [get_ports {W[102]}] [get_ports {W[101]}]       \
[get_ports {W[100]}] [get_ports {W[99]}] [get_ports {W[98]}] [get_ports        \
{W[97]}] [get_ports {W[96]}] [get_ports {W[95]}] [get_ports {W[94]}]           \
[get_ports {W[93]}] [get_ports {W[92]}] [get_ports {W[91]}] [get_ports         \
{W[90]}] [get_ports {W[89]}] [get_ports {W[88]}] [get_ports {W[87]}]           \
[get_ports {W[86]}] [get_ports {W[85]}] [get_ports {W[84]}] [get_ports         \
{W[83]}] [get_ports {W[82]}] [get_ports {W[81]}] [get_ports {W[80]}]           \
[get_ports {W[79]}] [get_ports {W[78]}] [get_ports {W[77]}] [get_ports         \
{W[76]}] [get_ports {W[75]}] [get_ports {W[74]}] [get_ports {W[73]}]           \
[get_ports {W[72]}] [get_ports {W[71]}] [get_ports {W[70]}] [get_ports         \
{W[69]}] [get_ports {W[68]}] [get_ports {W[67]}] [get_ports {W[66]}]           \
[get_ports {W[65]}] [get_ports {W[64]}] [get_ports {W[63]}] [get_ports         \
{W[62]}] [get_ports {W[61]}] [get_ports {W[60]}] [get_ports {W[59]}]           \
[get_ports {W[58]}] [get_ports {W[57]}] [get_ports {W[56]}] [get_ports         \
{W[55]}] [get_ports {W[54]}] [get_ports {W[53]}] [get_ports {W[52]}]           \
[get_ports {W[51]}] [get_ports {W[50]}] [get_ports {W[49]}] [get_ports         \
{W[48]}] [get_ports {W[47]}] [get_ports {W[46]}] [get_ports {W[45]}]           \
[get_ports {W[44]}] [get_ports {W[43]}] [get_ports {W[42]}] [get_ports         \
{W[41]}] [get_ports {W[40]}] [get_ports {W[39]}] [get_ports {W[38]}]           \
[get_ports {W[37]}] [get_ports {W[36]}] [get_ports {W[35]}] [get_ports         \
{W[34]}] [get_ports {W[33]}] [get_ports {W[32]}] [get_ports {W[31]}]           \
[get_ports {W[30]}] [get_ports {W[29]}] [get_ports {W[28]}] [get_ports         \
{W[27]}] [get_ports {W[26]}] [get_ports {W[25]}] [get_ports {W[24]}]           \
[get_ports {W[23]}] [get_ports {W[22]}] [get_ports {W[21]}] [get_ports         \
{W[20]}] [get_ports {W[19]}] [get_ports {W[18]}] [get_ports {W[17]}]           \
[get_ports {W[16]}] [get_ports {W[15]}] [get_ports {W[14]}] [get_ports         \
{W[13]}] [get_ports {W[12]}] [get_ports {W[11]}] [get_ports {W[10]}]           \
[get_ports {W[9]}] [get_ports {W[8]}] [get_ports {W[7]}] [get_ports {W[6]}]    \
[get_ports {W[5]}] [get_ports {W[4]}] [get_ports {W[3]}] [get_ports {W[2]}]    \
[get_ports {W[1]}] [get_ports {W[0]}]]  -to [list [get_ports out_valid] [get_ports {OUT[12]}] [get_ports {OUT[11]}]   \
[get_ports {OUT[10]}] [get_ports {OUT[9]}] [get_ports {OUT[8]}] [get_ports     \
{OUT[7]}] [get_ports {OUT[6]}] [get_ports {OUT[5]}] [get_ports {OUT[4]}]       \
[get_ports {OUT[3]}] [get_ports {OUT[2]}] [get_ports {OUT[1]}] [get_ports      \
{OUT[0]}]]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  500  [get_ports in_valid]
set_input_delay -clock clk  500  [get_ports weight_valid]
set_input_delay -clock clk  500  [get_ports {I[127]}]
set_input_delay -clock clk  500  [get_ports {I[126]}]
set_input_delay -clock clk  500  [get_ports {I[125]}]
set_input_delay -clock clk  500  [get_ports {I[124]}]
set_input_delay -clock clk  500  [get_ports {I[123]}]
set_input_delay -clock clk  500  [get_ports {I[122]}]
set_input_delay -clock clk  500  [get_ports {I[121]}]
set_input_delay -clock clk  500  [get_ports {I[120]}]
set_input_delay -clock clk  500  [get_ports {I[119]}]
set_input_delay -clock clk  500  [get_ports {I[118]}]
set_input_delay -clock clk  500  [get_ports {I[117]}]
set_input_delay -clock clk  500  [get_ports {I[116]}]
set_input_delay -clock clk  500  [get_ports {I[115]}]
set_input_delay -clock clk  500  [get_ports {I[114]}]
set_input_delay -clock clk  500  [get_ports {I[113]}]
set_input_delay -clock clk  500  [get_ports {I[112]}]
set_input_delay -clock clk  500  [get_ports {I[111]}]
set_input_delay -clock clk  500  [get_ports {I[110]}]
set_input_delay -clock clk  500  [get_ports {I[109]}]
set_input_delay -clock clk  500  [get_ports {I[108]}]
set_input_delay -clock clk  500  [get_ports {I[107]}]
set_input_delay -clock clk  500  [get_ports {I[106]}]
set_input_delay -clock clk  500  [get_ports {I[105]}]
set_input_delay -clock clk  500  [get_ports {I[104]}]
set_input_delay -clock clk  500  [get_ports {I[103]}]
set_input_delay -clock clk  500  [get_ports {I[102]}]
set_input_delay -clock clk  500  [get_ports {I[101]}]
set_input_delay -clock clk  500  [get_ports {I[100]}]
set_input_delay -clock clk  500  [get_ports {I[99]}]
set_input_delay -clock clk  500  [get_ports {I[98]}]
set_input_delay -clock clk  500  [get_ports {I[97]}]
set_input_delay -clock clk  500  [get_ports {I[96]}]
set_input_delay -clock clk  500  [get_ports {I[95]}]
set_input_delay -clock clk  500  [get_ports {I[94]}]
set_input_delay -clock clk  500  [get_ports {I[93]}]
set_input_delay -clock clk  500  [get_ports {I[92]}]
set_input_delay -clock clk  500  [get_ports {I[91]}]
set_input_delay -clock clk  500  [get_ports {I[90]}]
set_input_delay -clock clk  500  [get_ports {I[89]}]
set_input_delay -clock clk  500  [get_ports {I[88]}]
set_input_delay -clock clk  500  [get_ports {I[87]}]
set_input_delay -clock clk  500  [get_ports {I[86]}]
set_input_delay -clock clk  500  [get_ports {I[85]}]
set_input_delay -clock clk  500  [get_ports {I[84]}]
set_input_delay -clock clk  500  [get_ports {I[83]}]
set_input_delay -clock clk  500  [get_ports {I[82]}]
set_input_delay -clock clk  500  [get_ports {I[81]}]
set_input_delay -clock clk  500  [get_ports {I[80]}]
set_input_delay -clock clk  500  [get_ports {I[79]}]
set_input_delay -clock clk  500  [get_ports {I[78]}]
set_input_delay -clock clk  500  [get_ports {I[77]}]
set_input_delay -clock clk  500  [get_ports {I[76]}]
set_input_delay -clock clk  500  [get_ports {I[75]}]
set_input_delay -clock clk  500  [get_ports {I[74]}]
set_input_delay -clock clk  500  [get_ports {I[73]}]
set_input_delay -clock clk  500  [get_ports {I[72]}]
set_input_delay -clock clk  500  [get_ports {I[71]}]
set_input_delay -clock clk  500  [get_ports {I[70]}]
set_input_delay -clock clk  500  [get_ports {I[69]}]
set_input_delay -clock clk  500  [get_ports {I[68]}]
set_input_delay -clock clk  500  [get_ports {I[67]}]
set_input_delay -clock clk  500  [get_ports {I[66]}]
set_input_delay -clock clk  500  [get_ports {I[65]}]
set_input_delay -clock clk  500  [get_ports {I[64]}]
set_input_delay -clock clk  500  [get_ports {I[63]}]
set_input_delay -clock clk  500  [get_ports {I[62]}]
set_input_delay -clock clk  500  [get_ports {I[61]}]
set_input_delay -clock clk  500  [get_ports {I[60]}]
set_input_delay -clock clk  500  [get_ports {I[59]}]
set_input_delay -clock clk  500  [get_ports {I[58]}]
set_input_delay -clock clk  500  [get_ports {I[57]}]
set_input_delay -clock clk  500  [get_ports {I[56]}]
set_input_delay -clock clk  500  [get_ports {I[55]}]
set_input_delay -clock clk  500  [get_ports {I[54]}]
set_input_delay -clock clk  500  [get_ports {I[53]}]
set_input_delay -clock clk  500  [get_ports {I[52]}]
set_input_delay -clock clk  500  [get_ports {I[51]}]
set_input_delay -clock clk  500  [get_ports {I[50]}]
set_input_delay -clock clk  500  [get_ports {I[49]}]
set_input_delay -clock clk  500  [get_ports {I[48]}]
set_input_delay -clock clk  500  [get_ports {I[47]}]
set_input_delay -clock clk  500  [get_ports {I[46]}]
set_input_delay -clock clk  500  [get_ports {I[45]}]
set_input_delay -clock clk  500  [get_ports {I[44]}]
set_input_delay -clock clk  500  [get_ports {I[43]}]
set_input_delay -clock clk  500  [get_ports {I[42]}]
set_input_delay -clock clk  500  [get_ports {I[41]}]
set_input_delay -clock clk  500  [get_ports {I[40]}]
set_input_delay -clock clk  500  [get_ports {I[39]}]
set_input_delay -clock clk  500  [get_ports {I[38]}]
set_input_delay -clock clk  500  [get_ports {I[37]}]
set_input_delay -clock clk  500  [get_ports {I[36]}]
set_input_delay -clock clk  500  [get_ports {I[35]}]
set_input_delay -clock clk  500  [get_ports {I[34]}]
set_input_delay -clock clk  500  [get_ports {I[33]}]
set_input_delay -clock clk  500  [get_ports {I[32]}]
set_input_delay -clock clk  500  [get_ports {I[31]}]
set_input_delay -clock clk  500  [get_ports {I[30]}]
set_input_delay -clock clk  500  [get_ports {I[29]}]
set_input_delay -clock clk  500  [get_ports {I[28]}]
set_input_delay -clock clk  500  [get_ports {I[27]}]
set_input_delay -clock clk  500  [get_ports {I[26]}]
set_input_delay -clock clk  500  [get_ports {I[25]}]
set_input_delay -clock clk  500  [get_ports {I[24]}]
set_input_delay -clock clk  500  [get_ports {I[23]}]
set_input_delay -clock clk  500  [get_ports {I[22]}]
set_input_delay -clock clk  500  [get_ports {I[21]}]
set_input_delay -clock clk  500  [get_ports {I[20]}]
set_input_delay -clock clk  500  [get_ports {I[19]}]
set_input_delay -clock clk  500  [get_ports {I[18]}]
set_input_delay -clock clk  500  [get_ports {I[17]}]
set_input_delay -clock clk  500  [get_ports {I[16]}]
set_input_delay -clock clk  500  [get_ports {I[15]}]
set_input_delay -clock clk  500  [get_ports {I[14]}]
set_input_delay -clock clk  500  [get_ports {I[13]}]
set_input_delay -clock clk  500  [get_ports {I[12]}]
set_input_delay -clock clk  500  [get_ports {I[11]}]
set_input_delay -clock clk  500  [get_ports {I[10]}]
set_input_delay -clock clk  500  [get_ports {I[9]}]
set_input_delay -clock clk  500  [get_ports {I[8]}]
set_input_delay -clock clk  500  [get_ports {I[7]}]
set_input_delay -clock clk  500  [get_ports {I[6]}]
set_input_delay -clock clk  500  [get_ports {I[5]}]
set_input_delay -clock clk  500  [get_ports {I[4]}]
set_input_delay -clock clk  500  [get_ports {I[3]}]
set_input_delay -clock clk  500  [get_ports {I[2]}]
set_input_delay -clock clk  500  [get_ports {I[1]}]
set_input_delay -clock clk  500  [get_ports {I[0]}]
set_input_delay -clock clk  500  [get_ports {W[127]}]
set_input_delay -clock clk  500  [get_ports {W[126]}]
set_input_delay -clock clk  500  [get_ports {W[125]}]
set_input_delay -clock clk  500  [get_ports {W[124]}]
set_input_delay -clock clk  500  [get_ports {W[123]}]
set_input_delay -clock clk  500  [get_ports {W[122]}]
set_input_delay -clock clk  500  [get_ports {W[121]}]
set_input_delay -clock clk  500  [get_ports {W[120]}]
set_input_delay -clock clk  500  [get_ports {W[119]}]
set_input_delay -clock clk  500  [get_ports {W[118]}]
set_input_delay -clock clk  500  [get_ports {W[117]}]
set_input_delay -clock clk  500  [get_ports {W[116]}]
set_input_delay -clock clk  500  [get_ports {W[115]}]
set_input_delay -clock clk  500  [get_ports {W[114]}]
set_input_delay -clock clk  500  [get_ports {W[113]}]
set_input_delay -clock clk  500  [get_ports {W[112]}]
set_input_delay -clock clk  500  [get_ports {W[111]}]
set_input_delay -clock clk  500  [get_ports {W[110]}]
set_input_delay -clock clk  500  [get_ports {W[109]}]
set_input_delay -clock clk  500  [get_ports {W[108]}]
set_input_delay -clock clk  500  [get_ports {W[107]}]
set_input_delay -clock clk  500  [get_ports {W[106]}]
set_input_delay -clock clk  500  [get_ports {W[105]}]
set_input_delay -clock clk  500  [get_ports {W[104]}]
set_input_delay -clock clk  500  [get_ports {W[103]}]
set_input_delay -clock clk  500  [get_ports {W[102]}]
set_input_delay -clock clk  500  [get_ports {W[101]}]
set_input_delay -clock clk  500  [get_ports {W[100]}]
set_input_delay -clock clk  500  [get_ports {W[99]}]
set_input_delay -clock clk  500  [get_ports {W[98]}]
set_input_delay -clock clk  500  [get_ports {W[97]}]
set_input_delay -clock clk  500  [get_ports {W[96]}]
set_input_delay -clock clk  500  [get_ports {W[95]}]
set_input_delay -clock clk  500  [get_ports {W[94]}]
set_input_delay -clock clk  500  [get_ports {W[93]}]
set_input_delay -clock clk  500  [get_ports {W[92]}]
set_input_delay -clock clk  500  [get_ports {W[91]}]
set_input_delay -clock clk  500  [get_ports {W[90]}]
set_input_delay -clock clk  500  [get_ports {W[89]}]
set_input_delay -clock clk  500  [get_ports {W[88]}]
set_input_delay -clock clk  500  [get_ports {W[87]}]
set_input_delay -clock clk  500  [get_ports {W[86]}]
set_input_delay -clock clk  500  [get_ports {W[85]}]
set_input_delay -clock clk  500  [get_ports {W[84]}]
set_input_delay -clock clk  500  [get_ports {W[83]}]
set_input_delay -clock clk  500  [get_ports {W[82]}]
set_input_delay -clock clk  500  [get_ports {W[81]}]
set_input_delay -clock clk  500  [get_ports {W[80]}]
set_input_delay -clock clk  500  [get_ports {W[79]}]
set_input_delay -clock clk  500  [get_ports {W[78]}]
set_input_delay -clock clk  500  [get_ports {W[77]}]
set_input_delay -clock clk  500  [get_ports {W[76]}]
set_input_delay -clock clk  500  [get_ports {W[75]}]
set_input_delay -clock clk  500  [get_ports {W[74]}]
set_input_delay -clock clk  500  [get_ports {W[73]}]
set_input_delay -clock clk  500  [get_ports {W[72]}]
set_input_delay -clock clk  500  [get_ports {W[71]}]
set_input_delay -clock clk  500  [get_ports {W[70]}]
set_input_delay -clock clk  500  [get_ports {W[69]}]
set_input_delay -clock clk  500  [get_ports {W[68]}]
set_input_delay -clock clk  500  [get_ports {W[67]}]
set_input_delay -clock clk  500  [get_ports {W[66]}]
set_input_delay -clock clk  500  [get_ports {W[65]}]
set_input_delay -clock clk  500  [get_ports {W[64]}]
set_input_delay -clock clk  500  [get_ports {W[63]}]
set_input_delay -clock clk  500  [get_ports {W[62]}]
set_input_delay -clock clk  500  [get_ports {W[61]}]
set_input_delay -clock clk  500  [get_ports {W[60]}]
set_input_delay -clock clk  500  [get_ports {W[59]}]
set_input_delay -clock clk  500  [get_ports {W[58]}]
set_input_delay -clock clk  500  [get_ports {W[57]}]
set_input_delay -clock clk  500  [get_ports {W[56]}]
set_input_delay -clock clk  500  [get_ports {W[55]}]
set_input_delay -clock clk  500  [get_ports {W[54]}]
set_input_delay -clock clk  500  [get_ports {W[53]}]
set_input_delay -clock clk  500  [get_ports {W[52]}]
set_input_delay -clock clk  500  [get_ports {W[51]}]
set_input_delay -clock clk  500  [get_ports {W[50]}]
set_input_delay -clock clk  500  [get_ports {W[49]}]
set_input_delay -clock clk  500  [get_ports {W[48]}]
set_input_delay -clock clk  500  [get_ports {W[47]}]
set_input_delay -clock clk  500  [get_ports {W[46]}]
set_input_delay -clock clk  500  [get_ports {W[45]}]
set_input_delay -clock clk  500  [get_ports {W[44]}]
set_input_delay -clock clk  500  [get_ports {W[43]}]
set_input_delay -clock clk  500  [get_ports {W[42]}]
set_input_delay -clock clk  500  [get_ports {W[41]}]
set_input_delay -clock clk  500  [get_ports {W[40]}]
set_input_delay -clock clk  500  [get_ports {W[39]}]
set_input_delay -clock clk  500  [get_ports {W[38]}]
set_input_delay -clock clk  500  [get_ports {W[37]}]
set_input_delay -clock clk  500  [get_ports {W[36]}]
set_input_delay -clock clk  500  [get_ports {W[35]}]
set_input_delay -clock clk  500  [get_ports {W[34]}]
set_input_delay -clock clk  500  [get_ports {W[33]}]
set_input_delay -clock clk  500  [get_ports {W[32]}]
set_input_delay -clock clk  500  [get_ports {W[31]}]
set_input_delay -clock clk  500  [get_ports {W[30]}]
set_input_delay -clock clk  500  [get_ports {W[29]}]
set_input_delay -clock clk  500  [get_ports {W[28]}]
set_input_delay -clock clk  500  [get_ports {W[27]}]
set_input_delay -clock clk  500  [get_ports {W[26]}]
set_input_delay -clock clk  500  [get_ports {W[25]}]
set_input_delay -clock clk  500  [get_ports {W[24]}]
set_input_delay -clock clk  500  [get_ports {W[23]}]
set_input_delay -clock clk  500  [get_ports {W[22]}]
set_input_delay -clock clk  500  [get_ports {W[21]}]
set_input_delay -clock clk  500  [get_ports {W[20]}]
set_input_delay -clock clk  500  [get_ports {W[19]}]
set_input_delay -clock clk  500  [get_ports {W[18]}]
set_input_delay -clock clk  500  [get_ports {W[17]}]
set_input_delay -clock clk  500  [get_ports {W[16]}]
set_input_delay -clock clk  500  [get_ports {W[15]}]
set_input_delay -clock clk  500  [get_ports {W[14]}]
set_input_delay -clock clk  500  [get_ports {W[13]}]
set_input_delay -clock clk  500  [get_ports {W[12]}]
set_input_delay -clock clk  500  [get_ports {W[11]}]
set_input_delay -clock clk  500  [get_ports {W[10]}]
set_input_delay -clock clk  500  [get_ports {W[9]}]
set_input_delay -clock clk  500  [get_ports {W[8]}]
set_input_delay -clock clk  500  [get_ports {W[7]}]
set_input_delay -clock clk  500  [get_ports {W[6]}]
set_input_delay -clock clk  500  [get_ports {W[5]}]
set_input_delay -clock clk  500  [get_ports {W[4]}]
set_input_delay -clock clk  500  [get_ports {W[3]}]
set_input_delay -clock clk  500  [get_ports {W[2]}]
set_input_delay -clock clk  500  [get_ports {W[1]}]
set_input_delay -clock clk  500  [get_ports {W[0]}]
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
