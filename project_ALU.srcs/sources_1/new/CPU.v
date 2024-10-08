`timescale 1ns / 1ps
//CPU


module CPU(
    input clk,
    input rs,
    input [15:0] x,y,//data
    input f1,f2,f3,
    input zx,nx,zy,ny,f,no,
    input we,//書き込み可能信号
    input [2:0] inaddr,outaddr
    );
    
    //wire [15:0] x , y;//ALUへの入力データ
    //wire zx,nx,zy,ny,f,no;//ALU制御信号
    wire zr,ng;
    wire [15:0] out_alu; //ALUの出力結果
    //wire f1,f2,f3;//flag
    wire [15:0] out_mux;//Muxの出力結果 
    //wire we;//書き込み可能信号
    //wire [2:0] inaddr,outaddr;
    wire [15:0] out_reg;//レジスタファイルの出力:
    wire [15:0] out_x,out_y;//Demuxの出力データ
    
    //ALUの制御
    (* dont_touch = "TRUE" *) ALUCA ALUCA1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out_alu),.zr(zr),.ng(ng));
    
    //assign result = out_alu;
    
    //MUX制御
    (* dont_touch = "TRUE" *) myMux myMux1(.rs(rs),.f1(f1),.din(out_mux),.out(out_alu));
    
    //assign result1 = out_mux;
    
    //レジスタファイル制御
    (* dont_touch = "TRUE" *) regfile regfile1(.ck(clk),.we(we),.din(out_mux),.inaddr(inaddr),.dout(out_reg),.outaddr(outaddr));
    
    //assign result2 = out_reg;
    
    //DeMux制御
   (* dont_touch = "TRUE" *)  myDeMux myDeMux1(.rs(rs),.ck(clk),.f2(f2),.f3(f3),.x(out_x),.y(out_y),.dout(out_reg));
    assign x = out_x;
    assign y = out_y;
    
endmodule
