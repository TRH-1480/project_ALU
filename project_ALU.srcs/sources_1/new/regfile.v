`timescale 1ns / 1ps
//���W�X�^�t�@�C��


module regfile(
    input ck,//�N���b�N�M��
    input we,//�������݉\�M��
    input [15:0] din,//���̓f�[�^
    input [2:0] inaddr,//���̓A�h���X(3bit)    
    output [15:0] dout,//�o�̓f�[�^
    input [2:0] outaddr//�o�̓A�h���X(3bit)
    );
    reg [15:0] file [0:7];
    
    always @ (posedge ck)
        if (we)
            file[inaddr] <= din;
    
    assign dout = file[outaddr];        
    
endmodule
