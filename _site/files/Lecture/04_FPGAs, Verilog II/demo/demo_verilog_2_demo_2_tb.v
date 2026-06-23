`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2021 09:03:30 AM
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

reg a, b, c;
wire o;

demo_2 UUT(a, b, c, o);

localparam period = 1;

initial begin

    a = 0;
    b = 0;
    c = 0;
    
    #period;
    
    a = 1;
    b = 0; 
    c = 0;
    
    #period;
    
    a = 1;
    b = 1; 
    c = 0;
    
    #period;
    
    a = 1;
    b = 1; 
    c = 1;
    
    #period;
    
    a = 0;
    b = 1; 
    c = 1;
    
    #period;
    
    a = 0;
    b = 0; 
    c = 1;
    
    #period;
    
    a = 0;
    b = 0; 
    c = 0;
    
    #period;
    
    a = 1;
    b = 1;
    c = 1;
    
end 

endmodule
