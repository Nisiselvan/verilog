
`timescale 1ns/1ps

module gray_to_binary_tb;

reg  [3:0] gray;
wire [3:0] binary;
integer i;

gray_to_binary dut (
    .binary(binary),
    .gray(gray)
);

initial begin
    $dumpfile("gray_to_binary.vcd");
    $dumpvars(0, gray_to_binary_tb);

    $monitor("time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    for (i = 0; i < 16; i = i + 1) begin
       gray = i;
    #10;
    end
    $finish;
end

endmodule
