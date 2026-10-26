module t_ff(
    input t,
    input clk,
    input reset,
    output reg q
);

always @(posedge clk) begin
    if (reset)
        q <= 1'b0;
    else if (t == 1'b1)
        q <= ~q;
    else
        q <= q;
end

endmodule