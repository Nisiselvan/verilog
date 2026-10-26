`timescale 1ns/1ps
module odd_parity_generator_tb;
reg[3:0]data;
wire parity;

odd_parity_generator dut(
    .data(data),
    .parity(parity)
);
initial begin
 $dumpfile("odd_parity_generator.vcd");
 $dumpvars(0 , odd_parity_generator_tb);
 end 

 initial begin
 $monitor("time=%0t | data=%b | parity=%b",$time,data,parity);

 data = 4'b0010;
 #10;
  data = 4'b0110;
 #10;
  data = 4'b1010;
 #10;
  data = 4'b1011;
 #10;
 $finish;
 end
 endmodule