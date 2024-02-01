//3x3_convolution
module Convolution_without_pipeline (
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
//clk_rst
input clk;
input rst_n;
input in_valid;
input weight_valid;

input [15:0]In_IFM_1;		
input [15:0]In_Weight_1;
reg [5:0] in[0:8];

reg [15:0] IFM_Buffer[0:48] ;   //  Use this buffer to store IFM
reg [15:0] Weight_Buffer[0:8];  //  Use this buffer to store Weight
integer i;

output reg out_valid;
output reg [35:0] Out_OFM;
//fsm
reg [1:0] state_cs, state_ns;
parameter IDLE = 2'd0;
parameter IN_DATA = 2'd1;
parameter EXE = 2'd2;

//count
reg [3:0] weight_count;
reg [5:0] ifm_count;
reg [3:0] row_count;
reg [3:0] collern_count;
reg [4:0] out_count;
reg [20:0] cnt;

//fsm
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
   if(cnt == 24)
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

//conture out_valid
always@(posedge clk or negedge rst_n) begin
	if(!rst_n)begin
		out_valid <= 0;
	end
	else if(state_cs == EXE) begin
		out_valid <= 1;
	end
	else
		out_valid <= 0;
end

//weight input intial count
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		for (i=0;i<9;i=i+1) begin
			Weight_Buffer[i] <= 0;
		end	
	end
	else if(weight_valid)begin
		Weight_Buffer[cnt] <= In_Weight_1;
	end
end
//ifm input intial count
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		for (i=0;i<49;i=i+1) begin
			IFM_Buffer[i] <= 0;
		end
	end
	else if(in_valid) begin
		IFM_Buffer[cnt] <= In_IFM_1; 
	end      
end

// //rowcounter collern counter
// always @(posedge clk or negedge rst_n) begin
//     if (~rst_n) begin
//         row_count <= 0;
//         collern_count <= 0;
//     end
//     else if (!in_valid && cnt == 49) begin
//       if (row_count==4 && collern_count < 5) begin
//           collern_count <= collern_count + 1;
//           row_count <= 0;
//           $display("row_count=%0d, collern_count=%0d", row_count, collern_count);
//       end
//       else if (collern_count < 5) begin
//           row_count <= row_count + 1;  
//           $display("row_count=%0d, collern_count=%0d", row_count, collern_count);
//       end
//     end
// end

// // ifm_buffer_input
// // always@(posedge clk or negedge rst_n) begin
// // 	if(!rst_n) begin
// // 		IFM_Buffer_0 <= 0;
// // 		IFM_Buffer_1 <= 0;
// // 		IFM_Buffer_2 <= 0;
// // 		IFM_Buffer_3 <= 0;
// // 		IFM_Buffer_4 <= 0;
// // 		IFM_Buffer_5 <= 0;
// // 		IFM_Buffer_6 <= 0;
// // 		IFM_Buffer_7 <= 0;
// // 		IFM_Buffer_8 <= 0;
// //     for (i = 0; i < 49 ; i=i+1) begin
// //       IFM_Buffer_[i] <= 0;
// //     end
// // 	end
// // 	else if(state_cs == EXE)begin
// // 		IFM_Buffer_0 <= IFM_Buffer[0+row_count+collern_count*7];
// // 		IFM_Buffer_1 <= IFM_Buffer[1+row_count+collern_count*7];
// // 		IFM_Buffer_2 <= IFM_Buffer[2+row_count+collern_count*7];
// // 		IFM_Buffer_3 <= IFM_Buffer[7+row_count+collern_count*7];
// // 		IFM_Buffer_4 <= IFM_Buffer[8+row_count+collern_count*7];
// // 		IFM_Buffer_5 <= IFM_Buffer[9+row_count+collern_count*7];
// // 		IFM_Buffer_6 <= IFM_Buffer[14+row_count+collern_count*7];
// // 		IFM_Buffer_7 <= IFM_Buffer[15+row_count+collern_count*7];
// // 		IFM_Buffer_8 <= IFM_Buffer[16+row_count+collern_count*7];
// // 	end
// // end

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

//cauculate ans
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		Out_OFM <= 0;
	end
	else if(state_cs == EXE) begin
		Out_OFM <= IFM_Buffer[in[0]]*Weight_Buffer[0]
                  +IFM_Buffer[in[1]]*Weight_Buffer[1]
				          +IFM_Buffer[in[2]]*Weight_Buffer[2]
				          +IFM_Buffer[in[3]]*Weight_Buffer[3]
				          +IFM_Buffer[in[4]]*Weight_Buffer[4]
                  +IFM_Buffer[in[5]]*Weight_Buffer[5]
                  +IFM_Buffer[in[6]]*Weight_Buffer[6]
                  +IFM_Buffer[in[7]]*Weight_Buffer[7]
                  +IFM_Buffer[in[8]]*Weight_Buffer[8];
	end
  else
    Out_OFM <= 0;
end
endmodule