`timescale 1ns/1ps

module full_using_half_tb;

    reg a, b, cin;
    wire sum, carry;

    full_using_half dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("full_using_half.vcd");
        $dumpvars(0, full_using_half_tb);

        $monitor("time=%0t | a=%b b=%b cin=%b | sum=%b carry=%b",
                 $time, a, b, cin, sum, carry);

        a=0; b=0; cin=0;
        #10 a=0; b=0; cin=1;
        #10 a=0; b=1; cin=0;
        #10 a=0; b=1; cin=1;
        #10 a=1; b=0; cin=0;
        #10 a=1; b=0; cin=1;
        #10 a=1; b=1; cin=0;
        #10 a=1; b=1; cin=1;
        #10 $finish;
    end

endmodule