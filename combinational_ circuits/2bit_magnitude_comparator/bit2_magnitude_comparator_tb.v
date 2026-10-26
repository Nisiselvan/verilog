
`timescale 1ns/1ps

module bit2_magnitude_comparator_tb;

    reg [1:0] A, B;
    wire A_gt_B, A_lt_B, A_eq_B;

    bit2_magnitude_comparator dut ( 
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    integer i, j;

    initial begin
        $dumpfile("bit2_magnitude_comparator.vcd");
        $dumpvars(0, bit2_magnitude_comparator_tb);

        $monitor("Time=%0t A=%b B=%b | A>B=%b A<B=%b A==B=%b",
                 $time, A, B, A_gt_B, A_lt_B, A_eq_B);

        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A = i;
                B = j;
                #10;
            end
        end

        $finish;
    end

endmodule
