`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 05:03:57 PM
// Design Name: 
// Module Name: testALU1
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


module testALU1();

reg A,B,CIN,BInvert;
reg [1:0] Operation ;
wire result ,cout;


initial 
$monitor("A=%b,B=%b,CIN=%b,BINERT=%b,OPERATION=%b,RESULT=%b,COUT=%b",A,B,CIN,BInvert,Operation,result,cout);


initial
begin

//dhe logjike
#0 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b00;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b00;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b00;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b00;


//ose logjike
#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b01;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b01;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b01;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b01;
//add

#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b10;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b1; BInvert=1'b0; Operation=2'b10;


//sub

#10 A=1'b0; B=1'b0; CIN=1'b1; BInvert=1'b1; Operation=2'b10;
#10 A=1'b0; B=1'b1; CIN=1'b1;  BInvert=1'b1; Operation=2'b10;
#10 A=1'b1; B=1'b0; CIN=1'b1;  BInvert=1'b1; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b1; BInvert=1'b1; Operation=2'b10;


//XOR
#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b11;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b11;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b11;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b11;
#10 $stop;
end


ALU1 alutest (A,B,CIN,BInvert,Operation,result,cout);



endmodule








