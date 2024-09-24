`timescale 1ns / 1ps
//ALU�p�̃e�X�g�x���`


module ALUCA_tb;
       reg [15:0] x;
       reg [15:0] y;
       reg zx,nx,zy,ny,f,no;
       wire [15:0] out;
       wire zr,ng;
       //parameter STEP = 10;
       
       ALUCA ALUCA1(.x(x),.y(y),.zx(zx),.nx(nx),.zy(zy),.ny(ny),.f(f),
                    .no(no),.out(out),.zr(zr),.ng(ng));
       
       
               
       //�e�X�g�V�i���I
       initial begin              
            // �J�n���b�Z�[�W
            $display("Starting ALUCA Test Bench");
            //x=10,y=5�Ƃ���
            x = 16'h000A;
            y = 16'h0005;
            
            //Test1(0)
            zx = 1; nx = 0; zy = 1; ny = 0; f = 1; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test1(0):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test2(1)
            zx = 1; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test2(1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test3(-1)
            zx = 1; nx = 1; zy = 1; ny = 0; f = 1; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test3(-1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test4(x)
            zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test4(x):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test5(y)
            zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test5(y):x = %h, y = %h, out = %h",x,y,out) ;

            //Test6(!x)
            zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test6(!x):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test7(!y)
            zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test7(!y):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test8(-x)
            zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test8(-x):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test9(-y)
            zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test9(-y):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test10(x+1)
            zx = 0; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test10(x+1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test11(y+1)
            zx = 1; nx = 1; zy = 0; ny = 1; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test11(y+1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test12(x-1)
            zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test12(x-1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test13(y-1)
            zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test13(y-1):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test14(x+y)
            zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test14(x+y):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test15(x-y)
            zx = 0; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test15(x-y):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test16(y-x)
            zx = 0; nx = 0; zy = 0; ny = 1; f = 1; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test16(y-x):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test17(x&y)
            zx = 0; nx = 0; zy = 0; ny = 0; f = 0; no = 0;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test17(x&y):x = %h, y = %h, out = %h",x,y,out) ;
            
            //Test18(x|y)
            zx = 0; nx = 1; zy = 0; ny = 1; f = 0; no = 1;
            #10 //10�^�C�����j�b�g���̒x��
            $display("Test18(x|y):x = %h, y = %h, out = %h",x,y,out) ;
            
            // �V�~�����[�V�����I��
            $display("ALUCA Test Bench Finished");
            $finish;
       end
       //initial $monitor ($stime,"x = %h y=%h zx=%h nx=%h zy=%h ny =%h f=%h no = %h out=%h" ,x,y,zx,nx,zy,ny,f,no,out);
      
            
endmodule
