`timescale 1ns / 1ps
//


module thCPU_sum_tb;

    reg [15:0] x,y;
    reg [10:0] command;
    wire [15:0] out;
    reg [15:0] din;
    wire [15:0] dout;
    wire zr,ng;
    reg ck;
    
    integer i ;
    
    parameter STEP = 10;
    
    thCpu_ml thCpu1(.x(x),.y(y),.command(command),.out(out),.din(din),
        .dout(dout),.zr(zr),.ng(ng),.ck(ck));
        
     //クロックの生成
    always begin 
        ck = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        ck = 1; 
        #(STEP/2);
    end 
    
    initial begin
    
        #STEP
            x = 16'b0000_0000_0000_0000;
            y = 16'b0000_0000_0000_0001;   
       #STEP
            command = 11'b0_0_000_000010;
       #STEP  //address 0
            din = out;
       #STEP
            command = 11'b0_1_000_000000;
       for(i = 0; i < 300;i=i+1) begin
             //------------------------------------------
		      #STEP	// Command read
			         command = 11'b0_0_000_000000;
		      #STEP	// Data read
			         x = dout;
		      #STEP	// Execute
			         command = 11'b0_0_000_000010;
		      #STEP	// Data write
			         din = out; command = 11'b0_1_000_000000;
		      //------------------------------------------
		      $display("Ans = %d",out);
		end
		#STEP  $finish;
	end	               
            
endmodule
