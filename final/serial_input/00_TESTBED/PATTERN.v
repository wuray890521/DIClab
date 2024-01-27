//==============================================
//==============================================					
//												
//	File Name		:	Final.v					
//	Module Name		:	Fianl						
//	Release version	:	v1.0
//  Writer : Ray				
//												
//==============================================
//==============================================
`define clk_PERIOD 20.0//# the unit of the clk_PERIOD  in here is ns 
`define End_CYCLE 10000
module PATTERN	(
	// Output signals
	rst_n,
	clk,
	in_valid,
	weight_valid,
	I,
	W,
	//Input signals
	out_valid,
	OUT
);

//------------------------------
//	I/O Pors
//------------------------------
    input  out_valid;
    input [12:0] OUT;
    
    output reg rst_n;
    output reg clk;
    output reg in_valid;
    output reg weight_valid;
    output reg [127:0] I;
	  output reg [127:0] W;
//------------------------------
//	Parameter & Integer
//------------------------------
real	CYCLE = `clk_PERIOD;

parameter Delay = 2.5;
parameter Pattern_num = 50;

integer seed = 2177;
integer pat;
integer j;
integer i;
integer k;
integer l;
integer Gol1,Gol2,Gol3,Gol4,Golden;


integer cycles;
integer exe_lat;
integer out_lat;
integer tot_lat;


//------------------------------
//	Register
//------------------------------
reg [3:0] P_weight[0:31]; //Pattern_weight
reg [31:0] data_length;
reg [30:0]latency;
reg [30:0]total_latency;
reg [3:0] Input [0:31];

//reg [127:0] Input[0:(Pattern_num-1)];

//------------------------------
//	Clock
//------------------------------
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;

/*initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;
always @(posedge clk) 
begin
    if (!rst_n) 
    begin
    latency <= 0;    
    end 
    else if (in_valid==1)
    latency <= 0;
    else begin
    latency <= latency+1; 
    end
end*/

//------------------------------
//	Initial
//------------------------------
initial exe_task;
/*for (pat=0 ; pat<Pattern_num ; pat=pat+1) begin
 end*/
task exe_task; begin 
  
    reset_signal_task;
    
    for ( pat=0 ;pat<Pattern_num ;pat=pat+1 ) 
    begin
    readweight_task;
    readinput_task;
    #(CYCLE/2);
    input_task;
    waitOut_task;
    check_task;
    $display("\033[0;34mPASS PATTERN NO.",pat+1,"\033[m \033[0;32m Cycles:%3d\033[m",latency);
    end
    
    pass_task;
end endtask

task reset_signal_task; begin 
  force clk = 0;
    rst_n = 'b1;

    in_valid = 'b0;
    weight_valid = 'b0;
    data_length = 'b0;
    I = 'dx;
    W = 'dx;
    tot_lat = 'b0;
    
    #(CYCLE/2.0) rst_n = 0;
    #(CYCLE/2.0) rst_n = 1;
    if( OUT!==0 || out_valid!==0) begin //out!==0
            $display("*************************************************************************");  
            $display("*                          SPEC MAIN-1 FAIL                             *");    
            $display("* All output signals should be reset after the reset signal is asserted *");
            $display("*************************************************************************");
            repeat(2) #CYCLE; //??
            $finish;
    end
	#CYCLE; release clk;
end 
endtask
/*
task reset_task; begin
	rst_n = 1;
	in_valid = 0;
	weight_valid = 0;
    data_length = 0;
	I = 'dx;
  W = 'dx;
    
	tot_lat = 0;
	#(CYCLE/2) rst_n = 0;
    #(CYCLE/2) rst_n = 1;
	
	if (OUT!==0 || out_valid!==0) begin
        $display("                                                                                                     ");
        $display("                                                                                                     ");
        $display("                                _ .___.-''.-=-.                                                      ");
        $display("                    __.-- _ _.-'_)_  (''`'-._\\ `.                                                   ");
        $display("                 _.'  __ |.' .-' __)  .-     /. |                                                    ");
        $display("               .'_.--'   |     -'  _)/         `\\                                                   ");
        $display("             .'.'      .'       .-'_.`           :                                                   ");
        $display("             .'     .-'       .(.-(              :                                                   ");
        $display("                  .'       .-' .    _            ;                                                   ");
        $display("                 /        .-._/`---'            /                                                    ");
        $display("                /        (____)(----. )       .'                                                     ");
        $display("               /         (      `.__.     / \\ /.           Output signals should be 0               ");
        $display("              :           ;-.___         /__ \\/|                                                    ");
        $display("              |         .'      `--.      -. \\ |           after the reset singal is asserted ......");
        $display("              :        /            \\    .__/                                                       ");
        $display("               \\      (__            \\    |_               at %4d ps                               ", $time*1000);
        $display("                \\       .`-. *       /   _|.\                                                       ");
        $display("                 \\    .'   `-.     .'_.-'   \\                                                      ");
        $display("                (_\\.-'    .'\')--.'-'       __\\                                                    ");
        $display("                 \\       /  // .'|      .--'  `-.                                                   ");
        $display("                  `-.    `-/ \\'  |   _.'         `.                                                 ");
        $display("                     `-._ /      `--'/             \\                                                ");
        $display("                        .'           |              \\                                               ");
        $display("                       /             |               \\                                              ");
        $display("                    .-'              |               /                                               ");
        $display("                   /                 |             -'                                                ");
        $display("                                                                                                     ");
        $display("                                                                                                     ");
        //$fclose(file);
        repeat(5) #(CYCLE);
        $finish;
    end
    #(CYCLE/2.0) release clk;
