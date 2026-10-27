`timescale 1ns/1ps
module left_shifter_tb;
reg[3:0]a;
wire[3:0]y;

left_shifter dut (
    .a(a),
    .y(y)
);

initial begin
$dumpfile("left_shifter.vcd");
$dumpvars(0 , left_shifter_tb);
$monitor("time=%0t | a=%b | y=%b",$time,a,y);
a=4'b0001;
#10;
a=4'b0101;
#10;
a=4'b0011;
#10;
a=4'b1001;
#10;
$finish;
end
endmodule
