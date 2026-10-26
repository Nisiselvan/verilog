module even_parity_checker
(input [4:0] data,
 output error);
assign error = ^data;
endmodule
