`timescale 1ns/1ps
module zero_counter_tb;

reg [3:0] a;
wire [2:0] count;

zero_counter dut (
    .a(a),
    .count(count)
);

initial begin
    $dumpfile("zero_counter.vcd");
    $dumpvars(0, zero_counter_tb);

    $monitor("time=%0t | a=%b | count=%b",$time, a, count);

    a = 4'b0110; #10;
    a = 4'b1101; #10;
    a = 4'b1111; #10;
    a = 4'b0000; #10;

    $finish;
end
endmodule
 