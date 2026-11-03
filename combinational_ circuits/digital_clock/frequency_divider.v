module frequency_divider(
    parameter clk_frequency = 50000000
)
(
    input clk,
    input rst,
    output reg tick
);

reg [25:0] count;

always @(posedge)begin

if (rst)begin
count <= 0;
tick <= 0;
end

else begin
 if (count == clk_frequency - 1)begin
 count <= 0;
 tick <= 1;

 end
 else begin

 count <= count + 1;
 tick <= 0;

 end

 end

 end

 endmodule