module inequality_detector(
    input a,
    input b,
    output inequal
);
assign inequal = (a!==b);
endmodule
