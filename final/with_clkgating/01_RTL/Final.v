`ifdef RTL
`include "asap7sc7p5t_SEQ_RVT_TT_08302018.v"
`endif 


module Final(
	//input
    rst_n,
    clk,
    in_valid,
    weight_valid,
    I,
    W,
	//output 
	out_valid,
	OUT
);
    input rst_n;
    input clk;
    input in_valid;
    input weight_valid;
    input [127:0] I;
    input [127:0] W;
    output reg  out_valid;
    output reg [12:0] OUT;
    wire clk_gate_invalid;



  reg [9:0] cnt;
  reg [3:0] inputs [0:31];
  reg [3:0] weight [0:31];

   reg [7:0] mul_ans [0:3];
   reg [7:0] mul_ans1 [0:3];
   reg [7:0] mul_ans2 [0:3];
   reg [7:0] mul_ans3 [0:3];
   reg [7:0] mul_ans4 [0:3];
   reg [7:0] mul_ans5 [0:3];
   reg [7:0] mul_ans6 [0:3];
   reg [7:0] mul_ans7 [0:3];


   reg [8:0] add_ans1 [0:3];
   reg [8:0] add_ans2 [0:3];
   reg [8:0] add_ans3 [0:3];
   reg [8:0] add_ans4 [0:3];
   reg [9:0] add_ans5 [0:7];
   reg [10:0] add_ans6 [0:3];
   reg [11:0] add_ans7 [0:1];
   wire enable;

  reg flag;
  reg enable_0;
  wire clk_gate_0;

  always@(*)begin
	if(!rst_n)begin
		enable_0 = 1;
	end
	else if(cnt == 0 | cnt == 1 | cnt >6)begin
		enable_0 = 1;
	end
	else begin
		enable_0 = 0;
	end
end



always @(posedge clk or negedge rst_n) 
begin
  if(~rst_n)
    flag <= 0;
  else if(in_valid)
   flag <= 1;
  else if(out_valid)
   flag <= 0;
  else 
   flag <= flag; 
end
//--------counter------------------------------------------
always @(posedge clk or negedge rst_n) //cnt
  begin
    if(~rst_n)
      cnt <= 0;
    else if(in_valid)
      cnt <= 1;  
    else if (flag)
     cnt  <= cnt + 1;   
    else if(out_valid)
     cnt <= 0; 
    else 
     cnt <= cnt;
  end

  /*-----------------------------------------------------------------------------------
          IIIIIIII  NN      NN  PPPPPPPP  UU      UU TTTTTTTTTT
             II     NNNN    NN  PP     PP UU      UU     TT
             II     NN  NN  NN  PP     PP UU      UU     TT
             II     NN    NNNN  PPPPPPPP   UU    UU      TT
          IIIIIIII  NN      NN  PP          UUUUUU       TT
  *///---------------------------------------------------------------------------------
  integer i,j;

  always @(posedge clk_gate_0 or negedge rst_n) // input: I1~I32
  begin
    if (~rst_n)
    begin
     for ( i=0 ;i<32 ;i=i+1 ) 
      begin
        inputs [i] <= 0;  
      end
    end 
   else if (in_valid)
    begin
      inputs[0] <= I[127:124] ;  
      inputs[1] <= I[123:120] ;  
      inputs[2] <= I[119:116] ;  
      inputs[3] <= I[115:112] ;  
      inputs[4] <= I[111:108] ;  
      inputs[5] <= I[107:104] ;  
      inputs[6] <= I[103:100] ;  
      inputs[7] <= I[99:96] ;  
      inputs[8] <= I[95:92] ;  
      inputs[9] <= I[91:88] ;  
      inputs[10] <= I[87:84];  
      inputs[11] <= I[83:80];  
      inputs[12] <= I[79:76];  
      inputs[13] <= I[75:72];  
      inputs[14] <= I[71:68];  
      inputs[15] <= I[67:64];  
      inputs[16] <= I[63:60];  
      inputs[17] <= I[59:56];  
      inputs[18] <= I[55:52];  
      inputs[19] <= I[51:48];  
      inputs[20] <= I[47:44];  
      inputs[21] <= I[43:40];  
      inputs[22] <= I[39:36];  
      inputs[23] <= I[35:32];  
      inputs[24] <= I[31:28];  
      inputs[25] <= I[27:24];  
      inputs[26] <= I[23:20];  
      inputs[27] <= I[19:16];  
      inputs[28] <= I[15:12];  
      inputs[29] <= I[11:8];  
      inputs[30] <= I[7:4];  
      inputs[31] <= I[3:0];  
    end 
   /*else if (out_valid)
    begin
      for ( i=0 ;i<32 ;i=i+1 ) 
      begin
        inputs[i] <= 0;  
      end
    end */
   else 
   begin
    for ( i=0 ;i<32 ;i=i+1 ) 
    begin
      inputs[i] <= inputs[i] ; 
    end 
  end
   end

  
  always @(posedge clk or negedge rst_n) // input: W1~W32
  begin
    if (~rst_n)
    begin
     for ( j=0 ;j<32 ;j=j+1 ) 
      begin
        weight[j] <= 0;  
      end
    end 
   else if(weight_valid)
    begin
      weight[0] <= W[127:124] ;  
      weight[1] <= W[123:120] ;  
      weight[2] <= W[119:116] ;  
      weight[3] <= W[115:112] ;  
      weight[4] <= W[111:108] ;  
      weight[5] <= W[107:104] ;  
      weight[6] <= W[103:100] ;  
      weight[7] <= W[99:96] ;  
      weight[8] <= W[95:92] ;  
      weight[9] <= W[91:88] ;  
      weight[10] <= W[87:84];  
      weight[11] <= W[83:80];  
      weight[12] <= W[79:76];  
      weight[13] <= W[75:72];  
      weight[14] <= W[71:68];  
      weight[15] <= W[67:64];  
      weight[16] <= W[63:60];  
      weight[17] <= W[59:56];  
      weight[18] <= W[55:52];  
      weight[19] <= W[51:48];  
      weight[20] <= W[47:44];  
      weight[21] <= W[43:40];  
      weight[22] <= W[39:36];  
      weight[23] <= W[35:32];  
      weight[24] <= W[31:28];  
      weight[25] <= W[27:24];  
      weight[26] <= W[23:20];  
      weight[27] <= W[19:16];  
      weight[28] <= W[15:12];  
      weight[29] <= W[11:8];  
      weight[30] <= W[7:4];  
      weight[31] <= W[3:0];  
    end 
  end


 /*----------------------------------------------------------------------------------------
      CCCCCC        AAA      LL         CCCCCC  UU      UU  
    CC             AA AA     LL       CC        UU      UU  
   CC             AA   AA    LL      CC         UU      UU  
    CC       C   AAAAAAAAA   LL       CC         UU    UU   
     CCCCCCCC   AA       AA  LLLLLLLLL CCCCCCCC   UUUUUU    
*///--------------------------------------------------------------------------------------
 always @(posedge clk or negedge rst_n) 
 begin
 if (~rst_n) 
  begin
  for ( i=0 ;i<3 ; i=i+1) 
   begin
      add_ans1[i]<=0;
      add_ans2[i]<=0;
      add_ans3[i]<=0;
      add_ans4[i]<=0;
   end
  end 
 else if (cnt==1) begin
  // mul_ans[0] <=inputs[0] *weight[0]  ;
  // mul_ans[1] <=inputs[1] *weight[1]  ;
  // mul_ans[2] <=inputs[2] *weight[2]  ;
  // mul_ans[3] <=inputs[3] *weight[3]  ;

  // mul_ans1[0] <=inputs[4] *weight[4]  ;
  // mul_ans1[1] <=inputs[5] *weight[5]  ;
  // mul_ans1[2] <=inputs[6] *weight[6]  ;
  // mul_ans1[3] <=inputs[7] *weight[7]  ;

  // mul_ans2[0]<= inputs[8] *weight[8]  ;
  // mul_ans2[1]<= inputs[9] *weight[9]  ;
  // mul_ans2[2]<= inputs[10]*weight[10] ;
  // mul_ans2[3]<= inputs[11]*weight[11] ;

  // mul_ans3[0]<=inputs[12]*weight[12] ;
  // mul_ans3[1]<=inputs[13]*weight[13] ;
  // mul_ans3[2]<=inputs[14]*weight[14] ;
  // mul_ans3[3]<=inputs[15]*weight[15] ;

  // mul_ans4[0]<=inputs[16]*weight[16] ;
  // mul_ans4[1]<=inputs[17]*weight[17] ;
  // mul_ans4[2]<=inputs[18]*weight[18] ;
  // mul_ans4[3]<=inputs[19]*weight[19] ;

  // mul_ans5[0]<=inputs[20]*weight[20] ;
  // mul_ans5[1]<=inputs[21]*weight[21] ;
  // mul_ans5[2]<=inputs[22]*weight[22] ;
  // mul_ans5[3]<=inputs[23]*weight[23] ;

  // mul_ans6[0]<=inputs[24]*weight[24] ;
  // mul_ans6[1]<=inputs[25]*weight[25] ;
  // mul_ans6[2]<=inputs[26]*weight[26] ;
  // mul_ans6[3]<=inputs[27]*weight[27] ;

  // mul_ans7[0]<=inputs[28]*weight[28] ;
  // mul_ans7[1]<=inputs[29]*weight[29] ;
  // mul_ans7[2]<=inputs[30]*weight[30] ;
  // mul_ans7[3]<=inputs[31]*weight[31] ;

  add_ans1[0] <= (inputs[0] *weight[0]) + (inputs[4] *weight[4]) ;
  add_ans1[1] <= (inputs[1] *weight[1]) + (inputs[5] *weight[5]) ;
  add_ans1[2] <= (inputs[2] *weight[2]) + (inputs[6] *weight[6]) ;
  add_ans1[3] <= (inputs[3] *weight[3]) + (inputs[7] *weight[7]) ;

  add_ans2[0] <= (inputs[8] *weight[8] ) + (inputs[12]*weight[12]) ;
  add_ans2[1] <= (inputs[9] *weight[9] ) + (inputs[13]*weight[13]) ;
  add_ans2[2] <= (inputs[10]*weight[10]) + (inputs[14]*weight[14]) ;
  add_ans2[3] <= (inputs[11]*weight[11]) + (inputs[15]*weight[15]) ;

  add_ans3[0] <= (inputs[16]*weight[16]) + (inputs[20]*weight[20]) ;
  add_ans3[1] <= (inputs[17]*weight[17]) + (inputs[21]*weight[21]) ;
  add_ans3[2] <= (inputs[18]*weight[18]) + (inputs[22]*weight[22]) ;
  add_ans3[3] <= (inputs[19]*weight[19]) + (inputs[23]*weight[23]) ;

  add_ans4[0] <= (inputs[24]*weight[24]) + (inputs[28]*weight[28]) ;
  add_ans4[1] <= (inputs[25]*weight[25]) + (inputs[29]*weight[29]) ;
  add_ans4[2] <= (inputs[26]*weight[26]) + (inputs[30]*weight[30]) ;
  add_ans4[3] <= (inputs[27]*weight[27]) + (inputs[31]*weight[31]) ;
 
  end
  else 
  begin
    for ( i=0 ;i<3 ;i=i+1 ) 
    begin
      add_ans1[i] <= add_ans1[i];
      add_ans2[i] <= add_ans2[i];
      add_ans3[i] <= add_ans3[i];
      add_ans4[i] <= add_ans4[i];
    end
  end
end

always @(posedge clk or negedge rst_n) // add_ans1
 begin
  if (~rst_n) 
    begin
    for ( i=0 ;i<7 ; i=i+1) 
     begin
      add_ans5[i] <= 0;
     end
    end 
    else if (cnt==2) begin
      // add_ans1[0] <= mul_ans[0] + mul_ans1[0] ;
      // add_ans1[1] <= mul_ans[1] + mul_ans1[1] ;
      // add_ans1[2] <= mul_ans[2] + mul_ans1[2] ;
      // add_ans1[3] <= mul_ans[3] + mul_ans1[3] ;

      // add_ans2[0] <= mul_ans2[0] + mul_ans3[0] ;
      // add_ans2[1] <= mul_ans2[1] + mul_ans3[1] ;
      // add_ans2[2] <= mul_ans2[2] + mul_ans3[2] ;
      // add_ans2[3] <= mul_ans2[3] + mul_ans3[3] ;

      // add_ans3[0] <= mul_ans4[0] + mul_ans5[0] ;
      // add_ans3[1] <= mul_ans4[1] + mul_ans5[1] ;
      // add_ans3[2]<= mul_ans4[2] + mul_ans5[2] ;
      // add_ans3[3]<= mul_ans4[3] + mul_ans5[3] ;

      // add_ans4[0]<= mul_ans6[0] + mul_ans7[0] ;
      // add_ans4[1]<= mul_ans6[1] + mul_ans7[1] ;
      // add_ans4[2]<= mul_ans6[2] + mul_ans7[2] ;
      // add_ans4[3]<= mul_ans6[3] + mul_ans7[3] ;

      add_ans5[0] <= add_ans1[0] + add_ans2[0] ;
      add_ans5[1] <= add_ans1[1] + add_ans2[1] ;
      add_ans5[2] <= add_ans1[2] + add_ans2[2] ;
      add_ans5[3] <= add_ans1[3] + add_ans2[3] ;
      add_ans5[4] <= add_ans3[0] + add_ans4[0] ;
      add_ans5[5] <= add_ans3[1] + add_ans4[1] ;
      add_ans5[6] <= add_ans3[2] + add_ans4[2] ;
      add_ans5[7] <= add_ans3[3] + add_ans4[3] ;
    end
  else 
  begin
   for ( i=0 ;i<7 ;i=i+1 ) 
   begin
      add_ans5[i] <= add_ans5[i];
   end 
  end
 end


always @(posedge clk or negedge rst_n) // add_ans2
 begin
  if (~rst_n) 
    begin
    for ( i=0 ;i<3 ; i=i+1) 
     begin
      add_ans6[i]<=0;
     end
    end 
   else if (cnt==3) begin
      add_ans6[0] <= add_ans5[0] + add_ans5[2] ;
      add_ans6[1] <= add_ans5[1] + add_ans5[3] ;
      add_ans6[2] <= add_ans5[4] + add_ans5[6] ;
      add_ans6[3] <= add_ans5[5] + add_ans5[7] ;
    end
 else 
  begin
   for ( i=0 ;i<3 ;i=i+1 ) 
   begin
      add_ans6[i]  <= add_ans6[i] ;
   end
  end
 end


always @(posedge clk or negedge rst_n) // add_ans3
 begin
  if (~rst_n) 
    begin
    for ( i=0 ;i<2 ; i=i+1) 
     begin
      add_ans7[i]<=0;
     end
    end 
   else if (cnt==4) begin
      add_ans7[0] <= add_ans6[0] + add_ans6[1] ;
      add_ans7[1] <= add_ans6[2] + add_ans6[3] ;
    end
 else 
  begin
   for ( i=0 ;i<2 ;i=i+1 ) 
   begin
      add_ans7[i]  <= add_ans7[i] ;
   end
  end
 end

  /*----------------------------------------------------------------------------------------------------------
            oooooo    UU      UU TTTTTTTTTT 
          oo      oo  UU      UU     TT     
         oo        oo UU      UU     TT     
          oo      oo   UU    UU      TT     
            oooooo      UUUUUU       TT     
  *///-------------------------------------------------------------------------------------------------------

  always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      out_valid <= 0;
    else if (cnt==5) 
      out_valid <=1;
    else
         out_valid <= 0;
  end
always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
      OUT <= 0;
    else if(cnt==5)
       OUT <= add_ans7[0] + add_ans7[1]; 
    else 
        OUT <= 0;
  end

  
  ICGx3_ASAP7_75t_R user_ICGx3_ASAP7_75t_R0 (
        .CLK(clk),
        .SE(enable_0),
        .ENA(dont_care),
		    .GCLK(clk_gate_0)
    );
        
endmodule