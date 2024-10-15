`timescale 1ns / 1ps
//デマルチプレクサの接続確認


module mythCpu_logic1_tb;

    reg [15:0] x,y;
    reg [10:0] command;
    reg [15:0] din_reg;
    reg [15:0] din,din_demux;
    wire [15:0] out;
    wire [15:0] dout_mux,dout,out_x,out_y;
    wire zr,ng;
    reg ck;
    reg f1,f2,f3;
    reg rs;
    
    parameter STEP = 100;
    
    integer i;
    
    mythCpu_ml thCpu_1(.x(x),.y(y),.command(command),.din_reg(din_reg),.din(din),.din_demux(din_demux),.out(out)
        ,.dout_mux(dout_mux),.dout(dout),.out_x(out_x),.out_y(out_y),.zr(zr),.ng(ng),.ck(ck),.f1(f1),.f2(f2),.f3(f3),.rs(rs));
        
     //クロックの生成
    always begin 
        ck = 0; 
        #(STEP/2); //#：指定した時間だけ遅延
        ck = 1; 
        #(STEP/2);
    end    
    
    
    initial begin 
       #STEP f1 = 0;
       #STEP f1 = 1;
       #STEP f2 = 1;
       #STEP f3 = 0;
       #STEP rs = 0;   
       #STEP
            x = 16'b0000_0000_0000_0000;
            y = 16'b0000_0000_0000_0001;
       #STEP
            command = 11'b0_0_000_000010;
       #STEP    
            din = out;
       #STEP  //address 0
            din_reg = dout_mux;
       #STEP
            command = 11'b0_1_000_000000;
       #STEP     
            din_demux = dout;
       #STEP     
            x = out_x;
            y = out_y;     
            
       for(i = 0; i < 300;i=i+1) begin
             //------------------------------------------
		      #STEP	// Command read
			         command = 11'b0_0_000_000000;
      
		      #STEP	// Data read
			         x = dout;
			       
		      #STEP	// Execute
			         command = 11'b0_0_000_000010;
			  #STEP    
                    din = out;
              #STEP  //address 0
                    din_reg = dout_mux;          
		      #STEP	// Data write
			         //din = out; 
			         command = 11'b0_1_000_000000;
			  #STEP     
                    din_demux = dout;
              #STEP     
                    x = out_x;
                    y = out_y;        
		      //------------------------------------------
		      $display("Ans = %d , x = %d , y = %d",dout,x,y);
		end
		#STEP  $finish;
	end	                   
endmodule
