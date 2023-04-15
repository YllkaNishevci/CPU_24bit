`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 10:59:56 PM
// Design Name: 
// Module Name: Mux2to1_4bit
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


module Mux2to1_4bit(
    input[3:0] Hyrja0,
    input[3:0] Hyrja1,
    input S,
    output[3:0] Dalja
    );
    
assign Dalja = S ? Hyrja1 : Hyrja0;
endmodule
