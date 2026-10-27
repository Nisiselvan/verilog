
`timescale 1ns/1ps

module bcd_to_xs3_tb;

    reg [3:0] bcd;
    wire [3:0] xs3;

    bcd_to_xs3 dut (
        .bcd(bcd),
        .xs3(xs3)
    );

    initial begin
        $dumpfile("bcd_to_xs3.vcd");
        $dumpvars(0, bcd_to_xs3_tb);

        bcd = 4'd0;
        #10;
        bcd = 4'd1;
        #10;
        bcd = 4'd2;
        #10;
        bcd = 4'd3;
        #10;
        bcd = 4'd4;
        #10;
        bcd = 4'd5;
        #10;
        bcd = 4'd6;
        #10;
        bcd = 4'd7;
        #10;
        bcd = 4'd8;
        #10;
        bcd = 4'd9;
        #10;

        $finish;
    end

endmodule
