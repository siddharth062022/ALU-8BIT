`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 09:27:48
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB;
reg [3:0]a;
reg [3:0]b;
reg [2:0] SEL;
wire [4:0] OUT ;
ALU uut(.A(a),.B(b),.sel(SEL),.R(OUT));
initial 
begin
a=4'd8;b=4'd8;SEL=000;
#100
a=3'd2;b=4'd5;SEL=001;
#100
a=3'd2;b=4'd5;SEL=010;
#100
a=3'd2;b=4'd5;SEL=011;
#100
a=3'd2;b=4'd5;SEL=100;
#100
a=3'd2;b=4'd5;SEL=101;
#100
a=3'd2;b=4'd5;SEL=110;
#100
a=3'd2;b=4'd5;SEL=111;
#100
a=3'd6;b=4'd9;SEL=000;
#100
a=3'd7;b=4'd10;SEL=001;
#100
a=3'd5;b=4'd5;SEL=010;
#100
a=3'd4;b=4'd5;SEL=011;
#100
a=3'd2;b=4'd12;SEL=100;
#100
a=3'd1;b=4'd10;SEL=101;
#100
a=3'd4;b=4'd11;SEL=110;
#100
a=3'd1;b=4'd5;SEL=111;
end
endmodule
