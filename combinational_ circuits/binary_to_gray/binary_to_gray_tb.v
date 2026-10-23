`timescale 1ns/1ps

module binary_to_gray_tb;

reg [3:0]binary;
wire [3:0]gray;
binary_to_gray dut (
    .binary(binary),
    .gray(gray)
);

initial begin
$dumpfile("binary_to_gray.vcd");
$dumpvars(0, binary_to_gray_tb);
    $monitor("Binary = %b, Gray = %b", binary, gray);

    binary = 3'b000; #10;
    binary = 3'b001; #10;
    binary = 3'b010; #10;
    binary = 3'b011; #10;
    binary = 3'b100; #10;
    binary = 3'b101; #10;
    binary = 3'b110; #10;
    binary = 3'b111; #10;

    $finish;
end

endmodule
