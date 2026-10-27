`timescale 1ns/1ps

module decoder_4to16_tb;

reg [3:0] a;
wire [15:0] y;

decoder_4to16 dut(a, y);

initial begin
    $dumpfile("decoder_4to16.vcd");
    $dumpvars(0, decoder_4to16_tb);
    $monitor("time=%0t | a=%b | y=%016b", $time, a, y);

    a = 0;  #10;
    a = 1;  #10;
    a = 2;  #10;
    a = 3;  #10;
    a = 4;  #10;
    a = 5;  #10;
    a = 6;  #10;
    a = 7;  #10;
    a = 8;  #10;
    a = 9;  #10;
    a = 10; #10;
    a = 11; #10;
    a = 12; #10;
    a = 13; #10;
    a = 14; #10;
    a = 15; #10;

    $finish;
end

endmodule
