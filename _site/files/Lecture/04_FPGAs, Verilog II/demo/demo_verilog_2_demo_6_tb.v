`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2021 02:21:38 PM
// Design Name: 
// Module Name: tb
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


module tb;

    reg a,b;
    wire out1, out2;
    
    demo_6 UUT(a, b, out1, out2);
    
    initial begin
        {a, b} <= 0;
        
        #10 a <= 1;
        #10 b <= 1;
        #10 a <= 0;
        #10 b <= 0;
        
    end
endmodule
