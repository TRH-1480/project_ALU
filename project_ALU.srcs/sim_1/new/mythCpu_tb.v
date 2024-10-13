`timescale 1ns / 1ps
//


module mythCpu_tb;

    reg [15:0] x,y;
    reg [10:0] command;
    reg [15:0] din,din_demux;
    wire [15:0] out;
    wire [15:0] dout_mux,dout,out_x,out_y;
    wire zr,ng;
    reg ck;
    reg f1,f2,f3;
    reg rs;
    
    parameter STEP = 100;
    
    mythCpu_ml thCpu_1(.x(x),.y(y),.command(command),.din(din),.din_demux(din_demux),.out(out)
        ,.dout_mux(dout_mux),.dout(dout),.out_x(out_x),.out_y(out_y),.zr(zr),.ng(ng),.ck(ck),.f1(f1),.f2(f2),.f3(f3),.rs(rs));
    
    //クロックの生成
    always begin 
        ck = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        ck = 1; 
        #(STEP/2);
    end 
    
//    always begin 
//        f2 = 0; 
//        #(STEP/3); //#：指定した時間だけ遅延
//        f2 = 1; 
//        #(STEP/3);
//    end
    
//    always begin 
//        f3 = 0; 
//        #(STEP/4); //#：指定した時間だけ遅延
//        f3 = 1; 
//        #(STEP/4);
//    end
    
    initial begin
    
//    #STEP
//        f1 = 1;
//        rs = 0;
    #STEP
        x = 16'b0000_0000_0000_1111;
        y = 16'b0000_0000_0000_0001;
    #STEP
        command = 10'b0_000_000010; //x+y
        $display("Ans = %d",out);
     #STEP
        x = 16'b0000_0000_1111_1111;
        y = 16'b0000_0001_0000_0001;
    #STEP
        command = 10'b0_000_000010;  
        $display("Ans = %d",out);  
    #STEP $finish;
    end  
    
endmodule
