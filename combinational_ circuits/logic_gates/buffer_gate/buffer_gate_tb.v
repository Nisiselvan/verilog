`timescale 1ns/1ps

module buffer_gate_tb;

    reg a;
    wire y;

    buffer_gate dut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("buffer_gate.vcd");
        $dumpvars(0, buffer_gate_tb);

        a = 1;
        #10;
        a = 0;
        #10;
        a = 1;
        #10;

        a = 1;
        #10;     
        $finish;
    end

endmodule