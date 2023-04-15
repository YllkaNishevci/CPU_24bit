`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 09:05:49 PM
// Design Name: 
// Module Name: insmemtest
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


module insmemtest();
reg [23:0]PC;
wire[23:0] inst;


initial
begin
#0 PC=24'd0;
end

InstructionMemory im(PC,inst);

endmodule










