`timescale 1ns / 1ps

//module demo_1(A,B,C,O);
//    input A, B, C;
//    output O;
    
//    assign O = reg_o;
//    reg reg_o;
    
//    always @ (A, B, C) begin
//        reg_o = A & ~B | B & C;
//    end

//endmodule

////////////////////////////////////////////////

/* 
 * demo_2 is seperatedly provided
 */

////////////////////////////////////////////////

//module demo_3(D_1, Q, clk);
//    input D_1, clk;
//    output Q;
    
//    reg D_2, _Q;
//    assign Q = _Q;
    
//    always @ (posedge clk) begin
//        D_2 <= D_1;
//        _Q <= D_2;
        
//        D_2 = D_1;
//        _Q = D_2;
//    end
//endmodule

////////////////////////////////////////////////

//module demo_4(A, B, O);

//input A, B;
//output O;
//reg _O;

//assign O = _O;

//always @ (A, B) begin
//    _O = _O | A | B;
//end

//endmodule

//module tb;
//reg a, b;
//wire o;
//demo_4 UUT(a, b, o);

//initial begin
//    a = 0; b = 0;
//#1; a = 0; b = 1;
//#1; a = 1; b = 1;
//#1; a = 1; b = 0;
//end
//endmodule

////////////////////////////////////////////////

//module demo_5(A, B, C, O);
//input A, B, C;
//output O;

//reg r_and, r_or;
//assign O = r_or;

//always @ (A, B, C) begin
//    r_and = A & B;
//    r_or = r_and | C;
    
//end
//endmodule

//module tb;
//reg [2:0] a;
//wire o;
//demo_5 UUT(a[2], a[1], a[0], o);

//integer i;
//localparam period = 1;

//initial begin

// For loop
//    for (i=0; i<8; i=i+1) begin
//        a = {i[2], i[1], i[0]};
//        #period;
//    end
    
// While loop
//    i=0;
//    while (i < 8) begin
//        i = i + 1;
//        a = {i[2], i[1], i[0]};
//        #period;
//    end

// Repeat loop
//    i = 0;
//    repeat (8) begin
//        i = i + 1;
//        a = {i[2], i[1], i[0]};
//        #period;
//    end
//end
//endmodule

////////////////////////////////////////////////

/* 
 * demo_6 is seperatedly provided
 */

////////////////////////////////////////////////

//module tb; //demo_7
//reg clk;
//reg [2:0] a, b, c, d;
    
//initial begin
//    clk = 0;
//    forever begin
//        #5 clk = ~clk;
//    end
//end

//always begin
//    @(posedge clk) a=3'd1;
//    @(posedge clk) b=3'd2;
//    @(posedge clk) c=3'd3;
//    @(posedge clk) d=3'd4;
//    $display("time is %0t",$time);
//end

//always begin
//    @(posedge clk) a<=3'd1;
//    @(posedge clk) b<=3'd2;
//    @(posedge clk) c<=3'd3;
//    @(posedge clk) d<=3'd4;
//    $display("time is %0t",$time);
//end
    
//endmodule

////////////////////////////////////////////////

//module tb;  //demo_8 
//  reg [3:0] ctr;  
//  reg clk;  
  
//  initial begin  
//    {ctr, clk} = {4'b0000, 1'b0};  
//    wait (ctr);  
//    $display ("T=%0t Counter reached non-zero value 0x%0h", $time, ctr);  
//    wait (ctr == 4'b0100) 
//    $display ("T=%0t Counter reached 0x%0h", $time, ctr);  
//    $finish;  
//  end  

//  always clk = #10 ~clk;  

//  always @ (posedge clk)  
//      ctr <= ctr + 1;  

//endmodule 

////////////////////////////////////////////////

//module has_function (X_IN, REV_X); //demo_9
//    parameter MAXBITS = 8;
    
//    reg a = 1'b1;
//    reg b = 1'b0;
//    reg c = 1'bz;
//    reg d = 1'bx;

//    input [MAXBITS - 1 : 0] X_IN;
//    output reg [MAXBITS - 1 : 0] REV_X;

//    function [MAXBITS - 1 : 0] REVERSE_BITS;
    
//        input [MAXBITS - 1 : 0] DIN;
//        integer k;
//        begin
//            for (k=0; k < MAXBITS; k = k +1)
//            REVERSE_BITS[MAXBITS-1-k] = DIN[k];
//        end
    
//    endfunction
    
//    always @ (X_IN)
//        REV_X = REVERSE_BITS(X_IN);
        
//endmodule

module has_task (X_IN, REV_X); //demo_9
    parameter MAXBITS = 8;
    
    input [MAXBITS - 1 : 0] X_IN;
    output reg [MAXBITS - 1 : 0] REV_X;

    task REVERSE_BITS;
    
        input [MAXBITS - 1 : 0] DIN;
        output [MAXBITS - 1 : 0] DOUT;
        
        integer k;
        
        begin
            for (k=0; k < MAXBITS; k = k +1)
            DOUT[MAXBITS-1-k] = DIN[k];
        end
    endtask
    
    always @ (X_IN)
        REVERSE_BITS(X_IN, REV_X);
endmodule