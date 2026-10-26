module equality_tb;
    reg [3:0] A, B;
    wire EQ;
    equality dut(A, B, EQ);
    initial begin
        $dumpfile("equality.vcd");
        $dumpvars(0, equality_tb);
    end
    initial begin
        $monitor("A=%b B=%b | EQ=%b" , A , B , EQ);
        A = 4'b1010; B = 4'b1010; #10;
        A = 4'b1010; B = 4'b1001; #10;
        A = 4'b1111; B = 4'b1111; #10;
        A = 4'b1000; B = 4'b1100; #10;
        $finish;
    end
endmodule