`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 05:56:22 PM
// Design Name: 
// Module Name: CPU
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


module CPU(
input clock
    );
    
    
    reg [23:0] PC;
    
    wire [23:0] PC_beq;
    wire [23:0]instrucion;
    wire RegDst, Branch, MemRead, MemWrite, MemToReg, ALUSrc, RegWrite;
    
    initial 
    begin
    assign PC=24'd10;
    end
    


  InstructionMemory(PC,instrucion);
    
  DataPath dp(clock,PC,
RegDst,
ALUsrc,
MemToReg,
Regwrite,
MemRead,
MemWrite,
ALUop,
Branch,
instruction,PC_beq);
    
    
  ControlUnit cu(instrucion[23:20],RegDst,ALUsrc,MemToReg,Regwrite,MemRead,MemWrite,ALUop,Branch);
    
    always@(posedge clock)
begin
assign PC = PC_beq; //BEQ 
if(PC[0] === 1'bx)
    begin
        PC = 24'd10;
    end
else
    begin
        PC = PC_beq + 24'd3;
    end
end
endmodule















