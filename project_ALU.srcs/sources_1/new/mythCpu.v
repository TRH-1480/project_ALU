`timescale 1ns / 1ps
//


module mythCpu(
    input [15:0] x,y,
    input zx,nx,zy,ny,f,no,
    output [15:0] out,
    output zr,ng,
    input ck, we,
    input [15:0] din,
    input [2:0] inaddr,
    output [15:0] dout,
    output [2:0] outaddr,
    input f1,f2,f3,
    input rs
    );
    
    ALUCA Alu_1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out),.zr(zr),.ng(ng));
                    
    myMux Mux_1(.rs(rs),.f1(f1),.din(out),.out(din));                
     
    regfile reg_1(.ck(ck),.we(we),.din(din),.inaddr(inaddr),.dout(dout),
                    .outaddr(outaddr));    
                    
    myDeMux DeMux_1(.rs(rs),.ck(ck),.f2(f2),.f3(f3),.x(x),.y(y),.dout(dout));                              
                    
endmodule
