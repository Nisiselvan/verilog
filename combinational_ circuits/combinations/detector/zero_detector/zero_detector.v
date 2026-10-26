module zero_detector(
    input [3:0] a,
     output is_zero
     );
assign is_zero = (a == 4'b0000);
endmodule
