module Convolution_without_pipeline(
 //input
clk,
rst_n,
in_valid,
weight_valid,
In_IFM_1,
In_Weight_1,
//output
out_valid, 
Out_OFM 

);

input clk, rst_n, in_valid, weight_valid;
input [15:0]In_IFM_1;  
input [15:0]In_Weight_1;


//////////////The output port shoud be registers///////////////////////
output reg out_valid;
output reg[35:0] Out_OFM;
//////////////////////////////////////////////////////////////////////


reg [1:0] state_cs, state_ns;
parameter IDLE = 2'd0;
parameter IN_DATA = 2'd1;
parameter EXE = 2'd2;

reg [15:0]buffer[0:48] ;

reg [15:0]buffer_weight[0:8];

reg [5:0] cnt ;

reg [5:0] in[0:8] ;

reg [31:0] result [0:8];

integer i ;
///////////////////////////////////////////////////////////////////////
always@(posedge clk or negedge rst_n) begin
 if(!rst_n)
  state_cs <= IDLE;
 else
  state_cs <= state_ns;
end

always@(*) begin
 case(state_cs)
  IDLE:
  begin
   if(in_valid)
    state_ns = IN_DATA;
   else
    state_ns = IDLE;
  end
  
  IN_DATA:
  begin
   if(in_valid)
    state_ns = IN_DATA;
   else
    state_ns = EXE;
  end

  EXE:
  begin
   if(cnt == 25)
    state_ns = IDLE;
   else
    state_ns = EXE;
  end
  default:
   state_ns = IDLE;
 endcase
end

always @(posedge clk or negedge rst_n) begin
 if (!rst_n) begin
  cnt <= 0 ;
 end
 else if (in_valid) begin
  cnt <= cnt + 1 ;
 end
 else if (state_cs == EXE) begin
  cnt <= cnt + 1 ;
 end
 else if (!in_valid) begin
  cnt <= 0 ;
 end
end

always@(posedge clk or negedge rst_n) begin
 if (!rst_n) begin
  for (i = 0 ; i<49 ; i=i+1) begin
   buffer [i] <= 0 ;
  end
 end
 else if (in_valid) begin
  buffer[cnt] <= In_IFM_1 ;
 end
end


always @(posedge clk or negedge rst_n) begin
 if (!rst_n) begin
  for (i =0 ;i<9 ;i=i+1 ) begin
   buffer_weight [i] <= 0 ;
  end
 end
 else if (weight_valid) begin
  buffer_weight[cnt] <= In_Weight_1 ;
 end
end

always@(posedge clk or negedge rst_n) begin
 if(!rst_n)
  out_valid <= 0;
 else if(state_cs == EXE && cnt > 0)
  out_valid <= 1;
 else
  out_valid <= 0;
end

always @(posedge clk or negedge rst_n) begin
 if (!rst_n) begin
  for (i =0 ;i<9 ;i=i+1 ) begin
   in[i] <= 0;
  end  
 end
 else if (!in_valid && cnt == 49) begin
  in[0] <= 0 ; 
  in[1] <= 1 ; 
  in[2] <= 2 ; 
  in[3] <= 7 ; 
  in[4] <= 8 ; 
  in[5] <= 9 ; 
  in[6] <= 14 ; 
  in[7] <= 15 ; 
  in[8] <= 16 ;
 end
 else if (state_cs == EXE) begin
  if (in[0] % 7 == 4) begin
    in[0] <= in[0] + 3 ;
    in[1] <= in[1] + 3 ;
    in[2] <= in[2] + 3 ;
    in[3] <= in[3] + 3 ;
    in[4] <= in[4] + 3 ;
    in[5] <= in[5] + 3 ;
    in[6] <= in[6] + 3 ;
    in[7] <= in[7] + 3 ;
    in[8] <= in[8] + 3 ;
  end
  else begin
    in[0] <= in[0] + 1 ;
    in[1] <= in[1] + 1 ;
    in[2] <= in[2] + 1 ;
    in[3] <= in[3] + 1 ; 
    in[4] <= in[4] + 1 ;
    in[5] <= in[5] + 1 ;
    in[6] <= in[6] + 1 ;
    in[7] <= in[7] + 1 ;
    in[8] <= in[8] + 1 ;
  end
 end

end

always@(posedge clk or negedge rst_n) begin
 if(!rst_n) begin
        for (i =0 ;i<9 ;i=i+1 ) 
      result[i] <= 0;
    end
 else if(state_cs == EXE) begin
        for (i =0 ;i<9 ;i=i+1 ) 
      result[i] <= buffer[in[i]] * buffer_weight[i];
 end
end

always@(posedge clk or negedge rst_n) begin
 if(!rst_n)
  Out_OFM <= 0;
 else if(state_cs == EXE && cnt > 0) begin
  Out_OFM <= result[0]
     + result[1]
     + result[2]
     + result[3]
     + result[4]
     + result[5]
     + result[6]
     + result[7]
     + result[8] ;
 end
 else
  Out_OFM <= 0;
end
endmodule