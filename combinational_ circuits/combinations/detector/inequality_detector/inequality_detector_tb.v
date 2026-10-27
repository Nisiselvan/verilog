`timescale 1ns/1ps
module inequality_detector_tb;
reg a,b;
wire equal;

inequality_detector dut(
    .a(a),
    .b(b),
    .inequal(inequal)
);
initial begin
 $dumpfile("inequality_detector.vcd");
 $dumpvars(0 , inequality_detector_tb);

  $monitor("time=%0t | a=%b | b=%b | equal=%b",$time, a, b, inequal);

  a=0; b=1; 
  #10;
  a=1; b=0;
  #10;
  a=1; b=1;
  #10;
  $finish;
  end
  endmodule