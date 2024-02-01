*****************************
**     Library setting     **
*****************************
.protect
.include '7nm_TT.pm'
.include "asap7sc7p5t_AO_RVT.sp"
.include "asap7sc7p5t_OA_RVT.sp"
.include "asap7sc7p5t_INVBUF_RVT.sp"
.include "asap7sc7p5t_SEQ_RVT.sp"
.include "asap7sc7p5t_SIMPLE_RVT.sp"
.unprotect

.VEC "Pattern_comparator.vec"
.param vcc =0.4
*****************************
**     Voltage Source      **
*****************************
.golden VDD VSS
Vvdd VDD GND 0.4v
Vvss VSS GND 0 0
.include "Comparator_SYN_new.sp"
******************************************
**   Circuit  **
******************************************
Coutput1 n1 GND 3f
Coutput2 n2 GND 3f
Coutput3 n3 GND 3f
Coutput4 n4 GND 3f
Coutput5 n5 GND 3f
Coutput6 n6 GND 3f
Coutput7 n7 GND 3f
Coutput8 n8 GND 3f
Coutput9 n9 GND 3f
Coutput10 n10 GND 3f
Coutput11 n11 GND 3f
Coutput12 n12 GND 3f
Coutput13 n13 GND 3f
Coutput14 n14 GND 3f
Coutput15 n15 GND 3f
Coutput16 n16 GND 3f
Coutput17 n17 GND 3f
Coutput18 n18 GND 3f
Coutput19 n19 GND 3f
Coutput20 n20 GND 3f
Coutput21 n21 GND 3f
Coutput22 n22 GND 3f
Coutput23 n23 GND 3f
Coutput24 n24 GND 3f
Coutput25 n25 GND 3f
Coutput26 n26 GND 3f
Coutput27 n27 GND 3f
Coutput28 n28 GND 3f
Coutput29 n29 GND 3f
Coutput30 n30 GND 3f
Coutput31 n31 GND 3f
Coutput32 n32 GND 3f
Coutput33 n33 GND 3f
Coutput34 n34 GND 3f
Coutput35 n35 GND 3f
Coutput36 n36 GND 3f
Coutput37 n37 GND 3f
Coutput38 n38 GND 3f
Coutput39 n39 GND 3f
Coutput40 n40 GND 3f
Coutput41 n41 GND 3f
Coutput42 n42 GND 3f
Coutput43 n43 GND 3f
Coutput44 n44 GND 3f
Coutput45 n45 GND 3f
Coutput46 n46 GND 3f
Coutput47 n47 GND 3f
Coutput48 n48 GND 3f
Coutput49 n49 GND 3f
Coutput50 n50 GND 3f
Coutput51 n51 GND 3f
Coutput52 n52 GND 3f
Coutput53 n53 GND 3f
Coutput54 n54 GND 3f
Coutput55 n55 GND 3f
Coutput56 n56 GND 3f
Coutput57 n57 GND 3f
Coutput58 n58 GND 3f
Coutput59 n59 GND 3f
Coutput60 n60 GND 3f
Coutput61 n61 GND 3f
Coutput62 n62 GND 3f
Coutput63 n63 GND 3f
Coutput64 n64 GND 3f
Coutput65 n65 GND 3f
Coutput66 n66 GND 3f
Coutput67 n67 GND 3f
Coutput68 n68 GND 3f
Coutput69 n69 GND 3f
Coutput70 n70 GND 3f
Coutput71 n71 GND 3f
Coutput72 n72 GND 3f
Coutput73 n73 GND 3f
Coutput74 n74 GND 3f
Coutput75 n75 GND 3f
Coutput76 n76 GND 3f
Coutput77 n77 GND 3f
Coutput78 n78 GND 3f
Coutput79 n79 GND 3f
Coutput80 n80 GND 3f
Coutput81 n81 GND 3f