end endtask*/

integer input_file1;

task readweight_task; begin

    input_file1 = $fopen("../00_TESTBED/Final_projeect_PATTERN.txt","r");
 
    if (input_file1==0) 
      begin
   	    $display("Error: Unable to open file");
        $finish;
      end

    $fscanf (input_file1, "W1=%d,W2=%d,W3=%d,W4=%d,W5=%d,W6=%d,W7=%d,W8=%d,W9=%d,W10=%d,W11=%d,W12=%d,W13=%d,W14=%d,W15=%d,W16=%d,W17=%d,W18=%d,W19=%d,W20=%d,W21=%d,W22=%d,W23=%d,W24=%d,W25=%d,W26=%d,W27=%d,W28=%d,W29=%d,W30=%d,W31=%d,W32=%d",
    P_weight[0],P_weight[1],P_weight[2],P_weight[3],P_weight[4],P_weight[5],P_weight[6],P_weight[7],P_weight[8],P_weight[9],P_weight[10],P_weight[11],P_weight[12],P_weight[13],P_weight[14],P_weight[15],P_weight[16],P_weight[17],P_weight[18],P_weight[19],
    P_weight[20],P_weight[21],P_weight[22],P_weight[23],P_weight[24],P_weight[25],P_weight[26],P_weight[27],P_weight[28],P_weight[29],P_weight[30],P_weight[31]);
  end endtask  

reg [7:0] line_count = 0; //initialize reg to be 0
reg [31:0] input_file2;

task readinput_task;
    begin
      if (line_count == 0) begin
        input_file2 = $fopen("../00_TESTBED/INPUTaftTrans.txt", "r");
      end

      if (input_file2 != 0) begin
        // Read a line from the file
        $fscanf(input_file2, "%h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h %h",
                 Input[0], Input[1], Input[2], Input[3], Input[4], Input[5], Input[6], Input[7],
                 Input[8], Input[9], Input[10], Input[11], Input[12], Input[13], Input[14], Input[15],
                 Input[16], Input[17], Input[18], Input[19], Input[20], Input[21], Input[22], Input[23],
                 Input[24], Input[25], Input[26], Input[27], Input[28], Input[29], Input[30], Input[31]);

        // Increment line count
        line_count = line_count + 1;

        // Check if end of file is reached
        if ($feof(input_file2)) begin
          // Close the file and reset line count for the next iteration
          $fclose(input_file2);
          line_count = 0;
        end
      end
    end
  endtask



