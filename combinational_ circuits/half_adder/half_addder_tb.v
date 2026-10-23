module half_addder_tb;

    reg A, B;
    wire Sum, Carry;

    // Instantiate the Half Adder
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    // Apply all possible input combinations
    initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_addder_tb);
        $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b",
                 $time, A, B, Sum, Carry);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule
