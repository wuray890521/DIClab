.TITLE Measure
*Part0

------------------------------Output0-----------------------------------
------------------------------------------------------------------------

.meas tran TpHL_2_0_0_A Trig v(A[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_0_A Trig v(A[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_0_0_A 	param='(TpHL_2_0_0_A+TpLH_2_0_0_A)/2' $ average prop delay

.meas tran TpHL_2_1_0_A Trig v(A[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_0_A Trig v(A[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_1_0_A 	param='(TpHL_2_1_0_A+TpLH_2_1_0_A)/2' $ average prop delay

.meas tran TpHL_2_2_0_A Trig v(A[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_0_A Trig v(A[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_2_0_A 	param='(TpHL_2_2_0_A+TpLH_2_2_0_A)/2' $ average prop delay


.meas tran TpHL_2_3_0_A Trig v(A[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_0_A Trig v(A[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_3_0_A 	param='(TpHL_2_3_0_A+TpLH_2_3_0_A)/2' $ average prop delay

---------------------------------------------------------------------------

.meas tran TpHL_2_0_0_B Trig v(B[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_0_B Trig v(B[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_0_0_B 	param='(TpHL_2_0_0_B+TpLH_2_0_0_B)/2' $ average prop delay

.meas tran TpHL_2_1_0_B Trig v(B[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_0_B Trig v(B[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_1_0_B 	param='(TpHL_2_1_0_B+TpLH_2_1_0_B)/2' $ average prop delay

.meas tran TpHL_2_2_0_B Trig v(B[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_0_B Trig v(B[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_2_0_B 	param='(TpHL_2_2_0_B+TpLH_2_2_0_B)/2' $ average prop delay


.meas tran TpHL_2_3_0_B Trig v(B[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_0_B Trig v(B[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[0]) val='0.5*vdd' rise=1

.meas tpd_3_0_B 	param='(TpHL_2_3_0_B+TpLH_2_3_0_B)/2' $ average prop delay

---------------------------------------------------------------------------

.meas trise_0 TRIG v(Output[0]) VAL='0.1*vdd' RISE=3
+ 			TARG v(Output[0]) VAL='0.9*vdd' RISE=3

.meas tfall_0 TRIG v(Output[0]) VAL='0.9*vdd' fall=1
+ 			TARG v(Output[0]) VAL='0.1*vdd' fall=1

---------------------------------------------------------------------------
---------------------------------------------------------------------------



------------------------------Output1--------------------------------------
---------------------------------------------------------------------------

.meas tran TpHL_2_0_1_A Trig v(A[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_1_A Trig v(A[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_0_1_A 	param='(TpHL_2_0_1_A+TpLH_2_0_1_A)/2' $ average prop delay

.meas tran TpHL_2_1_1_A Trig v(A[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_1_A Trig v(A[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_1_1_A 	param='(TpHL_2_1_1_A+TpLH_2_1_1_A)/2' $ average prop delay

.meas tran TpHL_2_2_1_A Trig v(A[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_1_A Trig v(A[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_2_1_A 	param='(TpHL_2_2_1_A+TpLH_2_2_1_A)/2' $ average prop delay


.meas tran TpHL_2_3_1_A Trig v(A[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_1_A Trig v(A[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_3_1_A 	param='(TpHL_2_3_1_A+TpLH_2_3_1_A)/2' $ average prop delay

---------------------------------------------------------------------------

.meas tran TpHL_2_0_1_B Trig v(B[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_1_B Trig v(B[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_0_1_B 	param='(TpHL_2_0_1_B+TpLH_2_0_1_B)/2' $ average prop delay

.meas tran TpHL_2_1_1_B Trig v(B[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_1_B Trig v(B[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_1_1_B 	param='(TpHL_2_1_1_B+TpLH_2_1_1_B)/2' $ average prop delay

.meas tran TpHL_2_2_1_B Trig v(B[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_1_B Trig v(B[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_2_1_B 	param='(TpHL_2_2_1_B+TpLH_2_2_1_B)/2' $ average prop delay


.meas tran TpHL_2_3_1_B Trig v(B[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_1_B Trig v(B[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[1]) val='0.5*vdd' rise=1

.meas tpd_3_1_B 	param='(TpHL_2_3_1_B+TpLH_2_3_1_B)/2' $ average prop delay


---------------------------------------------------------------------------

.meas trise_1 TRIG v(Output[1]) VAL='0.1*vdd' RISE=3
+ 			TARG v(Output[1]) VAL='0.9*vdd' RISE=3

.meas tfall_1 TRIG v(Output[1]) VAL='0.9*vdd' fall=1
+ 			TARG v(Output[1]) VAL='0.1*vdd' fall=1

---------------------------------------------------------------------------
---------------------------------------------------------------------------



------------------------------Output2-------------------------------------
---------------------------------------------------------------------------

.meas tran TpHL_2_0_2_A Trig v(A[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_2_A Trig v(A[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_0_2_A 	param='(TpHL_2_0_2_A+TpLH_2_0_2_A)/2' $ average prop delay

.meas tran TpHL_2_1_2_A Trig v(A[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_2_A Trig v(A[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_1_2_A 	param='(TpHL_2_1_2_A+TpLH_2_1_2_A)/2' $ average prop delay

.meas tran TpHL_2_2_2_A Trig v(A[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_2_A Trig v(A[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_2_2_A 	param='(TpHL_2_2_2_A+TpLH_2_2_2_A)/2' $ average prop delay


.meas tran TpHL_2_3_2_A Trig v(A[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_2_A Trig v(A[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_3_2_A 	param='(TpHL_2_3_2_A+TpLH_2_3_2_A)/2' $ average prop delay


---------------------------------------------------------------------------

.meas tran TpHL_2_0_2_B Trig v(B[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_2_B Trig v(B[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_0_2_B 	param='(TpHL_2_0_2_B+TpLH_2_0_2_B)/2' $ average prop delay

.meas tran TpHL_2_1_2_B Trig v(B[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_2_B Trig v(B[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_1_2_B 	param='(TpHL_2_1_2_B+TpLH_2_1_2_B)/2' $ average prop delay

.meas tran TpHL_2_2_2_B Trig v(B[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_2_B Trig v(B[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_2_2_B 	param='(TpHL_2_2_2_B+TpLH_2_2_2_B)/2' $ average prop delay


.meas tran TpHL_2_3_2_B Trig v(B[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_2_B Trig v(B[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[2]) val='0.5*vdd' rise=1

.meas tpd_3_2_B 	param='(TpHL_2_3_2_B+TpLH_2_3_2_B)/2' $ average prop delay
---------------------------------------------------------------------------

.meas trise_3 TRIG v(Output[2]) VAL='0.1*vdd' RISE=3
+ 			TARG v(Output[2]) VAL='0.9*vdd' RISE=3

.meas tfall_3 TRIG v(Output[2]) VAL='0.9*vdd' fall=1
+ 			TARG v(Output[2]) VAL='0.1*vdd' fall=1

---------------------------------------------------------------------------
---------------------------------------------------------------------------



------------------------------Output3--------------------------------------
---------------------------------------------------------------------------

.meas tran TpHL_2_0_3_A Trig v(A[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_3_A Trig v(A[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_0_3_A 	param='(TpHL_2_0_3_A+TpLH_2_0_3_A)/2' $ average prop delay

.meas tran TpHL_2_1_3_A Trig v(A[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_3_A Trig v(A[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_1_3_A 	param='(TpHL_2_1_3_A+TpLH_2_1_3_A)/2' $ average prop delay

.meas tran TpHL_2_2_3_A Trig v(A[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_3_A Trig v(A[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_2_3_A 	param='(TpHL_2_2_3_A+TpLH_2_2_3_A)/2' $ average prop delay


.meas tran TpHL_2_3_3_A Trig v(A[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_3_A Trig v(A[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_3_3_A 	param='(TpHL_2_3_3_A+TpLH_2_3_3_A)/2' $ average prop delay

---------------------------------------------------------------------------

.meas tran TpHL_2_0_3_B Trig v(B[0]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_0_3_B Trig v(B[0]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_0_3_B 	param='(TpHL_2_0_3_B+TpLH_2_0_3_B)/2' $ average prop delay

.meas tran TpHL_2_1_3_B Trig v(B[1]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_1_3_B Trig v(B[1]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_1_3_B 	param='(TpHL_2_1_3_B+TpLH_2_1_3_B)/2' $ average prop delay

.meas tran TpHL_2_2_3_B Trig v(B[2]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_2_3_B Trig v(B[2]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_2_3_B 	param='(TpHL_2_2_3_B+TpLH_2_2_3_B)/2' $ average prop delay


.meas tran TpHL_2_3_3_B Trig v(B[3]) val='0.5*vdd' rise=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' fall=1

.meas tran TpLH_2_3_3_B Trig v(B[3]) val='0.5*vdd' fall=1
+ 		   		Targ v(Output[3]) val='0.5*vdd' rise=1

.meas tpd_3_3_B 	param='(TpHL_2_3_3_B+TpLH_2_3_3_B)/2' $ average prop delay

---------------------------------------------------------------------------

.meas trise_4 TRIG v(Output[3]) VAL='0.1*vdd' RISE=3
+ 			TARG v(Output[3]) VAL='0.9*vdd' RISE=3

.meas tfall_4 TRIG v(Output[3]) VAL='0.9*vdd' fall=1
+ 			TARG v(Output[3]) VAL='0.1*vdd' fall=1

---------------------------------------------------------------------------



.meas pwr avg POWER

