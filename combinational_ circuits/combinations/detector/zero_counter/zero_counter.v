module zero_counter (
    input [3:0] a,
    output [2:0] count
);

assign count = {2'b00, (a[0]==1'b0)}+
                {2'b00, (a[1]==1'b0)}+
                {2'b00, (a[2]==1'b0)}+
                {2'b00, (a[3]==1'b0)};

endmodule