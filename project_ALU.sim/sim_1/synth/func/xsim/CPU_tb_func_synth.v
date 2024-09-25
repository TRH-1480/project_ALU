// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Sep 25 14:08:44 2024
// Host        : LAPTOP-524UQHHN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/project_ALU/project_ALU.sim/sim_1/synth/func/xsim/CPU_tb_func_synth.v
// Design      : CPU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALUCA
   (x,
    y,
    zx,
    nx,
    zy,
    ny,
    f,
    no,
    out,
    zr,
    ng);
  input [15:0]x;
  input [15:0]y;
  input zx;
  input nx;
  input zy;
  input ny;
  input f;
  input no;
  output [15:0]out;
  output zr;
  output ng;

  wire [15:0]addxy;
  wire [15:0]allzero;
  wire [15:0]andxy;
  wire f;
  wire [15:0]fxy;
  wire ng;
  wire no;
  wire [15:0]notfxy;
  wire notout;
  wire [15:0]notx;
  wire [15:0]notzxx;
  wire [15:0]notzyy;
  wire nx;
  wire ny;
  wire [15:0]out;
  wire [15:0]x;
  wire [15:0]xin;
  wire [15:0]y;
  wire [15:0]yin;
  wire zr;
  wire zx;
  wire [15:0]zxx;
  wire zy;
  wire [15:0]zyy;
  wire [15:1]NLW_not166_out_UNCONNECTED;

  (* DONT_TOUCH *) 
  Add16 add163
       (.a(xin),
        .b(yin),
        .out(addxy));
  (* DONT_TOUCH *) 
  And and1
       (.a(out[15]),
        .b(1'b1),
        .out(ng));
  (* DONT_TOUCH *) 
  And16__1 and160
       (.a(x),
        .b(notx),
        .out(allzero));
  (* DONT_TOUCH *) 
  And16 and163
       (.a(xin),
        .b(yin),
        .out(andxy));
  (* DONT_TOUCH *) 
  And16Way and16w
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,notout}),
        .out(zr));
  (* DONT_TOUCH *) 
  Mux16__1 mux161
       (.a(x),
        .b(allzero),
        .out(zxx),
        .s(zx));
  (* DONT_TOUCH *) 
  Mux16__2 mux1611
       (.a(zxx),
        .b(notzxx),
        .out(xin),
        .s(nx));
  (* DONT_TOUCH *) 
  Mux16__3 mux162
       (.a(y),
        .b(allzero),
        .out(zyy),
        .s(zy));
  (* DONT_TOUCH *) 
  Mux16__4 mux1622
       (.a(zyy),
        .b(notzyy),
        .out(yin),
        .s(ny));
  (* DONT_TOUCH *) 
  Mux16__5 mux164
       (.a(andxy),
        .b(addxy),
        .out(fxy),
        .s(f));
  (* DONT_TOUCH *) 
  Mux16 mux165
       (.a(fxy),
        .b(notfxy),
        .out(out),
        .s(no));
  (* DONT_TOUCH *) 
  Not16__1 not160
       (.in(x),
        .out(notx));
  (* DONT_TOUCH *) 
  Not16__2 not161
       (.in(zxx),
        .out(notzxx));
  (* DONT_TOUCH *) 
  Not16__3 not162
       (.in(zyy),
        .out(notzyy));
  (* DONT_TOUCH *) 
  Not16__4 not165
       (.in(fxy),
        .out(notfxy));
  (* DONT_TOUCH *) 
  Not16 not166
       (.in(out),
        .out({NLW_not166_out_UNCONNECTED[15:1],notout}));
endmodule

