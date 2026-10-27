`timescale 1ns/1ps

module reverse_shifter_tb;

reg [3:0] a;
wire [3:0] y;

reverse_shifter dut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("reverse_shifter.vcd");
    $dumpvars(0, reverse_shifter_tb);

    $monitor("time=%0t | a=%b | y=%b", $time, a, y);

    a = 4'b0001; #10;
    a = 4'b0010; #10;
    a = 4'b1010; #10;
    a = 4'b1101; #10;
    a = 4'b1011; #10;
    a = 4'b0111; #10;

    $finish;
end

endmodule