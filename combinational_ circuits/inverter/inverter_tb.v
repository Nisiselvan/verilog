`timescale 1ns/1ps

module inverter_tb;

reg x;
wire y;

inverter dut (
    .x(x),
    .y(y)
);

initial begin
    $dumpfile("inverter.vcd");
    $dumpvars(0, inverter_tb);
    $monitor("x=%b | y=%b", x, y);

    x = 0;
    #10 x= 1;
    #20 x= 0;
    #10 $finish;
end

endmodule