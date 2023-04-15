`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 11:45:20 PM
// Design Name: 
// Module Name: mux2ne1_24_test
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


module mux2ne1_24_test();


 reg[23:0] Hyrja0;
    reg[23:0] Hyrja1;
    reg S;
    wire[23:0] Dalja;
initial
$monitor("Hyrja0=%d, Hyrja1=%d, S=%b, Dalja=%d", Hyrja0, Hyrja1, S, Dalja);
initial
begin
#0 Hyrja0=24'd5; Hyrja1=24'd20;S=1'b0;
#10 Hyrja0=24'd5; Hyrja1=24'd20;S=1'b1;
#10 $stop;
end
mux2to1_24bit MuxTest(Hyrja0,Hyrja1,S,Dalja);




endmodule











