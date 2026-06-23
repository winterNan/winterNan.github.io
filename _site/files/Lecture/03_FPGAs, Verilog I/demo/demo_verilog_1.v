`timescale 1ns / 1ps

module demo_1(b, c, clk);
    input b;
    output c;
    input clk;
    
    wire clk;
    reg a;
    reg c;
    
    always @ (posedge clk)
    begin
    a <= b;
    c <= a;
    end

endmodule

////////////////////////////////////////////////////

//module demo_2(b, c, clk);
//    input b;
//    output c;
//    input clk;
    
//    wire clk;
//    reg a;
//    reg c;
    
//    always @ (posedge clk)
//    begin
//    a = b;
//    c = a;
//    end

//endmodule

////////////////////////////////////////////////////

//module my_module_solution_3(A,B,C,O);
//    input A, B, C;
//    output O;
    
//    wire w_not, w_and1, w_and2;
    
//    assign w_not = ~C;
//    assign w_and1 = A & w_not;
//    assign w_and2 = B & C;
//    assign O = w_and1 | w_and2;

//endmodule

////////////////////////////////////////////////////

//module my_module_solution_4(A,B,C,O);
//    input A, B, C;
//    output O;
    
//    assign O = (A & ~C) | (B & C);

//endmodule

////////////////////////////////////////////////////

//module my_module_solution_5(A,B,C,O);
//    input A, B, C;
//    output O;
    
//    assign O = C ? B : A; 

//endmodule
