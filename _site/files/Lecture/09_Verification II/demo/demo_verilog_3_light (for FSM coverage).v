`timescale 1ms / 1ms
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2021 10:51:08 AM
// Design Name: 
// Module Name: traffic
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

module traffic( 
    input car_sensor,
    input clk,
    input n_rst,
    output [2:0] light_1, // 3: Red, 2: Yellow, 1: Green
    output [2:0] light_2  // 3: Red, 2: Yellow, 1: Green 
);

//------------ Codes for states --------------------------------------
localparam 
    S_1 = 4'b0001,
    S_2 = 4'b0010,
    S_3 = 4'b0100,
    S_4 = 4'b1000;
    
reg [2:0] reg_light_1;
reg [2:0] reg_light_2;

assign light_1 = reg_light_1;
assign light_2 = reg_light_2;

reg [3:0] cur_state;
reg [3:0] next_state;

integer counter;
reg counter_enable;

//------------  Combinational function -------------------------------
always@(cur_state, car_sensor, counter) begin
    
    case(cur_state)
    S_1: begin
        if (car_sensor) begin
            next_state = S_2;
            counter_enable = 1'b1; 
        end else begin
            next_state = cur_state;
            counter_enable = 1'b0;
        end
    end
    S_2: begin
        if(counter == 5_000) begin
            next_state = S_3;
        end else begin
            next_state = cur_state;
        end
    end
    S_3: begin
        if(counter == 35_000) begin
            next_state = S_4;
        end else begin
            next_state = cur_state;
        end
    end
    S_4: begin
        if(counter == 40_000) begin
            next_state = S_1;
            // counter_enable = 1'b0;
        end else begin
            next_state = cur_state;
        end
    end
    default:
        next_state = cur_state;
    endcase
    
end

//------------ Counter logic -------------------------------
always@(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        counter <= 0;
    end else begin
        if(counter_enable) begin
            counter <= counter + 1;
        end else begin
            if(counter !=  0)
                counter <= 0;
        end
    end
end

//------------ Seq logic -----------------------------------
always@(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        cur_state <= S_1;
    end else begin
        cur_state <= next_state;
    end
end
    
//------------ Output logic --------------------------------
always@(posedge clk, negedge n_rst) begin
    if (!n_rst) begin
        reg_light_1 <= 3'b111;
        reg_light_2 <= 3'b111;
    end else begin
        case(cur_state)
        S_1: begin
            reg_light_1 <= 3'b001;
            reg_light_2 <= 3'b100;
        end
        S_2: begin
            reg_light_1 <= 3'b010;
            reg_light_2 <= 3'b100;
        end
        S_3: begin
            reg_light_1 <= 3'b100;
            reg_light_2 <= 3'b001;
        end
        S_4: begin
            reg_light_1 <= 3'b100;
            reg_light_2 <= 3'b010;
        end
        endcase
    end
end

//

endmodule
