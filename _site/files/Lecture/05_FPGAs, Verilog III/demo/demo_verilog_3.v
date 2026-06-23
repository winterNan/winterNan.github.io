`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2021 09:30:12 AM
// Design Name: 
// Module Name: demo_1
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

//module demo_1(
//input D, clk, n_rst,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (posedge clk) begin

//    if(!n_rst) 
//        reg_Q <= 1'b0; 
//    else
//        reg_Q <= D;
//    end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_2(
//input D, clk, n_rst,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (posedge clk,
//          negedge n_rst) begin

//    if(!n_rst) 
//        reg_Q <= 1'b0; 
//    else
//        reg_Q <= D;
//    end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_3(
//input D, clk, rst,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (posedge clk,
//          posedge rst) begin

//    if(rst) 
//        reg_Q <= 1'b0; 
//    else
//        reg_Q <= D;
//    end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_4(
//input D, en,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (D, en) begin

//    if(!en) 
//        reg_Q <= 1'b0;
//    else
//        reg_Q<= D;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_5(
//input D, en,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (D, en) begin

//    if(en) 
//        reg_Q <= D;
    
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_6 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//input D,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (A, B, C, D, sel) begin
//    if (sel == 2'b00)
//        reg_Q <= A;
//    else if (sel == 2'b01)
//        reg_Q <= B;
//    else if (sel == 2'b10)
//        reg_Q <= C;
//    else
//        reg_Q <= D;
//end

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_7 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//input D,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (A, B, C, D, sel) begin
//    if (sel == 2'b00)
//        reg_Q <= A;
//    else if (sel == 2'b01)
//        reg_Q <= B;
//    else if (sel == 2'b10)
//        reg_Q <= C;
//    else if (sel == 2'b11)
//        reg_Q <= D;
//end

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_8 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (A, B, C, sel) begin
//    if (sel == 2'b00)
//        reg_Q <= A;
//    else if (sel == 2'b01)
//        reg_Q <= B;
//    else
//        reg_Q <= C;
//end

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_9 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (A, B, C, sel) begin
//    if (sel[1] == 1'b0)
//        if (sel[0] == 1'b0)
//            reg_Q <= A;
//        else
//            reg_Q <= B;
//    else
//        reg_Q <= C;
//end

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_10 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//output Q);

//reg reg_Q;

//assign Q = reg_Q;

//always @ (A, B, C, sel) begin
//    if (sel == 2'b00)
//        reg_Q <= A;
//    else if (sel == 2'b01)
//        reg_Q <= B;
//    else if (sel == 2'b01 || sel == 2'b11)
//        reg_Q <= C;
//end

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_11 (
//input [2:0] in,
//output [7:0] out);

//reg [7:0] reg_out;

//assign out = reg_out;

//always @ (in) begin
//    if (in == 3'b000)
//        reg_out = 8'h0_1;
//    else if (in == 3'b001)
//        reg_out = 8'h0_2;
//    else if (in == 3'b010)
//        reg_out = 8'h0_4;
//    else if (in == 3'b011)
//        reg_out = 8'h0_8;
//    else if (in == 3'b100)
//        reg_out = 8'h1_0;
//    else if (in == 3'b101)
//        reg_out = 8'h2_0;
//    else if (in == 3'b110)
//        reg_out = 8'h4_0;
//    else
//        reg_out = 8'h8_0;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_12 (
//input [2:0] in,
//output [7:0] out);

//reg [7:0] reg_out;

//assign out = reg_out;

//always @ (in) begin
//    if (in[2] == 1'b0)
//        if(in[1] == 1'b0)
//            if(in[0] == 1'b0)
//                reg_out = 8'h0_1;
//            else
//                reg_out = 8'h0_2;
//        else
//            if(in[0] == 1'b0)
//                reg_out = 8'h0_4;
//            else
//                reg_out = 8'h0_8;
//    else
//        if(in[1] == 1'b0)
//            if(in[0] == 1'b0)
//                reg_out = 8'h1_0;
//            else
//                reg_out = 8'h2_0;
//        else
//            if(in[0] == 1'b0)
//                reg_out = 8'h4_0;
//            else
//                reg_out = 8'h8_0;
//end
//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_13 (
//input D, en,
//output Q);

//assign Q = en ? D : 1'b0;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_14 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//output Q);

//assign Q = sel[1] ? C : (sel[0] ? B : A);                 

//endmodule 

//////////////////////////////////////////////////////////////////////////////////

//module demo_15 (
//input [1:0] sel,
//input A,
//input B,
//input C,
//input D,
//output Q);

//reg reg_Q;
//assign Q = reg_Q;

//always @ (A, B, C, D, sel) begin
//    case (sel) 
//    2'b00:
//        reg_Q = A;
//    2'b01:
//        reg_Q = B;
//    2'b10:
//        reg_Q = C;
//    default:
//        reg_Q = D;
//    endcase               
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_16 (
//input [2:0] in,
//output [7:0] out);

//reg [7:0] reg_out;
//assign out = reg_out;

//always @ (in) begin
//    case (in) 
//    3'b000:
//        reg_out = 8'h01;
//    3'b001:
//        reg_out = 8'h02;
//    3'b010:
//        reg_out = 8'h04;
//    3'b011:
//        reg_out = 8'h08;
//    3'b100:
//        reg_out = 8'h10;
//    3'b101:
//        reg_out = 8'h20;
//    3'b110:
//        reg_out = 8'h40;
//    default:
//        reg_out = 8'h80;
//    endcase               
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_17;

//reg sel = 1'bZ;

//initial begin
//    case(sel)
//    1'b0:
//        $display("A");
//    1'b1:
//        $display("B");
//    1'bZ:
//        $display("C");
//    1'bX:
//        $display("D");
//    default:
//        $display("default");
//    endcase
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_18;

//reg sel = 1'bX;

//initial begin
//    casez(sel)
//    1'b0:
//        $display("A");
//    1'b1:
//        $display("B");
//    1'bZ:
//        $display("C");
//    1'b?:
//        $display("D");
//    1'bX:
//        $display("E");
//    default:
//        $display("default");
//    endcase
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_19;

//reg sel = 1'bX;

//initial begin
//    casez(sel)
//    1'b0:
//        $display("A");
//    1'b1:
//        $display("B");
//    1'bX:
//        $display("C");
//    1'bZ:
//        $display("D");
//    1'b?:
//        $display("E");
//    default:
//        $display("default");
//    endcase
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_20;

//reg sel = 1'bZ;

//initial begin
//    casez(sel)
//    1'b0:
//        $display("A");
//    1'b1:
//        $display("B");
//    1'bX:
//        $display("C");
//    1'bZ:
//        $display("D");
//    1'b?:
//        $display("E");
//    default:
//        $display("default");
//    endcase
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

module demo_21;

reg sel = 1'bX;

initial begin
    casex(sel)
    1'b0:
        $display("A");
    1'b1:
        $display("B");
    1'bX:
        $display("C");
    1'bZ:
        $display("D");
    1'b?:
        $display("E");
    default:
        $display("default");
    endcase
end

endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_22;

//reg sel = 1'bX;

//always @ (sel) begin
//    casex(sel)
//    1'b0:
//        $display("A");
//    1'b1:
//        $display("B");
//    1'bX:
//        $display("C");
//    1'bZ:
//        $display("D");
//    1'b?:
//        $display("E");
//    default:
//        $display("default");
//    endcase
//end

//endmodule