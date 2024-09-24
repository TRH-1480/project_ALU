`timescale 1ns / 1ps
//


module myDeMux(
    input rs,
    input ck,//クロック信号
    input f2,f3,
    output reg[15:0] x,y,
    input [15:0] dout
    );
    
    always @ (posedge ck & rs) begin x <= 16'h0; y<= 16'h0; end //レジスタファイルに書き込む
    always @ (negedge ck & f2) begin x <= dout; end //出力先の選択
    always @ (negedge ck & f3) begin y <= dout; end //出力先の選択
    
    
endmodule
