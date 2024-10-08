`timescale 1ns / 1ps
//CPU


module CPU(
    input clk,
    input rs,
    input [15:0] x,y,//data
    input f1,f2,f3,
    input zx,nx,zy,ny,f,no,
    input we,//�������݉\�M��
    input [2:0] inaddr,outaddr
    );
    
    //wire [15:0] x , y;//ALU�ւ̓��̓f�[�^
    //wire zx,nx,zy,ny,f,no;//ALU����M��
    wire zr,ng;
    wire [15:0] out_alu; //ALU�̏o�͌���
    //wire f1,f2,f3;//flag
    wire [15:0] out_mux;//Mux�̏o�͌��� 
    //wire we;//�������݉\�M��
    //wire [2:0] inaddr,outaddr;
    wire [15:0] out_reg;//���W�X�^�t�@�C���̏o��:
    wire [15:0] out_x,out_y;//Demux�̏o�̓f�[�^
    
    //ALU�̐���
    (* dont_touch = "TRUE" *) ALUCA ALUCA1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out_alu),.zr(zr),.ng(ng));
    
    //assign result = out_alu;
    
    //MUX����
    (* dont_touch = "TRUE" *) myMux myMux1(.rs(rs),.f1(f1),.din(out_mux),.out(out_alu));
    
    //assign result1 = out_mux;
    
    //���W�X�^�t�@�C������
    (* dont_touch = "TRUE" *) regfile regfile1(.ck(clk),.we(we),.din(out_mux),.inaddr(inaddr),.dout(out_reg),.outaddr(outaddr));
    
    //assign result2 = out_reg;
    
    //DeMux����
   (* dont_touch = "TRUE" *)  myDeMux myDeMux1(.rs(rs),.ck(clk),.f2(f2),.f3(f3),.x(out_x),.y(out_y),.dout(out_reg));
    assign x = out_x;
    assign y = out_y;
    
endmodule
