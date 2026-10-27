`timescale 1ns/1ps
module xs3_to_bcd_tb;
 reg [3:0] xs3;
  wire [3:0] bcd;

    xs3_to_bcd dut (
        .xs3(xs3),
         .bcd(bcd)
    );
    initial begin
        $dumpfile("xs3_to_bcd.vcd");
        $dumpvars(0, xs3_to_bcd_tb);

        $monitor("Time=%0t | XS3=%b | BCD=%b", $time, xs3, bcd);

        xs3 = 4'b0011; #10;
        xs3 = 4'b0100; #10;
        xs3 = 4'b0101; #10;
        xs3 = 4'b0110; #10;
        xs3 = 4'b0111; #10;
        xs3 = 4'b1000; #10;
        xs3 = 4'b1001; #10;
        xs3 = 4'b1010; #10;
        xs3 = 4'b1011; #10;
        xs3 = 4'b1100; #10;

        $finish;
    end

endmodule