task input_task; 
begin
    in_valid = 1;  
    weight_valid = 1;
    I = {Input[0], Input[1], Input[2], Input[3], Input[4], Input[5], Input[6], Input[7], Input[8], Input[9], Input[10], Input[11], Input[12], Input[13], Input[14], Input[15], 
         Input[16], Input[17], Input[18], Input[19], Input[20], Input[21], Input[22], Input[23], Input[24], Input[25], Input[26], Input[27], Input[28], Input[29], Input[30], Input[31] };
  
    W = {P_weight[0], P_weight[1], P_weight[2], P_weight[3], P_weight[4], P_weight[5], P_weight[6], P_weight[7], P_weight[8], P_weight[9], P_weight[10], P_weight[11], P_weight[12],
         P_weight[13], P_weight[14], P_weight[15], P_weight[16], P_weight[17], P_weight[18], P_weight[19], P_weight[20], P_weight[21], P_weight[22], P_weight[23], 
         P_weight[24], P_weight[25], P_weight[26], P_weight[27], P_weight[28], P_weight[29], P_weight[30], P_weight[31]};
   

    Gol1 = Input[0]*P_weight[0]+Input[1]*P_weight[1]+Input[2]*P_weight[2]+Input[3]*P_weight[3]+Input[4]*P_weight[4]+Input[5]*P_weight[5]+Input[6]*P_weight[6]+Input[7]*P_weight[7];
    Gol2 = Input[8]*P_weight[8]+Input[9]*P_weight[9]+Input[10]*P_weight[10]+Input[11]*P_weight[11]+Input[12]*P_weight[12]+Input[13]*P_weight[13]+Input[14]*P_weight[14]+Input[15]*P_weight[15];
    Gol3 = Input[16]*P_weight[16]+Input[17]*P_weight[17]+Input[18]*P_weight[18]+Input[19]*P_weight[19]+Input[20]*P_weight[20]+Input[21]*P_weight[21]+Input[22]*P_weight[22]+Input[23]*P_weight[23];
    Gol4 = Input[25]*P_weight[25]+Input[26]*P_weight[26]+Input[27]*P_weight[27]+Input[28]*P_weight[28]+Input[29]*P_weight[29]+Input[30]*P_weight[30]+Input[31]*P_weight[31]+Input[24]*P_weight[24];

    Golden = Gol1 + Gol2 + Gol3 + Gol4;
    
    #(CYCLE);
    in_valid = 0;    
    I = 'dx;
    weight_valid = 0;
    W = 'dx;
    
   
end endtask

task waitOut_task; 
begin
 cycles = 0;
	while(out_valid === 0)begin
		cycles = cycles + 1;
		if ( cycles == 100 ) begin
			$display ("Total latency is over 10000");
			repeat(2)@(negedge clk);
			$finish ;			
		end
		@(negedge clk);
	end
end endtask


task check_task; 
begin 
out_lat = 0;
while (out_valid === 1)
 begin
    if (OUT !== Golden) 
    begin
    $display ("----------------------------------------------------------------------------------------------------------------------");      
    $display ("                                                  Wrong answer!"                                       );
	  //$display("Pattern No. 	= %d",patcount);
	  $display ("                                               Golden_OUT 	= %d",Golden                                );
	  $display ("                                               Your___OUT  = %d",OUT                                   );		
	  $display ("----------------------------------------------------------------------------------------------------------------------");
    @(negedge clk);
	  $finish ;				    
    end
    @(negedge clk);
 end
end endtask


task pass_task; begin
$display ("----------------------------------------------------------------------------------------------------------------------");
$display ("                                                  Congratulations!                						            ");
$display ("                                           You have passed all patterns!          						            ");
$display ("----------------------------------------------------------------------------------------------------------------------");
repeat(5) @(negedge clk);
$finish;	
end endtask




endmodule