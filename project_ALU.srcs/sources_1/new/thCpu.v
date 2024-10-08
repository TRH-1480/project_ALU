`timescale 1ns / 1ps
///


module thCpu(
    input [15:0] x,y,
    input zx,nx,zy,ny,f,no,
    output [15:0] out,
    output zr,ng,
    input ck, we,
    input [15:0] din,
    input [2:0] inaddr,
    output [15:0] dout,
    output [2:0] outaddr
    );
    ALUCA Alu_1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out_alu),.zr(zr),.ng(ng));
                    
    regfile reg_1(.ck(ck),.we(we),.din(din),.inaddr(inaddr),.dout(dout),
                    .outaddr(outaddr));                
    
endmodule
