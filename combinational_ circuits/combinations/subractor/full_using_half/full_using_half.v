module full_using_half(
    input a, b, cin,
output sum, carry
);
 wire S1, C1, C2;

    half_adder ha1 (
        .a(a),
        .b(b),
        .sum(S1),
        .carry(C1)
    );

    half_adder ha2 (
        .a(S1),
        .b(cin),  
   .sum(sum),
    .carry(C2)
    );

   assign carry = C1 | C2;

endmodule