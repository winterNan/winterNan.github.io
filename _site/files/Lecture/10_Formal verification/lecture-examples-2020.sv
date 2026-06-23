

module Max(input [7:0] a,
           input [7:0] b,
           output [7:0] m,
           input clk);

   assign m = a > b ? a : b;

endmodule


module ReqMax(input [7:0] a,
              input [7:0] b,
              input clk);

   wire [7:0] m;
   Max max(a, b, m, clk);

   // actually returns the larger
   // number of a and b
   assert property (m == a || m == b);
   assert property (m >= a && m >= b);

endmodule


module ReqMax2(input [7:0] a,
               input [7:0] b,
               input       clk);

   wire [7:0] m;
   Max max(a, b, m, clk);

   assume property (a >= 10);
   assert property (m >= 10);

endmodule


module Counter(output reg [3:0] c,
               input clk);

   initial c = 3;
   always @(posedge clk) begin
      c = c + 1;
   end

endmodule


module ReqCounter(input clk);

   wire [3:0] c;
   Counter cnt(c, clk);

   // Property 1: counter always at least 3
/*   always @(posedge clk) begin  // equivalent to assert property
      assert(c >= 3);
   end */
   // does not hold in general: counter will overflow after 12 steps
   
   // Property 2: counter is incrementing

   // Version 1: use a temporary variable to store the pre-value
   // of c
   reg [3:0]  pre_c = 0;
   always @(posedge clk) begin
      assert(c > pre_c);
      pre_c = c;
   end

   // Version 2: ...
   
endmodule



module Maxx(input [7:0] a,
            input [7:0] b,
            output reg [7:0] m,
            input clk);

   always @(posedge clk) begin
      if (a > b)
        m <= a;
      else
        m <= b;
   end

endmodule


module ReqMaxx(input [7:0] a,
               input [7:0] b,
               input       clk);

   wire [7:0] m;
   Maxx max(a, b, m, clk);

   // actually returns the larger
   // number of a and b: does not hold in this version!
//   assert property (m == a || m == b);
//   assert property (m >= a && m >= b);

   // Version 1: use temporary variables
   reg [7:0]  pre_a;
   reg [7:0]  pre_b;
   always @(posedge clk) begin
      pre_a <= a;
      pre_b <= b;
   end

   assert property (1==1 |=> m == pre_a || m == pre_b);


   // Version 2: use quantified variables/registers
   reg [7:0] X;
   reg [7:0] Y;
   assert property (X == a && Y == b |=> m == X || m == Y);
   assert property (X == a && Y == b |=> m >= X && m >= Y);
   
endmodule


`define A 10
`define B 5

module MSSwitch(output off,
                output on1,
                output on2,
                input  pressed,
                input  clk);

   reg [4:0] c = 0;

   // count how long pressed was true
   always @(posedge clk) begin
      if (pressed) begin
        if (!on2)
          c = c + 1;
      end else
        c = 0;
   end
   
   assign off = (c < `A);
   assign on1 = (c >= `A && c < `A + `B);
   assign on2 = (c >= `A + `B);

endmodule


module ReqMSSwitch(input  pressed,
                   input  clk);

   wire off;
   wire on1;
   wire on2;
   
   MSSwitch sw(off, on1, on2, pressed, clk);

   // R1: on1 and on2 cannot be true at the same time
   assert property (!(on1 && on2));

   // Equivalent:
//   assert property (!on1 || !on2);
   
   // R1b: at most one of off, on1, on2 should be true at the same
   //      time

   // R2: on2 happens only if on1 happened in an earlier cycle

   reg  on1_has_happened = 0;
   always @(posedge clk) begin
      if (on1)
        on1_has_happened <= 1;
   end

   assert property ( on2 |-> on1_has_happened );

   // R3: if on2 is true, and the switch is not released, then on2
   // stays true
   assert property ( on2 && pressed |=> on2 );

endmodule
