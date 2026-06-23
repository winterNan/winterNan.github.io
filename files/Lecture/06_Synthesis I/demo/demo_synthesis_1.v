`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2021 09:58:15 AM
// Design Name: 
// Module Name: demo
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

//module demo_1 (A, B, C, D, O);

//input A, B, C, D;
//output O;

//wire O;

//assign O = A & B;
//assign O = C | D;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_2 (A, B, C, D, O);

//input A, B, C, D;
//output O;

//wand O;

//assign O = A & B;
//assign O = C | D;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_3 (A, B, O);

//input [7:0] A, B;
//output [31:0] O;

//integer sum;

//assign O = sum;

//always @ (A, B) 
//    sum = A + B;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_4 (A, B, O);

//input [7:0] A, B;
//output O;

//integer sum;

//assign O = sum;

//always @ (A, B) 
//    sum = A + B;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_5 (A, B, O);
//input A, B;
//output O;

//reg reg_O;
//assign O = reg_O;

//always @ (A, B) begin

//    if (!A) 
//        reg_O <= B;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_6 (A, B, O);
//input A, B;
//output O;

//reg reg_O;
//assign O = reg_O;

//always @ (posedge A) begin
//    reg_O <= B;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_7 (A, B, O);

//input [7:0] A, B;
//output O;

//integer sum;

//assign O = sum;

//integer CON_1 = 30;
//integer CON_2 = -2;
//integer CON_3 = 2'b10;
//integer CON_4 = -6'b10;
//integer CON_5 = -'d10;

//always @ (A, B) begin
//    sum = A + B + CON_1 + CON_2 + CON_3 + CON_4 + CON_5;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_8 (A, B, O);

//input [7:0] A, B;
//output O;

//integer sum;

//assign O = sum;

//parameter CON_1 = 30;
//parameter CON_2 = -2;
//parameter CON_3 = 2'b10;
//parameter CON_4 = -6'b10;
//parameter CON_5 = -'d10;

//always @ (A, B) begin
//    sum = A + B + CON_1 + CON_2 + CON_3 + CON_4 + CON_5;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_9 (A, O);

//input A;
//output O;

//assign #1 O = ~A;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_10_full_adder
//(A, B, CarryIn, Sum, CarryOut);

//input A, B, CarryIn;
//output Sum, CarryOut;

//assign Sum = (A ^ B) ^ CarryIn;
//assign CarryOut = (A & B) | (B & CarryIn) | (A & CarryIn);

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_11_signed_multiplier(
//    input           [7:0]   data_in_unsigned_1, //8'hff
//    input           [7:0]   data_in_unsigned_2, //8'hf0

//    input   signed  [7:0]   data_in_signed_1,   //8'hff
//    input   signed  [7:0]   data_in_signed_2,   //8'hf0

//    output          [15:0]   unsigned_00,
//    output          [15:0]   unsigned_01,
//    output          [15:0]   unsigned_10,
//    output          [15:0]   unsigned_11,

//    output  signed  [15:0]   signed_00,
//    output  signed  [15:0]   signed_01,
//    output  signed  [15:0]   signed_10,
//    output  signed  [15:0]   signed_11
//);

//assign unsigned_00 = data_in_unsigned_1   *  data_in_unsigned_2;   
//assign unsigned_01 = data_in_unsigned_1   *    data_in_signed_2;     
//assign unsigned_10 =   data_in_signed_1   *  data_in_unsigned_2;   
//assign unsigned_11 =   data_in_signed_1   *    data_in_signed_2;     
//assign   signed_00 = data_in_unsigned_1   *  data_in_unsigned_2;     
//assign   signed_01 = data_in_unsigned_1   *    data_in_signed_2;
//assign   signed_10 =   data_in_signed_1   *  data_in_unsigned_2;
//assign   signed_11 =   data_in_signed_1   *    data_in_signed_2;

//endmodule 
                                                                          

//module tb_demo_11;

//reg           [7:0]   data_in_unsigned_1;
//reg           [7:0]   data_in_unsigned_2;

//reg   signed  [7:0]   data_in_signed_1;
//reg   signed  [7:0]   data_in_signed_2;

//wire          [15:0]  unsigned_00;
//wire          [15:0]  unsigned_01;
//wire          [15:0]  unsigned_10;
//wire          [15:0]  unsigned_11;

//wire  signed  [15:0]  signed_00;
//wire  signed  [15:0]  signed_01;
//wire  signed  [15:0]  signed_10;
//wire  signed  [15:0]  signed_11;
    
//demo_11_signed_multiplier DUT(data_in_unsigned_1,
//                              data_in_unsigned_2,
//                              data_in_signed_1,
//                              data_in_signed_2,
//                              unsigned_00,
//                              unsigned_01,
//                              unsigned_10,
//                              unsigned_11,
//                              signed_00,
//                              signed_01,
//                              signed_10,
//                              signed_11);

//initial begin
//        data_in_unsigned_1 = 8'hff;       //255
//        data_in_unsigned_2 = 8'hf0;       //240
//        data_in_signed_1   = 8'hff;       //-1
//        data_in_signed_2   = 8'hf0;       //-16  
//    #200;
//        data_in_unsigned_1 = 8'hff;       //255
//        data_in_unsigned_2 = 8'h0f;       //15
//        data_in_signed_1   = 8'hff;       //-1
//        data_in_signed_2   = 8'h0f;       //15  
//    #200;
//        data_in_unsigned_1 = 8'd127;      //127
//        data_in_unsigned_2 = 8'd15;       //15   
//        data_in_signed_1   = -8'sd127;    //-127?must use sd for signed decimal
//        data_in_signed_2   = -8'sd15;     //-15  
//    #200;     
//        data_in_unsigned_1 = 8'd128;      //128
//        data_in_unsigned_2 = 8'd15;       //15       
//        data_in_signed_1   = -8'sd128;    //-128
//        data_in_signed_2   = -8'sd15;     //-15    
//    #200;
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15           
//        data_in_signed_1   = -8'sd127;     //-127
//        data_in_signed_2   = 8'sd15;       //15       
//    #200;     
//        data_in_unsigned_1 = 8'd128;       //128
//        data_in_unsigned_2 = 8'd15;        //15               
//        data_in_signed_1   = -8'sd128;     //-128
//        data_in_signed_2   = 8'sd15;       //15   
//    #200;
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15          
//        data_in_signed_1   = 8'sd127;      //127
//        data_in_signed_2   = -8'sd15;      //-15           
//    #200;          
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15
//        data_in_signed_1   = 8'sd127;      //127
//        data_in_signed_2   = 8'sd15;       //15        
//    #200;
//    $stop;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_12_signed_multiplier( 
//    input           [7:0]   data_in_unsigned_1, //8'hff
//    input           [7:0]   data_in_unsigned_2, //8'hf0

//    input   signed  [7:0]   data_in_signed_1,   //8'hff
//    input   signed  [7:0]   data_in_signed_2,   //8'hf0

//    output          [15:0]   unsigned_00,
//    output          [15:0]   unsigned_01,
//    output          [15:0]   unsigned_10,
//    output          [15:0]   unsigned_11,

//    output  signed  [15:0]   signed_00,
//    output  signed  [15:0]   signed_01,
//    output  signed  [15:0]   signed_10,
//    output  signed  [15:0]   signed_11
//);

//assign unsigned_00 =            data_in_unsigned_1   *              data_in_unsigned_2;   
//assign unsigned_01 =            data_in_unsigned_1   *     $unsigned(data_in_signed_2);     
//assign unsigned_10 =   $unsigned(data_in_signed_1)   *              data_in_unsigned_2;   
//assign unsigned_11 =   $unsigned(data_in_signed_1)   *     $unsigned(data_in_signed_2);     
//assign   signed_00 =   $signed(data_in_unsigned_1)   *     $signed(data_in_unsigned_2);     
//assign   signed_01 =   $signed(data_in_unsigned_1)   *                data_in_signed_2;
//assign   signed_10 =              data_in_signed_1   *     $signed(data_in_unsigned_2);
//assign   signed_11 =              data_in_signed_1   *                data_in_signed_2;

//endmodule 
                                                                          
//module tb_demo_12;

//reg           [7:0]   data_in_unsigned_1;
//reg           [7:0]   data_in_unsigned_2;

//reg   signed  [7:0]   data_in_signed_1;
//reg   signed  [7:0]   data_in_signed_2;

//wire          [15:0]  unsigned_00;
//wire          [15:0]  unsigned_01;
//wire          [15:0]  unsigned_10;
//wire          [15:0]  unsigned_11;

//wire  signed  [15:0]  signed_00;
//wire  signed  [15:0]  signed_01;
//wire  signed  [15:0]  signed_10;
//wire  signed  [15:0]  signed_11;
    
//demo_12_signed_multiplier DUT(data_in_unsigned_1,
//                              data_in_unsigned_2,
//                              data_in_signed_1,
//                              data_in_signed_2,
//                              unsigned_00,
//                              unsigned_01,
//                              unsigned_10,
//                              unsigned_11,
//                              signed_00,
//                              signed_01,
//                              signed_10,
//                              signed_11);

//initial begin
//        data_in_unsigned_1 = 8'hff;       //255
//        data_in_unsigned_2 = 8'hf0;       //240
//        data_in_signed_1   = 8'hff;       //-1
//        data_in_signed_2   = 8'hf0;       //-16  
//    #200;
//        data_in_unsigned_1 = 8'hff;       //255
//        data_in_unsigned_2 = 8'h0f;       //15
//        data_in_signed_1   = 8'hff;       //-1
//        data_in_signed_2   = 8'h0f;       //15  
//    #200;
//        data_in_unsigned_1 = 8'd127;      //127
//        data_in_unsigned_2 = 8'd15;       //15   
//        data_in_signed_1   = -8'sd127;    //-127 must use sd for signed decimal
//        data_in_signed_2   = -8'sd15;     //-15  
//    #200;     
//        data_in_unsigned_1 = 8'd128;      //128
//        data_in_unsigned_2 = 8'd15;       //15       
//        data_in_signed_1   = -8'sd128;    //-128
//        data_in_signed_2   = -8'sd15;     //-15    
//    #200;
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15           
//        data_in_signed_1   = -8'sd127;     //-127
//        data_in_signed_2   = 8'sd15;       //15       
//    #200;     
//        data_in_unsigned_1 = 8'd128;       //128
//        data_in_unsigned_2 = 8'd15;        //15               
//        data_in_signed_1   = -8'sd128;     //-128
//        data_in_signed_2   = 8'sd15;       //15   
//    #200;
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15          
//        data_in_signed_1   = 8'sd127;      //127
//        data_in_signed_2   = -8'sd15;      //-15           
//    #200;          
//        data_in_unsigned_1 = 8'd127;       //127
//        data_in_unsigned_2 = 8'd15;        //15
//        data_in_signed_1   = 8'sd127;      //127
//        data_in_signed_2   = 8'sd15;       //15        
//    #200;
//    $stop;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_13 (A, B, O);
//input [3:0] A, B;

//output O;
//reg  O;

//always @ (A, B) 
//    O = A < B;
    
//endmodule

//module demo_13_tb;

//reg [3:0] A, B;
//wire O;

//demo_13 DUT(A, B, O);

//initial begin

//A = 4'b1100;
//B = 4'b0011;

//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_14 (A, B, O); 
//input signed [3:0] A, B;

//output O;
//reg signed O;

//always @ (A, B) 
//    O = $signed(A) < $signed(B);
    
//endmodule

//module demo_14_tb;

//reg signed [3:0] A, B;
//wire signed O;

//demo_14 DUT(A, B, O);

//initial begin

//A = 4'b1100;
//B = 4'b0011;

//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_15 (A, B, O); 
//input signed [3:0] A, B;

//output O;
//reg signed O;

//always @ (A, B) 
//    O = $signed(A) == $signed(B);
    
//endmodule

//module demo_15_tb;

//reg signed [3:0] A, B;
//wire signed O;

//demo_15 DUT(A, B, O);

//initial begin

//A = 4'b1000;
//B = -4'sd8;

//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_16 (); 
 
//  reg        [3:0] shift1 = 4'b1000;
//  reg signed [3:0] shift2 = 4'b1000;
//  reg signed [3:0] shift3 = 4'b0100;
   
//  initial
//    begin
//      // Left Shift
//      $display("%b", shift1 <<  1);
//      $display("%b", $signed(shift1) <<< 1); // Cast as signed
//      $display("%b", shift2 <<< 1);          // Declared as signed type
       
//      // Right Shift
//      $display("%b", shift1 >>  2);
//      $display("%b", $signed(shift1) >>> 2); // Cast as signed
//      $display("%b", shift2 >>> 2) ;         // Declared as signed type
//      $display("%b", shift3 >>> 2) ;         // Declared as signed type
//    end
//endmodule

////////////////////////////////////////////////////////////////////////////////////
//module demo_17 (A, O); 

//input [3:0] A;
//output [5:0] O;

//assign O = A << 2;

//endmodule

////////////////////////////////////////////////////////////////////////////////////
//module demo_18 (A, B, O); 

//input [3:0] A;
//input [1:0] B;
//output [5:0] O;

//assign O = A << B;

//endmodule

////////////////////////////////////////////////////////////////////////////////////
//module demo_19 (A, B, C, O); 

//input [3:0] A, B, C;
//output [3:0] O;

//assign O = (A & B) | C;

//endmodule

////////////////////////////////////////////////////////////////////////////////////
//module demo_20 (A, B, O); 

//input A, B;
//output O;
//reg O;

//always @ (B)
//    O = A & B;

//endmodule

////////////////////////////////////////////////////////////////////////////////////
//module demo_21 (A, B, C, D, O); 

//input A, B, C, D;
//output O;
//reg O;

//always @ (A, B, C, D) begin: demo_21
//    reg T1, T2;
//    T1 = A & B;
//    T2 = C | D;
//    T1 = T1 | T2;
//    O = ~T1;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_22 (A, B, O); 

//input A, B;
//output O;
//reg O;

//always @ (A, B) begin
//    if (A > B)
//        O = A;
//    else 
//        O = B;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_23 (mark, grade); 

//input [4:0] mark;
//output [1:0] grade;
//reg [1:0] grade;

//parameter FAIL = 1, PASS = 2, EXCELLENT = 3;

//always @ (mark) begin
//    if (mark < 3)
//        grade = FAIL;
//    else if ((mark >= 3) & (mark < 5))
//        grade = PASS;
//    else 
//        grade = EXCELLENT;
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_24 (op, A, B, O); 

//input [1:0] op;
//input [1:0] A, B;
//output [1:0] O;
//reg [1:0] O;

//parameter ADD='b00, SUB='b01, MUL='b10, DIV='b11;

//always @ (op, A, B) 
//case(op)
//ADD: O = A + B;
//SUB: O = A - B;
//MUL: O = A * B;
//DIV: O = A / B;
//endcase

//always @ (op, A, B) 
//if (op == ADD)
//    O = A + B;
//else if (op == SUB)
//    O = A - B;
//else if (op == MUL)
//    O = A * B;
//else
//    O = A / B;

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_25 (DayOfWeek, StudyTime); 

//input [2:0] DayOfWeek;
//output [4:0] StudyTime;
//reg [4:0] StudyTime;

//parameter MON=1, TUE=2, WED=3, THU=4, FRI=5, SAT=6, SUN=7;

//always @ (DayOfWeek)
//    case (DayOfWeek)
//        MON,
//        TUE,
//        WED,
//        THU: StudyTime = 9;
//        FRI: StudyTime = 10;
//        SAT: StudyTime = 20;
//        SUN: StudyTime = 20; 
//    default:
//             StudyTime = 5'b11111;
//    endcase
//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_26 (A, O); 

//input [3:0] A;
//output [1:0] O;
//reg [1:0] O;

//always @ (A)
//    casez(A)
//        4'bzzz1 : O = 0;
//        4'bzz10 : O = 1;
//        4'bz100 : O = 2;
//        4'b1000 : O = 3;
//        default : O = 0;
//    endcase

//always @ (A)
//if (A[0])
//	O = 0;
//else if (A[1:0] == 2'b10)
//	O = 1;
//else if (A[2:0] == 3'b100)
//	O = 2;
//else if (A[3:0] == 4'b1000)
//	O = 3;
//else
//	O = 0;

//always @ (A)
//    casez(A)
//        4'bxxx1 : O = 0;
//        4'bxx10 : O = 1;
//        4'bx100 : O = 2;
//        4'b1000 : O = 3;
//        default : O = 0;
//    endcase

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_27 (A, O); 

//input [3:0] A;
//output [1:0] O;
//reg [1:0] O;

//always @ (A)
//    casex(A)
//        4'bxxx1 : O = 0;
//        4'bxx10 : O = 1;
//        4'bx100 : O = 2;
//        4'b1000 : O = 3;
//        default : O = 0;
//    endcase

//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_28 (DayOfWeek, StudyTime); 

//input [2:0] DayOfWeek;
//output [4:0] StudyTime;
//reg [4:0] StudyTime;

//parameter 
//MON=1, TUE=2, WED=3, THU=4, FRI=5, SAT=6, SUN=7;

//always @ (DayOfWeek) begin
//    StudyTime = 5'b11111;
//    case (DayOfWeek)
//        MON,
//        TUE,
//        WED,
//        THU: StudyTime = 9;
//        FRI:   StudyTime = 10;
//        SAT:  StudyTime = 20;
//        SUN: StudyTime = 20; 
//    endcase
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////////
//module demo_29 (DayOfWeek, StudyTime); 

//input [2:0] DayOfWeek;
//output [4:0] StudyTime;
//reg [4:0] StudyTime;

//parameter 
//MON=1, TUE=2, WED=3, THU=4, FRI=5, SAT=6, SUN=7;

//always @ (DayOfWeek) begin
//    case (DayOfWeek) // synthesis full_case
//        MON,
//        TUE,
//        WED,
//        THU: StudyTime = 9;
//        FRI:   StudyTime = 10;
//        SAT:  StudyTime = 20;
//        SUN: StudyTime = 20; 
//    endcase
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////////

//module demo_30 (A, O); 
//input [3:0] A; 
//output [1:0] O;
//reg [1:0] O;
//always @ (A)
//    casez(A) // synthesis parallel_case
//        4'bzzz1 : O = 0;
//        4'bzz10 : O = 1;
//        4'bz100 : O = 2;
//        4'b1000 : O = 3;
//        default   : O = 0;
//    endcase
//endmodule

//////////////////////////////////////////////////////////////////////////////////////

//module demo_31 (A, O); 
//input [1:0] A; 
//output [3:0] O;
//reg [3:0] O;

//integer i;

//always @ (A)
//    for (i=0; i <4; i=i+1)
//        if( A == $unsigned(i) )
//            O[i] = 1;
//        else
//            O[i] = 0;
//endmodule

//////////////////////////////////////////////////////////////////////////////////////

module demo_32 (A, O); 
input [1:0] A; 
output [3:0] O;
reg [3:0] O;

integer i;

always @ (A) begin
    if( A == 0) O[0] = 1;
    else O[0] = 0;
    
    if( A == 1) O[1] = 1;
    else O[1] = 0;
    
    if( A == 2) O[2] = 1;
    else O[2] = 0;
    
    if( A == 3) O[3] = 1;
    else O[3] = 0;
end

endmodule