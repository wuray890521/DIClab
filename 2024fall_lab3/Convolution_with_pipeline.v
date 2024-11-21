module Convolution_without_pipeline(
	//input
clk,
rst_n,
in_valid,
In_IFM,
In_Weight,
//output
out_valid,
Out_OFM

);

input clk, rst_n, in_valid;
input [15:0]In_IFM;
input [15:0]In_Weight;

//////////////The output port shoud be registers///////////////////////
output reg out_valid;
output reg[35:0] Out_OFM;
//////////////////////////////////////////////////////////////////////

////reg_for_cnt//
reg [8:0] count;
reg [3:0] count_load_x;
reg [3:0] count_load_y;
////reg_for_cnt//

// reg convolution //
reg flag_con;
reg [3:0] count_con_x;
reg [3:0] count_con_y;

reg [31:0] multi_0;
reg [31:0] multi_1;
reg [31:0] multi_2;
reg [31:0] multi_3;
reg [31:0] multi_4;
reg [31:0] multi_5;
reg [31:0] multi_6;
reg [31:0] multi_7;
reg [31:0] multi_8;

reg [35:0] convolution_matrix[0:11][0:11];
// reg convolution //

// reg maxpooling //
reg flag_max;
reg [3:0] count_max_x;
reg [3:0] count_max_y;
reg [35:0] max_com_0;
reg [35:0] max_com_1;
reg [35:0] max_com_2;
reg [35:0] max_com_3;
reg [35:0] test_0;
reg [35:0] test_1;

// reg maxpooling //

/////// 2 Buffer/////////////
//You have to sue these buffers for the 3-1 ///////
reg [15:0]IFM_Buffer[0:13][0:13] ;   //  Use this buffer to store IFM
reg [15:0]Weight_Buffer[0:2][0:2];  //  Use this buffer to store Weight
/////////////////////////////////////

integer i,j;
reg in_valid_reg;

////////Here just an example of how to use IFM_buffer & WEight_Buffer to store data////////
//The storage mechanism can be modified, but not the buffer size cannot be modified
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		in_valid_reg <= 0;
	end
	else begin
		in_valid_reg <= in_valid;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count <= 0;
	end
	else if(in_valid && !in_valid_reg) count <= 0;
	else count <= count + 1;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_load_x <= 0;
	end
	else if (in_valid) begin
		if(count_load_x == 13) count_load_x <= 0;
		else count_load_x <= count_load_x + 1;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_load_y <= 0;
	end
	else if (in_valid) begin
		if (count_load_x == 13) count_load_y <= count_load_y + 1;
		else count_load_y <= count_load_y;
	end
	else if (count == 195) begin
		count_load_y <= 0;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		for (i = 0; i < 14 ; i = i + 1) begin
			for (j = 0; j < 14 ; j = j + 1) begin
				IFM_Buffer [i][j] <= 0;
			end
		end
	end
	else if (in_valid) begin
		IFM_Buffer[count_load_y][count_load_x] <= In_IFM;
	end
	else if (out_valid) begin
		for (i = 0; i < 14 ; i = i + 1) begin
			for (j = 0; j < 14 ; j = j + 1) begin
				IFM_Buffer [i][j] <= 0;
			end
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		for (i = 0; i < 3 ; i = i + 1) begin
			for (j = 0; j < 3 ; j = j + 1) begin
				Weight_Buffer [i][j] <= 0;
			end
		end
	end
	else if (in_valid) begin
		if (count_load_y == 0) begin
			if (count_load_x == 0) Weight_Buffer[0][0] <= In_Weight;
			else if (count_load_x == 1) Weight_Buffer[0][1] <= In_Weight;
			else if (count_load_x == 2) Weight_Buffer[0][2] <= In_Weight;
			else if (count_load_x == 3) Weight_Buffer[1][0] <= In_Weight;
			else if (count_load_x == 4) Weight_Buffer[1][1] <= In_Weight;
			else if (count_load_x == 5) Weight_Buffer[1][2] <= In_Weight;
			else if (count_load_x == 6) Weight_Buffer[2][0] <= In_Weight;
			else if (count_load_x == 7) Weight_Buffer[2][1] <= In_Weight;
			else if (count_load_x == 8) Weight_Buffer[2][2] <= In_Weight;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		flag_con <= 0;
	end
	else if (count == 68) flag_con <= 1;
	else if (count == 212) flag_con <= 0;
	else flag_con <= flag_con;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_con_x <= 0;
	end
	else if (flag_con) begin
		if (count_con_x == 11) count_con_x <= 0;
		else count_con_x <= count_con_x + 1;
	end
	else count_con_x <= count_con_x;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_con_y <= 0;
	end
	else if (flag_con) begin
		if (count_con_x == 11)count_con_y <= count_con_y + 1;
		else count_con_y <= count_con_y;
	end
	else count_con_y <= 0;
