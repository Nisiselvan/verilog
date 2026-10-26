`timescale 1ns/1ps
module decoder_3to8_tb;
reg [2:0] a;
wire [7:0] y;
decoder_3to8 dut(.a(a),.y(y));

initial begin
    $dumpfile("decoder_3to8.vcd");
    $dumpvars(0,decoder_3to8_tb);
    a=3'b000; #10; $display("a=%b y=%b",a,y);
    a=3'b001; #10; $display("a=%b y=%b",a,y);
    a=3'b010; #10; $display("a=%b y=%b",a,y);
    a=3'b111; #10; $display("a=%b y=%b",a,y);
    $finish;
end
endmodule
