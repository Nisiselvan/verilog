`timescale 1ns/1ps

module zero_detector_tb;
reg [3:0] a;
wire is_zero;
zero_detector dut(.a(a),.is_zero(is_zero));

initial begin
    $dumpfile("zero_detector.vcd");
    $dumpvars(0,zero_detector_tb);
    a=4'b0000; #10; $display("a=%b is_zero=%b",a,is_zero);
    a=4'b0001; #10; $display("a=%b is_zero=%b",a,is_zero);
    a=4'b1000; #10; $display("a=%b is_zero=%b",a,is_zero);
    $finish;
end
endmodule
