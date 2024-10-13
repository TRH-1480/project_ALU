`timescale 1ns / 1ps
//

module mythCpu_ml(
       input [15:0] x,y,
       input [10:0] command,
       input [15:0] din,din_demux,//out_alu,out_reg
       output [15:0] out,
       output [15:0] dout_mux,
       output [15:0] dout, //reg_out
       output [15:0] out_x,out_y,
       output zr ,ng,
       input ck ,
       input f1,f2,f3,
       input rs
    );
    
    wire [2:0] inaddr;
    wire [2:0] outaddr;
    //wire din_reg;
    //wire dout_demux;
    //wire [15:0] out_alu;
    
    assign we = command[9];
    assign inaddr [2:0] = command [8:6];
    assign outaddr [2:0] = command [8:6];
    assign inaddr [2:0] = command [8:6];
    assign zx = command [5];
    assign nx = command [4];
    assign zy = command [3];
    assign ny = command [2];
    assign f = command [1];
    assign no = command [0];
    
    ALUCA Alu_1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out),.zr(zr),.ng(ng));
                    
    myMux Mux_1(.rs(rs),.f1(f1),.din(dout_mux),.out(din));                
     
    regfile reg_1(.ck(ck),.we(we),.din(din_reg),.inaddr(inaddr),.dout(dout),
                    .outaddr(outaddr));    
                    
    myDeMux DeMux_1(.rs(rs),.ck(ck),.f2(f2),.f3(f3),.x(out_x),.y(out_y),.dout(din_demux));    
    
    
endmodule
