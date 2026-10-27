`timescale 1ns/1ps
module left_rotator_tb;
reg[3:0]a;
wire[3:0]y;

left_rotator dut (
    .a(a),
    .y(y)
);

initial begin
 $dumpfile("left_rotator.vcd");
 $dumpvars(0, left_rotator_tb);
 $monitor("$time=%0t | a=%b | y=%b",$time,a,y);

 a=4'b0010;
 #10;
 a=4'b0100;
 #10;
 a=4'b1100;
 #10;
 a=4'b1101;
 #10;

  $finish;
  end
  endmodule
