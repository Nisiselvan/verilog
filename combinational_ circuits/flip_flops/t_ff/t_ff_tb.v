`timescale 1ns/1ps

module t_ff_tb;
reg clk;
reg t;
reg reset;
wire q;

t_ff dut (
    .q(q),
    .clk(clk),
    .reset(reset),
    .t(t)
);

always #5 clk= ~clk;

initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, t_ff_tb);
$monitor("time=%0dns| clk=%b | t=%b | q=%b | reset=%b", $time,reset,clk,t,q);
clk=0;
reset=1;
t=0;
#10 t=1;
#20 t=0;
#30 t=1;
#40 $finish;


end
endmodule