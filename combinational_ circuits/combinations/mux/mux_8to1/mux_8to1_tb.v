`timescale 1ns/1ps

module mux_8to1_tb;

reg [7:0] a;
reg [2:0] sel;
wire y;

mux_8to1 dut (
    .a(a),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux_8to1.vcd");
    $dumpvars(0, mux_8to1_tb);

    $monitor("time=%0t | a=%b | sel=%b | y=%b",
             $time, a, sel, y);

    a = 8'b10100110;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
