`timescale 1ns / 1ps
//


module And16Way(
    input [15:0] a,
    output out
    );
    
    assign out = a[0] & a[1] & a[2] & a[3] & a[4] & a[5] & a[6] & a[7]
                 & a[8] & a[9] & a[10] & a[11] & a[12] & a[13] & a[14] & a[15] ;
endmodule
