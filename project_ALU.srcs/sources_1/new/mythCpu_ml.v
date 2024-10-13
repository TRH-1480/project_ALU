`timescale 1ns / 1ps
//

module mythCpu_ml(
       input [15:0] x,y,
       input [10:0] command,
       output [15:0] out,
       input [15:0] din,
       output [15:0] dout,
       output zr ,ng,
       input ck ,
       input f1,f2,f3,
       input rs
    );
    
    wire [2:0] inaddr;
    wire [2:0] outaddr;
    
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
                    
    myMux Mux_1(.rs(rs),.f1(f1),.din(out),.out(din));                
     
    regfile reg_1(.ck(ck),.we(we),.din(din),.inaddr(inaddr),.dout(dout),
                    .outaddr(outaddr));    
                    
    myDeMux DeMux_1(.rs(rs),.ck(ck),.f2(f2),.f3(f3),.x(x),.y(y),.dout(dout));    
    
    
endmodule
