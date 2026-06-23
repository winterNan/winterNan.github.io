`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2021 10:59:26 PM
// Design Name: 
// Module Name: synthesis_3_demo
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

//module demo_1(clk, reset, 
//              left_in, right_in, par_in,
//              sel, O);
              
//input clk, reset, left_in, right_in;
//input [2:0] par_in;
//input [1:0] sel;
//output [2:0] O;
//reg [2:0] O;

//always @ (posedge clk, negedge reset) begin

//    if(!reset)
//        O <= 3'b000;
//    else
//        case (sel)
//            2'b00: ;
//            2'b01:
//                O <= {O[1:0], right_in};
//            2'b10:
//                O <= {left_in, O[2:1]};
//            2'b11:
//                O <= par_in;
//        endcase
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_2 (clk, reset, reload, sel,
//               data_in, 
//               O);

//parameter N = 2;
//input clk, reset, reload, sel;
//input [N-1 : 0] data_in;
//output [N-1 : 0] O;

//reg [N-1 : 0] counter;
//assign O = counter;

//always @ (posedge clk)
//    if (!reset)
//        counter <= 0;
//    else if (!reload)
//        counter <= data_in;
//    else if (sel)
//        counter <= counter + 1;
//    else 
//        counter <= counter - 1;

//endmodule

//module demo_2_tb;

//parameter N = 256;
//reg clk, reset, reload, sel;
//reg [N-1 : 0] data_in; 
//wire     [N-1 : 0] O;


//demo_2 #N DUT(clk, reset, reload, sel,
//               data_in, 
//               O);

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_3(clk, reset, O);

//parameter N = 2, M = 3;
//input clk, reset;
//output [N-1:0] O;

//reg [N-1:0] counter;
//assign O = counter;

//always @ (posedge clk)
//    if(!reset)
//        counter <= 0;
//    else
//        counter <= (counter + 1) % M;
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_4 (clk, reset, O);

//parameter N = 3;
//input clk, reset;
//output [N-1 : 0] O;
//reg [N-1 : 0] O;

//always @ (posedge clk, negedge reset) 
//    if (!reset)
//        O <= 0;
//    else begin
//        if(!O[N-1])
//            O <= {O[N-1:1], 1'b1};
//        else
//            O <= {O[N-1:1], 1'b0};
//    end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_5 (clk, reset, O);

//parameter N = 5;
//input clk, reset;
//output [N-1:0] O;

//reg [N-1:0] binary_counter, gray;
//assign O = gray;

//always @ (posedge clk or negedge reset)
//    if (!reset) 
//        binary_counter <= 0;
//    else
//        binary_counter <= binary_counter + 1;

//integer i;

//always @ (binary_counter) begin
//    gray[N-1] = binary_counter[N-1];
    
//    for (i=0; i<N-1; i=i+1)
//        gray[i] = binary_counter[i+1] ^ binary_counter[i];
//end
//endmodule

//module demo_5_tb;

//parameter N = 5;
//wire [N-1:0] O;

//reg clk;
//reg reset;

//initial begin

//    clk = 1'b0;
//    reset = 1'b1;
    
//    #1 reset = 1'b0;
//    #1 reset = 1'b1;
//end

//always #5 clk = ~clk;

//demo_5 #N DUT (clk, reset, O);

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_6 (clk, reset, data, O);

//input clk, reset, data;
//output O;
//reg O;

//parameter PATTERN = 3'b111;

//reg[2:0] previous;

//always @ (posedge clk, negedge reset)

//    if(!reset) begin
//        previous <= 3'b000;
//        O <= 1'b0;
//    end else begin 
//        previous <= {previous[1:0], data};
//        O <= (previous == PATTERN);
//    end
    
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_7 (clk, reset, data, O);

//input clk, reset, data;
//output O;

//parameter PATTERN = 3'b111;

//reg[2:0] previous;

//assign O = (previous == PATTERN);

//always @ (posedge clk, negedge reset)

//    if(!reset) begin
//        previous <= 3'b000;
//    end else begin 
//        previous <= {previous[1:0], data};
//    end

//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_8 (clk, reset, 
//               data, 
//               done, result, exponent);

//input clk, reset;
//input [4:0] data;
//output [7:0] result;
//output [6:0] exponent;
//output done;

//integer reg_result, reg_exponent;
//reg reg_done;

//reg [4:0] reg_data;
//integer i;

//assign result = reg_result;
//assign exponent = reg_exponent;
//assign done = reg_done;

//always @ (posedge clk, negedge reset) begin: DEMO_8_always

//    if(!reset) begin
//        reg_done <= 'b0;
//        reg_result <= 'b1;
//        reg_exponent <= 'b0;
//        reg_data <= data;
//    end else begin
//        if (!reg_done) begin
//            reg_result <= reg_result * reg_data;
//            reg_data <= reg_data - 1;
//        end
//    end
//end

//always @ (reg_data, reg_result) begin
//    if (reg_data <= 1)
//        reg_done = 'b1;
//    else
//        reg_done = 'b0; 
            
//    for (i=0; i<5; i=i+1) begin
//        if (reg_result > 255) begin
//            reg_result = reg_result >> 1;
//            reg_exponent = reg_exponent + 1;
//        end
//    end
//end

//endmodule 

//module demo_8_tb;

//reg clk;
//reg reset;
//reg [4:0] data;

//wire [7:0] result;
//wire [6:0] exponent;
//wire done;

//initial begin

////    data = 5'b00000;
////    data = 5'b00001;
////    data = 5'b001010;
//    data = 5'b11111;
////    data = 5'b00110;
////    data = 5'b00101;

//    clk = 1'b0;
//    reset = 1'b1;
    
//    #1 reset = 1'b0;
//    #1 reset = 1'b1;
//end

//always #5 clk = ~clk;

//demo_8 DUT (clk, reset, 
//            data, 
//            done, result, exponent);

//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_9(A, B, C, D, O);

//input [3:0] A, B, C, D;

//output [3:0] O;
//reg [3:0] O;

//always @ (A, B, C, D)
//    if (D > 8)
//        O = A + B;
//    else
//        O = A + C;

//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_10(A, B, C, D, O);

//input [3:0] A, B, C, D;

//output [3:0] O;
//reg [3:0] O;

//always @ (A, B, C, D) begin: demo_10_always
//    reg [3:0] temp;
//    if (D > 8)
//        temp = B;
//    else
//        temp = C;
    
//    O = A + temp;
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_11(A, O);

//input [31:0] A;
//output [31:0] O;

//integer i;
//reg [31:0] B;
//always @ (A)
//    for(i=0; i<5; i=i+1)
//        if (A > 8)
//            B = A >> i;
        
//assign O = B;
//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_12(A, O);

//input [31:0] A;
//output [31:0] O;

//integer i;
//reg [31:0] B;
//always @ (A)
//    if (A > 8)
//        B = A >> 10;
        
//assign O = B;
//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_13(A, B, C, D, O);

//input [31:0] A, B, C, D;
//output [31:0] O;
//reg [31:0] O;

//always @ (A, B, C, D) 
//    O = A + B - C + D;
    
//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_14(A, B, C, D, O);

//input [31:0] A, B, C, D;
//output [31:0] O;
//reg [31:0] O;

//always @ (A, B, C, D) 
//    O = (A + B) - (C - D);
    
//endmodule

//////////////////////////////////////////////////////////////////////////////////
//module demo_15(
//    A, A_state, O, clk
//    );
//input A, clk;
//output [3:0] O;
//reg [3:0] O;
//output A_state;
//reg A_state;

//always @ (posedge clk)
//    case (A)
//    0: begin
//        A_state <= 1;
//        O <= 4'b0100;
//    end
//    1: begin
//        A_state <= 0;
//        O <= 4'b0001;
//    end
//    endcase
//endmodule

//////////////////////////////////////////////////////////////////////////////////
module demo_16(
    A, A_state, O, clk
);
input A, clk;
output [3:0] O;
reg [3:0] O;
output A_state;
reg A_state;

always @ (posedge clk)
    case (A)
    0: 
        A_state <= 'b1;
    1: 
        A_state <= 'b0;
    endcase

always @ (A)
    case (A)
    0: 
        O = 4'b0100;
    1: 
        O = 4'b0001;
    endcase
    
endmodule