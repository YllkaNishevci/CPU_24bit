`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 07:01:44 PM
// Design Name: 
// Module Name: Mbledhesi24bit
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


module Mbledhesi24bit(
input [23:0] a,
input [23:0] b,
output [23:0] sum,
output carryout
    );
    wire [23:0] cout;
    
   Mbledhesi1bit mb0 (a[0],b[0],1'b0,sum[0],cout[0]); 
   Mbledhesi1bit mb1 (a[1],b[1],cout[0],sum[1],cout[1]); 
   Mbledhesi1bit mb2 (a[2],b[2],cout[1],sum[2],cout[2]); 
   Mbledhesi1bit mb3 (a[3],b[3],cout[2],sum[3],cout[3]); 
   Mbledhesi1bit mb4 (a[4],b[4],cout[3],sum[4],cout[4]); 
   Mbledhesi1bit mb5 (a[5],b[5],cout[4],sum[5],cout[5]); 
   Mbledhesi1bit mb6 (a[6],b[6],cout[5],sum[6],cout[6]); 
   Mbledhesi1bit mb7 (a[7],b[7],cout[6],sum[7],cout[7]); 
   Mbledhesi1bit mb8 (a[8],b[8],cout[7],sum[8],cout[8]); 
   Mbledhesi1bit mb9 (a[9],b[9],cout[8],sum[9],cout[9]); 
   Mbledhesi1bit mb10 (a[10],b[10],cout[9],sum[10],cout[10]); 
   Mbledhesi1bit mb11 (a[11],b[11],cout[10],sum[11],cout[11]); 
   Mbledhesi1bit mb12 (a[12],b[12],cout[11],sum[12],cout[12]); 
   Mbledhesi1bit mb13 (a[13],b[13],cout[12],sum[13],cout[13]); 
   Mbledhesi1bit mb14(a[14],b[14],cout[13],sum[14],cout[14]); 
   Mbledhesi1bit mb15(a[15],b[15],cout[14],sum[15],cout[15]); 
   Mbledhesi1bit mb16 (a[16],b[16],cout[15],sum[16],cout[16]); 
   Mbledhesi1bit mb17(a[17],b[17],cout[16],sum[17],cout[17]); 
   Mbledhesi1bit mb18 (a[18],b[18],cout[17],sum[18],cout[18]); 
   Mbledhesi1bit mb19 (a[19],b[19],cout[18],sum[19],cout[19]); 
   Mbledhesi1bit mb20 (a[20],b[20],cout[19],sum[20],cout[20]); 
   Mbledhesi1bit mb21 (a[21],b[21],cout[20],sum[21],cout[21]); 
   Mbledhesi1bit mb22(a[22],b[22],cout[21],sum[22],cout[22]); 
   Mbledhesi1bit mb23 (a[23],b[23],cout[22],sum[23],carryout); 

    
endmodule
