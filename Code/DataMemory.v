`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 09:13:18 PM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
input [23:0] Adresa,
input [23:0] WriteData,
input clock,
input MemWrite,
input MemRead,
output [23:0] ReadData
    );
    
    reg [7:0] dmem [127:0];
    initial $readmemb("DataMem.mem",dmem);

    always @(posedge clock)
    begin 
    
    if(MemWrite) 
   begin
  dmem[Adresa+24'd0]<=WriteData[23:16];
  dmem[Adresa+24'd1]<=WriteData[15:8];
  dmem[Adresa++24'd2]<=WriteData[7:0];
   end
end
     always @(negedge clock)
     begin
     if(MemWrite)
     $writememb("DataMem.mem",dmem);
     end
    
    
 assign ReadData[23:16] = dmem[Adresa + 24'd0];
 assign ReadData[15:8] = dmem[Adresa + 24'd1];
 assign ReadData[7:0] = dmem[Adresa + 24'd2];


     
endmodule









