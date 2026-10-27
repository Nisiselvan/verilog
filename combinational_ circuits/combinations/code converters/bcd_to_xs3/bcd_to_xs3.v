module bcd_to_xs3(
    input wire [3:0] bcd,
    output wire [3:0] xs3
);
assign xs3 = bcd + 4'b0011;

endmodule