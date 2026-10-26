`timescale 1ns/1ps

module demux_1to4_tb;

reg din;
reg [1:0] sel;
wire [3:0] y;
demux_1to4 dut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0, demux_1to4_tb);

    $monitor("Time=%0t | din=%b | sel=%b | y=%b",
    $time, din, sel, y);
    din = 1'b1;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    din = 1'b0;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule