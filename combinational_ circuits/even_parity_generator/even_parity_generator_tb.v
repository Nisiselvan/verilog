`timescale 1ns/1ps
module even_parity_generator_tb;
reg[3:0]data;
wire parity;

even_parity_generator dut(
    .data(data),
    .parity(parity)
);
initial begin
 $dumpfile("even_parity_generator.vcd");
 $dumpvars(0 , even_parity_generator_tb);
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