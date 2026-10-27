`timescale 1ns/1ps

module two_s_generator_tb;
reg [3:0]data;
wire [3:0]complement;

two_s_generator dut(
    .data(data),
    .complement(complement)
);
initial begin
  $dumpfile("two_s_generator.vcd");
  $dumpvars(0, two_s_generator_tb);
   $monitor("time=%0t | data=%b | complement=%b",$time,data,complement);

   data=4'b0010;
   #10;

   data=4'b0011;
   #10;

   data=4'b1010;
   #10;
   $finish;

   end
   endmodule