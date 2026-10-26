module odd_parity_checker(
    input [3:0] data,
    input parity_bit,
    output odd
);

assign odd = ^{data, parity_bit};

endmodule
