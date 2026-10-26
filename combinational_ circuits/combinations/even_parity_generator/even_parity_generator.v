module even_parity_generator (
input wire [3:0] data,
output wire parity
);

assign parity = data[3]^data[2]^data[1]^data[0];
endmodule 
