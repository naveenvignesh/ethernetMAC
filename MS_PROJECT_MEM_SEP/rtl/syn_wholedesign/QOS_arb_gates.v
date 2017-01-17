/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sat Oct 29 02:46:45 2016
/////////////////////////////////////////////////////////////


module QOS_arb ( \clks.clk , \clks.rst , req, arb_nxt, gnt );
  input [2:0] req;
  output [2:0] gnt;
  input \clks.clk , \clks.rst , arb_nxt;
  wire   \gnt0[2] , \gnt1[2] , \gnt2[2] , \srv_cnt2_d[4] , N10, N11, N12, N13,
         N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, N32, N33, \queue_gnt_q[1] , n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370;
  wire   [7:0] srv_cnt0_d;
  wire   [7:0] srv_cnt1_d;
  assign \gnt0[2]  = req[0];
  assign \gnt1[2]  = req[1];
  assign \gnt2[2]  = req[2];

  CFD2QX1 \queue_gnt_d_reg[1]  ( .D(\queue_gnt_q[1] ), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(gnt[1]) );
  CFD2QX1 \queue_gnt_d_reg[0]  ( .D(n370), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(gnt[0]) );
  CFD2QXL \srv_cnt1_d_reg[6]  ( .D(N24), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt1_d[6]) );
  CFD2QXL \srv_cnt2_d_reg[4]  ( .D(N30), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        \srv_cnt2_d[4] ) );
  CFD2QXL \srv_cnt1_d_reg[7]  ( .D(N25), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt1_d[7]) );
  CFD2QXL \srv_cnt1_d_reg[0]  ( .D(N18), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt1_d[0]) );
  CFD2QXL \srv_cnt1_d_reg[1]  ( .D(N19), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt1_d[1]) );
  CFD2QXL \srv_cnt0_d_reg[1]  ( .D(N11), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt0_d[1]) );
  CFD2QXL \srv_cnt0_d_reg[0]  ( .D(N10), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt0_d[0]) );
  CFD2QXL \srv_cnt0_d_reg[4]  ( .D(N14), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        srv_cnt0_d[4]) );
  CFD4X1 \queue_gnt_d_reg[2]  ( .D(n232), .CP(\clks.clk ), .SD(\clks.rst ), 
        .QN(gnt[2]) );
  CFD2XL \srv_cnt0_d_reg[6]  ( .D(N16), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n123), .QN(n122) );
  CFD2X2 \srv_cnt2_d_reg[7]  ( .D(N33), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n120), .QN(n119) );
  CFD2X2 \srv_cnt2_d_reg[3]  ( .D(N29), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n117), .QN(n116) );
  CFD2X2 \srv_cnt2_d_reg[5]  ( .D(N31), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n114), .QN(n115) );
  CFD2X2 \srv_cnt2_d_reg[0]  ( .D(N26), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n109), .QN(n108) );
  CFD2X2 \srv_cnt2_d_reg[6]  ( .D(N32), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n106), .QN(n107) );
  CFD2X2 \srv_cnt1_d_reg[2]  ( .D(N20), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n104), .QN(n105) );
  CFD2X2 \srv_cnt2_d_reg[1]  ( .D(N27), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n102), .QN(n103) );
  CFD2X2 \srv_cnt2_d_reg[2]  ( .D(N28), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n100), .QN(n99) );
  CFD2X2 \srv_cnt1_d_reg[5]  ( .D(N23), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n97), .QN(n98) );
  CFD2X2 \srv_cnt0_d_reg[5]  ( .D(N15), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n95), .QN(n96) );
  CFD2XL \srv_cnt0_d_reg[2]  ( .D(N12), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n112), .QN(n111) );
  CFD2X2 \srv_cnt0_d_reg[3]  ( .D(N13), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n92), .QN(n93) );
  CFD2X2 \srv_cnt1_d_reg[3]  ( .D(N21), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n89), .QN(n90) );
  CFD2XL \srv_cnt0_d_reg[7]  ( .D(N17), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n87), .QN(n86) );
  CFD2XL \srv_cnt1_d_reg[4]  ( .D(N22), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n63), .QN(n62) );
  COND1X1 U83 ( .A(n347), .B(n80), .C(n352), .Z(n190) );
  CND2X1 U84 ( .A(n187), .B(n188), .Z(n296) );
  CND2X2 U85 ( .A(n142), .B(n82), .Z(n141) );
  CNR2IX1 U86 ( .B(n152), .A(n156), .Z(n80) );
  CEOX1 U87 ( .A(n86), .B(n199), .Z(n71) );
  CNIVX2 U88 ( .A(n349), .Z(n74) );
  CENX1 U89 ( .A(srv_cnt1_d[0]), .B(n85), .Z(n333) );
  CENX1 U90 ( .A(n277), .B(n276), .Z(n279) );
  CNIVXL U91 ( .A(n110), .Z(n340) );
  CND2X2 U92 ( .A(n206), .B(n33), .Z(n205) );
  CIVX2 U93 ( .A(n144), .Z(n47) );
  CNIVX1 U94 ( .A(srv_cnt0_d[0]), .Z(n127) );
  CND2X1 U95 ( .A(n69), .B(srv_cnt1_d[0]), .Z(n304) );
  CIVX2 U96 ( .A(n311), .Z(n195) );
  CIVX2 U97 ( .A(n249), .Z(n244) );
  CND2X2 U98 ( .A(n193), .B(n176), .Z(n175) );
  CND3X1 U99 ( .A(n61), .B(n75), .C(n331), .Z(n336) );
  CENX1 U100 ( .A(n321), .B(n99), .Z(n30) );
  CENX1 U101 ( .A(n115), .B(n282), .Z(n31) );
  CEOXL U102 ( .A(n84), .B(n293), .Z(n32) );
  CNIVX2 U103 ( .A(n331), .Z(n33) );
  COR2X1 U104 ( .A(n32), .B(n339), .Z(n34) );
  CAN2X2 U105 ( .A(n173), .B(n341), .Z(n35) );
  CNR2X2 U106 ( .A(n139), .B(n138), .Z(n215) );
  CND2XL U107 ( .A(n128), .B(n256), .Z(\queue_gnt_q[1] ) );
  CIVX2 U108 ( .A(n62), .Z(n36) );
  CEO3X2 U109 ( .A(n351), .B(n58), .C(n342), .Z(n231) );
  CIVX1 U110 ( .A(n67), .Z(n68) );
  CAN2X1 U111 ( .A(n368), .B(n350), .Z(n233) );
  CND2X2 U112 ( .A(n334), .B(n320), .Z(n143) );
  CND2X2 U113 ( .A(n336), .B(n335), .Z(n334) );
  CND2X1 U114 ( .A(n39), .B(n41), .Z(n38) );
  CIVX1 U115 ( .A(n327), .Z(n314) );
  CENX1 U116 ( .A(n280), .B(n161), .Z(n281) );
  CNR2X2 U117 ( .A(n280), .B(n122), .Z(n199) );
  CENX1 U118 ( .A(n319), .B(n105), .Z(n320) );
  CAN2X1 U119 ( .A(n330), .B(n195), .Z(n136) );
  CENX1 U120 ( .A(n329), .B(n127), .Z(n330) );
  CIVX2 U121 ( .A(n99), .Z(n101) );
  CIVX3 U122 ( .A(n116), .Z(n118) );
  CIVX2 U123 ( .A(n108), .Z(n110) );
  CND2X2 U124 ( .A(n288), .B(n258), .Z(n274) );
  CND3X4 U125 ( .A(n53), .B(n231), .C(n343), .Z(n218) );
  CNIVX1 U126 ( .A(n40), .Z(n37) );
  CENX4 U127 ( .A(n78), .B(n127), .Z(n355) );
  CND2X4 U128 ( .A(n40), .B(n270), .Z(n75) );
  CND2X4 U129 ( .A(n223), .B(n201), .Z(n40) );
  CNR2X2 U130 ( .A(n246), .B(n40), .Z(n197) );
  COND1XL U131 ( .A(n269), .B(n41), .C(n38), .Z(n255) );
  CIVX2 U132 ( .A(n37), .Z(n39) );
  CIVX2 U133 ( .A(n268), .Z(n41) );
  CNIVX4 U134 ( .A(n132), .Z(n42) );
  CNR2IX2 U135 ( .B(n277), .A(n132), .Z(n153) );
  CND2X2 U136 ( .A(n132), .B(n279), .Z(n155) );
  CANR2X2 U137 ( .A(n132), .B(n207), .C(n90), .D(n46), .Z(n348) );
  CND2X4 U138 ( .A(n204), .B(n205), .Z(n132) );
  CND2X2 U139 ( .A(n44), .B(n43), .Z(n168) );
  CIVX2 U140 ( .A(n292), .Z(n43) );
  CIVX1 U141 ( .A(n46), .Z(n44) );
  COND1X2 U142 ( .A(n284), .B(n46), .C(n45), .Z(n349) );
  CND2X2 U143 ( .A(n46), .B(n97), .Z(n45) );
  COND4CX4 U144 ( .A(n75), .B(n73), .C(n206), .D(n33), .Z(n46) );
  COND1X2 U145 ( .A(n364), .B(n74), .C(n353), .Z(n188) );
  CND2X4 U146 ( .A(n47), .B(n331), .Z(n66) );
  CND2X4 U147 ( .A(n61), .B(n75), .Z(n144) );
  CND2X2 U148 ( .A(n338), .B(n337), .Z(n351) );
  COND1X1 U149 ( .A(n71), .B(n339), .C(n48), .Z(n354) );
  CND2X2 U150 ( .A(n339), .B(n49), .Z(n48) );
  CIVX2 U151 ( .A(n86), .Z(n49) );
  CND2X2 U152 ( .A(n251), .B(\gnt0[2] ), .Z(n252) );
  CND2X2 U153 ( .A(n144), .B(n128), .Z(n271) );
  CND2X2 U154 ( .A(n51), .B(n50), .Z(n324) );
  CND2X1 U155 ( .A(n365), .B(n367), .Z(n50) );
  COND1X1 U156 ( .A(n367), .B(n365), .C(n359), .Z(n51) );
  CENX2 U157 ( .A(n365), .B(n52), .Z(n332) );
  CENX2 U158 ( .A(n367), .B(n359), .Z(n52) );
  COND1X4 U159 ( .A(n105), .B(n88), .C(n143), .Z(n359) );
  CND2X2 U160 ( .A(n234), .B(n221), .Z(n53) );
  CND2X4 U161 ( .A(n54), .B(n254), .Z(n312) );
  COND2X4 U162 ( .A(n268), .B(n253), .C(n252), .D(n270), .Z(n54) );
  CND2X4 U163 ( .A(n269), .B(n268), .Z(n73) );
  CND3X2 U164 ( .A(n250), .B(n248), .C(n249), .Z(n243) );
  CNIVX1 U165 ( .A(\gnt2[2] ), .Z(n55) );
  CNR2X2 U166 ( .A(srv_cnt0_d[4]), .B(n92), .Z(n239) );
  CND2X4 U167 ( .A(n56), .B(n170), .Z(n131) );
  CENX2 U168 ( .A(n56), .B(n226), .Z(n163) );
  CND2X4 U169 ( .A(n171), .B(n224), .Z(n56) );
  CND2X1 U170 ( .A(n57), .B(n135), .Z(n134) );
  CENX2 U171 ( .A(n135), .B(n57), .Z(n220) );
  CENX4 U172 ( .A(n357), .B(n125), .Z(n57) );
  CND2X1 U173 ( .A(n58), .B(n159), .Z(n173) );
  CENX2 U174 ( .A(n350), .B(n368), .Z(n58) );
  CND2X2 U175 ( .A(n363), .B(n355), .Z(n342) );
  CENX2 U176 ( .A(n356), .B(n59), .Z(n343) );
  CENX2 U177 ( .A(n355), .B(n363), .Z(n59) );
  CENX2 U178 ( .A(n177), .B(n133), .Z(n363) );
  CIVX3 U179 ( .A(n60), .Z(n224) );
  CND2X2 U180 ( .A(n184), .B(n183), .Z(n60) );
  CND2X2 U181 ( .A(n94), .B(n60), .Z(n170) );
  CND2X2 U182 ( .A(n269), .B(n268), .Z(n61) );
  CND2XL U183 ( .A(n327), .B(srv_cnt0_d[1]), .Z(n147) );
  CND2X1 U184 ( .A(srv_cnt0_d[1]), .B(srv_cnt0_d[0]), .Z(n297) );
  CNIVX1 U185 ( .A(srv_cnt1_d[7]), .Z(n266) );
  CNIVX1 U186 ( .A(n359), .Z(n64) );
  CNIVX4 U187 ( .A(n339), .Z(n78) );
  CNR2X2 U188 ( .A(n197), .B(n76), .Z(n65) );
  CNR2X2 U189 ( .A(n197), .B(n76), .Z(n247) );
  CIVX4 U190 ( .A(n248), .Z(n186) );
  CIVX3 U191 ( .A(n212), .Z(n211) );
  CIVX3 U192 ( .A(n155), .Z(n154) );
  CND2X2 U193 ( .A(n250), .B(n249), .Z(n201) );
  CIVXL U194 ( .A(n354), .Z(n67) );
  CND3X2 U195 ( .A(n317), .B(n316), .C(n315), .Z(n367) );
  CIVX2 U196 ( .A(n93), .Z(n91) );
  CENX1 U197 ( .A(n90), .B(n305), .Z(n207) );
  CIVDX1 U198 ( .A(srv_cnt1_d[1]), .Z0(n70), .Z1(n69) );
  CNIVX4 U199 ( .A(n358), .Z(n72) );
  CND2X1 U200 ( .A(n129), .B(n161), .Z(n157) );
  CNR2X2 U201 ( .A(n112), .B(n95), .Z(n238) );
  CAN4X2 U202 ( .A(n245), .B(n250), .C(n249), .D(n331), .Z(n76) );
  CND2X1 U203 ( .A(n312), .B(n222), .Z(n308) );
  CNR2IX2 U204 ( .B(n152), .A(n156), .Z(n360) );
  CNIVXL U205 ( .A(srv_cnt1_d[6]), .Z(n278) );
  CND2X4 U206 ( .A(n247), .B(n194), .Z(n77) );
  CND3X4 U207 ( .A(n239), .B(n237), .C(n238), .Z(n249) );
  CIVX2 U208 ( .A(n342), .Z(n341) );
  CNR3X4 U209 ( .A(n102), .B(n106), .C(n100), .Z(n210) );
  CND2X4 U210 ( .A(n79), .B(n195), .Z(n339) );
  CND2X1 U211 ( .A(n79), .B(n136), .Z(n145) );
  CND3X4 U212 ( .A(n312), .B(n264), .C(n222), .Z(n79) );
  COND1X1 U213 ( .A(n362), .B(n345), .C(n357), .Z(n184) );
  CND2XL U214 ( .A(n345), .B(n362), .Z(n183) );
  CIVDX1 U215 ( .A(n233), .Z0(n82), .Z1(n81) );
  COND1X1 U216 ( .A(n361), .B(n358), .C(n348), .Z(n165) );
  CND2X1 U217 ( .A(n88), .B(n333), .Z(n338) );
  CIVDX1 U218 ( .A(n294), .Z0(n84), .Z1(n83) );
  CIVXL U219 ( .A(n69), .Z(n85) );
  CND2X2 U220 ( .A(n66), .B(n335), .Z(n88) );
  CND2X4 U221 ( .A(n310), .B(gnt[0]), .Z(n264) );
  CND2X1 U222 ( .A(n74), .B(n364), .Z(n187) );
  CMX2X2 U223 ( .A0(n299), .A1(n91), .S(n339), .Z(n358) );
  CND2X4 U224 ( .A(n185), .B(n34), .Z(n357) );
  CNIVX2 U225 ( .A(n223), .Z(n222) );
  CEOX2 U226 ( .A(n130), .B(n131), .Z(n216) );
  CNR2X4 U227 ( .A(n218), .B(n219), .Z(n217) );
  CND2X1 U228 ( .A(n291), .B(n36), .Z(n283) );
  CND2X2 U229 ( .A(n322), .B(n323), .Z(n365) );
  CENX2 U230 ( .A(n348), .B(n361), .Z(n150) );
  CNR2X1 U231 ( .A(n160), .B(n296), .Z(n295) );
  CEN3X2 U232 ( .A(n349), .B(n353), .C(n172), .Z(n94) );
  CNIVX16 U233 ( .A(arb_nxt), .Z(n331) );
  CND2X1 U234 ( .A(n192), .B(n101), .Z(n322) );
  CIVX2 U235 ( .A(n111), .Z(n113) );
  CIVX2 U236 ( .A(n119), .Z(n121) );
  CNIVX1 U237 ( .A(n366), .Z(n124) );
  CNIVX1 U238 ( .A(n193), .Z(n133) );
  CND2X2 U239 ( .A(n137), .B(n289), .Z(n169) );
  CNIVX4 U240 ( .A(n339), .Z(n129) );
  CENX4 U241 ( .A(n362), .B(n345), .Z(n125) );
  CIVX2 U242 ( .A(n193), .Z(n126) );
  CNR2X2 U243 ( .A(n126), .B(n326), .Z(n149) );
  CEO3X2 U244 ( .A(n349), .B(n353), .C(n172), .Z(n171) );
  CND2X4 U245 ( .A(n168), .B(n166), .Z(n345) );
  CNIVX2 U246 ( .A(n318), .Z(n128) );
  CND2IX2 U247 ( .B(n275), .A(n77), .Z(n152) );
  CND2X2 U248 ( .A(n200), .B(n293), .Z(n280) );
  CND2X2 U249 ( .A(n134), .B(n221), .Z(n130) );
  CNR2IX2 U250 ( .B(n230), .A(n140), .Z(n139) );
  CND2X2 U251 ( .A(n165), .B(n164), .Z(n135) );
  CND2X4 U252 ( .A(n324), .B(n325), .Z(n221) );
  CENX2 U253 ( .A(n150), .B(n72), .Z(n325) );
  CND2X2 U254 ( .A(n137), .B(n118), .Z(n214) );
  CIVX3 U255 ( .A(n77), .Z(n137) );
  CANR1X2 U256 ( .A(n230), .B(n141), .C(n35), .Z(n138) );
  CND2X2 U257 ( .A(n141), .B(n35), .Z(n140) );
  CIVX2 U258 ( .A(n332), .Z(n142) );
  COND1X2 U259 ( .A(n147), .B(n146), .C(n145), .Z(n350) );
  CIVX2 U260 ( .A(n328), .Z(n146) );
  CNR2X2 U261 ( .A(n149), .B(n148), .Z(n368) );
  CNR2IX1 U262 ( .B(n103), .A(n193), .Z(n148) );
  CND2X4 U263 ( .A(n214), .B(n174), .Z(n361) );
  CENX2 U264 ( .A(n352), .B(n151), .Z(n160) );
  CENX2 U265 ( .A(n347), .B(n360), .Z(n151) );
  CNR2X4 U266 ( .A(n154), .B(n153), .Z(n347) );
  CNR2IX2 U267 ( .B(n107), .A(n77), .Z(n156) );
  CND2X2 U268 ( .A(n158), .B(n157), .Z(n352) );
  CND2IX1 U269 ( .B(n78), .A(n281), .Z(n158) );
  CIVX1 U270 ( .A(n351), .Z(n159) );
  CENX2 U271 ( .A(n160), .B(n213), .Z(n226) );
  CND2X2 U272 ( .A(n244), .B(\gnt0[2] ), .Z(n223) );
  CENX2 U273 ( .A(n180), .B(n198), .Z(n181) );
  CIVX2 U274 ( .A(n122), .Z(n161) );
  CND2X4 U275 ( .A(n196), .B(n195), .Z(n194) );
  CIVX2 U276 ( .A(n162), .Z(n245) );
  CND2X2 U277 ( .A(n186), .B(\gnt2[2] ), .Z(n162) );
  CIVX3 U278 ( .A(n221), .Z(n178) );
  CND2X2 U279 ( .A(n163), .B(n228), .Z(n227) );
  CND2X1 U280 ( .A(n358), .B(n361), .Z(n164) );
  CND2X2 U281 ( .A(n167), .B(n36), .Z(n166) );
  CND2X1 U282 ( .A(n271), .B(n331), .Z(n167) );
  CND2X4 U283 ( .A(n175), .B(n169), .Z(n362) );
  CIVX2 U284 ( .A(n364), .Z(n172) );
  CIVX4 U285 ( .A(n318), .Z(n206) );
  CIVX2 U286 ( .A(n77), .Z(n192) );
  CND2X1 U287 ( .A(n193), .B(n30), .Z(n323) );
  CND2X1 U288 ( .A(n77), .B(n303), .Z(n174) );
  CIVX2 U289 ( .A(n290), .Z(n176) );
  CIVX2 U290 ( .A(n340), .Z(n177) );
  CMXI2X2 U291 ( .A0(n115), .A1(n31), .S(n193), .Z(n364) );
  CIVX4 U292 ( .A(n261), .Z(n196) );
  CND3X4 U293 ( .A(n186), .B(n250), .C(n249), .Z(n253) );
  CNR2X4 U294 ( .A(n179), .B(n227), .Z(n344) );
  CND3X2 U295 ( .A(n217), .B(n215), .C(n216), .Z(n179) );
  CND2X2 U296 ( .A(n189), .B(n190), .Z(n180) );
  CND2X4 U297 ( .A(n310), .B(gnt[1]), .Z(n318) );
  CENX2 U298 ( .A(n181), .B(n229), .Z(n228) );
  CMX2X2 U299 ( .A0(n286), .A1(n95), .S(n339), .Z(n353) );
  CIVX3 U300 ( .A(n253), .Z(n203) );
  CIVDX2 U301 ( .A(\gnt1[2] ), .Z0(n268), .Z1(n270) );
  CIVX2 U302 ( .A(n324), .Z(n182) );
  CND2IX1 U303 ( .B(n325), .A(n182), .Z(n234) );
  CND2X2 U304 ( .A(n83), .B(n129), .Z(n185) );
  CND2X4 U305 ( .A(n202), .B(n203), .Z(n269) );
  CND2X1 U306 ( .A(n347), .B(n80), .Z(n189) );
  CNIVX1 U307 ( .A(n357), .Z(n191) );
  CENX1 U308 ( .A(n208), .B(n42), .Z(n356) );
  CEN3X2 U309 ( .A(n354), .B(n366), .C(n346), .Z(n198) );
  CND2X4 U310 ( .A(n65), .B(n194), .Z(n193) );
  CNR2X2 U311 ( .A(n84), .B(n96), .Z(n200) );
  CNR2X2 U312 ( .A(n263), .B(n297), .Z(n293) );
  CNR2IX2 U313 ( .B(\gnt0[2] ), .A(\gnt2[2] ), .Z(n202) );
  CND2X2 U314 ( .A(n206), .B(n195), .Z(n335) );
  CND3X2 U315 ( .A(n73), .B(n75), .C(n33), .Z(n204) );
  CND4X4 U316 ( .A(n241), .B(n240), .C(n70), .D(n242), .Z(n250) );
  CIVXL U317 ( .A(srv_cnt1_d[0]), .Z(n208) );
  CMXI2X2 U318 ( .A0(n272), .A1(n273), .S(n42), .Z(n346) );
  CND2X4 U319 ( .A(n310), .B(gnt[2]), .Z(n261) );
  CNR2X2 U320 ( .A(n104), .B(n97), .Z(n242) );
  CND3X4 U321 ( .A(n211), .B(n209), .C(n210), .Z(n248) );
  CIVX2 U322 ( .A(\srv_cnt2_d[4] ), .Z(n209) );
  CND2X2 U323 ( .A(n236), .B(n235), .Z(n212) );
  CIVX2 U324 ( .A(n296), .Z(n213) );
  CENX2 U325 ( .A(n178), .B(n220), .Z(n219) );
  CIVX2 U326 ( .A(n55), .Z(n254) );
  CND2X2 U327 ( .A(n265), .B(n291), .Z(n276) );
  CNR2X2 U328 ( .A(n304), .B(n225), .Z(n291) );
  CND2IX1 U329 ( .B(n105), .A(n89), .Z(n225) );
  CND2X2 U330 ( .A(n295), .B(1'b1), .Z(n229) );
  CND2X2 U331 ( .A(n332), .B(n81), .Z(n230) );
  CAN2XL U332 ( .A(n65), .B(n261), .Z(n232) );
  CND2X1 U333 ( .A(n308), .B(n331), .Z(n328) );
  CND2X1 U334 ( .A(n83), .B(n293), .Z(n285) );
  CNR2X2 U335 ( .A(n117), .B(n109), .Z(n236) );
  CNR2X2 U336 ( .A(n120), .B(n114), .Z(n235) );
  CNR2X2 U337 ( .A(n87), .B(n123), .Z(n237) );
  CNR2X2 U338 ( .A(srv_cnt1_d[7]), .B(srv_cnt1_d[6]), .Z(n241) );
  CNR2X2 U339 ( .A(n63), .B(n89), .Z(n240) );
  CND2X4 U340 ( .A(n243), .B(n331), .Z(n310) );
  CND3X1 U341 ( .A(\gnt2[2] ), .B(n331), .C(n268), .Z(n246) );
  CIVX2 U342 ( .A(n250), .Z(n251) );
  CND2X1 U343 ( .A(n264), .B(n328), .Z(n370) );
  CND2XL U344 ( .A(n255), .B(n331), .Z(n256) );
  CND2X1 U345 ( .A(n101), .B(n118), .Z(n257) );
  CND2X1 U346 ( .A(n102), .B(n110), .Z(n300) );
  CNR2X1 U347 ( .A(n257), .B(n300), .Z(n288) );
  CNR2X1 U348 ( .A(n209), .B(n115), .Z(n258) );
  CNR2X1 U349 ( .A(n274), .B(n107), .Z(n260) );
  CIVX2 U350 ( .A(n121), .Z(n259) );
  CENX1 U351 ( .A(n260), .B(n259), .Z(n262) );
  CIVX2 U352 ( .A(n331), .Z(n311) );
  CMX2X1 U353 ( .A0(n262), .A1(n121), .S(n192), .Z(n366) );
  CND2X1 U354 ( .A(n113), .B(n92), .Z(n263) );
  CNIVXL U355 ( .A(srv_cnt0_d[4]), .Z(n294) );
  CNR2X1 U356 ( .A(n62), .B(n98), .Z(n265) );
  CIVX2 U357 ( .A(n278), .Z(n277) );
  CNR2X1 U358 ( .A(n276), .B(n277), .Z(n267) );
  CIVX2 U359 ( .A(n266), .Z(n272) );
  CEOX1 U360 ( .A(n267), .B(n272), .Z(n273) );
  CEOX1 U361 ( .A(n107), .B(n274), .Z(n275) );
  CIVX2 U362 ( .A(n209), .Z(n289) );
  CND2X1 U363 ( .A(n288), .B(n289), .Z(n282) );
  CENX1 U364 ( .A(n98), .B(n283), .Z(n284) );
  CEOX1 U365 ( .A(n96), .B(n285), .Z(n286) );
  CEOX1 U367 ( .A(n288), .B(n209), .Z(n290) );
  CEOX1 U368 ( .A(n291), .B(n62), .Z(n292) );
  CIVX1 U369 ( .A(n297), .Z(n306) );
  CND2X1 U370 ( .A(n306), .B(n113), .Z(n298) );
  CEOX1 U371 ( .A(n93), .B(n298), .Z(n299) );
  CIVX2 U372 ( .A(n118), .Z(n302) );
  CIVX1 U373 ( .A(n300), .Z(n321) );
  CND2X1 U374 ( .A(n321), .B(n101), .Z(n301) );
  CEOX1 U375 ( .A(n302), .B(n301), .Z(n303) );
  CIVX1 U376 ( .A(n304), .Z(n319) );
  CND2X1 U377 ( .A(n319), .B(n104), .Z(n305) );
  CIVX2 U378 ( .A(n113), .Z(n307) );
  CENX1 U379 ( .A(n307), .B(n306), .Z(n313) );
  CND3X1 U380 ( .A(n308), .B(n331), .C(n313), .Z(n317) );
  CAN2X1 U381 ( .A(n331), .B(gnt[0]), .Z(n309) );
  CND2X1 U382 ( .A(n310), .B(n309), .Z(n327) );
  COND3X1 U383 ( .A(n312), .B(n311), .C(n113), .D(n327), .Z(n316) );
  CND2X1 U384 ( .A(n314), .B(n313), .Z(n315) );
  CENX1 U385 ( .A(n103), .B(n340), .Z(n326) );
  CIVXL U386 ( .A(srv_cnt0_d[1]), .Z(n329) );
  CND3XL U387 ( .A(n66), .B(n69), .C(n335), .Z(n337) );
  CIVX8 U388 ( .A(n344), .Z(n369) );
  CAN2X1 U389 ( .A(n369), .B(n345), .Z(N22) );
  CAN2X1 U390 ( .A(n369), .B(n346), .Z(N25) );
  CAN2X1 U391 ( .A(n369), .B(n347), .Z(N24) );
  CAN2X1 U392 ( .A(n369), .B(n348), .Z(N21) );
  CAN2X1 U393 ( .A(n369), .B(n74), .Z(N23) );
  CAN2X1 U394 ( .A(n369), .B(n350), .Z(N11) );
  CAN2X1 U395 ( .A(n369), .B(n351), .Z(N19) );
  CAN2X1 U396 ( .A(n369), .B(n352), .Z(N16) );
  CAN2X1 U397 ( .A(n369), .B(n353), .Z(N15) );
  CAN2X1 U398 ( .A(n369), .B(n68), .Z(N17) );
  CAN2X1 U399 ( .A(n369), .B(n355), .Z(N10) );
  CAN2X1 U400 ( .A(n369), .B(n356), .Z(N18) );
  CAN2X1 U401 ( .A(n369), .B(n191), .Z(N14) );
  CAN2X1 U402 ( .A(n369), .B(n72), .Z(N13) );
  CAN2X1 U403 ( .A(n369), .B(n64), .Z(N20) );
  CAN2X1 U404 ( .A(n369), .B(n80), .Z(N32) );
  CAN2X1 U405 ( .A(n369), .B(n361), .Z(N29) );
  CAN2X1 U406 ( .A(n369), .B(n362), .Z(N30) );
  CAN2X1 U407 ( .A(n369), .B(n363), .Z(N26) );
  CAN2X1 U408 ( .A(n369), .B(n364), .Z(N31) );
  CAN2X1 U409 ( .A(n369), .B(n365), .Z(N28) );
  CAN2X1 U410 ( .A(n369), .B(n124), .Z(N33) );
  CAN2X1 U411 ( .A(n369), .B(n367), .Z(N12) );
  CAN2X1 U412 ( .A(n369), .B(n368), .Z(N27) );
endmodule

