module reverse_shifter(
    input [3:0] a,
    output [3:0] y
);

assign y = {a[0], a[1], a[2], a[3]};

endmodule