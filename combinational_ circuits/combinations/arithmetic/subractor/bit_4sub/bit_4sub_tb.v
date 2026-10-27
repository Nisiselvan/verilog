`timescale 1ns/1ps
module bit_4sub_tb;
reg [3:0] a,b;
wire [3:0] diff;
bit_4sub dut(.a(a),.b(b),.diff(diff));

initial begin
    $dumpfile("bit_4sub.vcd");
    $dumpvars(0,bit_4sub_tb);
    a=4'd8; b=4'd3; #10; $display("a=%d b=%d diff=%d",a,b,diff);
    a=4'd9; b=4'd4; #10; $display("a=%d b=%d diff=%d",a,b,diff);
    a=4'd3; b=4'd5; #10; $display("a=%d b=%d diff=%b",a,b,diff);
    $finish;
end
endmodule
