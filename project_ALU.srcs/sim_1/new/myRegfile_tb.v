`timescale 1ns / 1ps
//レジスタファイル用のテストベンチ
//テストベンチは入出力を定義しない

module myRegfile_tb;
    reg ck,we;
    reg [15:0] x, y;
    reg [15:0] din;
    reg [2:0] inaddr, outaddr;
    wire [15:0] out;
    wire [15:0] dout;
    parameter STEP = 100;
    integer i;
    
    regfile regfile1(.ck(ck),.we(we),.din(din),.inaddr(inaddr),.dout(dout),.outaddr(outaddr));
    
    //クロックの生成
    always begin 
        ck = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        ck = 1; 
        #(STEP/2);
    end    
    
    initial begin
        for(i=0;i<8;i=i+1) begin
            #STEP we = 1;
            inaddr = i;
            #STEP din = i<<4; //左4bitシフト
        end
        
        for(i=0;i<8;i=i+1) begin
            #STEP we = 0;
            outaddr = i;
            x = dout;
        end    
        #STEP x = dout;
        #STEP $finish;
    end
    initial $monitor ($stime,"inaddr = %h din=%h outaddr=%h dout=%h x=%h" , inaddr,din,outaddr,dout,x);    
        
      
endmodule
