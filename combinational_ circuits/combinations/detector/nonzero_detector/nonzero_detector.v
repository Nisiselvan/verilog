module zero_detector(
    input [3:0] a,
     output nonzero
     );
assign nonzero = (a != 4'b0000);
endmodule
