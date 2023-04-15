`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 02:54:07 PM
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(
    input h0,
    input h1,
    input h2,
    input h3,
    input [1:0] sel,
    output dalje
    );
    
    //sel 00 h0
    //sel 01 h1
    //sel 10 h2
    //sel 11 h3
    assign dalja =sel[1] ? (sel[0] ? h3 : h2 ): (sel[0] ? h1 : h0);
    
endmodule





