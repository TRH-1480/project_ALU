`timescale 1ns / 1ps
//ALU


module ALUCA(
    input [15:0] x,
    input [15:0] y,
    input zx,nx,zy,ny,f,no,
    //wire [15:0] notx,allzero,
    //wire [15:0] zxx,notzxx,xin,
    //wire [15:0] zyy,notzyy,yin,
    //wire [15:0] andxy,addxy,
    //wire [15:0] fxy,notfxy,
    output [15:0] out,
    output zr,ng //flag
    );
    //íÜä‘êMçÜ
    wire [15:0] notx,allzero;
    wire [15:0] zxx,notzxx,xin;
    wire [15:0] zyy,notzyy,yin;
    wire [15:0] andxy,addxy;
    wire [15:0] fxy,notfxy;
    
    //allzeroÇÃçÏê¨
    (* dont_touch = "TRUE" *) Not16 not160(.in(x),.out(notx));
    (* dont_touch = "TRUE" *) And16 and160(.a(x),.b(notx),.out(allzero));
    
    //if zx then x=0
    (* dont_touch = "TRUE" *) Mux16 mux161(.a(x),.b(allzero),.s(zx),.out(zxx));
    (* dont_touch = "TRUE" *) Not16 not161(.in(zxx),.out(notzxx));
    
    //if nx then x=!x
    (* dont_touch = "TRUE" *) Mux16 mux1611(.a(zxx),.b(notzxx),.s(nx),.out(xin));
    
    //if zy then y=0
    (* dont_touch = "TRUE" *) Mux16 mux162(.a(y),.b(allzero),.s(zy),.out(zyy));
    (* dont_touch = "TRUE" *) Not16 not162(.in(zyy),.out(notzyy));
    
    //if ny then y=!y
    (* dont_touch = "TRUE" *) Mux16 mux1622(.a(zyy),.b(notzyy),.s(ny),.out(yin));
    
    //if f then out=x+y else out=x&y
    (* dont_touch = "TRUE" *) And16 and163(.a(xin),.b(yin),.out(andxy));
    (* dont_touch = "TRUE" *) Add16 add163(.a(xin),.b(yin),.out(addxy));
    
    (* dont_touch = "TRUE" *) Mux16 mux164(.a(andxy),.b(addxy),.s(f),.out(fxy));
    
    //if no then out=!out
    
   (* dont_touch = "TRUE" *) Not16 not165(.in(fxy),.out(notfxy));
   (* dont_touch = "TRUE" *) Mux16 mux165(.a(fxy),.b(notfxy),.s(no),.out(out));
   
   //zr:out=0ÇÃÇ∆Ç´zr=1
   (* dont_touch = "TRUE" *) Not16 not166(.in(out),.out(notout));
   (* dont_touch = "TRUE" *) And16Way and16w(.a(notout),.out(zr));
   
   //ng:out<0Ç∆Ç´ng=1
   (* dont_touch = "TRUE" *) And and1(.a(out[15]),.b(1'b1),.out(ng));
    
    
endmodule
