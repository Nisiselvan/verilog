module min_selector (
    input[2:0] a,
    input[2:0] b,
    output[2:0]min
);
assign min =(a < b) ? a:b;
endmodule