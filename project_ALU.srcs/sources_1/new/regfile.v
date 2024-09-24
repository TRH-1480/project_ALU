`timescale 1ns / 1ps
//レジスタファイル


module regfile(
    input ck,//クロック信号
    input we,//書き込み可能信号
    input [15:0] din,//入力データ
    input [2:0] inaddr,//入力アドレス(3bit)    
    output [15:0] dout,//出力データ
    input [2:0] outaddr//出力アドレス(3bit)
    );
    reg [15:0] file [0:7];
    
    always @ (posedge ck)
        if (we)
            file[inaddr] <= din;
    
    assign dout = file[outaddr];        
    
endmodule
