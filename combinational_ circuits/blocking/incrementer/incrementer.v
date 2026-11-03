module incrementer(
    input[1:0]a,
    output reg[1:0]y
);
always @(*)begin
y=a + 1'b1;
end
endmodule