module Add16
   (a,
    b,
    out);
  input [15:0]a;
  input [15:0]b;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire \out[0]_INST_0_i_1_n_0 ;
  wire \out[0]_INST_0_i_2_n_0 ;
  wire \out[0]_INST_0_i_3_n_0 ;
  wire \out[0]_INST_0_i_4_n_0 ;
  wire \out[0]_INST_0_n_0 ;
  wire \out[0]_INST_0_n_1 ;
  wire \out[0]_INST_0_n_2 ;
  wire \out[0]_INST_0_n_3 ;
  wire \out[12]_INST_0_i_1_n_0 ;
  wire \out[12]_INST_0_i_2_n_0 ;
  wire \out[12]_INST_0_i_3_n_0 ;
  wire \out[12]_INST_0_i_4_n_0 ;
  wire \out[12]_INST_0_n_1 ;
  wire \out[12]_INST_0_n_2 ;
  wire \out[12]_INST_0_n_3 ;
  wire \out[4]_INST_0_i_1_n_0 ;
  wire \out[4]_INST_0_i_2_n_0 ;
  wire \out[4]_INST_0_i_3_n_0 ;
  wire \out[4]_INST_0_i_4_n_0 ;
  wire \out[4]_INST_0_n_0 ;
  wire \out[4]_INST_0_n_1 ;
  wire \out[4]_INST_0_n_2 ;
  wire \out[4]_INST_0_n_3 ;
  wire \out[8]_INST_0_i_1_n_0 ;
  wire \out[8]_INST_0_i_2_n_0 ;
  wire \out[8]_INST_0_i_3_n_0 ;
  wire \out[8]_INST_0_i_4_n_0 ;
  wire \out[8]_INST_0_n_0 ;
  wire \out[8]_INST_0_n_1 ;
  wire \out[8]_INST_0_n_2 ;
  wire \out[8]_INST_0_n_3 ;
  wire [3:3]\NLW_out[12]_INST_0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out[0]_INST_0 
       (.CI(1'b0),
        .CO({\out[0]_INST_0_n_0 ,\out[0]_INST_0_n_1 ,\out[0]_INST_0_n_2 ,\out[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(out[3:0]),
        .S({\out[0]_INST_0_i_1_n_0 ,\out[0]_INST_0_i_2_n_0 ,\out[0]_INST_0_i_3_n_0 ,\out[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\out[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\out[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\out[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\out[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out[12]_INST_0 
       (.CI(\out[8]_INST_0_n_0 ),
        .CO({\NLW_out[12]_INST_0_CO_UNCONNECTED [3],\out[12]_INST_0_n_1 ,\out[12]_INST_0_n_2 ,\out[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[14:12]}),
        .O(out[15:12]),
        .S({\out[12]_INST_0_i_1_n_0 ,\out[12]_INST_0_i_2_n_0 ,\out[12]_INST_0_i_3_n_0 ,\out[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\out[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_INST_0_i_2 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\out[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_INST_0_i_3 
       (.I0(a[13]),
        .I1(b[13]),
        .O(\out[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_INST_0_i_4 
       (.I0(a[12]),
        .I1(b[12]),
        .O(\out[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out[4]_INST_0 
       (.CI(\out[0]_INST_0_n_0 ),
        .CO({\out[4]_INST_0_n_0 ,\out[4]_INST_0_n_1 ,\out[4]_INST_0_n_2 ,\out[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(out[7:4]),
        .S({\out[4]_INST_0_i_1_n_0 ,\out[4]_INST_0_i_2_n_0 ,\out[4]_INST_0_i_3_n_0 ,\out[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\out[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\out[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\out[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\out[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \out[8]_INST_0 
       (.CI(\out[4]_INST_0_n_0 ),
        .CO({\out[8]_INST_0_n_0 ,\out[8]_INST_0_n_1 ,\out[8]_INST_0_n_2 ,\out[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(out[11:8]),
        .S({\out[8]_INST_0_i_1_n_0 ,\out[8]_INST_0_i_2_n_0 ,\out[8]_INST_0_i_3_n_0 ,\out[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\out[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\out[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\out[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\out[8]_INST_0_i_4_n_0 ));
endmodule

module And
   (a,
    b,
    out);
  input a;
  input b;
  output out;

  wire a;
  wire b;
  wire out;

  LUT2 #(
    .INIT(4'h8)) 
    out_INST_0
       (.I0(a),
        .I1(b),
        .O(out));
endmodule

module And16
   (a,
    b,
    out);
  input [15:0]a;
  input [15:0]b;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;

  LUT2 #(
    .INIT(4'h8)) 
    \out[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .O(out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[10]_INST_0 
       (.I0(a[10]),
        .I1(b[10]),
        .O(out[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[11]_INST_0 
       (.I0(a[11]),
        .I1(b[11]),
        .O(out[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[12]_INST_0 
       (.I0(a[12]),
        .I1(b[12]),
        .O(out[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[13]_INST_0 
       (.I0(a[13]),
        .I1(b[13]),
        .O(out[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[14]_INST_0 
       (.I0(a[14]),
        .I1(b[14]),
        .O(out[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[15]_INST_0 
       (.I0(a[15]),
        .I1(b[15]),
        .O(out[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[1]_INST_0 
       (.I0(a[1]),
        .I1(b[1]),
        .O(out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[2]_INST_0 
       (.I0(a[2]),
        .I1(b[2]),
        .O(out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[3]_INST_0 
       (.I0(a[3]),
        .I1(b[3]),
        .O(out[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[4]_INST_0 
       (.I0(a[4]),
        .I1(b[4]),
        .O(out[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[5]_INST_0 
       (.I0(a[5]),
        .I1(b[5]),
        .O(out[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[6]_INST_0 
       (.I0(a[6]),
        .I1(b[6]),
        .O(out[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[7]_INST_0 
       (.I0(a[7]),
        .I1(b[7]),
        .O(out[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[8]_INST_0 
       (.I0(a[8]),
        .I1(b[8]),
        .O(out[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[9]_INST_0 
       (.I0(a[9]),
        .I1(b[9]),
        .O(out[9]));
endmodule

module And16Way
   (a,
    out);
  input [15:0]a;
  output out;

  wire [15:0]a;
  wire out;
  wire out_INST_0_i_1_n_0;
  wire out_INST_0_i_2_n_0;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    out_INST_0
       (.I0(out_INST_0_i_1_n_0),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(out_INST_0_i_2_n_0),
        .O(out));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    out_INST_0_i_1
       (.I0(a[12]),
        .I1(a[13]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[15]),
        .I5(a[14]),
        .O(out_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    out_INST_0_i_2
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[8]),
        .O(out_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "And16" *) 
module And16__1
   (a,
    b,
    out);
  input [15:0]a;
  input [15:0]b;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;

  LUT2 #(
    .INIT(4'h8)) 
    \out[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .O(out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[10]_INST_0 
       (.I0(a[10]),
        .I1(b[10]),
        .O(out[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[11]_INST_0 
       (.I0(a[11]),
        .I1(b[11]),
        .O(out[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[12]_INST_0 
       (.I0(a[12]),
        .I1(b[12]),
        .O(out[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[13]_INST_0 
       (.I0(a[13]),
        .I1(b[13]),
        .O(out[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[14]_INST_0 
       (.I0(a[14]),
        .I1(b[14]),
        .O(out[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[15]_INST_0 
       (.I0(a[15]),
        .I1(b[15]),
        .O(out[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[1]_INST_0 
       (.I0(a[1]),
        .I1(b[1]),
        .O(out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[2]_INST_0 
       (.I0(a[2]),
        .I1(b[2]),
        .O(out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[3]_INST_0 
       (.I0(a[3]),
        .I1(b[3]),
        .O(out[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[4]_INST_0 
       (.I0(a[4]),
        .I1(b[4]),
        .O(out[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[5]_INST_0 
       (.I0(a[5]),
        .I1(b[5]),
        .O(out[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[6]_INST_0 
       (.I0(a[6]),
        .I1(b[6]),
        .O(out[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[7]_INST_0 
       (.I0(a[7]),
        .I1(b[7]),
        .O(out[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[8]_INST_0 
       (.I0(a[8]),
        .I1(b[8]),
        .O(out[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \out[9]_INST_0 
       (.I0(a[9]),
        .I1(b[9]),
        .O(out[9]));
endmodule

(* NotValidForBitStream *)
module CPU
   (clk,
    rs,
    x,
    y,
    f1,
    f2,
    f3,
    zx,
    nx,
    zy,
    ny,
    f,
    no);
  input clk;
  input rs;
  input [15:0]x;
  input [15:0]y;
  input f1;
  input f2;
  input f3;
  input zx;
  input nx;
  input zy;
  input ny;
  input f;
  input no;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire f;
  wire f1;
  wire f1_IBUF;
  wire f2;
  wire f2_IBUF;
  wire f3;
  wire f3_IBUF;
  wire f_IBUF;
  wire no;
  wire no_IBUF;
  wire nx;
  wire nx_IBUF;
  wire ny;
  wire ny_IBUF;
  wire [15:0]out_alu;
  wire [15:0]out_mux;
  wire [15:0]out_reg;
  wire rs;
  wire rs_IBUF;
  wire [15:0]x;
  wire [15:0]x_IBUF;
  wire [15:0]y;
  wire [15:0]y_IBUF;
  wire zx;
  wire zx_IBUF;
  wire zy;
  wire zy_IBUF;
  wire NLW_ALUCA1_ng_UNCONNECTED;
  wire NLW_ALUCA1_zr_UNCONNECTED;

  (* DONT_TOUCH *) 
  ALUCA ALUCA1
       (.f(f_IBUF),
        .ng(NLW_ALUCA1_ng_UNCONNECTED),
        .no(no_IBUF),
        .nx(nx_IBUF),
        .ny(ny_IBUF),
        .out(out_alu),
        .x(x_IBUF),
        .y(y_IBUF),
        .zr(NLW_ALUCA1_zr_UNCONNECTED),
        .zx(zx_IBUF),
        .zy(zy_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF f1_IBUF_inst
       (.I(f1),
        .O(f1_IBUF));
  IBUF f2_IBUF_inst
       (.I(f2),
        .O(f2_IBUF));
  IBUF f3_IBUF_inst
       (.I(f3),
        .O(f3_IBUF));
  IBUF f_IBUF_inst
       (.I(f),
        .O(f_IBUF));
  (* DONT_TOUCH *) 
  myDeMux myDeMux1
       (.ck(clk_IBUF_BUFG),
        .dout(out_reg),
        .f2(f2_IBUF),
        .f3(f3_IBUF),
        .rs(rs_IBUF),
        .x(x_IBUF),
        .y(y_IBUF));
  (* DONT_TOUCH *) 
  myMux myMux1
       (.din(out_mux),
        .f1(f1_IBUF),
        .out(out_alu),
        .rs(rs_IBUF));
  IBUF no_IBUF_inst
       (.I(no),
        .O(no_IBUF));
  IBUF nx_IBUF_inst
       (.I(nx),
        .O(nx_IBUF));
  IBUF ny_IBUF_inst
       (.I(ny),
        .O(ny_IBUF));
  (* DONT_TOUCH *) 
  regfile regfile1
       (.ck(clk_IBUF_BUFG),
        .din(out_mux),
        .dout(out_reg),
        .inaddr({1'b0,1'b0,1'b0}),
        .outaddr({1'b0,1'b0,1'b0}),
        .we(1'b0));
  IBUF rs_IBUF_inst
       (.I(rs),
        .O(rs_IBUF));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[10]_inst 
       (.I(x[10]),
        .O(x_IBUF[10]));
  IBUF \x_IBUF[11]_inst 
       (.I(x[11]),
        .O(x_IBUF[11]));
  IBUF \x_IBUF[12]_inst 
       (.I(x[12]),
        .O(x_IBUF[12]));
  IBUF \x_IBUF[13]_inst 
       (.I(x[13]),
        .O(x_IBUF[13]));
  IBUF \x_IBUF[14]_inst 
       (.I(x[14]),
        .O(x_IBUF[14]));
  IBUF \x_IBUF[15]_inst 
       (.I(x[15]),
        .O(x_IBUF[15]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  IBUF \x_IBUF[8]_inst 
       (.I(x[8]),
        .O(x_IBUF[8]));
  IBUF \x_IBUF[9]_inst 
       (.I(x[9]),
        .O(x_IBUF[9]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[10]_inst 
       (.I(y[10]),
        .O(y_IBUF[10]));
  IBUF \y_IBUF[11]_inst 
       (.I(y[11]),
        .O(y_IBUF[11]));
  IBUF \y_IBUF[12]_inst 
       (.I(y[12]),
        .O(y_IBUF[12]));
  IBUF \y_IBUF[13]_inst 
       (.I(y[13]),
        .O(y_IBUF[13]));
  IBUF \y_IBUF[14]_inst 
       (.I(y[14]),
        .O(y_IBUF[14]));
  IBUF \y_IBUF[15]_inst 
       (.I(y[15]),
        .O(y_IBUF[15]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
  IBUF \y_IBUF[4]_inst 
       (.I(y[4]),
        .O(y_IBUF[4]));
  IBUF \y_IBUF[5]_inst 
       (.I(y[5]),
        .O(y_IBUF[5]));
  IBUF \y_IBUF[6]_inst 
       (.I(y[6]),
        .O(y_IBUF[6]));
  IBUF \y_IBUF[7]_inst 
       (.I(y[7]),
        .O(y_IBUF[7]));
  IBUF \y_IBUF[8]_inst 
       (.I(y[8]),
        .O(y_IBUF[8]));
  IBUF \y_IBUF[9]_inst 
       (.I(y[9]),
        .O(y_IBUF[9]));
  IBUF zx_IBUF_inst
       (.I(zx),
        .O(zx_IBUF));
  IBUF zy_IBUF_inst
       (.I(zy),
        .O(zy_IBUF));
endmodule

module Mux16
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Mux16" *) 
module Mux16__1
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Mux16" *) 
module Mux16__2
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Mux16" *) 
module Mux16__3
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Mux16" *) 
module Mux16__4
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Mux16" *) 
module Mux16__5
   (a,
    b,
    s,
    out);
  input [15:0]a;
  input [15:0]b;
  input s;
  output [15:0]out;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]out;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[0]_INST_0 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(s),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[10]_INST_0 
       (.I0(b[10]),
        .I1(a[10]),
        .I2(s),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[11]_INST_0 
       (.I0(b[11]),
        .I1(a[11]),
        .I2(s),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[12]_INST_0 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(s),
        .O(out[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[13]_INST_0 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(s),
        .O(out[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[14]_INST_0 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(s),
        .O(out[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[15]_INST_0 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(s),
        .O(out[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[1]_INST_0 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(s),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[2]_INST_0 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(s),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[3]_INST_0 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(s),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[4]_INST_0 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(s),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[5]_INST_0 
       (.I0(b[5]),
        .I1(a[5]),
        .I2(s),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[6]_INST_0 
       (.I0(b[6]),
        .I1(a[6]),
        .I2(s),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[7]_INST_0 
       (.I0(b[7]),
        .I1(a[7]),
        .I2(s),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[8]_INST_0 
       (.I0(b[8]),
        .I1(a[8]),
        .I2(s),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out[9]_INST_0 
       (.I0(b[9]),
        .I1(a[9]),
        .I2(s),
        .O(out[9]));
endmodule

module Not16
   (in,
    out);
  input [15:0]in;
  output [15:0]out;

  wire [15:0]in;
  wire [15:0]out;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_INST_0 
       (.I0(in[0]),
        .O(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[10]_INST_0 
       (.I0(in[10]),
        .O(out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[11]_INST_0 
       (.I0(in[11]),
        .O(out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[12]_INST_0 
       (.I0(in[12]),
        .O(out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[13]_INST_0 
       (.I0(in[13]),
        .O(out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[14]_INST_0 
       (.I0(in[14]),
        .O(out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[15]_INST_0 
       (.I0(in[15]),
        .O(out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[1]_INST_0 
       (.I0(in[1]),
        .O(out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_INST_0 
       (.I0(in[2]),
        .O(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_INST_0 
       (.I0(in[3]),
        .O(out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[4]_INST_0 
       (.I0(in[4]),
        .O(out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[5]_INST_0 
       (.I0(in[5]),
        .O(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[6]_INST_0 
       (.I0(in[6]),
        .O(out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_INST_0 
       (.I0(in[7]),
        .O(out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[8]_INST_0 
       (.I0(in[8]),
        .O(out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_INST_0 
       (.I0(in[9]),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Not16" *) 
module Not16__1
   (in,
    out);
  input [15:0]in;
  output [15:0]out;

  wire [15:0]in;
  wire [15:0]out;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_INST_0 
       (.I0(in[0]),
        .O(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[10]_INST_0 
       (.I0(in[10]),
        .O(out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[11]_INST_0 
       (.I0(in[11]),
        .O(out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[12]_INST_0 
       (.I0(in[12]),
        .O(out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[13]_INST_0 
       (.I0(in[13]),
        .O(out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[14]_INST_0 
       (.I0(in[14]),
        .O(out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[15]_INST_0 
       (.I0(in[15]),
        .O(out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[1]_INST_0 
       (.I0(in[1]),
        .O(out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_INST_0 
       (.I0(in[2]),
        .O(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_INST_0 
       (.I0(in[3]),
        .O(out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[4]_INST_0 
       (.I0(in[4]),
        .O(out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[5]_INST_0 
       (.I0(in[5]),
        .O(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[6]_INST_0 
       (.I0(in[6]),
        .O(out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_INST_0 
       (.I0(in[7]),
        .O(out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[8]_INST_0 
       (.I0(in[8]),
        .O(out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_INST_0 
       (.I0(in[9]),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Not16" *) 
module Not16__2
   (in,
    out);
  input [15:0]in;
  output [15:0]out;

  wire [15:0]in;
  wire [15:0]out;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_INST_0 
       (.I0(in[0]),
        .O(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[10]_INST_0 
       (.I0(in[10]),
        .O(out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[11]_INST_0 
       (.I0(in[11]),
        .O(out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[12]_INST_0 
       (.I0(in[12]),
        .O(out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[13]_INST_0 
       (.I0(in[13]),
        .O(out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[14]_INST_0 
       (.I0(in[14]),
        .O(out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[15]_INST_0 
       (.I0(in[15]),
        .O(out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[1]_INST_0 
       (.I0(in[1]),
        .O(out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_INST_0 
       (.I0(in[2]),
        .O(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_INST_0 
       (.I0(in[3]),
        .O(out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[4]_INST_0 
       (.I0(in[4]),
        .O(out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[5]_INST_0 
       (.I0(in[5]),
        .O(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[6]_INST_0 
       (.I0(in[6]),
        .O(out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_INST_0 
       (.I0(in[7]),
        .O(out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[8]_INST_0 
       (.I0(in[8]),
        .O(out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_INST_0 
       (.I0(in[9]),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Not16" *) 
module Not16__3
   (in,
    out);
  input [15:0]in;
  output [15:0]out;

  wire [15:0]in;
  wire [15:0]out;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_INST_0 
       (.I0(in[0]),
        .O(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[10]_INST_0 
       (.I0(in[10]),
        .O(out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[11]_INST_0 
       (.I0(in[11]),
        .O(out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[12]_INST_0 
       (.I0(in[12]),
        .O(out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[13]_INST_0 
       (.I0(in[13]),
        .O(out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[14]_INST_0 
       (.I0(in[14]),
        .O(out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[15]_INST_0 
       (.I0(in[15]),
        .O(out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[1]_INST_0 
       (.I0(in[1]),
        .O(out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_INST_0 
       (.I0(in[2]),
        .O(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_INST_0 
       (.I0(in[3]),
        .O(out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[4]_INST_0 
       (.I0(in[4]),
        .O(out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[5]_INST_0 
       (.I0(in[5]),
        .O(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[6]_INST_0 
       (.I0(in[6]),
        .O(out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_INST_0 
       (.I0(in[7]),
        .O(out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[8]_INST_0 
       (.I0(in[8]),
        .O(out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_INST_0 
       (.I0(in[9]),
        .O(out[9]));
endmodule

(* ORIG_REF_NAME = "Not16" *) 
module Not16__4
   (in,
    out);
  input [15:0]in;
  output [15:0]out;

  wire [15:0]in;
  wire [15:0]out;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_INST_0 
       (.I0(in[0]),
        .O(out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[10]_INST_0 
       (.I0(in[10]),
        .O(out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[11]_INST_0 
       (.I0(in[11]),
        .O(out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[12]_INST_0 
       (.I0(in[12]),
        .O(out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[13]_INST_0 
       (.I0(in[13]),
        .O(out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[14]_INST_0 
       (.I0(in[14]),
        .O(out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[15]_INST_0 
       (.I0(in[15]),
        .O(out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[1]_INST_0 
       (.I0(in[1]),
        .O(out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[2]_INST_0 
       (.I0(in[2]),
        .O(out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_INST_0 
       (.I0(in[3]),
        .O(out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[4]_INST_0 
       (.I0(in[4]),
        .O(out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[5]_INST_0 
       (.I0(in[5]),
        .O(out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[6]_INST_0 
       (.I0(in[6]),
        .O(out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_INST_0 
       (.I0(in[7]),
        .O(out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[8]_INST_0 
       (.I0(in[8]),
        .O(out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[9]_INST_0 
       (.I0(in[9]),
        .O(out[9]));
endmodule

module myDeMux
   (rs,
    ck,
    f2,
    f3,
    x,
    y,
    dout);
  input rs;
  input ck;
  input f2;
  input f3;
  output [15:0]x;
  output [15:0]y;
  input [15:0]dout;

  wire ck;
  wire [15:0]dout;
  wire f2;
  wire f3;
  wire rs;
  wire [15:0]x;
  wire x_reg0;
  wire x_reg00_out;
  wire x_reg00_out_BUFG;
  wire [15:0]y;
  wire y_reg0;

  LUT2 #(
    .INIT(4'h8)) 
    \x[15]_i_1 
       (.I0(ck),
        .I1(f2),
        .O(x_reg0));
  BUFG x_reg00_out_BUFG_inst
       (.I(x_reg00_out),
        .O(x_reg00_out_BUFG));
  LUT2 #(
    .INIT(4'h8)) 
    x_reg00_out_BUFG_inst_i_1
       (.I0(ck),
        .I1(rs),
        .O(x_reg00_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[0] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[0]),
        .Q(x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[10] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[10]),
        .Q(x[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[11] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[11]),
        .Q(x[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[12] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[12]),
        .Q(x[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[13] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[13]),
        .Q(x[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[14] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[14]),
        .Q(x[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[14]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[15] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[15]),
        .Q(x[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[15]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[1] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[1]),
        .Q(x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[2] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[2]),
        .Q(x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[3] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[3]),
        .Q(x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[4] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[4]),
        .Q(x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[5] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[5]),
        .Q(x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[6] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[6]),
        .Q(x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[7] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[7]),
        .Q(x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[8] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[8]),
        .Q(x[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \x_reg[9] 
       (.C(x_reg0),
        .CE(1'b1),
        .D(dout[9]),
        .Q(x[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(x[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \y[15]_i_1 
       (.I0(ck),
        .I1(f3),
        .O(y_reg0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[0] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[0]),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[10] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[10]),
        .Q(y[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[10]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[11] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[11]),
        .Q(y[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[11]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[12] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[12]),
        .Q(y[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[12]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[13] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[13]),
        .Q(y[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[13]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[14] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[14]),
        .Q(y[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[14]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[15] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[15]),
        .Q(y[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[15]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[1] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[1]),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[2] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[2]),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[3] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[3]),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[4] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[4]),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[5] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[5]),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[6] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[6]),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[7] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[7]),
        .Q(y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[8] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[8]),
        .Q(y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[8]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \y_reg[9] 
       (.C(y_reg0),
        .CE(1'b1),
        .D(dout[9]),
        .Q(y[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[9]__0 
       (.C(x_reg00_out_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(y[9]),
        .R(1'b0));
endmodule

module myMux
   (rs,
    f1,
    din,
    out);
  input rs;
  input f1;
  output [15:0]din;
  input [15:0]out;

  wire [15:0]din;
  wire f1;
  wire [15:0]out;
  wire rs;

  LUT3 #(
    .INIT(8'h08)) 
    \din[0]_INST_0 
       (.I0(out[0]),
        .I1(f1),
        .I2(rs),
        .O(din[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[10]_INST_0 
       (.I0(out[10]),
        .I1(f1),
        .I2(rs),
        .O(din[10]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[11]_INST_0 
       (.I0(out[11]),
        .I1(f1),
        .I2(rs),
        .O(din[11]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[12]_INST_0 
       (.I0(out[12]),
        .I1(f1),
        .I2(rs),
        .O(din[12]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[13]_INST_0 
       (.I0(out[13]),
        .I1(f1),
        .I2(rs),
        .O(din[13]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[14]_INST_0 
       (.I0(out[14]),
        .I1(f1),
        .I2(rs),
        .O(din[14]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[15]_INST_0 
       (.I0(out[15]),
        .I1(f1),
        .I2(rs),
        .O(din[15]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[1]_INST_0 
       (.I0(out[1]),
        .I1(f1),
        .I2(rs),
        .O(din[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[2]_INST_0 
       (.I0(out[2]),
        .I1(f1),
        .I2(rs),
        .O(din[2]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[3]_INST_0 
       (.I0(out[3]),
        .I1(f1),
        .I2(rs),
        .O(din[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[4]_INST_0 
       (.I0(out[4]),
        .I1(f1),
        .I2(rs),
        .O(din[4]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[5]_INST_0 
       (.I0(out[5]),
        .I1(f1),
        .I2(rs),
        .O(din[5]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[6]_INST_0 
       (.I0(out[6]),
        .I1(f1),
        .I2(rs),
        .O(din[6]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[7]_INST_0 
       (.I0(out[7]),
        .I1(f1),
        .I2(rs),
        .O(din[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[8]_INST_0 
       (.I0(out[8]),
        .I1(f1),
        .I2(rs),
        .O(din[8]));
  LUT3 #(
    .INIT(8'h08)) 
    \din[9]_INST_0 
       (.I0(out[9]),
        .I1(f1),
        .I2(rs),
        .O(din[9]));
endmodule

module regfile
   (ck,
    we,
    din,
    inaddr,
    dout,
    outaddr);
  input ck;
  input we;
  input [15:0]din;
  input [2:0]inaddr;
  output [15:0]dout;
  input [2:0]outaddr;

  wire ck;
  wire [15:0]din;
  wire [15:0]dout;
  wire [2:0]inaddr;
  wire [2:0]outaddr;
  wire we;
  wire [1:0]NLW_file_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_file_reg_0_7_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_file_reg_0_7_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_file_reg_0_7_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "file_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,outaddr}),
        .ADDRB({1'b0,1'b0,outaddr}),
        .ADDRC({1'b0,1'b0,outaddr}),
        .ADDRD({1'b0,1'b0,inaddr}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout[1:0]),
        .DOB(dout[3:2]),
        .DOC(dout[5:4]),
        .DOD(NLW_file_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(ck),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "file_reg_0_7_12_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_reg_0_7_12_15
       (.ADDRA({1'b0,1'b0,outaddr}),
        .ADDRB({1'b0,1'b0,outaddr}),
        .ADDRC({1'b0,1'b0,outaddr}),
        .ADDRD({1'b0,1'b0,inaddr}),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout[13:12]),
        .DOB(dout[15:14]),
        .DOC(NLW_file_reg_0_7_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_file_reg_0_7_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(ck),
        .WE(we));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "file_reg_0_7_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    file_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,outaddr}),
        .ADDRB({1'b0,1'b0,outaddr}),
        .ADDRC({1'b0,1'b0,outaddr}),
        .ADDRD({1'b0,1'b0,inaddr}),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(dout[7:6]),
        .DOB(dout[9:8]),
        .DOC(dout[11:10]),
        .DOD(NLW_file_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(ck),
        .WE(we));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
