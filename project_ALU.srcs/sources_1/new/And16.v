`timescale 1ns / 1ps
//And


module And16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
    );
    assign out = a&b;
endmodule
