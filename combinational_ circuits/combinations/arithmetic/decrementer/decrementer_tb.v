`timescale 1ns/1ps

module decrementer_tb;
reg [2:0] a;
wire [2:0] y;

decrementer dut(
    .a(a),
    .y(y)
);
initial begin
  $dumpfile("decrementer.vcd");
  $dumpvars(0, decrementer_tb);
   $monitor("time=%0t | a=%b | y=%b",$time,a,y);

   a=3'b010;
   #10;

  a =3'b011;
   #10;

   a=3'b111;
   #10;
   $finish;

   end
   endmodule