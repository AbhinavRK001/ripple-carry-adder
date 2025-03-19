`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 01:13:21
// Design Name: 
// Module Name: rcatest
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


module rcatest(    );
  reg [3:0] a,b;
    reg c_0;
       wire [3:0] sum;
    wire c_4;
    rca utt(.a(a), .b(b), .c_0(c_0), .sum(sum), .c_4(c_4));
    initial
    begin
    a = 0100;
    b = 1010;
    c_0 =0;
    #100;
    a = 0110;
    b = 1011;
    c_0 = 1;
    #100;
    a = 0111;
    b = 1100;
    c_0 = 0;
    #100;
    end
    endmodule
    
