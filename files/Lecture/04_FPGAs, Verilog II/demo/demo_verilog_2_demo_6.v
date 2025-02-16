`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2021 02:19:20 PM
// Design Name: 
// Module Name: demo_7
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


module demo_6( 
input a, b,
output out1, out2
);
    
and #(1:2:3, 2:3:4) and1 (out1, a, b);
and and2 (out2, a, b);
    
endmodule
