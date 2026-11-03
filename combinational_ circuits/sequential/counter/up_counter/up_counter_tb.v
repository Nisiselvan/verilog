`timescale 1ns/1ps

module up_counter_tb;
reg clk,rst;
output [2:0]q;

up_counter dut(
    .clk(clk),
    .rst(rst),
    .q(q)
);
always #10 clk= ~clk;

initial begin
clk=0;
rst=1;

$dumpfile("up_counter.vcd");
$dumpvars(0 , up_counter_tb);

$monitor("$time=%0t | clk=%b | rst=%b | q=%b",$time,clk,rst,q);

#20 rst=0;

#100;
$finish;
end
endmodule
