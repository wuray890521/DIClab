`ifdef RTL
`include "asap7sc7p5t_SEQ_RVT_TT_08302018.v"
`endif 

module Convolution(
        //input
        clk,
        rst_n,
        in_valid,
        weight_valid,
        In_IFM_1,
        In_IFM_2,
        In_IFM_3,
        In_IFM_4,
        In_IFM_5,
        In_IFM_6,
        In_IFM_7,
        In_IFM_8,
        In_IFM_9,
        In_Weight_1,
        In_Weight_2,
        In_Weight_3,
        In_Weight_4,
        In_Weight_5,
        In_Weight_6,
        In_Weight_7,
        In_Weight_8,
        In_Weight_9,
        //output
        out_valid, 
        Out_OFM
);

        input clk, rst_n, in_valid, weight_valid;
        
        input [7:0]In_IFM_1;
        input [7:0]In_IFM_2;
        input [7:0]In_IFM_3;
        input [7:0]In_IFM_4;
        input [7:0]In_IFM_5;
        input [7:0]In_IFM_6;
        input [7:0]In_IFM_7;
        input [7:0]In_IFM_8;
        input [7:0]In_IFM_9;
        input [7:0]In_Weight_1;
        input [7:0]In_Weight_2;
        input [7:0]In_Weight_3;
        input [7:0]In_Weight_4;
        input [7:0]In_Weight_5;
        input [7:0]In_Weight_6;
        input [7:0]In_Weight_7;
        input [7:0]In_Weight_8;
        input [7:0]In_Weight_9;

        reg [7:0] Reg_IFM_in_1;
        reg [7:0] Reg_IFM_in_2;
        reg [7:0] Reg_IFM_in_3;
        reg [7:0] Reg_IFM_in_4;
        reg [7:0] Reg_IFM_in_5;
        reg [7:0] Reg_IFM_in_6;
        reg [7:0] Reg_IFM_in_7;
        reg [7:0] Reg_IFM_in_8;
        reg [7:0] Reg_IFM_in_9;
        reg [7:0] Reg_Weight_in_1;
        reg [7:0] Reg_Weight_in_2;
        reg [7:0] Reg_Weight_in_3;
        reg [7:0] Reg_Weight_in_4;
        reg [7:0] Reg_Weight_in_5;
        reg [7:0] Reg_Weight_in_6;
        reg [7:0] Reg_Weight_in_7;
        reg [7:0] Reg_Weight_in_8;
        reg [7:0] Reg_Weight_in_9;

        reg [15:0] MUL_1;
        reg [15:0] MUL_2;
        reg [15:0] MUL_3;
        reg [15:0] MUL_4;
        reg [15:0] MUL_5;
        reg [15:0] MUL_6;
        reg [15:0] MUL_7;
        reg [15:0] MUL_8;
        reg [15:0] MUL_9;

        output reg out_valid;
        output reg [20:0] Out_OFM;

        reg [2:0] state_cs, state_ns;
        parameter IDLE = 3'd0;
        parameter IN_DATA = 3'd1;
        parameter EXE = 3'd2;

        
        wire clk_gate_0;
        wire clk_gate_1;
        wire clk_gate_2;
        wire clk_gate_3;
        wire clk_gate_4;
        wire clk_gate_5;
        wire clk_gate_6;
        wire clk_gate_7;
        wire clk_gate_8;
        wire clk_gate_9;
        wire clk_gate_Weight;

        wire care;
        
        reg Enable_1;
        reg Enable_2;
        reg Enable_3;
        reg Enable_4;
        reg Enable_5;
        reg Enable_6;
        reg Enable_7;
        reg Enable_8;
        reg Enable_9;
        reg Enable_weight;
        reg ifm_1_valid;
        reg ifm_2_valid;
        reg ifm_3_valid;
        reg ifm_4_valid;
        reg ifm_5_valid;
        reg ifm_6_valid;
        reg ifm_7_valid;
        reg ifm_8_valid;
        reg ifm_9_valid;

        reg [4:0] count_out;

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
                        state_ns = EXE;
                else
                        state_ns = IDLE;
                end
                IN_DATA:
                begin
                        state_ns = EXE;
                end
                EXE:
                begin
                if(count_out == 24)
                        state_ns = IDLE;
                else
                        state_ns = EXE;
                end
                default:
                        state_ns = IDLE;
        endcase
end

// Enable signals for clock gating
always@(*)begin
        Enable_1<=in_valid&&(In_IFM_1!=0);
        Enable_2<=in_valid&&(In_IFM_2!=0);
        Enable_3<=in_valid&&(In_IFM_3!=0);
        Enable_4<=in_valid&&(In_IFM_4!=0);
        Enable_5<=in_valid&&(In_IFM_5!=0);
        Enable_6<=in_valid&&(In_IFM_6!=0);
        Enable_7<=in_valid&&(In_IFM_7!=0);
        Enable_8<=in_valid&&(In_IFM_8!=0);
        Enable_9<=in_valid&&(In_IFM_9!=0);
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        ifm_1_valid<=1'd0;
        ifm_2_valid<=1'd0;
        ifm_3_valid<=1'd0;
        ifm_4_valid<=1'd0;
        ifm_5_valid<=1'd0;
        ifm_6_valid<=1'd0;
        ifm_7_valid<=1'd0;
        ifm_8_valid<=1'd0;
        ifm_9_valid<=1'd0;
    end
    else begin
        ifm_1_valid<=Enable_1;
        ifm_2_valid<=Enable_2;
        ifm_3_valid<=Enable_3;
        ifm_4_valid<=Enable_4;
        ifm_5_valid<=Enable_5;
        ifm_6_valid<=Enable_6;
        ifm_7_valid<=Enable_7;
        ifm_8_valid<=Enable_8;
        ifm_9_valid<=Enable_9;
    end
end


//in_valid test
assign care = (in_valid) ? 1 : 0;

always @(*) begin
        if (!rst_n) begin
                Enable_weight = 1;
        end
        else if (weight_valid)
                Enable_weight = 1 ;
        else if (!weight_valid)
                Enable_weight = 0;
end
// Clock Gating cells
ICGx3_ASAP7_75t_R GATED_CG_U0(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_1),
        // Output signals
        .GCLK(clk_gate_1)
);
ICGx3_ASAP7_75t_R GATED_CG_U1(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_2),
        // Output signals
        .GCLK(clk_gate_2)
);
ICGx3_ASAP7_75t_R GATED_CG_U2(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_3),
        // Output signals
        .GCLK(clk_gate_3)
);
ICGx3_ASAP7_75t_R GATED_CG_U3(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_4),
        // Output signals
        .GCLK(clk_gate_4)
);
ICGx3_ASAP7_75t_R GATED_CG_U4(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_5),
        // Output signals
        .GCLK(clk_gate_5)
);
ICGx3_ASAP7_75t_R GATED_CG_U5(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_6),
        // Output signals
        .GCLK(clk_gate_6)
);
ICGx3_ASAP7_75t_R GATED_CG_U6(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_7),
        // Output signals
        .GCLK(clk_gate_7)
);
ICGx3_ASAP7_75t_R GATED_CG_U7(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_8),
        // Output signals
        .GCLK(clk_gate_8)
);
ICGx3_ASAP7_75t_R GATED_CG_U8(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_9),
        // Output signals
        .GCLK(clk_gate_9)
);
ICGx3_ASAP7_75t_R GATED_CG_U9(
        // Input signals
        .CLK(clk),
        .ENA(0),
        .SE(Enable_weight),
        // Output signals
        .GCLK(clk_gate_Weight)
);

// use clk_gate trige input
always @(posedge clk_gate_1 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_1 <= 8'd0;
        end
        else if(Enable_1)begin
                Reg_IFM_in_1 <= In_IFM_1;
        end
end
always @(posedge clk_gate_2 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_2 <= 8'd0;
        end
        else if(Enable_2)begin
                Reg_IFM_in_2 <= In_IFM_2;
        end
end
always @(posedge clk_gate_3 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_3 <= 8'd0;
        end
        else if(Enable_3)begin
                Reg_IFM_in_3 <= In_IFM_3;
        end
end
always @(posedge clk_gate_4 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_4 <= 8'd0;
        end
        else if(Enable_4)begin
                Reg_IFM_in_4 <= In_IFM_4;
        end
end
always @(posedge clk_gate_5 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_5 <= 8'd0;
        end
        else if(Enable_5)begin
                Reg_IFM_in_5 <= In_IFM_5;
        end
end
always @(posedge clk_gate_6 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_6 <= 8'd0;
        end
        else if(Enable_6)begin
                Reg_IFM_in_6 <= In_IFM_6;
        end
end
always @(posedge clk_gate_7 or negedge rst_n) begin
        if(!rst_n)begin
                Reg_IFM_in_7 <= 8'd0;
        end
        else if(Enable_7)begin
                Reg_IFM_in_7 <= In_IFM_7;
        end
end
always @(posedge clk_gate_8 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_8 <= 8'd0;
        end
        else if(Enable_8)begin
                Reg_IFM_in_8 <= In_IFM_8;
        end
end
always @(posedge clk_gate_9 or negedge rst_n ) begin
        if(!rst_n)begin
                Reg_IFM_in_9 <= 8'd0;
        end
        else if(Enable_9)begin
                Reg_IFM_in_9 <= In_IFM_9;
        end
end

// Receive Weight
always @(posedge clk_gate_Weight or negedge rst_n) begin
        if(!rst_n)begin
                Reg_Weight_in_1 <= 8'd0;
                Reg_Weight_in_2 <= 8'd0;
                Reg_Weight_in_3 <= 8'd0;
                Reg_Weight_in_4 <= 8'd0;
                Reg_Weight_in_5 <= 8'd0;
                Reg_Weight_in_6 <= 8'd0;
                Reg_Weight_in_7 <= 8'd0;
                Reg_Weight_in_8 <= 8'd0;
                Reg_Weight_in_9 <= 8'd0;
        end
        else if(weight_valid)begin
                Reg_Weight_in_1 <= In_Weight_1;
                Reg_Weight_in_2 <= In_Weight_2;
                Reg_Weight_in_3 <= In_Weight_3;
                Reg_Weight_in_4 <= In_Weight_4;
                Reg_Weight_in_5 <= In_Weight_5;
                Reg_Weight_in_6 <= In_Weight_6;
                Reg_Weight_in_7 <= In_Weight_7;
                Reg_Weight_in_8 <= In_Weight_8;
                Reg_Weight_in_9 <= In_Weight_9;
        end
        else begin
                Reg_Weight_in_1 <= Reg_Weight_in_1;
                Reg_Weight_in_2 <= Reg_Weight_in_2;
                Reg_Weight_in_3 <= Reg_Weight_in_3;
                Reg_Weight_in_4 <= Reg_Weight_in_4;
                Reg_Weight_in_5 <= Reg_Weight_in_5;
                Reg_Weight_in_6 <= Reg_Weight_in_6;
                Reg_Weight_in_7 <= Reg_Weight_in_7;
                Reg_Weight_in_8 <= Reg_Weight_in_8;
                Reg_Weight_in_9 <= Reg_Weight_in_9;
        end
end

// Multiplers
always @(*)begin
        if (ifm_1_valid)MUL_1 <= Reg_IFM_in_1 * Reg_Weight_in_1;
        else MUL_1 <= 0;
        if (ifm_2_valid)MUL_2 <= Reg_IFM_in_2 * Reg_Weight_in_2;
        else MUL_2 <= 0;
        if (ifm_3_valid)MUL_3 <= Reg_IFM_in_3 * Reg_Weight_in_3;
        else MUL_3 <= 0;
        if (ifm_4_valid)MUL_4 <= Reg_IFM_in_4 * Reg_Weight_in_4;
        else MUL_4 <= 0;
        if (ifm_5_valid)MUL_5 <= Reg_IFM_in_5 * Reg_Weight_in_5;
        else MUL_5 <= 0;
        if (ifm_6_valid)MUL_6 <= Reg_IFM_in_6 * Reg_Weight_in_6;
        else MUL_6 <= 0;
        if (ifm_7_valid)MUL_7 <= Reg_IFM_in_7 * Reg_Weight_in_7;
        else MUL_7 <= 0;
        if (ifm_8_valid)MUL_8 <= Reg_IFM_in_8 * Reg_Weight_in_8;
        else MUL_8 <= 0;
        if (ifm_9_valid)MUL_9 <= Reg_IFM_in_9 * Reg_Weight_in_9;
        else MUL_9 <= 0;
end

always@(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
                out_valid <= 0;
                count_out <= 0;
                Out_OFM <= 0;
        end
        else if(state_cs == EXE)begin
                out_valid <= 1;
                count_out <= count_out + 1;
                Out_OFM <= MUL_1 + MUL_2 + MUL_3 + MUL_4 + MUL_5 + MUL_6 + MUL_7 + MUL_8 + MUL_9;
        end
        else begin
                out_valid <= 0;
                count_out <= 0;
                Out_OFM <= 0;
        end
end
endmodule
