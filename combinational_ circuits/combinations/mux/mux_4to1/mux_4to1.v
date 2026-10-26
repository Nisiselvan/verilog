
module mux_4to1 (
    input wire a, b, c, d,
    input wire [1:0] sel,
    output wire y
);

assign y = (sel == 2'b00) ? a :
           (sel == 2'b01) ? b :
           (sel == 2'b10) ? c : d;

endmodule
