`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 04:36:17 PM
// Design Name: 
// Module Name: ALU1
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


module ALU1(
    input A,
    input B,
    input CIN,
    input BINVERT,
    input [1:0] OPERATION,
    output RESULT,
    output COUT
    );
    
    
    wire joB,mB,dhe,ose,mbl,X_or;
    
   
    assign joB=~B;

Mux2to1 muxb (B,joB,BINVERT,mB);


assign dhe = A & mB;
assign ose = A | mB;
assign X_or = ~dhe | ose;

Mbledhesi1bit adder (A,mB,CIN,mb1,COUT);

Mux4to1 muxalu (.h0(dhe),.h1(ose),.h2(mb1),.h3(X_or),.sel(OPERATION),.dalje(RESULT));

//s 00 dhe
//s 01 ose
//s 10 mbledhja
//s 11 xor

endmodule





