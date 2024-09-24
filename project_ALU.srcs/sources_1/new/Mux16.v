`timescale 1ns / 1ps
//And


module Mux16(
    input [15:0] a,
    input [15:0] b,
    input s,
    output [15:0] out
    );
    assign out = s ? b: a;
endmodule