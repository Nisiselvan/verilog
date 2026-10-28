`timescale 1ns/1ps
 module bitwise_selector_tb;
    reg [3:0] a,b;
    reg [1:0] sel;
    wire [3:0] y;

bitwise_selector dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);
initial begin
$dumpfile("bitwise_selector.vcd");
$dumpvars(0 , bitwise_selector_tb);

$monitor("%time=%0t | a=%b | b=%b | sel=%b | y=%b",$time,a,b,sel,y);

a= 4'b1100;
b= 4'b1101;

sel=2'b00;
#10;
sel=2'b01;
#10;
sel=2'b11;
#10;
sel=2'b10;
#10;

$finish;
end
endmodule