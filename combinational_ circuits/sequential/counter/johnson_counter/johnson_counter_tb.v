`timescale 1ns/1ps
module johnson_counter_tb;
reg clk;
reg rst;
wire [3:0] q;

johnson_counter dut(
    .clk(clk),
    .rst(rst),
    .q(q)
);
always #10 clk= ~clk;
initial begin
$dumpfile("johnson_counter.vcd");
$dumpvars(0 , johnson_counter_tb);

$monitor("time=%0t | clk=%b | rst=%b | q=%b",$time,clk,rst,q);
 clk =0;
 rst=1;

 #20;
 rst=0;
 #100;
 $finish;
 end
 endmodule
