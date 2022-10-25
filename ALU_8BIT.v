`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 08:01:28
// Design Name: 
// Module Name: ALU_8BIT
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



module ALU(  input [3:0]A,
             input [3:0]B,
             input [2:0]sel,
             output [4:0]R
             
         );
        wire [3:0]Reg1;
        wire [3:0]Reg2; 
        reg  [4:0]Reg3;
        assign Reg1 = A; 
        assign Reg2 = B;
        assign R = Reg3;
       always @(sel,Reg1,Reg2,Reg3)
        begin
            case (sel)
             0 : Reg3 = Reg1 + Reg2; 
             1 : Reg3 = Reg1 - Reg2;
             2 : Reg3 = Reg1 | Reg2;        
             3 : Reg3 = Reg1 & Reg2;  
             4 : Reg3 = Reg1<<1;
             5 : Reg3 = Reg1>>1;
             6 : Reg3 = {Reg1[2:0],Reg1[3]};
             7 : Reg3 = {Reg1[0], Reg1[3:1]};
            endcase 
        end
        
    endmodule
