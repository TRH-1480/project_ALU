`timescale 1ns / 1ps
//

module CPU_tb;

    reg clk;
    reg rs;
    reg [15:0] x,y;
    reg f1,f2,f3;//flag
    reg zx,nx,zy,ny,f,no;
    
    CPU cpu1(.clk(clk),.rs(rs),.x(x),.y(y),.f1(f1),.f2(f2),.f3(f3),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),.no(no));
    
     // �N���b�N����
    always #5 clk = ~clk;
    
    initial begin
        // ���Z�b�g�M��
        rs = 1;
        #10;
        rs = 0;
        
        // �e�X�g�P�[�X1: x = 10, y = 5, ALU����
        x = 16'd10;
        y = 16'd5;
        zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0;
        #10;

        // �e�X�g�P�[�X2: �t���O�ύX
        f1 = 1;
        f2 = 1;
        f3 = 0;
        #10;
        
         // ���ʂ̕\��
        $display("ALU Result: %d",cpu1.out_alu);
        $display("Mux Result: %d",cpu1.out_mux);
        $display("Register File Output: %d",cpu1.out_reg);
        
        #50;
        $finish;
      end  
        
        
endmodule
