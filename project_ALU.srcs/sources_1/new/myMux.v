`timescale 1ns / 1ps
//�}���`�v���N�T


module myMux(
    input rs,//���Z�b�g�M��
    input f1,
    output [15:0] din,
    input [15:0] out
    );
    
    assign din = ~rs ? (f1 ? out : 16'h0) : 16'h0;
endmodule
