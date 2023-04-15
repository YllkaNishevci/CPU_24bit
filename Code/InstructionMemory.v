`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 08:35:04 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
input [23:0] PC,
output [23:0] Inst
);
//sa adresa dhe secila sa bit 


reg[7:0] iMem [127:0];

initial $readmemb("instrMem.mem",iMem);

assign Inst= {iMem[PC],iMem[PC+1],iMem[PC+2]};

endmodule
















