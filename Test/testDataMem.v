`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 09:25:22 PM
// Design Name: 
// Module Name: testDataMem
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


module testDataMem();
reg [23:0] Adresa;
reg [23:0] WriteData;
reg clock;
reg MemWrite;
reg MemRead;
wire [23:0] ReadData;

initial 
begin
#0 clock=1'b0;
#5 MemWrite=1'b1; Adresa=24'd2;WriteData=32'd7;MemRead=1'b0;
#5 clock=1'b1;
#5 clock=1'b0;MemWrite=1'b0;
#5 MemRead=1'b1;Adresa=24'd2;
#5 $stop;


end


DataMemory dm(Adresa,WriteData,clock,MemWrite,MemRead,ReadData);

endmodule
