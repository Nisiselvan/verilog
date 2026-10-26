`timescale 1ns/1ps
module even_parity_checker_tb;
reg [4:0] data;
wire error;
even_parity_checker dut(.data(data),.error(error));

initial begin
    $dumpfile("even_parity_checker.vcd");
    $dumpvars(0,even_parity_checker_tb);
    data=5'b00000; #10; $display("data=%b error=%b",data,error);
    data=5'b00001; #10; $display("data=%b error=%b",data,error);
    data=5'b10101; #10; $display("data=%b error=%b",data,error);
    $finish;
end
endmodule
