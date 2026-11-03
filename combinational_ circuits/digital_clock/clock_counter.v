module clock_counter(
    input clk,
    input rst,
    input tick,
    output reg [3:0] sec_ones,
    output reg [3:0] sec_tens,
    output reg [3:0] min_ones,
    output reg [3:0] min_tens
);

always @(posedge clk )begin

if (rst) begin
sec_ones<=0;

sec_tens<=0;

min_ones<=0;

min_tens<=0;

end

else if (tick) begin

if (sec_ones == 9)begin
sec_ones <= 0;

if (sec_tens == 5)begin
sec_tens <= 0;

if (min_ones == 9)begin
min_ones <= 0;

if (min_tens == 5)begin
min_tens <= 0;
end

else
    min_tens <= min_tens + 1;
end

else
   min_ones <= min_ones + 1;
end

else
     sec_tens <= sec_tens + 1;
end

else
     sec_ones <= sec_ones + 1;
end


end

endmodule

