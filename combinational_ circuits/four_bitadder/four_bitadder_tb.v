`timescale 1ns/1ps
module four_bitadder_tb;
reg [3:0]a;
reg[3:0]b;
wire[4:0]sum;

four_bitadder dut (
.a(a),
.b(b),
.sum(sum)
);

initial begin
$dumpfile("four_bitadder.vcd");
$dumpvars(0 , four_bitadder_tb);
end
initial begin
    $monitor("time=%0t | a=%b | b=%b | sum=%b",$time, a, b, sum);

    a = 4'b1001;
    b = 4'b0010;
    #10;

    a = 4'b1011;
    b = 4'b0101;
    #10;

    a = 4'b1110;
    b = 4'b0110;
    #10;

    a = 4'b1111;
    b = 4'b0101;
    #10;

    $finish;
    end
    endmodule