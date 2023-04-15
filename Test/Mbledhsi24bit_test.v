`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 12:02:24 AM
// Design Name: 
// Module Name: Mbledhsi24bit_test
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


module Mbledhsi24bit_test();

  reg [23:0] A;
    reg [23:0] B;
    wire [23:0] Sum;
    wire CarryOut;
    
    initial
$monitor("a=%d, b=%d, sum=%d, carryout=%d", A, B, sum, CarryOut);

initial
begin

//AND
#0 A=24'd5; B=24'd5;
#10 A=24'd6; B=24'd3;

//OR
#10 A=24'd205; B=24'd192;
#10 A=24'd756; B=24'd862;

#10
$stop;
end


Mbledhesi24bit AdderTest(A, B, sum,CarryOut);
endmodule


