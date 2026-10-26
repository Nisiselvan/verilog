module bit_2 
(a1, a0, b1, b0, p3, p2, p1, p0);

    input a1, a0, b1, b0;
    output p3, p2, p1, p0;

    wire w1, w2, w3, c1;

    and (p0, a0, b0);

    and (w1, a1, b0);
    and (w2, a0, b1);

    xor (p1, w1, w2);
    and (c1, w1, w2);

    and (w3, a1, b1);

    xor (p2, w3, c1);
    and (p3, w3, c1);

endmodule