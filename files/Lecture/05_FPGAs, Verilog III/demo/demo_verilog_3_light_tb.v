`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2021 02:58:43 PM
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

reg car_sensor, clk, n_rst;
wire [2:0] light_1, light_2;

traffic DUT(car_sensor, clk, n_rst, light_1, light_2);

 /*
  * The following code is used in Lecture 9 Verification II
  *
  
localparam 
    S_1 = 4'b0001,
    S_2 = 4'b0010,
    S_3 = 4'b0100,
    S_4 = 4'b1000;
    
covergroup cov @ (posedge clk);
    coverpoint traffic.cur_state {
        bins S_1_2 = (S_1 => S_2);
        bins S_2_3 = (S_2 => S_3);
        bins S_3_4 = (S_3 => S_4);
        bins S_4_1 = (S_4 => S_1);
        bins S_2_3_4 = (S_2[*5000] => S_3[*30000] => S_4[*5000]);
        bins S_4_3 = (S_4 => S_3);
    }
endgroup
cov cov_fsm = new();

  *
  * The above code is used in Lecture 9 Verification II
  */

initial begin
    clk = 0;
    n_rst = 1;
    car_sensor = 0;
    
    #1 n_rst = 0;
    #1 n_rst = 1;
    
    #100 car_sensor = 1;
    #200 car_sensor = 0;
    
    #1000000 car_sensor = 1;
    #200 car_sensor = 0;
end

always #0.5 clk = ~clk;

endmodule