X11 VSS VDD  ain_63 ain_62 ain_61 ain_60 ain_59 ain_58 ain_57 ain_56 ain_55 ain_54 ain_53 ain_52 ain_51 ain_50 ain_49 ain_48 ain_47 ain_46 ain_45 ain_44 ain_43 ain_42 ain_41 ain_40 ain_39 ain_38 ain_37 ain_36 ain_35 ain_34 ain_33 ain_32 ain_31 ain_30 ain_29 ain_28 ain_27 ain_26 ain_25 ain_24 ain_23 ain_22 ain_21 ain_20 ain_19 ain_18 ain_17 ain_16 ain_15 ain_14 ain_13 ain_12 ain_11 ain_10 ain_9 ain_8 ain_7 ain_6 ain_5 ain_4 ain_3 ain_2 ain_1 ain_0 bin_63 bin_62 bin_61 bin_60 bin_59 bin_58 bin_57 bin_56 bin_55 bin_54 bin_53 bin_52 bin_51 bin_50 bin_49 bin_48 bin_47 bin_46 bin_45 bin_44 bin_43 bin_42 bin_41 bin_40 bin_39 bin_38 bin_37 bin_36 bin_35 bin_34 bin_33 bin_32 bin_31 bin_30 bin_29 bin_28 bin_27 bin_26 bin_25 bin_24 bin_23 bin_22 bin_21 bin_20 bin_19 bin_18 bin_17 bin_16 bin_15 bin_14 bin_13 bin_12 bin_11 bin_10 bin_9 bin_8 bin_7 bin_6 bin_5 bin_4 bin_3 bin_2 bin_1 bin_0 Out Comparator

Xbuffer0 GND VDD a0 ain_0 BUFx24_ASAP7_75t_R
Xbuffer1 GND VDD a1 ain_1 BUFx24_ASAP7_75t_R
Xbuffer2 GND VDD a2 ain_2 BUFx24_ASAP7_75t_R
Xbuffer3 GND VDD a3 ain_3 BUFx24_ASAP7_75t_R
Xbuffer4 GND VDD a4 ain_4 BUFx24_ASAP7_75t_R
Xbuffer5 GND VDD a5 ain_5 BUFx24_ASAP7_75t_R
Xbuffer6 GND VDD a6 ain_6 BUFx24_ASAP7_75t_R
Xbuffer7 GND VDD a7 ain_7 BUFx24_ASAP7_75t_R
Xbuffer8 GND VDD a8 ain_8 BUFx24_ASAP7_75t_R
Xbuffer9 GND VDD a9 ain_9 BUFx24_ASAP7_75t_R
Xbuffer10 GND VDD a10 ain_10 BUFx24_ASAP7_75t_R
Xbuffer11 GND VDD a11 ain_11 BUFx24_ASAP7_75t_R
Xbuffer12 GND VDD a12 ain_12 BUFx24_ASAP7_75t_R
Xbuffer13 GND VDD a13 ain_13 BUFx24_ASAP7_75t_R
Xbuffer14 GND VDD a14 ain_14 BUFx24_ASAP7_75t_R
Xbuffer15 GND VDD a15 ain_15 BUFx24_ASAP7_75t_R
Xbuffer16 GND VDD a16 ain_16 BUFx24_ASAP7_75t_R
Xbuffer17 GND VDD a17 ain_17 BUFx24_ASAP7_75t_R
Xbuffer18 GND VDD a18 ain_18 BUFx24_ASAP7_75t_R
Xbuffer19 GND VDD a19 ain_19 BUFx24_ASAP7_75t_R
Xbuffer20 GND VDD a20 ain_20 BUFx24_ASAP7_75t_R
Xbuffer21 GND VDD a21 ain_21 BUFx24_ASAP7_75t_R
Xbuffer22 GND VDD a22 ain_22 BUFx24_ASAP7_75t_R
Xbuffer23 GND VDD a23 ain_23 BUFx24_ASAP7_75t_R
Xbuffer24 GND VDD a24 ain_24 BUFx24_ASAP7_75t_R
Xbuffer25 GND VDD a25 ain_25 BUFx24_ASAP7_75t_R
Xbuffer26 GND VDD a26 ain_26 BUFx24_ASAP7_75t_R
Xbuffer27 GND VDD a27 ain_27 BUFx24_ASAP7_75t_R
Xbuffer28 GND VDD a28 ain_28 BUFx24_ASAP7_75t_R
Xbuffer29 GND VDD a29 ain_29 BUFx24_ASAP7_75t_R
Xbuffer30 GND VDD a30 ain_30 BUFx24_ASAP7_75t_R
Xbuffer31 GND VDD a31 ain_31 BUFx24_ASAP7_75t_R
Xbuffer32 GND VDD a32 ain_32 BUFx24_ASAP7_75t_R
Xbuffer33 GND VDD a33 ain_33 BUFx24_ASAP7_75t_R
Xbuffer34 GND VDD a34 ain_34 BUFx24_ASAP7_75t_R
Xbuffer35 GND VDD a35 ain_35 BUFx24_ASAP7_75t_R
Xbuffer36 GND VDD a36 ain_36 BUFx24_ASAP7_75t_R
Xbuffer37 GND VDD a37 ain_37 BUFx24_ASAP7_75t_R
Xbuffer38 GND VDD a38 ain_38 BUFx24_ASAP7_75t_R
Xbuffer39 GND VDD a39 ain_39 BUFx24_ASAP7_75t_R
Xbuffer40 GND VDD a40 ain_40 BUFx24_ASAP7_75t_R
Xbuffer41 GND VDD a41 ain_41 BUFx24_ASAP7_75t_R
Xbuffer42 GND VDD a42 ain_42 BUFx24_ASAP7_75t_R
Xbuffer43 GND VDD a43 ain_43 BUFx24_ASAP7_75t_R
Xbuffer44 GND VDD a44 ain_44 BUFx24_ASAP7_75t_R
Xbuffer45 GND VDD a45 ain_45 BUFx24_ASAP7_75t_R
Xbuffer46 GND VDD a46 ain_46 BUFx24_ASAP7_75t_R
Xbuffer47 GND VDD a47 ain_47 BUFx24_ASAP7_75t_R
Xbuffer48 GND VDD a48 ain_48 BUFx24_ASAP7_75t_R
Xbuffer49 GND VDD a49 ain_49 BUFx24_ASAP7_75t_R
Xbuffer50 GND VDD a50 ain_50 BUFx24_ASAP7_75t_R
Xbuffer51 GND VDD a51 ain_51 BUFx24_ASAP7_75t_R
Xbuffer52 GND VDD a52 ain_52 BUFx24_ASAP7_75t_R
Xbuffer53 GND VDD a53 ain_53 BUFx24_ASAP7_75t_R
Xbuffer54 GND VDD a54 ain_54 BUFx24_ASAP7_75t_R
Xbuffer55 GND VDD a55 ain_55 BUFx24_ASAP7_75t_R
Xbuffer56 GND VDD a56 ain_56 BUFx24_ASAP7_75t_R
Xbuffer57 GND VDD a57 ain_57 BUFx24_ASAP7_75t_R
Xbuffer58 GND VDD a58 ain_58 BUFx24_ASAP7_75t_R
Xbuffer59 GND VDD a59 ain_59 BUFx24_ASAP7_75t_R
Xbuffer60 GND VDD a60 ain_60 BUFx24_ASAP7_75t_R
Xbuffer61 GND VDD a61 ain_61 BUFx24_ASAP7_75t_R
Xbuffer62 GND VDD a62 ain_62 BUFx24_ASAP7_75t_R
Xbuffer63 GND VDD a63 ain_63 BUFx24_ASAP7_75t_R

