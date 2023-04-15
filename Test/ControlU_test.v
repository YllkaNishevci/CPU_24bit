`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 12:13:36 AM
// Design Name: 
// Module Name: ControlU_test
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


module ControlU_test();
    reg [3:0] OPcode;
     wire RegDst;
     wire ALUsrc;
     wire MemToReg;
     wire RegWrite;
     wire MemRead;
     wire MemWrite;
     wire [1:0] ALUop;
     wire Branch;
initial
$monitor("OPcode=%b, RegDst=%b, ALUSrc=%b, MemToReg=%b,RegWrite=%b,MemRead=%b,MemWrite=%b,ALUOp=%b,Branch=%b",OPcode,RegDst,ALUsrc,MemToReg,RegWrite,MemRead,MemWrite,ALUop,Branch);

initial
begin
#0 OPcode=4'b0110; //r format
#10 OPcode=4'b0001; //addi 0001
#10 OPcode=4'b0010; //ls 0010
#10 OPcode=4'b0011; //ss 0011
#10 OPcode=4'b000;//beq 0100
#10
$stop;
end

ControlUnit testCU(OPcode,RegDst,ALUsrc,MemToReg,RegWrite,MemRead,MemWrite,ALUop,Branch);

endmodule
