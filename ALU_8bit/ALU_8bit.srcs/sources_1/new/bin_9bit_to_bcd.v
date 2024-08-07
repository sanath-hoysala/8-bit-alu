`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 19:17:48
// Design Name: 
// Module Name: bin_9bit_to_bcd
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


module bin_9bit_to_bcd(BCD_h,BCD_t,BCD_o,binary9,clk); 
output reg [3:0]BCD_h; 
output reg [3:0]BCD_t; 
output reg [3:0]BCD_o; 
input [8:0]binary9; 
input clk; 
reg [3:0]temp_BCDh; 
reg [3:0]temp_BCDt; 
reg [3:0]temp_BCDo; 
reg [3:0]i=0; 
reg [20:0]s_reg; 
reg [7:0]old_binary9=0; 
always @(posedge clk) 
begin 
if(i==0&(old_binary9!=binary9)) 
begin 
s_reg=21'd0; 
old_binary9=binary9; 
s_reg[7:0]=binary9; 
temp_BCDh=s_reg[20:17]; 
temp_BCDt=s_reg[16:13]; 
temp_BCDo=s_reg[12:9]; 
i=i+1; 
end
if(i>0&i<10) 
begin 
if(temp_BCDh>4)temp_BCDh=temp_BCDh+3; 
if(temp_BCDt>4)temp_BCDt=temp_BCDt+3; 
if(temp_BCDo>4)temp_BCDo=temp_BCDo+3; 
s_reg[20:9]={temp_BCDh,temp_BCDt,temp_BCDo};
s_reg=s_reg<<1; 
temp_BCDh=s_reg[20:17]; 
temp_BCDt=s_reg[16:13]; 
temp_BCDo=s_reg[12:9]; 
i=i+1; 
end
if(i==10) 
begin 
i=0; 
BCD_h=temp_BCDh; 
BCD_t=temp_BCDt; 
BCD_o=temp_BCDo; 
end
end
endmodule

