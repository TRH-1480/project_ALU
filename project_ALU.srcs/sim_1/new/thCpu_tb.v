`timescale 1ns / 1ps
//


module thCpu_tb;
    
    reg [15:0] x,y;
    reg [10:0] command;
    wire [15:0] out;
    reg [15:0] din;
    wire dout [15:0];
    wire zr,ng;
    reg ck;
    
    parameter STEP = 100;
    
    thCpu_ml thCpu1(.x(x),.y(y),.command(command),.out(out),.din(din),
        .dout(dout),.zr(zr),.ng(ng),.ck(ck));
    
    //クロックの生成
    always begin 
        clk = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        clk = 1; 
        #(STEP/2);
    end 
    
    initial begin
    
    #STEP
        x = 16'b0000_0000_0000_1111;
        y = 16'b0000_0000_0000_0001;
    #STEP
        command = 10'b0_000_000010;
     #STEP
        x = 16'b0000_0000_1111_1111;
        y = 16'b0000_0001_0000_0001;
    #STEP
        command = 10'b0_000_000010;    
    #STEP $fibish;
    end        

endmodule
