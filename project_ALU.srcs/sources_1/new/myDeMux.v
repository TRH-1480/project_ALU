`timescale 1ns / 1ps
//


module myDeMux(
    input rs,
    input ck,//�N���b�N�M��
    input f2,f3,
    output reg[15:0] x,y,
    input [15:0] dout
    );
    
    always @ (posedge ck & rs) begin x <= 16'h0; y<= 16'h0; end //���W�X�^�t�@�C���ɏ�������
    always @ (negedge ck & f2) begin x <= dout; end //�o�͐�̑I��
    always @ (negedge ck & f3) begin y <= dout; end //�o�͐�̑I��
    
    
endmodule
