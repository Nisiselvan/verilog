module mux_8to1 (
    input [7:0] a,
    input [2:0] sel,
    output y
);

assign y = a[sel];

endmodule
