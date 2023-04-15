`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 05:44:59 PM
// Design Name: 
// Module Name: ALU24
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


module ALU24(
    input [23:0] A24,
    input [23:0] B24,
    input [1:0] ALUop,
    input Bnegate,
    output Zero,
    output Overflow,
    output Carryout,
    output [23:0] Result
    );
    
    wire [23:0] cout;
  ALU1 alu0(A24[0],B24[0],Bnegate,Bnegate,ALUop,Result[0],cout[0]);  
  ALU1 alu1(A24[1],B24[1],cout[0],Bnegate,ALUop,Result[1],cout[1]); 
  ALU1 alu2(A24[2],B24[2],cout[1],Bnegate,ALUop,Result[2],cout[2]); 
  ALU1 alu3(A24[3],B24[3],cout[2],Bnegate,ALUop,Result[3],cout[3]);  
  ALU1 alu4(A24[4],B24[4],cout[3],Bnegate,ALUop,Result[4],cout[4]);  
  ALU1 alu5(A24[5],B24[5],cout[4],Bnegate,ALUop,Result[5],cout[5]);  
  ALU1 alu6(A24[6],B24[6],cout[5],Bnegate,ALUop,Result[6],cout[6]);  
  ALU1 alu7(A24[7],B24[7],cout[6],Bnegate,ALUop,Result[7],cout[7]);  
  ALU1 alu8(A24[8],B24[8],cout[7],Bnegate,ALUop,Result[8],cout[8]);  
  ALU1 alu9(A24[9],B24[9],cout[8],Bnegate,ALUop,Result[9],cout[9]);  
  ALU1 alu10(A24[10],B24[10],cout[9],Bnegate,ALUop,Result[10],cout[10]);  
  ALU1 alu11(A24[11],B24[11],cout[10],Bnegate,ALUop,Result[11],cout[11]);  
  ALU1 alu12(A24[12],B24[12],cout[11],Bnegate,ALUop,Result[12],cout[12]);  
  ALU1 alu13(A24[13],B24[13],cout[12],Bnegate,ALUop,Result[13],cout[13]);  
  ALU1 alu14(A24[14],B24[14],cout[13],Bnegate,ALUop,Result[14],cout[14]);  
  ALU1 alu15(A24[15],B24[15],cout[14],Bnegate,ALUop,Result[15],cout[15]);  
  ALU1 alu16(A24[16],B24[16],cout[15],Bnegate,ALUop,Result[16],cout[16]);  
  ALU1 alu17(A24[17],B24[17],cout[16],Bnegate,ALUop,Result[17],cout[17]);  
  ALU1 alu18(A24[18],B24[18],cout[17],Bnegate,ALUop,Result[18],cout[18]);  
  ALU1 alu19(A24[19],B24[19],cout[18],Bnegate,ALUop,Result[19],cout[19]);  
  ALU1 alu20(A24[20],B24[20],cout[19],Bnegate,ALUop,Result[20],cout[20]);  
  ALU1 alu21(A24[21],B24[21],cout[20],Bnegate,ALUop,Result[21],cout[21]);  
  ALU1 alu22(A24[22],B24[22],cout[21],Bnegate,ALUop,Result[22],cout[22]);  
  ALU1 alu23(A24[23],B24[23],cout[22],Bnegate,ALUop,Result[23],Carryout);  

    
    
    assign Zero =~(Result[0]|Result[1]|Result[2]|Result[3]|Result[4]|Result[5]|Result[6]|Result[7]|Result[8]|Result[9]|Result[10]|Result[11]|Result[12]|Result[13]|Result[14]|Result[15]|Result[16]|Result[17]|Result[18]|Result[19]|Result[20]|Result[21]|Result[22]|Result[23]);
    
    assign Overflow =cout[22]^Carryout;
    
    
    
    
    
    
    
    
endmodule










