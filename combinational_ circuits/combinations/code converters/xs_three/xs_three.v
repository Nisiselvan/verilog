module xs_three (
    input wire [3:0] bcd,
    output wire [3:0] xs_three
);
assign xs_three = bcd | 4'b0011;

endmodule