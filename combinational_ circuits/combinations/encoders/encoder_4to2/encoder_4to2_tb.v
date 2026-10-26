`timescale 1ns/1ps
module encoder_4to2_tb;
reg [3:0] d;
wire [1:0] y;
encoder_4to2 dut(.d(d),.y(y));

initial begin
    $dumpfile("encoder_4to2.vcd");
    $dumpvars(0,encoder_4to2_tb);
    d=4'b0001; #10; $display("d=%b y=%b",d,y);
    d=4'b0010; #10; $display("d=%b y=%b",d,y);
    d=4'b0100; #10; $display("d=%b y=%b",d,y);
    d=4'b1000; #10; $display("d=%b y=%b",d,y);
    $finish;
end
endmodule
