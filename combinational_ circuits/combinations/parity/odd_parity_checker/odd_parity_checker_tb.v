
`timescale 1ns/1ps

module odd_parity_checker_tb;

reg [3:0] data;
reg parity_bit;
wire odd;

odd_parity_checker dut(
    .data(data),
    .parity_bit(parity_bit),
    .odd(odd)
);

initial begin
    $dumpfile("odd_parity_checker.vcd");
    $dumpvars(0, odd_parity_checker_tb);

    $monitor("time=%0t | data=%b | parity_bit=%b | odd=%b",
              $time, data, parity_bit, odd);

    data = 4'b0001; parity_bit = 0;
    #10 data = 4'b0011; parity_bit = 1;
    #10 data = 4'b0111; parity_bit = 0;
    #10 data = 4'b1010; parity_bit = 0;
    #10 data = 4'b1111; parity_bit = 1;

    #10 $finish;
end

endmodule
