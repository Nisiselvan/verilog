module xs3_to_bcd (
    input  [3:0] xs3,
    output reg [3:0] bcd
);
always @(*) begin
    bcd = xs3 - 4'd3;
end

endmodule