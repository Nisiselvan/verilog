
`timescale 1ns/1ps

module xs_three_tb;

    reg [3:0] bcd;
    wire [3:0] xs_three;

    xs_three dut (
        .bcd(bcd),
        .xs_three(xs_three)
    );

    initial begin
        $dumpfile("xs_three.vcd");
        $dumpvars(0, xs_three_tb);

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
