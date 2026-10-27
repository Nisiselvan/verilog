`timescale 1ns/1ps
module demux1_8_tb;
reg d;
reg [2:0] sel;
wire [7:0] y;

demux1_8 dut(
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin
$dumpfile("demux1_8.vcd");
$dumpvars(0 ,demux1_8_tb);

 $monitor("time=%0t | d=%b | sel=%b | y=%b",  $time, d, sel, y);
    d = 1'b1;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    d = 1'b0; #10;
    $finish;
    end
    endmodule
