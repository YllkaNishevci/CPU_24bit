`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 08:16:34 PM
// Design Name: 
// Module Name: regfiletest
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


module regfiletest();
reg [3:0] Rs;
reg [3:0] Rt;
reg [3:0] Rd;
reg [23:0] WriteD;
wire [23:0] ReadR1;
wire [23:0] ReadR2;
reg RegWrite;
reg clock;


initial
begin
#0 clock=1'b0;
#5 Rd=4'd8;WriteD=24'd5;RegWrite=1'b1;
#5 clock=1'b1;
#5 clock=1'b0;RegWrite=1'b1;
#5 Rd=4'd9;WriteD=24'd7;RegWrite=1'b1;
#5 clock=1'b1;
#5 clock=1'b0;RegWrite=1'b0;
#5 Rs=4'd8;Rt=4'd9;
#5 $stop;



end

RegisterFile rf(Rs,Rt,Rd,WriteD,ReadR1,ReadR2,RegWrite,clock );


endmodule
