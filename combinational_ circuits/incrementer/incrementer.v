module incrementer(
input wire[2:0] a,
output wire[2:0] y
);
assign y[0]= ~a[0];
assign y[1]=a[1] ^ a[0];
assign y[2]=a[2] ^(a[1] & a[0]);

endmodule