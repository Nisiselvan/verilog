module one_s_generator (
    input wire [3:0] data,
    output wire [3:0] complement
);
   assign complement= ~data;
   endmodule