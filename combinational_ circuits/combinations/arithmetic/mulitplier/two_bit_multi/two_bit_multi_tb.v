`timescale 1ns/1ps

module two_bit_multi_tb;

reg [1:0] a, b;
wire [3:0] product;

two_bit_multi dut (
    .a(a),
    .b(b),
    .product(product)
);

initial begin
    $dumpfile("two_bit_multi.vcd");
    $dumpvars(0, two_bit_multi_tb);

    $monitor("a=%b b=%b product=%b", a, b, product);

    a = 0; b = 0; #10;
    a = 1; b = 2; #10;
    a = 2; b = 3; #10;
    a = 3; b = 3; #10;

    $finish;
end

endmodule