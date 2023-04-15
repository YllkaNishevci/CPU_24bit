`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 07:32:03 PM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
input wire [3:0] Rs,
input wire [3:0] Rt,
input wire [3:0] Rd,
input wire [23:0] WriteD,

output wire [23:0] ReadR1,
output wire [23:0] ReadR2,

input wire RegWrite,
input wire clock
    );
    
    
    reg [23:0] registers[15:0] ;
    
    always @(posedge clock)
    begin
    if(RegWrite) registers[Rd]<=WriteD;
    end
    assign ReadR1=registers[Rs];
    assign ReadR2=registers[Rt];

    
    
endmodule
