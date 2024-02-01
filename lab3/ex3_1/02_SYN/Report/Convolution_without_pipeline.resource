 
****************************************
Report : resources
Design : Convolution_without_pipeline
Version: T-2022.03
Date   : Mon Nov 13 10:47:59 2023
****************************************

Resource Sharing Report for design Convolution_without_pipeline in file
        ../01_RTL/Convolution_without_pipeline.v

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r653     | DW01_inc     | width=21   |               | add_87 add_90        |
| r727     | DW_div_uns   | a_width=6  |               | rem_199              |
|          |              | b_width=3  |               |                      |
| r729     | DW01_add     | width=6    |               | add_200              |
| r731     | DW01_add     | width=6    |               | add_201              |
| r733     | DW01_add     | width=6    |               | add_202              |
| r735     | DW01_add     | width=6    |               | add_203              |
| r737     | DW01_add     | width=6    |               | add_204              |
| r739     | DW01_add     | width=6    |               | add_205              |
| r741     | DW01_add     | width=6    |               | add_206              |
| r743     | DW01_add     | width=6    |               | add_207              |
| r745     | DW01_add     | width=6    |               | add_208              |
| r747     | DW01_inc     | width=6    |               | add_211              |
| r749     | DW01_inc     | width=6    |               | add_212              |
| r751     | DW01_inc     | width=6    |               | add_213              |
| r753     | DW01_inc     | width=6    |               | add_214              |
| r755     | DW01_inc     | width=6    |               | add_215              |
| r757     | DW01_inc     | width=6    |               | add_216              |
| r759     | DW01_inc     | width=6    |               | add_217              |
| r761     | DW01_inc     | width=6    |               | add_218              |
| r763     | DW01_inc     | width=6    |               | add_219              |
| r1600    | DW_mult_uns  | a_width=16 |               | mult_231_9           |
|          |              | b_width=16 |               |                      |
| r1602    | DW_mult_uns  | a_width=16 |               | mult_231_8           |
|          |              | b_width=16 |               |                      |
| r1604    | DW_mult_uns  | a_width=16 |               | mult_231_7           |
|          |              | b_width=16 |               |                      |
| r1606    | DW_mult_uns  | a_width=16 |               | mult_231_6           |
|          |              | b_width=16 |               |                      |
| r1608    | DW_mult_uns  | a_width=16 |               | mult_231_5           |
|          |              | b_width=16 |               |                      |
| r1610    | DW_mult_uns  | a_width=16 |               | mult_231_4           |
|          |              | b_width=16 |               |                      |
| r1612    | DW_mult_uns  | a_width=16 |               | mult_231_3           |
|          |              | b_width=16 |               |                      |
| r1614    | DW_mult_uns  | a_width=16 |               | mult_231_2           |
|          |              | b_width=16 |               |                      |
| r1616    | DW_mult_uns  | a_width=16 |               | mult_231             |
|          |              | b_width=16 |               |                      |
| r1618    | DW01_add     | width=36   |               | add_5_root_add_0_root_add_231_8 |
| r1620    | DW01_add     | width=35   |               | add_3_root_add_0_root_add_231_8 |
| r1622    | DW01_add     | width=36   |               | add_2_root_add_0_root_add_231_8 |
| r1624    | DW01_add     | width=34   |               | add_7_root_add_0_root_add_231_8 |
| r1626    | DW01_add     | width=36   |               | add_1_root_add_0_root_add_231_8 |
| r1628    | DW01_add     | width=36   |               | add_6_root_add_0_root_add_231_8 |
| r1630    | DW01_add     | width=36   |               | add_4_root_add_0_root_add_231_8 |
| r1632    | DW01_add     | width=36   |               | add_0_root_add_0_root_add_231_8 |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| rem_199            | DW_div_uns       | rpl                |                |
| add_7_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| add_3_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| add_5_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| mult_231           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_4         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_6         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_2         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_5         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_8         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_9         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| add_1_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (area,speed)                 |
| mult_231_3         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_231_7         | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| add_0_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (speed)     |                |
| add_2_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (speed)     |                |
| add_4_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (speed)     |                |
| add_6_root_add_0_root_add_231_8       |                    |                |
|                    | DW01_add         | pparch (speed)     |                |
| r653               | DW01_inc         | rpl                |                |
===============================================================================

1
