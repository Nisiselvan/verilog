
`timescale 1ns/1ps

module dual_and_or_tb;

reg a, b, c, d, e, f, g, h, i, j;
wire x, y;

dual_and_or dut (
    .a(a), .b(b), .c(c), .d(d), .e(e),
    .f(f), .g(g), .h(h), .i(i), .j(j),
    .x(x), .y(y)
);
initial begin
    $dumpfile("dual_and_or.vcd");
    $dumpvars(0,dual_and_or_tb);
end
initial begin
    $monitor("b=%b c=%b d=%b e=%b x=%b | a=%b f=%b g=%b h=%b i=%b j=%b y=%b",
             b, c, d, e, x, a, f, g, h, i, j, y);

    a=0; b=0; c=0; d=0; e=0;
    f=0; g=0; h=0; i=0; j=0;

    a=1; b=1; c=1; d=0; e=0;
    f=1; g=1; h=0; i=0; j=0;

    a=0; b=0; c=0; d=1; e=1;
    f=0; g=0; h=1; i=1; j=1;

    $finish;
end

endmodule
