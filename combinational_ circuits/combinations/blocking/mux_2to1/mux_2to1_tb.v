
`timescale 1ns/1ps
module mux_2to1_tb;
reg a, b, sel;
wire y;

mux_2to1 dut(
    .a(a), 
    .b(b), 
    .sel(sel),
     .y(y)
);

initial begin
    $dumpfile("mux_2to1.vcd");
    $dumpvars(0, mux_2to1_tb);
    $monitor("$time=%0t | a=%b | b=%b | sel=%b |y=%b",$time,a,b,sel,y);
    a=0; b=0;
    sel=0; 
    #10;
    sel=1;
     #10;
    a=0; b=1; 
    sel=0; 
    #10;
    sel=1; #10;
    $finish;
end
endmodule
