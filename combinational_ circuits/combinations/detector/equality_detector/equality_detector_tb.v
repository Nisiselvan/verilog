`timescale 1ns/1ps
module equality_detector_tb;
reg a,b;
wire equal;

equality_detector dut(
    .a(a),
    .b(b),
    .equal(equal)
);
initial begin
 $dumpfile("equality_detector.vcd");
 $dumpvars(0 , equality_detector_tb);

  $monitor("time=%0t | a=%b | b=%b | equal=%b",$time, a, b, equal);

  a=0; b=1; 
  #10;
  a=1; b=0;
  #10;
  a=1; b=1;
  #10;
  $finish;
  end
  endmodule