module max_selector (
    input[2:0] a,
    input[2:0] b,
    output[2:0]max
);
assign max =(a>b) ? a:b;
endmodule