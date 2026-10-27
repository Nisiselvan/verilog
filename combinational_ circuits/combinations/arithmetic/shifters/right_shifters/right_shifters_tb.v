`timescale 1ns/1ps
module right_shifters_tb;
reg[3:0]a;
wire[3:0]y;

right_shifters dut (
    .a(a),
    .y(y)
);

initial begin
$dumpfile("right_shifters.vcd");
$dumpvars(0 , right_shifters_tb);

 $monitor("time=%0t | a=%b | y=%b",$time,a,y);
 a=4'b0101;
#10;
 a=4'b0111;
#10;
 a=4'b0101;
#10;
 a=4'b1001;
#10;
 $finish;
 end

endmodule
