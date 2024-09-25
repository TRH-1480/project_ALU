`timescale 1ns / 1ps
//

module CPU_tb;

    reg clk;
    reg rs;
    reg [15:0] x,y;
    reg f1,f2,f3;//flag
    reg zx,nx,zy,ny,f,no;
    reg we;
    reg [2:0] inaddr,outaddr;
    wire [15:0] result,result1,result2;
    parameter STEP = 100;
    
    CPU cpu1(.clk(clk),.rs(rs),.x(x),.y(y),.f1(f1),.f2(f2),.f3(f3),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),.no(no),.we(we),.inaddr(inaddr),.outaddr(outaddr),
            .result(result),.result1(result1),.result2(result2));
    
    //�N���b�N�̐���
    always begin 
        clk = 0; 
        #(STEP/2); //#�F�w�肵�����Ԃ����x��
        clk = 1; 
        #(STEP/2);
    end 
    
    initial begin
        
        // VCD�t�@�C���o�͂̂��߂̐ݒ�
        //$dumpfile("cpu_tb.vcd");  // �g�`�t�@�C���̖��O
        //$dumpvars(0, CPU_tb);     // ���ׂĂ̐M�����L�^
        
        $monitor($stime,"x = %h,y = %h,we = %b, inaddr = %b,outaddr = %b, ALU result = %h,Mux result = %h,Regfile result = %h",x,y,we,inaddr,outaddr,result,result1,result2);
        
        // �����l�̐ݒ�
        rs= 0;
        x= 16'h0000;
        y = 16'h0000;
        f1 = 0;
        f2 = 0;
        f3 = 0;
        zx = 0;
        nx = 0;
        zy = 0;
        ny = 0;
        f = 0;
        no = 0;
        we = 0;
        inaddr = 3'b0000;
        outaddr = 3'b0000;
        
      
       //���Z�b�g�̗L���� 
        //rs = 1;
        //#STEP;
        //rs = 0;
        
        // �e�X�g�P�[�X1: x = 10, y = 5, ALU����
        x = 16'd10;
        y = 16'd5;
        zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0; #STEP // ALU: x + y
        $display("ALU_out = %h",result);
        #STEP;

        // �e�X�g�P�[�X2: ���W�X�^�̏�������
        #STEP we = 1;
        inaddr = 3'b001;
        #STEP we = 0;
        
        //�e�X�g�P�[�X3�F�@�A�h���X�̓ǂݍ���
        outaddr = 3'b001;
        #STEP
        $display("Register and Register[%b] = %h",outaddr,result2);
        
        
         // ���ʂ̕\��
        //$display("ALU Result: %d",cpu1.out_alu);
        //$display("Mux Result: %d",cpu1.out_mux);
        //$display("Register File Output: %d",cpu1.out_reg);
        
        //#50;
        $finish;
      end  
        
        
endmodule
