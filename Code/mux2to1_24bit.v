`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 07:19:01 PM
// Design Name: 
// Module Name: mux2to1_24bit
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


module mux2to1_24bit(
input [23:0] hyrja0,
input [23:0] hyrja1,
input s,
output [23:0] dalja
    );
    
 assign dalja= s ? hyrja1 : hyrja0;   
    
endmodule
