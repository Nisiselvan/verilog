module dual_and_or (
    input b ,c ,d ,e,
    output x,
    input a,f,g,h,i,j,
    output y
    );
    assign x= ((b & c)|(d & e));
    assign y= ((a & f & g )| ( h & i & j ));

    endmodule