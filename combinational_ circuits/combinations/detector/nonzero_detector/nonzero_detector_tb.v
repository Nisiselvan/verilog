`timescale 1ns/1ps

module nonzero_detector_tb;
reg [3:0] a;
wire nonzero;
zero_detector dut(
    .a(a),
.nonzero(nonzero)
);

initial begin
    $dumpfile("nonzero_detector.vcd");
    $dumpvars(0,nonzero_detector_tb);
    $monitor("$time=%0t | a=%b | nonzero=%b",$time,a,nonzero);

    a=4'b0010; #10; 
    a=4'b0011; #10;
    a=4'b1000; #10; 
    a=4'b0000; #10;
    $finish;
end
endmodule
