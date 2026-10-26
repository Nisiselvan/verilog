
`timescale 1ns/1ps

module decoder_2to4_tb;

reg [1:0] a;
wire [3:0] y;

decoder_2to4 dut (
    .a(a),
    .y(y)
);

initial begin
$dumpfile("decoder_2to4.vcd");
$dumpvars(0, decoder_2to4_tb);
    $display("Time\t a\t y");
    $monitor("%0t\t %b\t %b", $time, a, y);

    a = 2'b00; #10;
    a = 2'b01; #10;
    a = 2'b10; #10;
    a = 2'b11; #10;

   $finish;
end

endmodule
