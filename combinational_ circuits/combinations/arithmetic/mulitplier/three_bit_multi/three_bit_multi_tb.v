`timescale 1ns/1ps

module three_bit_multi_tb;

reg [2:0] a, b;
wire [5:0] product;

three_bit_multi dut (
    .a(a),
    .b(b),
    .product(product)
);

initial begin
    $dumpfile("three_bit_multi.vcd");
    $dumpvars(0, three_bit_multi_tb);

    $monitor("$time=%0t |a=%b | b=%b | product=%b",$time, a, b, product);

    a = 0; b = 0; #10;
    a = 7; b = 2; #10;
    a = 5; b = 2; #10;
    a = 4; b = 3; #10;

    $finish;
end

endmodule