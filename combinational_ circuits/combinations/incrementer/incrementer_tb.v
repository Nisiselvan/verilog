`timescale 1ns/1ps

module incrementer_tb;
reg [2:0] a;
wire [2:0] y;

incrementer dut(
    .a(a),
    .y(y)
);
initial begin
  $dumpfile("incrementer.vcd");
  $dumpvars(0, incrementer_tb);
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