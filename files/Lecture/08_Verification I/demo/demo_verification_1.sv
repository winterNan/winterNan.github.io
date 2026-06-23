`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//module demo_1;
//initial begin

//    bit [15:0] bus;
//    bit signed [11:0] i, q;
//    shortint unsigned addr_unsigned;
//    logic [15:0] addr_logic;

//    string myName = "John Smith";
//    byte c = "A"; 
//    bit [3:0][7:0] s = "hello";
    
//    $display("bus=%b", bus);
//    $display("i,q=%b", i);
//    $display("addr_unsigned=%b", addr_unsigned);
//    $display("addr_logic=%b", addr_logic);
//    $display("myName=%s", myName);
//    $display("c=%c", c);
//    $display("c=%b", c);
//    $display("s=%s", s);

//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_2(
//input a,
//input b,
//output reg c
//);

 /* 
  * Uncomment the following one at a time
  * Observe the warning in Tcl Console
  */

//always_ff 
//    if (b)
//        c <= a;

//always_comb
//    if (b)
//        c = a;
        
//always_latch
//    if (b)
//        c = a;
        
//always_ff @ (a, b)
//    if (b)
//        c <= a;
        
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//typedef struct packed {
//    bit        sign;
//    bit [22:0] mantissa;
//    bit [ 7:0] exponent;
//} ieee_sp_float_packed;

//typedef struct {
//    bit        sign;
//    bit [22:0] mantissa;
//    bit [ 7:0] exponent;
//} ieee_sp_float_unpacked;

//////////////////////////////////////////////////////////////////////////////////

//module demo_3;

//function ieee_sp_float_packed abs (ieee_sp_float_packed v);
//   v.sign = 0;
//   abs = v;
//endfunction: abs

//initial begin
//ieee_sp_float_packed v1, v2;
//ieee_sp_float_unpacked v3;

//v1 = {1'b1, 23'hf00000, 8'h0};
//v2 = v1;
//v1 = abs(v1);

//$display("v1 = %b, %b, %b", v1.sign, v1.mantissa, v1.exponent);
//$display("v1 = %b, %b, %b", v1[31], v1[30:8], v1[7:0]);
//$display("v2 = %b, %b, %b", v2[31], v2[30:8], v2[7:0]);

//v3 = {1'b1, 23'hf00000, 8'h0};
//$display("v3 = %b, %b, %b", v3.sign, v3.mantissa, v3.exponent);
////$display("v3 = %b, %b, %b", v3[31], v3[30:6], v3[5:0]);

//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//class atm_pkt;
//    bit [11:0] id;  // ID
//    bit [15:0] pw;  // password
//    bit [ 2:0] pri; // priority
    
//    function new (input bit [11:0] id = 12'hfff, 
//                  input bit [15:0] pw = 16'hffff);
//        this.id = id;
//        this.pw = pw;
//        this.pri = 3'b0;
//    endfunction
            
//    function atm_pkt copy();
//        copy = new;
//        copy.id = this.id;
//        copy.pw = this.pw;
//        copy.pri = this.pri;
//    endfunction: copy
            
//    function display ();
//        $display ("id = 0x%0h, pw=0x%0h, pri=%0b", this.id, this.pw, this.pri);
//    endfunction
//endclass: atm_pkt

//////////////////////////////////////////////////////////////////////////////////

//module demo_4;
//initial begin
//    atm_pkt u1, u2, u3, u4, u5;
     
//    u1 = new;
//    u2 = new (12'h123, 16'h1234);
//    u1.display();
//    u2.display();
    
//    u3 = new;
//    u3.id = 12'h123;
//    u4 = u3;                    
//    u5 = u4.copy();
//    u4.id = 12'h456; 
//    u3.display();
//    u4.display();
//    u5.display();
   
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_5;

//initial begin

//ieee_sp_float_packed array_1d[], array_2d[][];
//bit [22:0] rand_vec;

//array_1d = new[32];
//$display("array_1d size = %d", array_1d.size());
//array_1d = new[64] (array_1d);
//$display("array_1d size = %d", array_1d.size());
//array_1d.delete();

//array_2d = new[32];

//foreach (array_2d[i])
//	array_2d[i] = new[32];	
//    foreach (array_2d[i,j]) begin
//        rand_vec = $urandom();
//        array_2d[i][j] = {1'b1, rand_vec, 8'h0};
//        $display("array_2d[%d][%d] = %b", i, j, array_2d[i][j]);
//    end             
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//class pixel;
//    bit [7:0] red;
//    bit [7:0] green;
//    bit [7:0] blue;
//endclass: pixel

//class line;
//    pixel pixels[];
//    function new (input int unsigned n);
//        this.pixels = new[n];
//        foreach (this.pixels[i]) begin
//            this.pixels[i] = new();
//        end
//    endfunction: new
//endclass: line

//class picture;
//    line lines[];
//    function new (input int unsigned x, y);
//        this.lines = new[x];
//        foreach (this.lines[i]) begin
//            this.lines[i] = new(y);
//        end
//    endfunction: new
   
//    function display ();
//        foreach (this.lines[i])
//            foreach (this.lines[i].pixels[j])
//                $display ("Pixel (%d, %d): r=%b, g=%b, b=%b", i, j,
//                           this.lines[i].pixels[j].red,
//                           this.lines[i].pixels[j].green,
//                           this.lines[i].pixels[j].blue);
//    endfunction
//endclass: picture

//module demo_6;
//initial begin
//    picture p_480 = new(480, 640);
//    p_480.display();
//  end                 
//endmodule

//////////////////////////////////////////////////////////////////////////////////

class sparse_memory;
    local logic [7:0] mem [bit [63:0]];
    local integer fd;
    /****************************/
    function logic [7:0] read(input bit [63:0] addr);
        read = 8'hXX;
        if (this.mem.exists(addr)) begin
            read = this.mem[addr];
        end
    endfunction: read
    /****************************/
    function void write(input bit   [63:0] addr,
                        input logic [ 7:0] data);
        this.mem[addr] = data;
    endfunction: write
    /****************************/
    function void display();
        $display("Memory content:");
        foreach (mem[i]) 
            $display("Addr: 0x%h, data: 0x%h", i, mem[i]);
    endfunction: display
    /****************************/
    function void loadimage(); 
        $display("Loading mem image...");
        fd = $fopen("mem_image.txt", "r");
        if (fd) begin
            while (!$feof(fd)) begin
                bit [63:0] addr;
                bit  [7:0] data;
                string line;
                $fgets(line, fd);
                $sscanf(line, "%h %h", addr, data);
                this.write(addr, data);
            end
            $fclose(fd);
        end
        else
            $display("Error in opening memory image file.");
    endfunction: loadimage
endclass: sparse_memory

//////////////////////////////////////////////////////////////////////////////////

//module demo_7;
//sparse_memory mem = new();
//bit [63:0] addr;
//bit  [7:0] data;
//integer i=0;

//initial begin
//    $display("Method 1 Init. memory by random writing");
//    repeat (10) begin
//        addr = {$urandom(),$urandom()};
//        data = $urandom();
//        mem.write(addr, data);
//        $display("+Write %1d: 0x%h, 0x%h", i, addr, mem.read(addr));
//        i = i + 1;
//    end
//    mem.display();
    
//    $display("Method 2 Load memory by reading file");
//    mem.loadimage();
//    mem.display();
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_8;
//initial begin
//    repeat (10)
//        $display("a=%2d, b=%2d, c=%2d", $urandom_range(30, 20), 
//                                        $urandom_range(20), 
//                                        $signed($urandom_range(20, 0))-10);
//end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

//class packet; 
//    rand  bit [2:0] addr1;
//    randc bit [2:0] addr2;
//endclass
 
//module demo_9;
//    initial begin
//        packet pkt;
//        pkt = new();
//        repeat (8) begin
//            pkt.randomize();
//            $display(" addr1 = %0d \t addr2 = %0d ",
//			       pkt.addr1,
//			       pkt.addr2);
//        end
//    end
//endmodule

//////////////////////////////////////////////////////////////////////////////////

typedef enum {STACK=1, HEAP=2, WHOLE=3} region;

class random_memory_loader;
    region mtype;
    rand bit [63:0] addr;
    rand logic [7:0] data;
    /****************************/
    constraint addr_con {
        mtype == STACK -> {
            addr >= 64'h8000_0000_0000_0000;
            addr <= 64'hffff_ffff_ffff_ffff;
        }
        mtype == HEAP -> {
            addr >= 64'h0000_0000_0000_0000;
            addr <  64'h8000_0000_0000_0000;
        }
        mtype == WHOLE -> {
            addr >= 64'h0000_0000_0000_0000;
            addr <= 64'hffff_ffff_ffff_ffff;
        }
    }
    /****************************/
    function new();
        cov_grp = new();
    endfunction: new
    /****************************/
    covergroup cov_grp;
        coverpoint data {
            bins data_low_end = {0};
            bins data_high_end = {255};
            bins data_low = {[0 : 127]};
            bins data_high = {[128 : 255]};
        }
        coverpoint mtype {
            bins mtype_bin [] = {[mtype.first : mtype.last]};
        }
    endgroup
    /****************************/
    function void display(); begin
        string getType;
        case(this.mtype)
            STACK   : getType = "STACK";
            HEAP    : getType = "HEAP";
            WHOLE   : getType = "WHOLE";
            default : getType = "UNKNOWN";
        endcase
        $display ("Load type: %7s, addr: 0x%16h, data: 0x%2h", getType, this.addr, this.data);
    end
    endfunction: display
    /****************************/
endclass: random_memory_loader

module demo_10;
sparse_memory mem = new();
random_memory_loader loader = new();

initial begin
    region mtype = mtype.first();
    for (int i = 1; i <= mtype.num(); i++) begin
        loader.mtype = mtype;
        repeat(1000) begin // Try 10, 100, 1000 here.
            loader.randomize();
            loader.cov_grp.sample();
            mem.write(loader.addr, loader.data);
            loader.display();
        end
        mem.display();
        mtype = mtype.next();
    end
end
endmodule

//////////////////////////////////////////////////////////////////////////////////

//module demo_11;

//bit [3:0] A = 4'b0000;
//bit [3:0] B = 4'b0000;
//logic [3:0] C = 4'b000x;

//initial begin
//    if (A == B) 
//        $display("A == B");
//    else
//        $display("A != B");
        
//    assert (A == C);
    
//    assert ((A == B) && (A == C))
//        $display ("OK. A equals C");
//    else 
//        $warning("It's gone wrong");
    
//    assert (A == C)
//    else 
//        $error("It's gone wrong");
        
//    assert (A == C)
//        $display ("OK. A equals C");
//    else 
//        $fatal("It's gone wrong");
        
//end

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module dff (input wire d,  
//            input wire rst,  
//            input wire clk,  
//            output reg q);
             
//always_ff @ (posedge clk)  
//    if (!rst)
//        q <= 1'b0;
//    else  
//        q <= d;  
//endmodule  

//module demo_12;
//reg clk;
//reg rst;
//reg d;
//reg q;

//dff DUT (d, rst, clk, q);

//property p_1a;
//    @(posedge clk)
//    !rst |=> q == 0;
//endproperty

//property p_1a_f;
//    @(posedge clk)
//    !rst |-> q == 0;
//endproperty

//property p_1b_v1;
//    @(posedge clk) disable iff (!rst)
//    d |=> q;
//endproperty

//property p_1b_v1_f;
//    @(posedge clk)
//    d |=> q;
//endproperty

//property p_1b_v2;
//    @(posedge clk) disable iff (!rst)
//    d |-> ##1 q;
//endproperty

//property p_1b_v2_f;
//    @(posedge clk)
//    d |-> ##1 q;
//endproperty

//initial begin
//    clk = 1'b0;
//    rst = 1'b1;
//    d = 1'b1;
//    #20 rst = 1'b0;
//    #20 rst = 1'b1; 
//end

//always #5 clk = ~clk;

//a: assert property (p_1a);
//a_f: assert property (p_1a_f);
//b_v1: assert property (p_1b_v1);
//b_v1_f: assert property (p_1b_v1_f);
//b_v2: assert property (p_1b_v2);
//b_v2_f: assert property (p_1b_v2_f);

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module dff (input wire d,
//            input wire rst,  
//            input wire clk,  
//            output reg q);
             
//always_ff @ (posedge clk)  
//    if (!rst)
//        q <= 1'b0;
//    else  
//        q <= d;  
//endmodule 

//module demo_13;
//reg clk;
//reg rst;
//reg d1;
//reg d2;
//reg q1;
//reg q2;

//dff DUT1 (d1, rst, clk, q1);
//dff DUT2 (d2, rst, clk, q2);

//initial begin
//    clk = 1'b0;
//    d1 = 1'b0;
//    d2 = 1'b0;
//    rst = 1'b1;
//    #5 rst = 1'b0;
//    #5 rst = 1'b1;
//    #15 d1 = 1'b1;
//        d2 <= 1'b1;
//end

//always #5 clk = ~clk;

//endmodule

//////////////////////////////////////////////////////////////////////////////////

//module dff (input wire [31:0] d,
//            input wire rst,  
//            input wire clk,  
//            output reg [31:0] q);
             
//always_ff @ (posedge clk)  
//    if (!rst)
//        q <= 0;
//    else  
//        q <= d*d;  
//endmodule 

//module demo_14;
//reg clk;
//reg rst;
//integer d1;
//integer d2;
//integer q1;
//integer q2;

//dff DUT1 (d1, rst, clk, q1);
//dff DUT2 (d2, rst, clk, q2);

//initial begin
//    clk = 1'b0;
//    d1 = 0;
//    d2 = 0;
//    rst = 1'b1;
//    #5 rst = 1'b0;
//    #5 rst = 1'b1;
//    #15 d1 = 5;
//        d2 <= 5;
//end

//always #5 clk = ~clk;

//endmodule