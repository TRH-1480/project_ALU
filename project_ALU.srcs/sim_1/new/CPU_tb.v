`timescale 1ns / 1ps
//

module CPU_tb;

    reg clk;
    reg rs;
    reg [15:0] x,y;
    reg f1,f2,f3;//flag
    reg zx,nx,zy,ny,f,no;
    reg we;
    reg [2:0] inaddr,outaddr;
    wire [15:0] result,result1,result2;
    parameter STEP = 100;
    
    CPU cpu1(.clk(clk),.rs(rs),.x(x),.y(y),.f1(f1),.f2(f2),.f3(f3),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),.no(no),.we(we),.inaddr(inaddr),.outaddr(outaddr),
            .result(result),.result1(result1),.result2(result2));
    
    //クロックの生成
    always begin 
        clk = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        clk = 1; 
        #(STEP/2);
    end 
    
    initial begin
        
        // VCDファイル出力のための設定
        //$dumpfile("cpu_tb.vcd");  // 波形ファイルの名前
        //$dumpvars(0, CPU_tb);     // すべての信号を記録
        
        $monitor($stime,"x = %h,y = %h,we = %b, inaddr = %b,outaddr = %b, ALU result = %h,Mux result = %h,Regfile result = %h",x,y,we,inaddr,outaddr,result,result1,result2);
        
        // 初期値の設定
        rs= 0;
        x= 16'h0000;
        y = 16'h0000;
        f1 = 0;
        f2 = 0;
        f3 = 0;
        zx = 0;
        nx = 0;
        zy = 0;
        ny = 0;
        f = 0;
        no = 0;
        we = 0;
        inaddr = 3'b0000;
        outaddr = 3'b0000;
        
      
       //リセットの有効化 
        //rs = 1;
        //#STEP;
        //rs = 0;
        
        // テストケース1: x = 10, y = 5, ALU操作
        x = 16'd10;
        y = 16'd5;
        zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0; #STEP // ALU: x + y
        $display("ALU_out = %h",result);
        #STEP;

        // テストケース2: レジスタの書き込み
        #STEP we = 1;
        inaddr = 3'b001;
        #STEP we = 0;
        
        //テストケース3：　アドレスの読み込み
        outaddr = 3'b001;
        #STEP
        $display("Register and Register[%b] = %h",outaddr,result2);
        
        
         // 結果の表示
        //$display("ALU Result: %d",cpu1.out_alu);
        //$display("Mux Result: %d",cpu1.out_mux);
        //$display("Register File Output: %d",cpu1.out_reg);
        
        //#50;
        $finish;
      end  
        
        
endmodule
