module half_subtractor_tb;

    reg A, B;
    wire D, Bout;

    half_subtractor dut (
        .A(A),
        .B(B),
        .D(D),
        .Bout(Bout)
    );
    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0,half_subtractor_tb);
    end
    initial begin
        $monitor("A=%b B=%b D=%b Borrow=%b",
                  A, B, D, Bout);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end

endmodule