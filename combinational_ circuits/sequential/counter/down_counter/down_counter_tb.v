`timescale 1ns/1ps

module down_counter_tb;
reg clk,rst;
output [2:0]q;

down_counter dut(
    .clk(clk),
    .rst(rst),
    .q(q)
);
always #10 clk= ~clk;

initial begin
clk=0;
rst=1;

$dumpfile("down_counter.vcd");
$dumpvars(0 , down_counter_tb);

$monitor("$time=%0t | clk=%b | rst=%b | q=%b",$time,clk,rst,q);

#20 rst=0;

#100;
$finish;
end
endmodule
