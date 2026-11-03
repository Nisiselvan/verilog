`timescale 1ns/1ps

module right_shift_register_tb;

reg clk;
reg rst;
reg [3:0] a;
wire [3:0] q;

right_shift_register dut(
    .clk(clk),
    .rst(rst),
    .a(a),
    .q(q)
);
always #5clk = ~clk;

initial begin

    $dumpfile("right_shift_register.vcd");
    $dumpvars(0, right_shift_register_tb);

    $monitor("time=%0t | a=%b | q=%b", $time, a, q);

    clk = 0;
    rst = 1;
    a = 4'b0000;

    #10;
    rst = 0;

    a = 4'b1110;
    #10;

    a = 4'b1001;
    #10;

    a = 4'b1010;
    #10;

    $finish;

end

endmodule