end

always @(*) begin
	multi_0 = IFM_Buffer[count_con_y][count_con_x]*Weight_Buffer[0][0];
	multi_1 = IFM_Buffer[count_con_y][1 + count_con_x]*Weight_Buffer[0][1];
	multi_2 = IFM_Buffer[count_con_y][2 + count_con_x]*Weight_Buffer[0][2];
	multi_3 = IFM_Buffer[1 + count_con_y][count_con_x]*Weight_Buffer[1][0];
	multi_4 = IFM_Buffer[1 + count_con_y][1 + count_con_x]*Weight_Buffer[1][1];
	multi_5 = IFM_Buffer[1 + count_con_y][2 + count_con_x]*Weight_Buffer[1][2];
	multi_6 = IFM_Buffer[2 + count_con_y][count_con_x]*Weight_Buffer[2][0];
	multi_7 = IFM_Buffer[2 + count_con_y][1 + count_con_x]*Weight_Buffer[2][1];
	multi_8 = IFM_Buffer[2 + count_con_y][2 + count_con_x]*Weight_Buffer[2][2];
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		for (i = 0; i < 12 ; i = i + 1) begin
			for (j = 0; j < 12 ; j = j + 1) begin
				convolution_matrix [i][j] <= 0;
			end
		end
	end
	else if (flag_con) begin
		convolution_matrix[count_con_y][count_con_x] <=   multi_0 
														+ multi_1
														+ multi_2
														+ multi_3
														+ multi_4
														+ multi_5
														+ multi_6
														+ multi_7
														+ multi_8;
	end
	else begin
		for (i = 0; i < 12 ; i = i + 1) begin
			for (j = 0; j < 12 ; j = j + 1) begin
				convolution_matrix [i][j] <= convolution_matrix [i][j];
			end
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		flag_max <= 0;
	end
	else if (count == 212) flag_max <= 1;
	else if (count == 250) flag_max <= 0;
	else flag_max <= flag_max;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_max_x <= 0;
	end
	else if (flag_max) begin
		if (count_max_x == 10) count_max_x <= 0;
		else count_max_x <= count_max_x + 2;
	end
	else count_max_x <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		count_max_y <= 0;
	end
	else if (flag_max) begin
		if (count_max_x == 10) count_max_y <= count_max_y + 2;
		else count_max_y <= count_max_y;
	end
	else count_max_y <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		max_com_0 <= 0;
	end
	else if (flag_max) max_com_0 <= convolution_matrix[count_max_y][count_max_x];
	else max_com_0 <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		max_com_1 <= 0;
	end
	else if (flag_max) max_com_1 <= convolution_matrix[1 + count_max_y][count_max_x];
	else max_com_1 <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		max_com_2 <= 0;
	end
	else if (flag_max) max_com_2 <= convolution_matrix[count_max_y][1 + count_max_x];
	else max_com_2 <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) max_com_3 <= 0;
	else if (flag_max) max_com_3 <= convolution_matrix[1 + count_max_y][1 + count_max_x];
	else max_com_3 <= 0;
end

always @(*) begin
	if (flag_max) begin
		if (max_com_0 > max_com_1) begin
			test_0 = max_com_0;
		end
		else test_0 = max_com_1;
	end
	else test_0 = 0;
end

always @(*) begin
	if (flag_max) begin
		if (max_com_2 > max_com_3) begin
			test_1 = max_com_2;
		end
		else test_1 = max_com_3;
	end
	else test_1 = 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		Out_OFM <= 0;
	end
	else if (flag_max) begin
		if (test_0 > test_1) begin
			Out_OFM <= test_0;
		end
		else if (count == 250) Out_OFM <= 0;
		else Out_OFM <= test_1;
	end
	else Out_OFM <= 0;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		out_valid <= 0;
	end
	else if (count == 214) begin
		out_valid <= 1;
	end
	else if (count == 250) begin
		out_valid <= 0;
	end
	else out_valid <= out_valid;
end
///////////////////////////////////////////////////////

endmodule