Xbuffer64 GND VDD b0 bin_0 BUFx24_ASAP7_75t_R
Xbuffer65 GND VDD b1 bin_1 BUFx24_ASAP7_75t_R
Xbuffer66 GND VDD b2 bin_2 BUFx24_ASAP7_75t_R
Xbuffer67 GND VDD b3 bin_3 BUFx24_ASAP7_75t_R
Xbuffer68 GND VDD b4 bin_4 BUFx24_ASAP7_75t_R
Xbuffer69 GND VDD b5 bin_5 BUFx24_ASAP7_75t_R
Xbuffer70 GND VDD b6 bin_6 BUFx24_ASAP7_75t_R
Xbuffer71 GND VDD b7 bin_7 BUFx24_ASAP7_75t_R
Xbuffer72 GND VDD b8 bin_8 BUFx24_ASAP7_75t_R
Xbuffer73 GND VDD b9 bin_9 BUFx24_ASAP7_75t_R
Xbuffer74 GND VDD b10 bin_10 BUFx24_ASAP7_75t_R
Xbuffer75 GND VDD b11 bin_11 BUFx24_ASAP7_75t_R
Xbuffer76 GND VDD b12 bin_12 BUFx24_ASAP7_75t_R
Xbuffer77 GND VDD b13 bin_13 BUFx24_ASAP7_75t_R
Xbuffer78 GND VDD b14 bin_14 BUFx24_ASAP7_75t_R
Xbuffer79 GND VDD b15 bin_15 BUFx24_ASAP7_75t_R
Xbuffer80 GND VDD b16 bin_16 BUFx24_ASAP7_75t_R
Xbuffer81 GND VDD b17 bin_17 BUFx24_ASAP7_75t_R
Xbuffer82 GND VDD b18 bin_18 BUFx24_ASAP7_75t_R
Xbuffer83 GND VDD b19 bin_19 BUFx24_ASAP7_75t_R
Xbuffer84 GND VDD b20 bin_20 BUFx24_ASAP7_75t_R
Xbuffer85 GND VDD b21 bin_21 BUFx24_ASAP7_75t_R
Xbuffer86 GND VDD b22 bin_22 BUFx24_ASAP7_75t_R
Xbuffer87 GND VDD b23 bin_23 BUFx24_ASAP7_75t_R
Xbuffer88 GND VDD b24 bin_24 BUFx24_ASAP7_75t_R
Xbuffer89 GND VDD b25 bin_25 BUFx24_ASAP7_75t_R
Xbuffer90 GND VDD b26 bin_26 BUFx24_ASAP7_75t_R
Xbuffer91 GND VDD b27 bin_27 BUFx24_ASAP7_75t_R
Xbuffer92 GND VDD b28 bin_28 BUFx24_ASAP7_75t_R
Xbuffer93 GND VDD b29 bin_29 BUFx24_ASAP7_75t_R
Xbuffer94 GND VDD b30 bin_30 BUFx24_ASAP7_75t_R
Xbuffer95 GND VDD b31 bin_31 BUFx24_ASAP7_75t_R
Xbuffer96 GND VDD b32 bin_32 BUFx24_ASAP7_75t_R
Xbuffer97 GND VDD b33 bin_33 BUFx24_ASAP7_75t_R
Xbuffer98 GND VDD b34 bin_34 BUFx24_ASAP7_75t_R
Xbuffer99 GND VDD b35 bin_35 BUFx24_ASAP7_75t_R
Xbuffer100 GND VDD b36 bin_36 BUFx24_ASAP7_75t_R
Xbuffer101 GND VDD b37 bin_37 BUFx24_ASAP7_75t_R
Xbuffer102 GND VDD b38 bin_38 BUFx24_ASAP7_75t_R
Xbuffer103 GND VDD b39 bin_39 BUFx24_ASAP7_75t_R
Xbuffer104 GND VDD b40 bin_40 BUFx24_ASAP7_75t_R
Xbuffer105 GND VDD b41 bin_41 BUFx24_ASAP7_75t_R
Xbuffer106 GND VDD b42 bin_42 BUFx24_ASAP7_75t_R
Xbuffer107 GND VDD b43 bin_43 BUFx24_ASAP7_75t_R
Xbuffer108 GND VDD b44 bin_44 BUFx24_ASAP7_75t_R
Xbuffer109 GND VDD b45 bin_45 BUFx24_ASAP7_75t_R
Xbuffer110 GND VDD b46 bin_46 BUFx24_ASAP7_75t_R
Xbuffer111 GND VDD b47 bin_47 BUFx24_ASAP7_75t_R
Xbuffer112 GND VDD b48 bin_48 BUFx24_ASAP7_75t_R
Xbuffer113 GND VDD b49 bin_49 BUFx24_ASAP7_75t_R
Xbuffer114 GND VDD b50 bin_50 BUFx24_ASAP7_75t_R
Xbuffer115 GND VDD b51 bin_51 BUFx24_ASAP7_75t_R
Xbuffer116 GND VDD b52 bin_52 BUFx24_ASAP7_75t_R
Xbuffer117 GND VDD b53 bin_53 BUFx24_ASAP7_75t_R
Xbuffer118 GND VDD b54 bin_54 BUFx24_ASAP7_75t_R
Xbuffer119 GND VDD b55 bin_55 BUFx24_ASAP7_75t_R
Xbuffer120 GND VDD b56 bin_56 BUFx24_ASAP7_75t_R
Xbuffer121 GND VDD b57 bin_57 BUFx24_ASAP7_75t_R
Xbuffer122 GND VDD b58 bin_58 BUFx24_ASAP7_75t_R
Xbuffer123 GND VDD b59 bin_59 BUFx24_ASAP7_75t_R
Xbuffer124 GND VDD b60 bin_60 BUFx24_ASAP7_75t_R
Xbuffer125 GND VDD b61 bin_61 BUFx24_ASAP7_75t_R
Xbuffer126 GND VDD b62 bin_62 BUFx24_ASAP7_75t_R
Xbuffer127 GND VDD b63 bin_63 BUFx24_ASAP7_75t_R

xbufout VSS VDD out Output BUFx24_ASAP7_75t_R

Cout1 Output GND 5f

*****************************
**    Simulator setting    **
*****************************
.option MEASFORM＝2
.option accurate
.option post
.op
.temp 25.0
.tran 0.1ns 60ns

*****************************
**         Measure         **
*****************************
.meas tran delay trig V(ain_0) val='vcc/2' rise=1 Targ V(Output) val='vcc/2' rise=1
.meas tran rise trig V(Output) val='vcc*0.1' rise=1 Targ V(Output) val='vcc*0.9' rise=1
.meas tran fall trig V(Output) val='vcc*0.9' fall=1 Targ V(Output) val='vcc*0.1' fall=1

.meas power AVG POWER 
.probe tran

.end
