`timescale 1ns/1ps
`ifdef RTL
`include "../01_RTL/Final.v"
`elsif GATE
 `include "../02_SYN/Netlist/Final_SYN.v"
`endif

`include "../00_TESTBED/PATTERN.v"


module TESTBED;
   //input
	wire clk;
	wire rst_n;
	wire in_valid;
	wire weight_valid;
	wire [127:0] I;
	wire [127:0] W;
	//output
	wire out_valid;
	wire [12:0] OUT;

	
initial begin
	`ifdef RTL
		$fsdbDumpfile("Final.fsdb");
		$fsdbDumpvars();
		$fsdbDumpvars(0,"+mda");
	`elsif GATE
		$fsdbDumpfile("Final_SYN.fsdb");
		//`endif
		$sdf_annotate("/RAID2/COURSE/dic/dic324/final/02_SYN/Netlist/Final_SYN.sdf",u_Final,"maximum");   	
		$fsdbDumpvars(0,"+mda");
		$fsdbDumpvars();
	`endif
end

Final u_Final	(
		.clk(clk),
		.rst_n(rst_n),	
		.in_valid(in_valid),
		.weight_valid(weight_valid),		
		.I(I),
		.W(W),
		.out_valid(out_valid), 
		.OUT(OUT)
		);

PATTERN	u_PATTERN(
		.clk(clk),
		.rst_n(rst_n),	
		.in_valid(in_valid),
		.weight_valid(weight_valid),		
		.I(I),
		.W(W),
		.out_valid(out_valid), 
		.OUT(OUT)
		);		
endmodule