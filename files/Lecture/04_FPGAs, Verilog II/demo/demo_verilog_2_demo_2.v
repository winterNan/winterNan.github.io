`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2021 12:04:10 AM
// Design Name: 
// Module Name: demo_2
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


module demo_2(A, B, C, O);

input A, B, C;
output O;

reg r_and, r_or;
assign O = r_or;

always @ (A, B, C) begin

//    r_and = A & B;
//    r_or = r_and | C;

    r_and <= A & B;
    r_or <= r_and | C;
end

endmodule
