`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 06:36:28 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [3:0] OPcode,
    output reg RegDst,
    output reg ALUsrc,
    output reg MemToReg,
    output reg RegWrite,
    output reg MemRead,
    output reg MemWrite,
    output reg [1:0] ALUop,
    output reg Branch
    );
    
    always @(OPcode)
    begin
    case(OPcode)
    //per r-format
    4'b0110:
    begin
     RegDst = 1;
     ALUsrc = 0;
     MemToReg = 0;
     RegWrite =1;
     MemRead =0;
     MemWrite =0;
     ALUop=2'b10;
     Branch =0;
    end

//addi

 4'b0001:
    begin
     RegDst = 0;
     ALUsrc = 1;
     MemToReg = 0;
     RegWrite =1;
     MemRead =0;
     MemWrite =0;
     ALUop=2'b00;
     Branch =0;
    end



    //ls
     4'b0010:
    begin
     RegDst = 0;
     ALUsrc = 1;
     MemToReg = 1;
     RegWrite =1;
     MemRead =1;
     MemWrite =0;
    ALUop=2'b00;
     Branch =0;
    end


        //ss
     4'b0011:
    begin
     RegDst = 1'bx;
     ALUsrc = 1;
     MemToReg = 0;
     RegWrite =1'bx;
     MemRead =0;
     MemWrite =1;
     ALUop=2'b00;
     Branch =0;
    end

     //beq
     4'b0100:
    begin
     RegDst = 0;
     ALUsrc = 0;
     MemToReg = 0;
     RegWrite =0;
     MemRead =0;
     MemWrite =0;
     ALUop=2'b01;
     Branch =1;
    end


    endcase
    end
endmodule
