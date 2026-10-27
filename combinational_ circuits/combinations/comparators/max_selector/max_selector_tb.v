`timescale 1ns/1ps
module max_selector_tb;
reg[2:0]a,b;
wire[2:0]max;

max_selector dut(
    .a(a),
    .b(b),
    .max(max)
);

initial begin
$dumpfile("max_selector.vcd");
$dumpvars(0, max_selector_tb);
$monitor("time=%0t | a=%b | b=%b | max=%b",$time,a,b,max);

a=3'b110; b=3'b101;
#10;
a=3'b110; b=3'b100;
#10;
a=3'b100; b=3'b011;
#10;
a=3'b010; b=3'b100;
#10;
a=3'b101; b=3'b010;
#10;
$finish;
end
endmodule