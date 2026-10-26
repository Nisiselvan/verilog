module bit_2_tb;

    reg a1, a0, b1, b0;
    wire p3, p2, p1, p0;

    reg [3:0] A, B;
    reg [3:0] expected;

    integer i, j;

    bit_2 dut (
        .a1(a1),
        .a0(a0),
        .b1(b1),
        .b0(b0),
        .p3(p3),
        .p2(p2),
        .p1(p1),
        .p0(p0)
    );

    initial begin
        $display(" A  B | PRODUCT | EXPECTED");
        $display("---------------------------");

        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin

                A = i;
                B = j;

                {a1, a0} = A[1:0];
                {b1, b0} = B[1:0];

                expected = A * B;

                #10;

                $display("%b  %b |   %b   |   %b",
                    {a1,a0},
                    {b1,b0},
                    {p3,p2,p1,p0},
                    expected);

                if ({p3,p2,p1,p0} !== expected)
                    $display("ERROR: Test failed!");
                else
                    $display("PASS");

            end
        end

        $finish;
    end

endmodule