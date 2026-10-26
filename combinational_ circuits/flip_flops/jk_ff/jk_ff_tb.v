
`timescale 1ns/1ps

module jk_ff_tb;

reg j, k, clk;
wire q;

jk_ff dut(j, k, clk, q);

always #5 clk = ~clk;

initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, jk_ff_tb);
    $monitor("time=%0t clk=%b j=%b k=%b q=%b",
             $time, clk, j, k, q);

    clk = 0;
    j = 0; k = 0;
    #10 j = 0; k = 1;
    #10 j = 1; k = 0;
    #10 j = 1; k = 1;
    #20 $finish;
end

endmodule
