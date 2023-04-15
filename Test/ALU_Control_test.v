`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 11:35:02 PM
// Design Name: 
// Module Name: ALU_Control_test
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


module ALU_Control_test();
   reg [1:0] ALUOp;
    reg [3:0] funct;
    wire [3:0]operacioni;



 initial
$monitor("ALUOp=%b, funct=%b, operacioni=%b", ALUOp, funct, operacioni);

initial
begin
#0 ALUOp=2'b00; funct = 4'bXXXX;
#10 ALUOp=2'b01; funct = 4'bXXXX;
#10 ALUOp=2'b10; funct = 4'b0010;//add
#10 ALUOp=2'b10; funct = 4'b0011;//sub
#10 ALUOp=2'b10; funct = 4'b0000;//and
#10 ALUOp=2'b10; funct = 4'b0001;//or
#10 ALUOp=2'b10; funct = 4'b0101;//xor
#10 $stop;
end
ALUControl ALUControlTest(ALUOp, funct, operacioni);


endmodule















