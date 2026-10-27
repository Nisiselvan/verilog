module three_bit_multi (
    input [2:0] a,
    input [2:0] b,
    output [5:0] product
);

assign product = a * b;

endmodule