////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: Alu_synthesis.v
// /___/   /\     Timestamp: Wed Sep 01 19:26:51 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Alu.ngc Alu_synthesis.v 
// Device	: xc6slx9-2-csg225
// Input file	: Alu.ngc
// Output file	: C:\ISE P N\UnidadLogicaAritmetica\netgen\synthesis\Alu_synthesis.v
// # of Modules	: 1
// Design Name	: Alu
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Alu (
  carry, a, b, con, res, tmp, tmpflag
);
  output carry;
  input [3 : 0] a;
  input [3 : 0] b;
  input [2 : 0] con;
  output [3 : 0] res;
  inout [3 : 0] tmp;
  output [1 : 0] tmpflag;
  wire a_3_IBUF_0;
  wire a_2_IBUF_1;
  wire a_1_IBUF_2;
  wire a_0_IBUF_3;
  wire b_3_IBUF_4;
  wire b_2_IBUF_5;
  wire b_1_IBUF_6;
  wire b_0_IBUF_7;
  wire con_2_IBUF_8;
  wire con_1_IBUF_9;
  wire con_0_IBUF_10;
  wire \a[3]_b[3]_LessThan_5_o ;
  wire \con[2]_a[3]_Mux_14_o ;
  wire \con[2]_a[3]_Mux_18_o ;
  wire \con[2]_a[3]_Mux_16_o ;
  wire \con[2]_a[3]_Mux_20_o ;
  wire tmpflag_0_16;
  wire tmp_3_17;
  wire tmp_1_18;
  wire tmp_2_19;
  wire tmp_0_20;
  wire \tmp[3]_GND_6_o_equal_11_o ;
  wire carry_OBUF_23;
  wire tmpflag_1_24;
  wire \Madd_a[3]_b[3]_add_0_OUT_cy<0> ;
  wire \Madd_a[3]_b[3]_add_0_OUT_cy<2> ;
  wire \Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1> ;
  wire \Mmux_con[2]_a[3]_Mux_14_o11 ;
  wire \Mmux_con[2]_a[3]_Mux_14_o12 ;
  wire \Mmux_con[2]_a[3]_Mux_14_o14_34 ;
  wire \Mmux_con[2]_a[3]_Mux_14_o17 ;
  wire \Mmux_con[2]_a[3]_Mux_20_o1 ;
  wire \Mmux_con[2]_a[3]_Mux_20_o11_37 ;
  wire N5;
  wire \Mmux_con[2]_a[3]_Mux_18_o1 ;
  wire \Mmux_con[2]_a[3]_Mux_18_o11_40 ;
  wire \Mmux_con[2]_a[3]_Mux_18_o12_41 ;
  wire \Mmux_con[2]_a[3]_Mux_16_o11 ;
  wire \Mmux_con[2]_a[3]_Mux_16_o12_43 ;
  wire N11;
  wire N12;
  wire N13;
  wire N14;
  wire tmp_3_1_70;
  wire tmp_2_1_71;
  wire tmp_1_1_72;
  wire tmp_0_1_73;
  wire tmp_3_2_74;
  wire tmp_2_2_75;
  wire tmp_1_2_76;
  wire tmp_0_2_77;
  wire [0 : 0] _n0085;
  wire [2 : 1] Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy;
  wire [3 : 2] Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut;
  GND   XST_GND (
    .G(carry_OBUF_23)
  );
  LD   tmpflag_1 (
    .D(\tmp[3]_GND_6_o_equal_11_o ),
    .G(\Mmux_con[2]_a[3]_Mux_14_o11 ),
    .Q(tmpflag_1_24)
  );
  LD   tmpflag_0 (
    .D(\a[3]_b[3]_LessThan_5_o ),
    .G(\Mmux_con[2]_a[3]_Mux_14_o11 ),
    .Q(tmpflag_0_16)
  );
  LD   tmp_3 (
    .D(\con[2]_a[3]_Mux_14_o ),
    .G(_n0085[0]),
    .Q(tmp_3_17)
  );
  LD   tmp_1 (
    .D(\con[2]_a[3]_Mux_18_o ),
    .G(_n0085[0]),
    .Q(tmp_1_18)
  );
  LD   tmp_2 (
    .D(\con[2]_a[3]_Mux_16_o ),
    .G(_n0085[0]),
    .Q(tmp_2_19)
  );
  LD   tmp_0 (
    .D(\con[2]_a[3]_Mux_20_o ),
    .G(_n0085[0]),
    .Q(tmp_0_20)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Madd_a[3]_b[3]_add_0_OUT_cy<0>11  (
    .I0(a_0_IBUF_3),
    .I1(b_0_IBUF_7),
    .O(\Madd_a[3]_b[3]_add_0_OUT_cy<0> )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \tmp[3]_GND_6_o_equal_11_o<3>1  (
    .I0(tmp_3_17),
    .I1(tmp_2_19),
    .I2(tmp_1_18),
    .I3(tmp_0_20),
    .O(\tmp[3]_GND_6_o_equal_11_o )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \_n0085<0>1  (
    .I0(con_2_IBUF_8),
    .I1(con_1_IBUF_9),
    .I2(con_0_IBUF_10),
    .O(_n0085[0])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \Mmux_con[2]_a[3]_Mux_14_o111  (
    .I0(con_2_IBUF_8),
    .I1(con_1_IBUF_9),
    .I2(con_0_IBUF_10),
    .O(\Mmux_con[2]_a[3]_Mux_14_o11 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmux_con[2]_a[3]_Mux_14_o121  (
    .I0(con_1_IBUF_9),
    .I1(con_2_IBUF_8),
    .I2(con_0_IBUF_10),
    .O(\Mmux_con[2]_a[3]_Mux_14_o12 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mmux_con[2]_a[3]_Mux_14_o141  (
    .I0(con_1_IBUF_9),
    .I1(con_2_IBUF_8),
    .I2(con_0_IBUF_10),
    .O(\Mmux_con[2]_a[3]_Mux_14_o14_34 )
  );
  LUT4 #(
    .INIT ( 16'hF571 ))
  \a[3]_b[3]_LessThan_5_o1_SW0  (
    .I0(b_1_IBUF_6),
    .I1(b_0_IBUF_7),
    .I2(a_1_IBUF_2),
    .I3(a_0_IBUF_3),
    .O(N5)
  );
  LUT5 #(
    .INIT ( 32'h088AAEEF ))
  \a[3]_b[3]_LessThan_5_o1  (
    .I0(b_3_IBUF_4),
    .I1(b_2_IBUF_5),
    .I2(N5),
    .I3(a_2_IBUF_1),
    .I4(a_3_IBUF_0),
    .O(\a[3]_b[3]_LessThan_5_o )
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_0)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_1)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_2)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_3)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_4)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_5)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_6)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_7)
  );
  IBUF   con_2_IBUF (
    .I(con[2]),
    .O(con_2_IBUF_8)
  );
  IBUF   con_1_IBUF (
    .I(con[1]),
    .O(con_1_IBUF_9)
  );
  IBUF   con_0_IBUF (
    .I(con[0]),
    .O(con_0_IBUF_10)
  );
  OBUF   tmp_3_OBUF (
    .I(tmp_3_2_74),
    .O(tmp[3])
  );
  OBUF   tmp_2_OBUF (
    .I(tmp_2_2_75),
    .O(tmp[2])
  );
  OBUF   tmp_1_OBUF (
    .I(tmp_1_2_76),
    .O(tmp[1])
  );
  OBUF   tmp_0_OBUF (
    .I(tmp_0_2_77),
    .O(tmp[0])
  );
  OBUF   res_3_OBUF (
    .I(tmp_3_1_70),
    .O(res[3])
  );
  OBUF   res_2_OBUF (
    .I(tmp_2_1_71),
    .O(res[2])
  );
  OBUF   res_1_OBUF (
    .I(tmp_1_1_72),
    .O(res[1])
  );
  OBUF   res_0_OBUF (
    .I(tmp_0_1_73),
    .O(res[0])
  );
  OBUF   tmpflag_1_OBUF (
    .I(tmpflag_1_24),
    .O(tmpflag[1])
  );
  OBUF   tmpflag_0_OBUF (
    .I(tmpflag_0_16),
    .O(tmpflag[0])
  );
  OBUF   carry_OBUF (
    .I(carry_OBUF_23),
    .O(carry)
  );
  LUT6 #(
    .INIT ( 64'h5554544411101000 ))
  \Mmux_con[2]_a[3]_Mux_20_o11  (
    .I0(con_1_IBUF_9),
    .I1(con_2_IBUF_8),
    .I2(con_0_IBUF_10),
    .I3(a_0_IBUF_3),
    .I4(b_0_IBUF_7),
    .I5(a_3_IBUF_0),
    .O(\Mmux_con[2]_a[3]_Mux_20_o1 )
  );
  LUT5 #(
    .INIT ( 32'h3F3C3B28 ))
  \Mmux_con[2]_a[3]_Mux_20_o12  (
    .I0(\Mmux_con[2]_a[3]_Mux_14_o11 ),
    .I1(a_0_IBUF_3),
    .I2(b_0_IBUF_7),
    .I3(\Mmux_con[2]_a[3]_Mux_14_o12 ),
    .I4(\Mmux_con[2]_a[3]_Mux_14_o14_34 ),
    .O(\Mmux_con[2]_a[3]_Mux_20_o11_37 )
  );
  LUT6 #(
    .INIT ( 64'h5554544411101000 ))
  \Mmux_con[2]_a[3]_Mux_18_o11  (
    .I0(con_1_IBUF_9),
    .I1(con_2_IBUF_8),
    .I2(con_0_IBUF_10),
    .I3(a_1_IBUF_2),
    .I4(b_1_IBUF_6),
    .I5(a_0_IBUF_3),
    .O(\Mmux_con[2]_a[3]_Mux_18_o1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00404000 ))
  \Mmux_con[2]_a[3]_Mux_14_o14  (
    .I0(con_2_IBUF_8),
    .I1(con_1_IBUF_9),
    .I2(con_0_IBUF_10),
    .I3(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy[2]),
    .I4(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut[3]),
    .I5(\Mmux_con[2]_a[3]_Mux_14_o17 ),
    .O(\con[2]_a[3]_Mux_14_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF2000 ))
  \Mmux_con[2]_a[3]_Mux_20_o13  (
    .I0(a_1_IBUF_2),
    .I1(con_0_IBUF_10),
    .I2(con_2_IBUF_8),
    .I3(con_1_IBUF_9),
    .I4(\Mmux_con[2]_a[3]_Mux_20_o11_37 ),
    .I5(\Mmux_con[2]_a[3]_Mux_20_o1 ),
    .O(\con[2]_a[3]_Mux_20_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF2000 ))
  \Mmux_con[2]_a[3]_Mux_18_o13  (
    .I0(a_2_IBUF_1),
    .I1(con_0_IBUF_10),
    .I2(con_2_IBUF_8),
    .I3(con_1_IBUF_9),
    .I4(\Mmux_con[2]_a[3]_Mux_18_o11_40 ),
    .I5(\Mmux_con[2]_a[3]_Mux_18_o1 ),
    .O(\Mmux_con[2]_a[3]_Mux_18_o12_41 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00404000 ))
  \Mmux_con[2]_a[3]_Mux_16_o14  (
    .I0(con_2_IBUF_8),
    .I1(con_1_IBUF_9),
    .I2(con_0_IBUF_10),
    .I3(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy[1]),
    .I4(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut[2]),
    .I5(\Mmux_con[2]_a[3]_Mux_16_o12_43 ),
    .O(\con[2]_a[3]_Mux_16_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF8EAF ))
  \Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy<1>11  (
    .I0(a_1_IBUF_2),
    .I1(a_0_IBUF_3),
    .I2(b_1_IBUF_6),
    .I3(b_0_IBUF_7),
    .I4(\a[3]_b[3]_LessThan_5_o ),
    .O(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy[1])
  );
  LUT6 #(
    .INIT ( 64'h8282822882282828 ))
  \Mmux_con[2]_a[3]_Mux_16_o12  (
    .I0(\Mmux_con[2]_a[3]_Mux_14_o14_34 ),
    .I1(a_2_IBUF_1),
    .I2(b_2_IBUF_5),
    .I3(a_1_IBUF_2),
    .I4(b_1_IBUF_6),
    .I5(\Madd_a[3]_b[3]_add_0_OUT_cy<0> ),
    .O(\Mmux_con[2]_a[3]_Mux_16_o11 )
  );
  LUT5 #(
    .INIT ( 32'hEFEF862C ))
  \Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy<2>11  (
    .I0(\a[3]_b[3]_LessThan_5_o ),
    .I1(a_2_IBUF_1),
    .I2(b_2_IBUF_5),
    .I3(\Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1> ),
    .I4(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy[1]),
    .O(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1>11  (
    .I0(b_1_IBUF_6),
    .I1(b_0_IBUF_7),
    .I2(a_0_IBUF_3),
    .I3(a_1_IBUF_2),
    .O(\Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1> )
  );
  LUT6 #(
    .INIT ( 64'h80FF2AFF802A2A80 ))
  \Mmux_con[2]_a[3]_Mux_18_o12  (
    .I0(\Mmux_con[2]_a[3]_Mux_14_o14_34 ),
    .I1(a_0_IBUF_3),
    .I2(b_0_IBUF_7),
    .I3(a_1_IBUF_2),
    .I4(b_1_IBUF_6),
    .I5(\Mmux_con[2]_a[3]_Mux_14_o12 ),
    .O(\Mmux_con[2]_a[3]_Mux_18_o11_40 )
  );
  LUT6 #(
    .INIT ( 64'hD9494D4499994949 ))
  \Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut<3>1  (
    .I0(a_3_IBUF_0),
    .I1(b_3_IBUF_4),
    .I2(b_2_IBUF_5),
    .I3(N5),
    .I4(a_2_IBUF_1),
    .I5(\Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1> ),
    .O(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut[3])
  );
  LUT6 #(
    .INIT ( 64'hD9496D6499999999 ))
  \Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut<2>1  (
    .I0(a_2_IBUF_1),
    .I1(b_2_IBUF_5),
    .I2(b_3_IBUF_4),
    .I3(N5),
    .I4(a_3_IBUF_0),
    .I5(\Msub_GND_6_o_GND_6_o_sub_7_OUT<3:0>_Madd_cy<1> ),
    .O(Mmux_GND_6_o_GND_6_o_mux_9_OUT_rs_lut[2])
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  \Madd_a[3]_b[3]_add_0_OUT_cy<2>11  (
    .I0(a_2_IBUF_1),
    .I1(b_2_IBUF_5),
    .I2(a_1_IBUF_2),
    .I3(b_1_IBUF_6),
    .I4(a_0_IBUF_3),
    .I5(b_0_IBUF_7),
    .O(\Madd_a[3]_b[3]_add_0_OUT_cy<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF28822828 ))
  \Mmux_con[2]_a[3]_Mux_18_o14  (
    .I0(\Mmux_con[2]_a[3]_Mux_14_o11 ),
    .I1(a_1_IBUF_2),
    .I2(b_1_IBUF_6),
    .I3(a_0_IBUF_3),
    .I4(b_0_IBUF_7),
    .I5(\Mmux_con[2]_a[3]_Mux_18_o12_41 ),
    .O(\con[2]_a[3]_Mux_18_o )
  );
  MUXF7   \Mmux_con[2]_a[3]_Mux_14_o13  (
    .I0(N11),
    .I1(N12),
    .S(con_1_IBUF_9),
    .O(\Mmux_con[2]_a[3]_Mux_14_o17 )
  );
  LUT5 #(
    .INIT ( 32'hFEEA5440 ))
  \Mmux_con[2]_a[3]_Mux_14_o13_F  (
    .I0(con_2_IBUF_8),
    .I1(con_0_IBUF_10),
    .I2(a_3_IBUF_0),
    .I3(b_3_IBUF_4),
    .I4(a_2_IBUF_1),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'h31A820B920B931A8 ))
  \Mmux_con[2]_a[3]_Mux_14_o13_G  (
    .I0(con_2_IBUF_8),
    .I1(con_0_IBUF_10),
    .I2(a_0_IBUF_3),
    .I3(a_3_IBUF_0),
    .I4(b_3_IBUF_4),
    .I5(\Madd_a[3]_b[3]_add_0_OUT_cy<2> ),
    .O(N12)
  );
  MUXF7   \Mmux_con[2]_a[3]_Mux_16_o13  (
    .I0(N13),
    .I1(N14),
    .S(con_2_IBUF_8),
    .O(\Mmux_con[2]_a[3]_Mux_16_o12_43 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5440 ))
  \Mmux_con[2]_a[3]_Mux_16_o13_F  (
    .I0(con_1_IBUF_9),
    .I1(con_0_IBUF_10),
    .I2(a_2_IBUF_1),
    .I3(b_2_IBUF_5),
    .I4(\Mmux_con[2]_a[3]_Mux_16_o11 ),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hFFFF7F5DFFFF2A08 ))
  \Mmux_con[2]_a[3]_Mux_16_o13_G  (
    .I0(con_1_IBUF_9),
    .I1(con_0_IBUF_10),
    .I2(a_2_IBUF_1),
    .I3(a_3_IBUF_0),
    .I4(\Mmux_con[2]_a[3]_Mux_16_o11 ),
    .I5(a_1_IBUF_2),
    .O(N14)
  );
  LD   tmp_3_1 (
    .D(\con[2]_a[3]_Mux_14_o ),
    .G(_n0085[0]),
    .Q(tmp_3_1_70)
  );
  LD   tmp_2_1 (
    .D(\con[2]_a[3]_Mux_16_o ),
    .G(_n0085[0]),
    .Q(tmp_2_1_71)
  );
  LD   tmp_1_1 (
    .D(\con[2]_a[3]_Mux_18_o ),
    .G(_n0085[0]),
    .Q(tmp_1_1_72)
  );
  LD   tmp_0_1 (
    .D(\con[2]_a[3]_Mux_20_o ),
    .G(_n0085[0]),
    .Q(tmp_0_1_73)
  );
  LD   tmp_3_2 (
    .D(\con[2]_a[3]_Mux_14_o ),
    .G(_n0085[0]),
    .Q(tmp_3_2_74)
  );
  LD   tmp_2_2 (
    .D(\con[2]_a[3]_Mux_16_o ),
    .G(_n0085[0]),
    .Q(tmp_2_2_75)
  );
  LD   tmp_1_2 (
    .D(\con[2]_a[3]_Mux_18_o ),
    .G(_n0085[0]),
    .Q(tmp_1_2_76)
  );
  LD   tmp_0_2 (
    .D(\con[2]_a[3]_Mux_20_o ),
    .G(_n0085[0]),
    .Q(tmp_0_2_77)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

