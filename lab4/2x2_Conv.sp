.TITLE Ex_2_1

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

****.include "Measure.sp"
.VEC "Pattern_2x2_Conv.vec"


*****************************
**     Voltage Source      **
*****************************

Vvdd VDD GND 0.7v
Vvss VSS GND 0 0
.include "Convolution_SYN_new.sp"
******************************************
**   Circuit  **
******************************************

Xk2 VSS VDD  IFM_0[3] IFM_0[2] IFM_0[1] IFM_0[0] IFM_1[3] IFM_1[2] IFM_1[1] IFM_1[0] IFM_2[3] IFM_2[2] IFM_2[1] IFM_2[0] IFM_3[3] IFM_3[2] IFM_3[1] IFM_3[0] INW_0[3] INW_0[2] INW_0[1] INW_0[0] INW_1[3] INW_1[2] INW_1[1] INW_1[0] INW_2[3] INW_2[2] INW_2[1] INW_2[0] INW_3[3] INW_3[2] INW_3[1] INW_3[0] Output[9] Output[8] Output[7] Output[6] Output[5] Output[4] Output[3] Output[2] Output[1] Output[0] Port10  Convolution


*****************************************************************************


.tran 0.1ps 12ns sweep vdd 0.4 0.7 0.05
****************************
**    Simulator setting    **
*****************************
.option post
.options probe			*with I/V in .lis
.probe v(*) i(*)
.option captab			*with cap value in .lis
.TEMP 25
.op


*****************************
**         Measure         **
*****************************
.measure TRAN Tr TRIG V(IFM_3[2])    VAL=0.35 RISE=1 TARG V(Output[8]) VAL=0.35 RISE=6
.measure TRAN Tf TRIG V(IFM_3[2])    VAL=0.35 FALL=1 TARG V(Output[8]) VAL=0.35 FALL=2
.measure tpd param='(Tr+Tf)/2'
.meas TRAN Power AVG POWER

.end
