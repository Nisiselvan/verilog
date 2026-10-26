module one_bit_tb;
    reg  a, b;
    wire gt, eq, lt;
    one_bit dut (.a(a), .b(b), .gt(gt), .eq(eq), .lt(lt));
    initial begin
        $dumpfile("one_bit.vcd");
        $dumpvars(0,one_bit_tb);   
        end
    initial begin
        $monitor("a=%d b=%d | gt=%b eq=%b lt=%b", a, b, gt, eq, lt);
        a=0;b=0;#1;
        a=0;b=1;#1;
        a=1;b=0;#1;
        a=1;b=1;#1;
        $finish;
    end
endmodule