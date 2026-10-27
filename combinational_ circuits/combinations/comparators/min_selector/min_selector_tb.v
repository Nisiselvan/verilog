`timescale 1ns/1ps
module min_selector_tb;
reg[2:0]a,b;
wire[2:0]min;

min_selector dut(
    .a(a),
    .b(b),
    .min(min)
);

initial begin
$dumpfile("min_selector.vcd");
$dumpvars(0, min_selector_tb);
$monitor("time=%0t | a=%b | b=%b | min=%b",$time,a,b,min);

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