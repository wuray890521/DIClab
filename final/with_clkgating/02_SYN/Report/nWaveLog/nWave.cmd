wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvResizeWindow -win $_nWave1 1920 31 893 72
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/dic/dic324/final/optimization/01_RTL/Final.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Final"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_Final/I\[127:0\]} \
{/TESTBED/u_Final/OUT\[12:0\]} \
{/TESTBED/u_Final/W\[127:0\]} \
{/TESTBED/u_Final/add_ans1\[0:3\]} \
{/TESTBED/u_Final/add_ans2\[0:3\]} \
{/TESTBED/u_Final/add_ans3\[0:3\]} \
{/TESTBED/u_Final/add_ans4\[0:3\]} \
{/TESTBED/u_Final/add_ans5\[0:7\]} \
{/TESTBED/u_Final/add_ans6\[0:3\]} \
{/TESTBED/u_Final/add_ans7\[0:1\]} \
{/TESTBED/u_Final/clk} \
{/TESTBED/u_Final/clk_gate_invalid} \
{/TESTBED/u_Final/cnt\[9:0\]} \
{/TESTBED/u_Final/enable} \
{/TESTBED/u_Final/flag} \
{/TESTBED/u_Final/i\[31:0\]} \
{/TESTBED/u_Final/in_valid} \
{/TESTBED/u_Final/inputs\[0:31\]} \
{/TESTBED/u_Final/j\[31:0\]} \
{/TESTBED/u_Final/mul_ans1\[0:3\]} \
{/TESTBED/u_Final/mul_ans2\[0:3\]} \
{/TESTBED/u_Final/mul_ans3\[0:3\]} \
{/TESTBED/u_Final/mul_ans4\[0:3\]} \
{/TESTBED/u_Final/mul_ans5\[0:3\]} \
{/TESTBED/u_Final/mul_ans6\[0:3\]} \
{/TESTBED/u_Final/mul_ans7\[0:3\]} \
{/TESTBED/u_Final/mul_ans\[0:3\]} \
{/TESTBED/u_Final/out_valid} \
{/TESTBED/u_Final/rst_n} \
{/TESTBED/u_Final/weight\[0:31\]} \
{/TESTBED/u_Final/weight_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 100627.096370 -snap {("G1" 23)}
wvExit
