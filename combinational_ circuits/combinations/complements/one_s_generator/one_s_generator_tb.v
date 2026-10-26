`timescale 1ns/1ps

module one_s_generator_tb;
reg [3:0]data;
wire [3:0]complement;

one_s_generator dut(
    .data(data),
    .complement(complement)
);
initial begin
  $dumpfile("one_s_generator.vcd");
  $dumpvars(0, one_s_generator_tb);
   $monitor("time=%0t | data=%b | complement=%b",$time,data,complement);

   data=4'b0110;
   #10;

   data=4'b0111;
   #10;

   data=4'b1110;
   #10;
   $finish;

   end
   endmodule