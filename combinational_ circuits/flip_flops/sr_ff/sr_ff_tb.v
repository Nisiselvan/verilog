`timescale 1ns/1ps

module sr_ff_tb;

reg clk;
reg reset;
reg s;
reg r;
wire q;
wire q_bar;

sr_ff dut (
.clk(clk),    
.reset(reset),
.s(s),
.r(r),
.q(q),
.q_bar(q_bar)
);

 always #10 clk = ~clk;

 initial begin

 $dumpfile("sr_ff.vcd");
 $dumpvars(0, sr_ff_tb);

 $monitor("Time = %0dns | Reset = %b | s = %b | s = %b | q = %b | q_bar = %b", 
 $time, reset, s, r, q, q_bar);

  clk = 0;
        reset = 1;
        s = 0;
        r = 0;
        #15;

   reset=0;
    #20;

   s=0; r=0;
   #20;

   s=0; r=1;
   #20;

   s=1; r=0;
   #20;

   s=1; r=1;
   #20;

   reset=1;
   #20;

   reset=0;
   #20;

   $finish;
   end

   endmodule
