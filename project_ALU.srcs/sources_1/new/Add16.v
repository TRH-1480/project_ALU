`timescale 1ns / 1ps
//fulladder


module Add16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
    );
    assign out = a+b;
endmodule
