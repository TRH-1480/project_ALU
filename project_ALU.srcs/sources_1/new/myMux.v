`timescale 1ns / 1ps
//マルチプレクサ


module myMux(
    input rs,//リセット信号
    input f1,
    output [15:0] din,
    input [15:0] out
    );
    
    assign din = ~rs ? (f1 ? out : 16'h0) : 16'h0;
endmodule
