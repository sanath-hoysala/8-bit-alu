`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: A Sanath Hoysala
// 
// Create Date: 11.11.2022 21:25:01
// Design Name: 
// Module Name: ALU_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_8bit (D1_a,LED_out,A,B,s,clk,mclk,reset);
output [7:0]LED_out;
output [3:0]D1_a;
output mclk;
input [7:0]A,B;
input clk,reset;
input [2:0]s;
//--------------------------------------------------------------//
wire [3:0]BCD_h,BCD_t,BCD_o;
wire [7:0]y1,y2,y4,y5,y6,y7,y8;
wire [6:0]y3;
wire c81,c82,c83,mclk;
reg [7:0]y,a,b;
reg ex,ds;
//--------------------------------------------------------------//
ADD_SUB_8bit_CLA M2(y1,C81,a,b,1'b0);               // Addition 
ADD_SUB_8bit_CLA M3(y2,C82,a,b,1'b1);               // Subtraction
multiplier4x4 M4(y3,c83,a[3:0],b[3:0]);             // Multiplication
com_8bit M5(y4,a,b);                                // Comparator
sync_8bit_up_down_counter M6(y5,clk,reset,1'b0);    // Up-Counter
sync_8bit_up_down_counter M7(y6,clk,reset,1'b1);    // Down-Counter
FSM_moore_0010 M8(y7,a[0],clk,reset);               // 0010-FSM
//--------------------------------------------------------------//
Clock_1Hz M11(mclk,clk);
//--------------------------------------------------------------//
always@(posedge clk)
begin 
a=A;
b=B;
end 
//--------------------------------------------------------------//
always@(posedge clk)
begin 
case(s)
3'b000:  begin y=a; ds=1'b1 ;ex=0; end                                            // 'a' value pass  
3'b001:  begin if(c81==1'b1) ex=1'b1; else ex=1'b0; ds=1'b1 ;y=y1 ; end           // Addition
3'b010:  begin if(a<b) ds=1'b0; else ds=1'b1; ex=1'b0 ;y=y2 ; end                 // Subtraction
3'b011:  begin y={c83,y3}; ds=1'b1 ;ex=0; end                                     // Multiplication
3'b100:  begin y=y4; ds=1'b1 ;ex=0; end                                           // Comparator
3'b101:  begin y=y5; ds=1'b1 ;ex=0; end                                           // Up-Counter
3'b110:  begin y=y6; ds=1'b1 ;ex=0; end                                           // Down-Counter
3'b111:  begin y=y7; ds=1'b1 ;ex=0; end                                           // FSM - 0010 Sequence detector                                                                 
endcase
end
//--------------------------------------------------------------//
bin_9bit_to_bcd M9(BCD_h,BCD_t,BCD_o,{ex,y},clk);
bcd_8bit_to_7segment_display D1(D1_a,LED_out,BCD_h,BCD_t,BCD_o,ds,clk);
endmodule
