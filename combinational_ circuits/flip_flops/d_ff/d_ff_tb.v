`timescale 1ns/1ps

module d_ff_tb;

reg clk;
reg reset;
reg d;
wire q;
wire q_bar;

d_ff dut (
    .clk(clk),
    .reset(reset),
    .q(q),
    .d(d),
    .q_bar(q_bar)
);

always #5 clk= ~clk;

initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0, d_ff_tb);
$monitor("time=%0dns | reset=%b | d=%b | q=%b | q_bar=%b", $time,reset,d,q,q_bar);

clk=0;
reset=1;
d=0;
#10;

reset=0;

d=1;
#10;

d=0;
#10;

d=1;
#10;
$finish;
end 
endmodule
