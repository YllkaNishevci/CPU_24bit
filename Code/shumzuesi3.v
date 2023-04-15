`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 10:42:44 AM
// Design Name: 
// Module Name: shumzuesi3
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


module shumzuesi3(
input [23:0] imm,
input [23:0] imm3,
output [23:0] immMul3
    );
    
assign immMul3=imm*imm3;
  
endmodule
