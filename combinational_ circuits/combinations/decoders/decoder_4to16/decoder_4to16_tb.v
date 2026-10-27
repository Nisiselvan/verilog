`timescale 1ns/1ps

module decoder_4to16_tb;

reg [3:0] a;
wire [15:0] y;

decoder_4to16 dut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("decoder_4to16.vcd");
    $dumpvars(0, decoder_4to16_tb);
    $monitor("time=%0t | a=%b | y=%016b", $time, a, y);
end

integer i;
 
    for (i = 0; i < 16; i = i + 1) begin
        a = i;
        #10;

    $finish;
end

endmodule
