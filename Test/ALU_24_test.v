`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 11:53:31 PM
// Design Name: 
// Module Name: ALU_24_test
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


module ALU_24_test();

    reg [23:0] A;
    reg [23:0] B;
    reg [1:0] ALUOp;          //2 bit 
    reg BNegate;
    wire Zero;
    wire overflow;
    wire CarryOut;
    wire [23:0] Result;
    
    
initial
$monitor("A=%d, B=%d,ALUOp=%b, BNgate=%b,Overflow=%b, Zero=%b, CarryOut=%b, Result=%d", A, B, ALUOp, BNegate, overflow,Zero, CarryOut, Result);



initial
begin
//AND
#0 A=24'd5; B=24'd5;ALUOp=2'b00;BNegate=1'b0;
#10 A=24'd6; B=24'd3;ALUOp=2'b00;BNegate=1'b0;

//OR
#10 A=24'd5; B=24'd5;ALUOp=2'b01;BNegate=1'b0;
#10 A=24'd6; B=24'd3;ALUOp=2'b01;BNegate=1'b0;

//ADD
#0 A=24'd10; B=24'd20;ALUOp=2'b10;BNegate=1'b0;
#10 A=24'd10; B=24'd40;ALUOp=2'b10;BNegate=1'b0;

//SUB
#10 A=24'd10; B=24'd10;ALUOp=2'b10;BNegate=1'b1;
#10 A=24'd40; B=24'd30;ALUOp=2'b10;BNegate=1'b1;

//XOR
#10 A=24'd5; B=24'd5;ALUOp=2'b11;BNegate=1'b0;
#10 A=24'd6; B=24'd3;ALUOp=2'b11;BNegate=1'b0;
#10
$stop;
end

ALU24 ALU24bitTest(A,B,ALUOp,BNegate,overflow,Zero,CarryOut, Result);

endmodule
