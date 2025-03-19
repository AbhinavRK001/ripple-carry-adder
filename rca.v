`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 14:18:28
// Design Name: 
// Module Name: rca
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


module rca(
input [3:0] a,b,
input c_0,
output[3:0] sum,
output c_4
 );
 wire p0,p1,p2,p3,g0,g1,g2,g3;
 wire c1,c2,c3,c4;
 assign 
 p0 = a[0]^b[0],
  p1 = a[1]^b[1],
   p2 = a[2]^b[2],
    p3 = a[3]^b[3],
    g0 = a[0]&b[0],
     g1 = a[1]&b[1],
      g2 = a[2]&b[2],
       g3 = a[3]&b[3];
       assign
       c1 = g0|(p0&c_0),
       c2 = g1| (p1&g0)|(p1&p0&c_0),
       c3 = g2 | (p2&g1)|(p2&p1&g0)|(p2&p1&p0&c_0),
       c4 = g3|(p3&g2)|(p3&p2&p1&g0)|(p3&p2&p1&p0&c_0);
       assign
       sum[0] = p0^c_0,
       sum[1] = p1^c1,
       sum[2] = p2^c2,
       sum[3] = p3^c3,
       c_4 = c4;
endmodule
