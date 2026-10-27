module right_rotator (
    input [3:0] a,
    output[3:0] y
);
assign y = { a[0] , a[3:1]};
endmodule