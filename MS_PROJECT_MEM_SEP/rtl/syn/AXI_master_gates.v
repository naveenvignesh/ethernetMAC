
module dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__0 ( \clks.clk , 
        \clks.rst , push, pull, data_in, data_out, depth_left, full, empty );
  input [31:0] data_in;
  output [31:0] data_out;
  output [1:0] depth_left;
  input \clks.clk , \clks.rst , push, pull;
  output full, empty;
  wire   n9, n10, \data_mem[0][31] , \data_mem[0][30] , \data_mem[0][29] ,
         \data_mem[0][28] , \data_mem[0][27] , \data_mem[0][26] ,
         \data_mem[0][25] , \data_mem[0][24] , \data_mem[0][23] ,
         \data_mem[0][22] , \data_mem[0][21] , \data_mem[0][20] ,
         \data_mem[0][19] , \data_mem[0][18] , \data_mem[0][17] ,
         \data_mem[0][16] , \data_mem[0][15] , \data_mem[0][14] ,
         \data_mem[0][13] , \data_mem[0][12] , \data_mem[0][11] ,
         \data_mem[0][10] , \data_mem[0][9] , \data_mem[0][8] ,
         \data_mem[0][7] , \data_mem[0][6] , \data_mem[0][5] ,
         \data_mem[0][4] , \data_mem[0][3] , \data_mem[0][2] ,
         \data_mem[0][1] , \data_mem[0][0] , \w_ptr[0] , n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8;
  tri   \clks.clk ;
  tri   \clks.rst ;

  CFD4QXL \depth_left_reg[1]  ( .D(n84), .CP(\clks.clk ), .SD(\clks.rst ), .Q(
        n9) );
  CFD2QXL \w_ptr_reg[0]  ( .D(n83), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        \w_ptr[0] ) );
  CFD2QXL \depth_left_reg[0]  ( .D(n85), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n10) );
  CFD1QXL \data_mem_reg[0][29]  ( .D(n21), .CP(\clks.clk ), .Q(
        \data_mem[0][29] ) );
  CFD1QXL \data_mem_reg[0][28]  ( .D(n22), .CP(\clks.clk ), .Q(
        \data_mem[0][28] ) );
  CFD1QXL \data_mem_reg[0][24]  ( .D(n26), .CP(\clks.clk ), .Q(
        \data_mem[0][24] ) );
  CFD1QXL \data_mem_reg[0][23]  ( .D(n27), .CP(\clks.clk ), .Q(
        \data_mem[0][23] ) );
  CFD1QXL \data_mem_reg[0][20]  ( .D(n30), .CP(\clks.clk ), .Q(
        \data_mem[0][20] ) );
  CFD1QXL \data_mem_reg[0][19]  ( .D(n31), .CP(\clks.clk ), .Q(
        \data_mem[0][19] ) );
  CFD1QXL \data_mem_reg[0][18]  ( .D(n32), .CP(\clks.clk ), .Q(
        \data_mem[0][18] ) );
  CFD1QXL \data_mem_reg[0][15]  ( .D(n35), .CP(\clks.clk ), .Q(
        \data_mem[0][15] ) );
  CFD1QXL \data_mem_reg[0][10]  ( .D(n40), .CP(\clks.clk ), .Q(
        \data_mem[0][10] ) );
  CFD1QXL \data_mem_reg[0][9]  ( .D(n41), .CP(\clks.clk ), .Q(\data_mem[0][9] ) );
  CFD1QXL \data_mem_reg[0][8]  ( .D(n42), .CP(\clks.clk ), .Q(\data_mem[0][8] ) );
  CFD1QXL \data_mem_reg[0][6]  ( .D(n44), .CP(\clks.clk ), .Q(\data_mem[0][6] ) );
  CFD1QXL \data_mem_reg[0][3]  ( .D(n47), .CP(\clks.clk ), .Q(\data_mem[0][3] ) );
  CFD1QXL \data_mem_reg[0][2]  ( .D(n48), .CP(\clks.clk ), .Q(\data_mem[0][2] ) );
  CFD1QXL \data_mem_reg[0][0]  ( .D(n50), .CP(\clks.clk ), .Q(\data_mem[0][0] ) );
  CFD1QXL \data_mem_reg[0][31]  ( .D(n19), .CP(\clks.clk ), .Q(
        \data_mem[0][31] ) );
  CFD1QXL \data_mem_reg[0][30]  ( .D(n20), .CP(\clks.clk ), .Q(
        \data_mem[0][30] ) );
  CFD1QXL \data_mem_reg[0][27]  ( .D(n23), .CP(\clks.clk ), .Q(
        \data_mem[0][27] ) );
  CFD1QXL \data_mem_reg[0][26]  ( .D(n24), .CP(\clks.clk ), .Q(
        \data_mem[0][26] ) );
  CFD1QXL \data_mem_reg[0][25]  ( .D(n25), .CP(\clks.clk ), .Q(
        \data_mem[0][25] ) );
  CFD1QXL \data_mem_reg[0][22]  ( .D(n28), .CP(\clks.clk ), .Q(
        \data_mem[0][22] ) );
  CFD1QXL \data_mem_reg[0][21]  ( .D(n29), .CP(\clks.clk ), .Q(
        \data_mem[0][21] ) );
  CFD1QXL \data_mem_reg[0][17]  ( .D(n33), .CP(\clks.clk ), .Q(
        \data_mem[0][17] ) );
  CFD1QXL \data_mem_reg[0][16]  ( .D(n34), .CP(\clks.clk ), .Q(
        \data_mem[0][16] ) );
  CFD1QXL \data_mem_reg[0][14]  ( .D(n36), .CP(\clks.clk ), .Q(
        \data_mem[0][14] ) );
  CFD1QXL \data_mem_reg[0][13]  ( .D(n37), .CP(\clks.clk ), .Q(
        \data_mem[0][13] ) );
  CFD1QXL \data_mem_reg[0][12]  ( .D(n38), .CP(\clks.clk ), .Q(
        \data_mem[0][12] ) );
  CFD1QXL \data_mem_reg[0][11]  ( .D(n39), .CP(\clks.clk ), .Q(
        \data_mem[0][11] ) );
  CFD1QXL \data_mem_reg[0][7]  ( .D(n43), .CP(\clks.clk ), .Q(\data_mem[0][7] ) );
  CFD1QXL \data_mem_reg[0][5]  ( .D(n45), .CP(\clks.clk ), .Q(\data_mem[0][5] ) );
  CFD1QXL \data_mem_reg[0][4]  ( .D(n46), .CP(\clks.clk ), .Q(\data_mem[0][4] ) );
  CFD1QXL \data_mem_reg[0][1]  ( .D(n49), .CP(\clks.clk ), .Q(\data_mem[0][1] ) );
  COND1XL U3 ( .A(n10), .B(n9), .C(push), .Z(n1) );
  CENX1 U4 ( .A(\w_ptr[0] ), .B(n1), .Z(n83) );
  CNIVX1 U5 ( .A(push), .Z(n2) );
  COR3X2 U6 ( .A(\w_ptr[0] ), .B(n5), .C(n4), .Z(n3) );
  COND1X2 U7 ( .A(n10), .B(n9), .C(push), .Z(n4) );
  CIVX2 U8 ( .A(\clks.rst ), .Z(n5) );
  CIVX12 U9 ( .A(n3), .Z(n6) );
  CMX2XL U10 ( .A0(\data_mem[0][4] ), .A1(data_in[4]), .S(n6), .Z(n46) );
  CMX2XL U11 ( .A0(\data_mem[0][14] ), .A1(data_in[14]), .S(n6), .Z(n36) );
  CMX2XL U12 ( .A0(\data_mem[0][11] ), .A1(data_in[11]), .S(n6), .Z(n39) );
  CMX2XL U13 ( .A0(\data_mem[0][1] ), .A1(data_in[1]), .S(n6), .Z(n49) );
  CMX2XL U14 ( .A0(\data_mem[0][27] ), .A1(data_in[27]), .S(n6), .Z(n23) );
  CMX2XL U15 ( .A0(\data_mem[0][12] ), .A1(data_in[12]), .S(n6), .Z(n38) );
  CMX2XL U16 ( .A0(\data_mem[0][22] ), .A1(data_in[22]), .S(n6), .Z(n28) );
  CMX2XL U17 ( .A0(\data_mem[0][17] ), .A1(data_in[17]), .S(n6), .Z(n33) );
  CMX2XL U18 ( .A0(\data_mem[0][25] ), .A1(data_in[25]), .S(n6), .Z(n25) );
  CMX2XL U19 ( .A0(\data_mem[0][26] ), .A1(data_in[26]), .S(n6), .Z(n24) );
  CMX2XL U20 ( .A0(\data_mem[0][13] ), .A1(data_in[13]), .S(n6), .Z(n37) );
  CMX2XL U21 ( .A0(\data_mem[0][5] ), .A1(data_in[5]), .S(n6), .Z(n45) );
  CMX2XL U22 ( .A0(\data_mem[0][21] ), .A1(data_in[21]), .S(n6), .Z(n29) );
  CMX2XL U23 ( .A0(\data_mem[0][16] ), .A1(data_in[16]), .S(n6), .Z(n34) );
  CMX2XL U24 ( .A0(\data_mem[0][7] ), .A1(data_in[7]), .S(n6), .Z(n43) );
  CMX2XL U25 ( .A0(\data_mem[0][31] ), .A1(data_in[31]), .S(n6), .Z(n19) );
  CMX2XL U26 ( .A0(\data_mem[0][30] ), .A1(data_in[30]), .S(n6), .Z(n20) );
  CIVDX1 U27 ( .A(n9), .Z0(n7) );
  CNR2X1 U28 ( .A(n10), .B(n7), .Z(empty) );
  CNR2IX1 U29 ( .B(\data_mem[0][25] ), .A(n5), .Z(data_out[25]) );
  CNR2IX1 U30 ( .B(\data_mem[0][12] ), .A(n5), .Z(data_out[12]) );
  CNR2IX1 U31 ( .B(\data_mem[0][10] ), .A(n5), .Z(data_out[10]) );
  CNR2IX1 U32 ( .B(\data_mem[0][18] ), .A(n5), .Z(data_out[18]) );
  CNR2IX1 U33 ( .B(\data_mem[0][19] ), .A(n5), .Z(data_out[19]) );
  CNR2IX1 U34 ( .B(\data_mem[0][16] ), .A(n5), .Z(data_out[16]) );
  CNR2IX1 U35 ( .B(\data_mem[0][3] ), .A(n5), .Z(data_out[3]) );
  CNR2IX1 U36 ( .B(\data_mem[0][28] ), .A(n5), .Z(data_out[28]) );
  CNR2IX1 U37 ( .B(\data_mem[0][0] ), .A(n5), .Z(data_out[0]) );
  CNR2IX1 U38 ( .B(\data_mem[0][1] ), .A(n5), .Z(data_out[1]) );
  CNR2IX1 U39 ( .B(\data_mem[0][2] ), .A(n5), .Z(data_out[2]) );
  CNR2IX1 U40 ( .B(\data_mem[0][9] ), .A(n5), .Z(data_out[9]) );
  CNR2IX1 U41 ( .B(\data_mem[0][14] ), .A(n5), .Z(data_out[14]) );
  CNR2IX1 U42 ( .B(\data_mem[0][13] ), .A(n5), .Z(data_out[13]) );
  CNR2IX1 U43 ( .B(\data_mem[0][22] ), .A(n5), .Z(data_out[22]) );
  CNR2IX1 U44 ( .B(\data_mem[0][31] ), .A(n5), .Z(data_out[31]) );
  CNR2IX1 U45 ( .B(\data_mem[0][29] ), .A(n5), .Z(data_out[29]) );
  CNR2IX1 U46 ( .B(\data_mem[0][26] ), .A(n5), .Z(data_out[26]) );
  CNR2IX1 U47 ( .B(\data_mem[0][20] ), .A(n5), .Z(data_out[20]) );
  CNR2IX1 U48 ( .B(\data_mem[0][11] ), .A(n5), .Z(data_out[11]) );
  CNR2IX1 U49 ( .B(\data_mem[0][30] ), .A(n5), .Z(data_out[30]) );
  CNR2IX1 U50 ( .B(\data_mem[0][23] ), .A(n5), .Z(data_out[23]) );
  CNR2IX1 U51 ( .B(\data_mem[0][7] ), .A(n5), .Z(data_out[7]) );
  CNR2IX1 U52 ( .B(\data_mem[0][15] ), .A(n5), .Z(data_out[15]) );
  CNR2IX1 U53 ( .B(\data_mem[0][21] ), .A(n5), .Z(data_out[21]) );
  CNR2IX1 U54 ( .B(\data_mem[0][8] ), .A(n5), .Z(data_out[8]) );
  CNR2IX1 U55 ( .B(\data_mem[0][6] ), .A(n5), .Z(data_out[6]) );
  CNR2IX1 U56 ( .B(\data_mem[0][17] ), .A(n5), .Z(data_out[17]) );
  CNR2IX1 U57 ( .B(\data_mem[0][4] ), .A(n5), .Z(data_out[4]) );
  CNR2IX1 U58 ( .B(\data_mem[0][27] ), .A(n5), .Z(data_out[27]) );
  CNR2IX1 U59 ( .B(\data_mem[0][24] ), .A(n5), .Z(data_out[24]) );
  CNR2IX1 U60 ( .B(\data_mem[0][5] ), .A(n5), .Z(data_out[5]) );
  CMX2X1 U61 ( .A0(\data_mem[0][19] ), .A1(data_in[19]), .S(n6), .Z(n31) );
  CMX2X1 U62 ( .A0(\data_mem[0][23] ), .A1(data_in[23]), .S(n6), .Z(n27) );
  CMX2X1 U63 ( .A0(\data_mem[0][20] ), .A1(data_in[20]), .S(n6), .Z(n30) );
  CMX2X1 U64 ( .A0(\data_mem[0][18] ), .A1(data_in[18]), .S(n6), .Z(n32) );
  CMX2X1 U65 ( .A0(\data_mem[0][15] ), .A1(data_in[15]), .S(n6), .Z(n35) );
  CMX2X1 U66 ( .A0(\data_mem[0][10] ), .A1(data_in[10]), .S(n6), .Z(n40) );
  CMX2X1 U67 ( .A0(\data_mem[0][9] ), .A1(data_in[9]), .S(n6), .Z(n41) );
  CMX2X1 U68 ( .A0(\data_mem[0][8] ), .A1(data_in[8]), .S(n6), .Z(n42) );
  CMX2X1 U69 ( .A0(\data_mem[0][6] ), .A1(data_in[6]), .S(n6), .Z(n44) );
  CMX2X1 U70 ( .A0(\data_mem[0][3] ), .A1(data_in[3]), .S(n6), .Z(n47) );
  CMX2X1 U71 ( .A0(\data_mem[0][2] ), .A1(data_in[2]), .S(n6), .Z(n48) );
  CMX2X1 U72 ( .A0(\data_mem[0][0] ), .A1(data_in[0]), .S(n6), .Z(n50) );
  CMX2X1 U73 ( .A0(\data_mem[0][24] ), .A1(data_in[24]), .S(n6), .Z(n26) );
  CMX2X1 U74 ( .A0(\data_mem[0][28] ), .A1(data_in[28]), .S(n6), .Z(n22) );
  CMX2X1 U75 ( .A0(\data_mem[0][29] ), .A1(data_in[29]), .S(n6), .Z(n21) );
  CMX2XL U76 ( .A0(n10), .A1(empty), .S(n2), .Z(n85) );
  CIVXL U77 ( .A(n10), .Z(n8) );
  CANR1XL U78 ( .A(n2), .B(n8), .C(n7), .Z(n84) );
endmodule


module dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__1 ( \clks.clk , 
        \clks.rst , push, pull, data_in, data_out, depth_left, full, empty );
  input [31:0] data_in;
  output [31:0] data_out;
  output [1:0] depth_left;
  input \clks.clk , \clks.rst , push, pull;
  output full, empty;
  wire   n67, n68, \data_mem[0][31] , \data_mem[0][30] , \data_mem[0][29] ,
         \data_mem[0][28] , \data_mem[0][27] , \data_mem[0][26] ,
         \data_mem[0][25] , \data_mem[0][24] , \data_mem[0][23] ,
         \data_mem[0][22] , \data_mem[0][21] , \data_mem[0][20] ,
         \data_mem[0][19] , \data_mem[0][18] , \data_mem[0][17] ,
         \data_mem[0][16] , \data_mem[0][15] , \data_mem[0][14] ,
         \data_mem[0][13] , \data_mem[0][12] , \data_mem[0][11] ,
         \data_mem[0][10] , \data_mem[0][9] , \data_mem[0][8] ,
         \data_mem[0][7] , \data_mem[0][6] , \data_mem[0][5] ,
         \data_mem[0][4] , \data_mem[0][3] , \data_mem[0][2] ,
         \data_mem[0][1] , \data_mem[0][0] , \w_ptr[0] , n1, n2, n3, n4, n5,
         n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66;
  tri   \clks.clk ;
  tri   \clks.rst ;

  CFD2QXL \w_ptr_reg[0]  ( .D(n10), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        \w_ptr[0] ) );
  CFD4QXL \depth_left_reg[1]  ( .D(n9), .CP(\clks.clk ), .SD(\clks.rst ), .Q(
        n67) );
  CFD2QXL \depth_left_reg[0]  ( .D(n8), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n68) );
  CFD1QXL \data_mem_reg[0][31]  ( .D(n66), .CP(\clks.clk ), .Q(
        \data_mem[0][31] ) );
  CFD1QXL \data_mem_reg[0][30]  ( .D(n65), .CP(\clks.clk ), .Q(
        \data_mem[0][30] ) );
  CFD1QXL \data_mem_reg[0][29]  ( .D(n64), .CP(\clks.clk ), .Q(
        \data_mem[0][29] ) );
  CFD1QXL \data_mem_reg[0][28]  ( .D(n63), .CP(\clks.clk ), .Q(
        \data_mem[0][28] ) );
  CFD1QXL \data_mem_reg[0][27]  ( .D(n62), .CP(\clks.clk ), .Q(
        \data_mem[0][27] ) );
  CFD1QXL \data_mem_reg[0][26]  ( .D(n61), .CP(\clks.clk ), .Q(
        \data_mem[0][26] ) );
  CFD1QXL \data_mem_reg[0][25]  ( .D(n60), .CP(\clks.clk ), .Q(
        \data_mem[0][25] ) );
  CFD1QXL \data_mem_reg[0][24]  ( .D(n59), .CP(\clks.clk ), .Q(
        \data_mem[0][24] ) );
  CFD1QXL \data_mem_reg[0][23]  ( .D(n58), .CP(\clks.clk ), .Q(
        \data_mem[0][23] ) );
  CFD1QXL \data_mem_reg[0][22]  ( .D(n57), .CP(\clks.clk ), .Q(
        \data_mem[0][22] ) );
  CFD1QXL \data_mem_reg[0][21]  ( .D(n56), .CP(\clks.clk ), .Q(
        \data_mem[0][21] ) );
  CFD1QXL \data_mem_reg[0][20]  ( .D(n55), .CP(\clks.clk ), .Q(
        \data_mem[0][20] ) );
  CFD1QXL \data_mem_reg[0][19]  ( .D(n54), .CP(\clks.clk ), .Q(
        \data_mem[0][19] ) );
  CFD1QXL \data_mem_reg[0][18]  ( .D(n53), .CP(\clks.clk ), .Q(
        \data_mem[0][18] ) );
  CFD1QXL \data_mem_reg[0][17]  ( .D(n52), .CP(\clks.clk ), .Q(
        \data_mem[0][17] ) );
  CFD1QXL \data_mem_reg[0][16]  ( .D(n51), .CP(\clks.clk ), .Q(
        \data_mem[0][16] ) );
  CFD1QXL \data_mem_reg[0][15]  ( .D(n50), .CP(\clks.clk ), .Q(
        \data_mem[0][15] ) );
  CFD1QXL \data_mem_reg[0][14]  ( .D(n49), .CP(\clks.clk ), .Q(
        \data_mem[0][14] ) );
  CFD1QXL \data_mem_reg[0][13]  ( .D(n48), .CP(\clks.clk ), .Q(
        \data_mem[0][13] ) );
  CFD1QXL \data_mem_reg[0][12]  ( .D(n47), .CP(\clks.clk ), .Q(
        \data_mem[0][12] ) );
  CFD1QXL \data_mem_reg[0][11]  ( .D(n46), .CP(\clks.clk ), .Q(
        \data_mem[0][11] ) );
  CFD1QXL \data_mem_reg[0][10]  ( .D(n45), .CP(\clks.clk ), .Q(
        \data_mem[0][10] ) );
  CFD1QXL \data_mem_reg[0][9]  ( .D(n44), .CP(\clks.clk ), .Q(\data_mem[0][9] ) );
  CFD1QXL \data_mem_reg[0][8]  ( .D(n43), .CP(\clks.clk ), .Q(\data_mem[0][8] ) );
  CFD1QXL \data_mem_reg[0][7]  ( .D(n18), .CP(\clks.clk ), .Q(\data_mem[0][7] ) );
  CFD1QXL \data_mem_reg[0][6]  ( .D(n17), .CP(\clks.clk ), .Q(\data_mem[0][6] ) );
  CFD1QXL \data_mem_reg[0][5]  ( .D(n16), .CP(\clks.clk ), .Q(\data_mem[0][5] ) );
  CFD1QXL \data_mem_reg[0][4]  ( .D(n15), .CP(\clks.clk ), .Q(\data_mem[0][4] ) );
  CFD1QXL \data_mem_reg[0][3]  ( .D(n14), .CP(\clks.clk ), .Q(\data_mem[0][3] ) );
  CFD1QXL \data_mem_reg[0][2]  ( .D(n13), .CP(\clks.clk ), .Q(\data_mem[0][2] ) );
  CFD1QXL \data_mem_reg[0][1]  ( .D(n12), .CP(\clks.clk ), .Q(\data_mem[0][1] ) );
  CFD1QXL \data_mem_reg[0][0]  ( .D(n11), .CP(\clks.clk ), .Q(\data_mem[0][0] ) );
  CNR3X2 U3 ( .A(\w_ptr[0] ), .B(n3), .C(n4), .Z(n2) );
  CNIVX20 U4 ( .A(n2), .Z(n1) );
  COND1X4 U5 ( .A(n68), .B(n67), .C(push), .Z(n3) );
  CIVX2 U6 ( .A(\clks.rst ), .Z(n4) );
  CMX2XL U7 ( .A0(\data_mem[0][0] ), .A1(data_in[0]), .S(n1), .Z(n11) );
  CMX2XL U8 ( .A0(\data_mem[0][1] ), .A1(data_in[1]), .S(n1), .Z(n12) );
  CMX2XL U9 ( .A0(\data_mem[0][2] ), .A1(data_in[2]), .S(n1), .Z(n13) );
  CMX2XL U10 ( .A0(\data_mem[0][3] ), .A1(data_in[3]), .S(n1), .Z(n14) );
  CMX2XL U11 ( .A0(\data_mem[0][4] ), .A1(data_in[4]), .S(n1), .Z(n15) );
  CMX2XL U12 ( .A0(\data_mem[0][5] ), .A1(data_in[5]), .S(n1), .Z(n16) );
  CMX2XL U13 ( .A0(\data_mem[0][6] ), .A1(data_in[6]), .S(n1), .Z(n17) );
  CMX2XL U14 ( .A0(\data_mem[0][7] ), .A1(data_in[7]), .S(n1), .Z(n18) );
  CMX2XL U15 ( .A0(\data_mem[0][8] ), .A1(data_in[8]), .S(n1), .Z(n43) );
  CMX2XL U16 ( .A0(\data_mem[0][9] ), .A1(data_in[9]), .S(n1), .Z(n44) );
  CMX2XL U17 ( .A0(\data_mem[0][10] ), .A1(data_in[10]), .S(n1), .Z(n45) );
  CMX2XL U18 ( .A0(\data_mem[0][11] ), .A1(data_in[11]), .S(n1), .Z(n46) );
  CMX2XL U19 ( .A0(\data_mem[0][12] ), .A1(data_in[12]), .S(n1), .Z(n47) );
  CMX2XL U20 ( .A0(\data_mem[0][13] ), .A1(data_in[13]), .S(n1), .Z(n48) );
  CMX2XL U21 ( .A0(\data_mem[0][14] ), .A1(data_in[14]), .S(n1), .Z(n49) );
  CMX2XL U22 ( .A0(\data_mem[0][15] ), .A1(data_in[15]), .S(n1), .Z(n50) );
  CMX2XL U23 ( .A0(\data_mem[0][16] ), .A1(data_in[16]), .S(n1), .Z(n51) );
  CMX2XL U24 ( .A0(\data_mem[0][17] ), .A1(data_in[17]), .S(n1), .Z(n52) );
  CMX2XL U25 ( .A0(\data_mem[0][18] ), .A1(data_in[18]), .S(n1), .Z(n53) );
  CMX2XL U26 ( .A0(\data_mem[0][19] ), .A1(data_in[19]), .S(n1), .Z(n54) );
  CMX2XL U27 ( .A0(\data_mem[0][20] ), .A1(data_in[20]), .S(n1), .Z(n55) );
  CMX2XL U28 ( .A0(\data_mem[0][21] ), .A1(data_in[21]), .S(n1), .Z(n56) );
  CMX2XL U29 ( .A0(\data_mem[0][22] ), .A1(data_in[22]), .S(n1), .Z(n57) );
  CMX2XL U30 ( .A0(\data_mem[0][23] ), .A1(data_in[23]), .S(n1), .Z(n58) );
  CMX2XL U31 ( .A0(\data_mem[0][24] ), .A1(data_in[24]), .S(n1), .Z(n59) );
  CMX2XL U32 ( .A0(\data_mem[0][25] ), .A1(data_in[25]), .S(n1), .Z(n60) );
  CMX2XL U33 ( .A0(\data_mem[0][26] ), .A1(data_in[26]), .S(n1), .Z(n61) );
  CMX2XL U34 ( .A0(\data_mem[0][27] ), .A1(data_in[27]), .S(n1), .Z(n62) );
  CMX2XL U35 ( .A0(\data_mem[0][28] ), .A1(data_in[28]), .S(n1), .Z(n63) );
  CMX2XL U36 ( .A0(\data_mem[0][29] ), .A1(data_in[29]), .S(n1), .Z(n64) );
  CMX2XL U37 ( .A0(\data_mem[0][30] ), .A1(data_in[30]), .S(n1), .Z(n65) );
  CMX2XL U38 ( .A0(\data_mem[0][31] ), .A1(data_in[31]), .S(n1), .Z(n66) );
  CIVX2 U39 ( .A(n67), .Z(n5) );
  CNR2X1 U40 ( .A(n68), .B(n5), .Z(empty) );
  CENXL U41 ( .A(\w_ptr[0] ), .B(n3), .Z(n10) );
  CNR2IX1 U42 ( .B(\data_mem[0][18] ), .A(n4), .Z(data_out[18]) );
  CNR2IX1 U43 ( .B(\data_mem[0][31] ), .A(n4), .Z(data_out[31]) );
  CNR2IX1 U44 ( .B(\data_mem[0][3] ), .A(n4), .Z(data_out[3]) );
  CNR2IX1 U45 ( .B(\data_mem[0][4] ), .A(n4), .Z(data_out[4]) );
  CNR2IX1 U46 ( .B(\data_mem[0][5] ), .A(n4), .Z(data_out[5]) );
  CNR2IX1 U47 ( .B(\data_mem[0][6] ), .A(n4), .Z(data_out[6]) );
  CNR2IX1 U48 ( .B(\data_mem[0][16] ), .A(n4), .Z(data_out[16]) );
  CNR2IX1 U49 ( .B(\data_mem[0][2] ), .A(n4), .Z(data_out[2]) );
  CNR2IX1 U50 ( .B(\data_mem[0][20] ), .A(n4), .Z(data_out[20]) );
  CNR2IX1 U51 ( .B(\data_mem[0][0] ), .A(n4), .Z(data_out[0]) );
  CNR2IX1 U52 ( .B(\data_mem[0][1] ), .A(n4), .Z(data_out[1]) );
  CNR2IX1 U53 ( .B(\data_mem[0][21] ), .A(n4), .Z(data_out[21]) );
  CNR2IX1 U54 ( .B(\data_mem[0][24] ), .A(n4), .Z(data_out[24]) );
  CNR2IX1 U55 ( .B(\data_mem[0][27] ), .A(n4), .Z(data_out[27]) );
  CNR2IX1 U56 ( .B(\data_mem[0][23] ), .A(n4), .Z(data_out[23]) );
  CNR2IX1 U57 ( .B(\data_mem[0][11] ), .A(n4), .Z(data_out[11]) );
  CNR2IX1 U58 ( .B(\data_mem[0][9] ), .A(n4), .Z(data_out[9]) );
  CNR2IX1 U59 ( .B(\data_mem[0][22] ), .A(n4), .Z(data_out[22]) );
  CNR2IX1 U60 ( .B(\data_mem[0][13] ), .A(n4), .Z(data_out[13]) );
  CNR2IX1 U61 ( .B(\data_mem[0][12] ), .A(n4), .Z(data_out[12]) );
  CNR2IX1 U62 ( .B(\data_mem[0][19] ), .A(n4), .Z(data_out[19]) );
  CNR2IX1 U63 ( .B(\data_mem[0][10] ), .A(n4), .Z(data_out[10]) );
  CNR2IX1 U64 ( .B(\data_mem[0][17] ), .A(n4), .Z(data_out[17]) );
  CNR2IX1 U65 ( .B(\data_mem[0][8] ), .A(n4), .Z(data_out[8]) );
  CNR2IX1 U66 ( .B(\data_mem[0][15] ), .A(n4), .Z(data_out[15]) );
  CNR2IX1 U67 ( .B(\data_mem[0][14] ), .A(n4), .Z(data_out[14]) );
  CNR2IX1 U68 ( .B(\data_mem[0][30] ), .A(n4), .Z(data_out[30]) );
  CNR2IX1 U69 ( .B(\data_mem[0][29] ), .A(n4), .Z(data_out[29]) );
  CNR2IX1 U70 ( .B(\data_mem[0][28] ), .A(n4), .Z(data_out[28]) );
  CNR2IX1 U71 ( .B(\data_mem[0][25] ), .A(n4), .Z(data_out[25]) );
  CNR2IX1 U72 ( .B(\data_mem[0][26] ), .A(n4), .Z(data_out[26]) );
  CNR2IX1 U73 ( .B(\data_mem[0][7] ), .A(n4), .Z(data_out[7]) );
  CMX2XL U74 ( .A0(n68), .A1(empty), .S(push), .Z(n8) );
  CIVXL U75 ( .A(n68), .Z(n6) );
  CANR1XL U76 ( .A(push), .B(n6), .C(n5), .Z(n9) );
endmodule


module dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__2 ( \clks.clk , 
        \clks.rst , push, pull, data_in, data_out, depth_left, full, empty );
  input [31:0] data_in;
  output [31:0] data_out;
  output [1:0] depth_left;
  input \clks.clk , \clks.rst , push, pull;
  output full, empty;
  wire   n67, n68, \data_mem[0][31] , \data_mem[0][30] , \data_mem[0][29] ,
         \data_mem[0][28] , \data_mem[0][27] , \data_mem[0][26] ,
         \data_mem[0][25] , \data_mem[0][24] , \data_mem[0][23] ,
         \data_mem[0][22] , \data_mem[0][21] , \data_mem[0][20] ,
         \data_mem[0][19] , \data_mem[0][18] , \data_mem[0][17] ,
         \data_mem[0][16] , \data_mem[0][15] , \data_mem[0][14] ,
         \data_mem[0][13] , \data_mem[0][12] , \data_mem[0][11] ,
         \data_mem[0][10] , \data_mem[0][9] , \data_mem[0][8] ,
         \data_mem[0][7] , \data_mem[0][6] , \data_mem[0][5] ,
         \data_mem[0][4] , \data_mem[0][3] , \data_mem[0][2] ,
         \data_mem[0][1] , \data_mem[0][0] , \w_ptr[0] , n1, n2, n3, n4, n5,
         n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66;
  tri   \clks.clk ;
  tri   \clks.rst ;

  CFD1QXL \data_mem_reg[0][0]  ( .D(n11), .CP(\clks.clk ), .Q(\data_mem[0][0] ) );
  CFD1QXL \data_mem_reg[0][1]  ( .D(n12), .CP(\clks.clk ), .Q(\data_mem[0][1] ) );
  CFD1QXL \data_mem_reg[0][2]  ( .D(n13), .CP(\clks.clk ), .Q(\data_mem[0][2] ) );
  CFD1QXL \data_mem_reg[0][3]  ( .D(n14), .CP(\clks.clk ), .Q(\data_mem[0][3] ) );
  CFD1QXL \data_mem_reg[0][4]  ( .D(n15), .CP(\clks.clk ), .Q(\data_mem[0][4] ) );
  CFD1QXL \data_mem_reg[0][5]  ( .D(n16), .CP(\clks.clk ), .Q(\data_mem[0][5] ) );
  CFD1QXL \data_mem_reg[0][6]  ( .D(n17), .CP(\clks.clk ), .Q(\data_mem[0][6] ) );
  CFD1QXL \data_mem_reg[0][7]  ( .D(n18), .CP(\clks.clk ), .Q(\data_mem[0][7] ) );
  CFD1QXL \data_mem_reg[0][8]  ( .D(n43), .CP(\clks.clk ), .Q(\data_mem[0][8] ) );
  CFD1QXL \data_mem_reg[0][9]  ( .D(n44), .CP(\clks.clk ), .Q(\data_mem[0][9] ) );
  CFD1QXL \data_mem_reg[0][10]  ( .D(n45), .CP(\clks.clk ), .Q(
        \data_mem[0][10] ) );
  CFD1QXL \data_mem_reg[0][11]  ( .D(n46), .CP(\clks.clk ), .Q(
        \data_mem[0][11] ) );
  CFD1QXL \data_mem_reg[0][12]  ( .D(n47), .CP(\clks.clk ), .Q(
        \data_mem[0][12] ) );
  CFD1QXL \data_mem_reg[0][13]  ( .D(n48), .CP(\clks.clk ), .Q(
        \data_mem[0][13] ) );
  CFD1QXL \data_mem_reg[0][14]  ( .D(n49), .CP(\clks.clk ), .Q(
        \data_mem[0][14] ) );
  CFD1QXL \data_mem_reg[0][15]  ( .D(n50), .CP(\clks.clk ), .Q(
        \data_mem[0][15] ) );
  CFD1QXL \data_mem_reg[0][16]  ( .D(n51), .CP(\clks.clk ), .Q(
        \data_mem[0][16] ) );
  CFD1QXL \data_mem_reg[0][17]  ( .D(n52), .CP(\clks.clk ), .Q(
        \data_mem[0][17] ) );
  CFD1QXL \data_mem_reg[0][18]  ( .D(n53), .CP(\clks.clk ), .Q(
        \data_mem[0][18] ) );
  CFD1QXL \data_mem_reg[0][19]  ( .D(n54), .CP(\clks.clk ), .Q(
        \data_mem[0][19] ) );
  CFD1QXL \data_mem_reg[0][20]  ( .D(n55), .CP(\clks.clk ), .Q(
        \data_mem[0][20] ) );
  CFD1QXL \data_mem_reg[0][21]  ( .D(n56), .CP(\clks.clk ), .Q(
        \data_mem[0][21] ) );
  CFD1QXL \data_mem_reg[0][22]  ( .D(n57), .CP(\clks.clk ), .Q(
        \data_mem[0][22] ) );
  CFD1QXL \data_mem_reg[0][23]  ( .D(n58), .CP(\clks.clk ), .Q(
        \data_mem[0][23] ) );
  CFD1QXL \data_mem_reg[0][24]  ( .D(n59), .CP(\clks.clk ), .Q(
        \data_mem[0][24] ) );
  CFD1QXL \data_mem_reg[0][25]  ( .D(n60), .CP(\clks.clk ), .Q(
        \data_mem[0][25] ) );
  CFD1QXL \data_mem_reg[0][26]  ( .D(n61), .CP(\clks.clk ), .Q(
        \data_mem[0][26] ) );
  CFD1QXL \data_mem_reg[0][27]  ( .D(n62), .CP(\clks.clk ), .Q(
        \data_mem[0][27] ) );
  CFD1QXL \data_mem_reg[0][28]  ( .D(n63), .CP(\clks.clk ), .Q(
        \data_mem[0][28] ) );
  CFD1QXL \data_mem_reg[0][29]  ( .D(n64), .CP(\clks.clk ), .Q(
        \data_mem[0][29] ) );
  CFD1QXL \data_mem_reg[0][30]  ( .D(n65), .CP(\clks.clk ), .Q(
        \data_mem[0][30] ) );
  CFD1QXL \data_mem_reg[0][31]  ( .D(n66), .CP(\clks.clk ), .Q(
        \data_mem[0][31] ) );
  CFD2QXL \w_ptr_reg[0]  ( .D(n10), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        \w_ptr[0] ) );
  CFD4QXL \depth_left_reg[1]  ( .D(n9), .CP(\clks.clk ), .SD(\clks.rst ), .Q(
        n67) );
  CFD2QXL \depth_left_reg[0]  ( .D(n8), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        n68) );
  COND1X2 U3 ( .A(n68), .B(n67), .C(push), .Z(n1) );
  CENX1 U4 ( .A(\w_ptr[0] ), .B(n1), .Z(n10) );
  CIVX1 U5 ( .A(n67), .Z(n5) );
  CNR2X1 U6 ( .A(n68), .B(n5), .Z(empty) );
  CIVX2 U7 ( .A(\clks.rst ), .Z(n4) );
  CNR2IX1 U8 ( .B(\data_mem[0][18] ), .A(n4), .Z(data_out[18]) );
  CNR2IX1 U9 ( .B(\data_mem[0][31] ), .A(n4), .Z(data_out[31]) );
  CNR2IX1 U10 ( .B(\data_mem[0][3] ), .A(n4), .Z(data_out[3]) );
  CNR2IX1 U11 ( .B(\data_mem[0][4] ), .A(n4), .Z(data_out[4]) );
  CNR2IX1 U12 ( .B(\data_mem[0][5] ), .A(n4), .Z(data_out[5]) );
  CNR2IX1 U13 ( .B(\data_mem[0][6] ), .A(n4), .Z(data_out[6]) );
  CNR2IX1 U14 ( .B(\data_mem[0][16] ), .A(n4), .Z(data_out[16]) );
  CNR2IX1 U15 ( .B(\data_mem[0][2] ), .A(n4), .Z(data_out[2]) );
  CNR2IX1 U16 ( .B(\data_mem[0][20] ), .A(n4), .Z(data_out[20]) );
  CNR2IX1 U17 ( .B(\data_mem[0][0] ), .A(n4), .Z(data_out[0]) );
  CNR2IX1 U18 ( .B(\data_mem[0][1] ), .A(n4), .Z(data_out[1]) );
  CNR2IX1 U19 ( .B(\data_mem[0][21] ), .A(n4), .Z(data_out[21]) );
  CNR2IX1 U20 ( .B(\data_mem[0][24] ), .A(n4), .Z(data_out[24]) );
  CNR2IX1 U21 ( .B(\data_mem[0][27] ), .A(n4), .Z(data_out[27]) );
  CNR3X4 U22 ( .A(\w_ptr[0] ), .B(n1), .C(n4), .Z(n2) );
  CNIVX20 U23 ( .A(n2), .Z(n3) );
  CMX2X1 U24 ( .A0(\data_mem[0][2] ), .A1(data_in[2]), .S(n3), .Z(n13) );
  CMX2X1 U25 ( .A0(\data_mem[0][5] ), .A1(data_in[5]), .S(n3), .Z(n16) );
  CMX2X1 U26 ( .A0(\data_mem[0][0] ), .A1(data_in[0]), .S(n3), .Z(n11) );
  CMX2X1 U27 ( .A0(\data_mem[0][1] ), .A1(data_in[1]), .S(n3), .Z(n12) );
  CMX2X1 U28 ( .A0(\data_mem[0][6] ), .A1(data_in[6]), .S(n3), .Z(n17) );
  CMX2X1 U29 ( .A0(\data_mem[0][3] ), .A1(data_in[3]), .S(n3), .Z(n14) );
  CMX2X1 U30 ( .A0(\data_mem[0][4] ), .A1(data_in[4]), .S(n3), .Z(n15) );
  CMX2X1 U31 ( .A0(\data_mem[0][31] ), .A1(data_in[31]), .S(n3), .Z(n66) );
  CMX2X1 U32 ( .A0(\data_mem[0][19] ), .A1(data_in[19]), .S(n3), .Z(n54) );
  CMX2X1 U33 ( .A0(\data_mem[0][14] ), .A1(data_in[14]), .S(n3), .Z(n49) );
  CMX2X1 U34 ( .A0(\data_mem[0][25] ), .A1(data_in[25]), .S(n3), .Z(n60) );
  CMX2X1 U35 ( .A0(\data_mem[0][26] ), .A1(data_in[26]), .S(n3), .Z(n61) );
  CMX2X1 U36 ( .A0(\data_mem[0][27] ), .A1(data_in[27]), .S(n3), .Z(n62) );
  CMX2X1 U37 ( .A0(\data_mem[0][28] ), .A1(data_in[28]), .S(n3), .Z(n63) );
  CMX2X1 U38 ( .A0(\data_mem[0][29] ), .A1(data_in[29]), .S(n3), .Z(n64) );
  CMX2X1 U39 ( .A0(\data_mem[0][7] ), .A1(data_in[7]), .S(n3), .Z(n18) );
  CMX2X1 U40 ( .A0(\data_mem[0][21] ), .A1(data_in[21]), .S(n3), .Z(n56) );
  CMX2X1 U41 ( .A0(\data_mem[0][11] ), .A1(data_in[11]), .S(n3), .Z(n46) );
  CMX2X1 U42 ( .A0(\data_mem[0][8] ), .A1(data_in[8]), .S(n3), .Z(n43) );
  CMX2X1 U43 ( .A0(\data_mem[0][9] ), .A1(data_in[9]), .S(n3), .Z(n44) );
  CMX2X1 U44 ( .A0(\data_mem[0][13] ), .A1(data_in[13]), .S(n3), .Z(n48) );
  CMX2X1 U45 ( .A0(\data_mem[0][10] ), .A1(data_in[10]), .S(n3), .Z(n45) );
  CMX2X1 U46 ( .A0(\data_mem[0][23] ), .A1(data_in[23]), .S(n3), .Z(n58) );
  CMX2X1 U47 ( .A0(\data_mem[0][20] ), .A1(data_in[20]), .S(n3), .Z(n55) );
  CMX2X1 U48 ( .A0(\data_mem[0][24] ), .A1(data_in[24]), .S(n3), .Z(n59) );
  CMX2X1 U49 ( .A0(\data_mem[0][22] ), .A1(data_in[22]), .S(n3), .Z(n57) );
  CMX2X1 U50 ( .A0(\data_mem[0][15] ), .A1(data_in[15]), .S(n3), .Z(n50) );
  CMX2X1 U51 ( .A0(\data_mem[0][16] ), .A1(data_in[16]), .S(n3), .Z(n51) );
  CMX2X1 U52 ( .A0(\data_mem[0][30] ), .A1(data_in[30]), .S(n3), .Z(n65) );
  CMX2X1 U53 ( .A0(\data_mem[0][12] ), .A1(data_in[12]), .S(n3), .Z(n47) );
  CMX2X1 U54 ( .A0(\data_mem[0][17] ), .A1(data_in[17]), .S(n3), .Z(n52) );
  CMX2X1 U55 ( .A0(\data_mem[0][18] ), .A1(data_in[18]), .S(n3), .Z(n53) );
  CNR2IX1 U56 ( .B(\data_mem[0][23] ), .A(n4), .Z(data_out[23]) );
  CNR2IX1 U57 ( .B(\data_mem[0][11] ), .A(n4), .Z(data_out[11]) );
  CNR2IX1 U58 ( .B(\data_mem[0][9] ), .A(n4), .Z(data_out[9]) );
  CNR2IX1 U59 ( .B(\data_mem[0][22] ), .A(n4), .Z(data_out[22]) );
  CNR2IX1 U60 ( .B(\data_mem[0][13] ), .A(n4), .Z(data_out[13]) );
  CNR2IX1 U61 ( .B(\data_mem[0][12] ), .A(n4), .Z(data_out[12]) );
  CNR2IX1 U62 ( .B(\data_mem[0][19] ), .A(n4), .Z(data_out[19]) );
  CNR2IX1 U63 ( .B(\data_mem[0][10] ), .A(n4), .Z(data_out[10]) );
  CNR2IX1 U64 ( .B(\data_mem[0][17] ), .A(n4), .Z(data_out[17]) );
  CNR2IX1 U65 ( .B(\data_mem[0][8] ), .A(n4), .Z(data_out[8]) );
  CNR2IX1 U66 ( .B(\data_mem[0][15] ), .A(n4), .Z(data_out[15]) );
  CNR2IX1 U67 ( .B(\data_mem[0][14] ), .A(n4), .Z(data_out[14]) );
  CNR2IX1 U68 ( .B(\data_mem[0][30] ), .A(n4), .Z(data_out[30]) );
  CNR2IX1 U69 ( .B(\data_mem[0][29] ), .A(n4), .Z(data_out[29]) );
  CNR2IX1 U70 ( .B(\data_mem[0][28] ), .A(n4), .Z(data_out[28]) );
  CNR2IX1 U71 ( .B(\data_mem[0][25] ), .A(n4), .Z(data_out[25]) );
  CNR2IX1 U72 ( .B(\data_mem[0][26] ), .A(n4), .Z(data_out[26]) );
  CNR2IX1 U73 ( .B(\data_mem[0][7] ), .A(n4), .Z(data_out[7]) );
  CMX2XL U74 ( .A0(n68), .A1(empty), .S(push), .Z(n8) );
  CIVXL U75 ( .A(n68), .Z(n6) );
  CANR1XL U76 ( .A(push), .B(n6), .C(n5), .Z(n9) );
endmodule


module AXI_master ( \clks.clk , \clks.rst , \raddr_ch.ARID , \raddr_ch.ARADDR , 
        \raddr_ch.ARLEN , \raddr_ch.ARSIZE , \raddr_ch.ARBURST , 
        \raddr_ch.ARLOCK , \raddr_ch.ARCACHE , \raddr_ch.ARPROT , 
        \raddr_ch.ARQOS , \raddr_ch.ARREGION , \raddr_ch.ARUSER , 
        \raddr_ch.ARVALID , \raddr_ch.ARREADY , \rdata_ch.RID , 
        \rdata_ch.RDATA , \rdata_ch.RRESP , \rdata_ch.RLAST , \rdata_ch.RUSER , 
        \rdata_ch.RVALID , \rdata_ch.RREADY , rd, haddr, main_ptr_empty );
  output [3:0] \raddr_ch.ARID ;
  output [31:0] \raddr_ch.ARADDR ;
  output [3:0] \raddr_ch.ARLEN ;
  output [2:0] \raddr_ch.ARSIZE ;
  output [1:0] \raddr_ch.ARBURST ;
  output [1:0] \raddr_ch.ARLOCK ;
  output [3:0] \raddr_ch.ARCACHE ;
  output [2:0] \raddr_ch.ARPROT ;
  input [3:0] \rdata_ch.RID ;
  input [63:0] \rdata_ch.RDATA ;
  input [1:0] \rdata_ch.RRESP ;
  input [63:0] haddr;
  input \clks.clk , \clks.rst , \rdata_ch.RLAST , \rdata_ch.RUSER ,
         \rdata_ch.RVALID , main_ptr_empty;
  output \raddr_ch.ARQOS , \raddr_ch.ARREGION , \raddr_ch.ARUSER ,
         \raddr_ch.ARVALID , \raddr_ch.ARREADY , \rdata_ch.RREADY , rd;
  wire   arvalid_d, arburst_d, \cur_chstate_0[0] , \cur_chstate_1[0] ,
         \cur_chstate_2[0] , \dch_cur_state[0] , N137, link_push_0,
         link_push_1, link_push_2, N568, N569, N570, N571, N572, N573, N574,
         N575, N576, N577, N578, N579, N580, N581, N582, N583, N584, N585,
         N586, N587, N588, N589, N590, N591, N592, N593, N594, N595, N596,
         N597, N598, N599, N600, N601, N602, N603, N604, N605, N606, N607,
         N608, N609, N610, N611, N612, N613, N614, N615, N616, N617, N618,
         N619, N620, N621, N622, N623, N624, N625, N626, N627, N628, N629,
         N630, N631, N633, N634, N635, N636, N637, N638, N639, N640, N641,
         N642, N643, N644, N645, N646, N647, N648, N649, N650, N651, N652,
         N653, N654, N655, N656, N657, N658, N659, N660, N661, N662, N663,
         N664, N665, N666, N667, N668, N669, N670, N671, N672, N673, N674,
         N675, N676, N677, N678, N679, N680, N681, N682, N683, N684, N685,
         N686, N687, N688, N689, N690, N691, N692, N693, N694, N695, N696,
         N698, N699, N700, N701, N702, N703, N704, N705, N706, N707, N708,
         N709, N710, N711, N712, N713, N714, N715, N716, N717, N718, N719,
         N720, N721, N722, N723, N724, N725, N726, N727, N728, N729, N730,
         N731, N732, N733, N734, N735, N736, N737, N738, N739, N740, N741,
         N742, N743, N744, N745, N746, N747, N748, N749, N750, N751, N752,
         N753, N754, N755, N756, N757, N758, N759, N760, N761, link_empty_0,
         link_empty_1, link_empty_2, n40, n122, n127, n129, n680, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n716, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n791, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059;
  wire   [3:0] cur_state;
  wire   [2:0] ch_gnt_d;
  wire   [63:0] pfifo_datain_0_d;
  wire   [63:0] pfifo_datain_1_d;
  wire   [63:0] pfifo_datain_2_d;
  wire   [31:0] link_datain_0_d;
  wire   [31:0] link_datain_1_d;
  wire   [31:0] link_datain_2_d;
  wire   [31:0] link_datain_0;
  wire   [31:0] link_datain_1;
  wire   [31:0] link_datain_2;
  wire   [31:0] haddr0_d;
  wire   [31:0] haddr1_d;
  wire   [31:0] haddr2_d;
  wire   [2:0] ch_gnt_2d;
  wire   [3:0] arid_nxt;
  wire   [2:0] ch_gnt_nxt;
  wire   [31:0] link_dataout_0;
  wire   [31:0] link_dataout_1;
  wire   [31:0] link_dataout_2;
  tri   \clks.clk ;
  tri   \clks.rst ;
  tri   [63:0] pfifo_datain_0;
  tri   [63:0] pfifo_datain_1;
  tri   [63:0] pfifo_datain_2;
  tri   pfifo_push_0;
  tri   pfifo_push_1;
  tri   pfifo_push_2;
  tri   \raddr_ch.ARLEN[3] ;
  assign \raddr_ch.ARID  [3] = 1'b0;
  assign rd = 1'b0;
  assign \raddr_ch.ARID  [2] = 1'b0;
  assign \rdata_ch.RREADY  = \dch_cur_state[0] ;
  assign \raddr_ch.ARLEN  [1] = 1'b1;
  assign \raddr_ch.ARSIZE  [1] = 1'b1;
  assign \raddr_ch.ARSIZE  [0] = 1'b1;
  assign \raddr_ch.ARUSER  = 1'b0;
  assign \raddr_ch.ARREGION  = 1'b0;
  assign \raddr_ch.ARQOS  = 1'b0;
  assign \raddr_ch.ARPROT  [0] = 1'b0;
  assign \raddr_ch.ARPROT  [1] = 1'b0;
  assign \raddr_ch.ARPROT  [2] = 1'b0;
  assign \raddr_ch.ARLOCK  [0] = 1'b0;
  assign \raddr_ch.ARLOCK  [1] = 1'b0;
  assign \raddr_ch.ARBURST  [1] = 1'b0;
  assign \raddr_ch.ARSIZE  [2] = 1'b0;
  assign \raddr_ch.ARLEN  [0] = 1'b0;
  assign \raddr_ch.ARLEN  [2] = 1'b0;
  assign \raddr_ch.ARLEN  [3] = 1'b0;

  dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__0 link_addr_0_fifo ( 
        .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), .push(link_push_0), 
        .pull(1'b0), .data_in(link_datain_0), .data_out(link_dataout_0), 
        .empty(link_empty_0) );
  dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__2 link_addr_1_fifo ( 
        .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), .push(link_push_1), 
        .pull(1'b0), .data_in(link_datain_1), .data_out(link_dataout_1), 
        .empty(link_empty_1) );
  dma_fifo_DWIDTH32_AWIDTH1_I_clks_AXI_clks_to_rtl__1 link_addr_2_fifo ( 
        .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), .push(link_push_2), 
        .pull(1'b0), .data_in(link_datain_2), .data_out(link_dataout_2), 
        .empty(link_empty_2) );
  dma_fifo pkt0_fifo ( .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), 
        .push(pfifo_push_0), .pull(1'b0), .data_in(pfifo_datain_0) );
  dma_fifo pkt1_fifo ( .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), 
        .push(pfifo_push_1), .pull(1'b0), .data_in(pfifo_datain_1) );
  dma_fifo pkt2_fifo ( .\clks.clk (\clks.clk ), .\clks.rst (\clks.rst ), 
        .push(pfifo_push_2), .pull(1'b0), .data_in(pfifo_datain_2) );
  COND11X1 U90 ( .A(1'b0), .B(\cur_chstate_1[0] ), .C(\clks.rst ), .D(1'b1), 
        .Z(n40) );
  COND11X1 U217 ( .A(1'b0), .B(\cur_chstate_0[0] ), .C(\clks.rst ), .D(1'b1), 
        .Z(n122) );
  COND11X1 U258 ( .A(\clks.rst ), .B(cur_state[1]), .C(cur_state[0]), .D(1'b1), 
        .Z(n127) );
  COND11X1 U264 ( .A(1'b0), .B(\cur_chstate_2[0] ), .C(\clks.rst ), .D(1'b1), 
        .Z(n129) );
  CAOR2X1 U712 ( .A(n1052), .B(N696), .C(n1053), .D(pfifo_datain_1_d[63]), .Z(
        pfifo_datain_1[63]) );
  CAOR2X1 U713 ( .A(n1054), .B(N695), .C(n1051), .D(pfifo_datain_1_d[62]), .Z(
        pfifo_datain_1[62]) );
  CAOR2X1 U714 ( .A(n1052), .B(N694), .C(n1051), .D(pfifo_datain_1_d[61]), .Z(
        pfifo_datain_1[61]) );
  CAOR2X1 U715 ( .A(n1054), .B(N693), .C(n1051), .D(pfifo_datain_1_d[60]), .Z(
        pfifo_datain_1[60]) );
  CAOR2X1 U716 ( .A(n1052), .B(N692), .C(n1053), .D(pfifo_datain_1_d[59]), .Z(
        pfifo_datain_1[59]) );
  CAOR2X1 U717 ( .A(n1054), .B(N691), .C(n1053), .D(pfifo_datain_1_d[58]), .Z(
        pfifo_datain_1[58]) );
  CAOR2X1 U718 ( .A(n1054), .B(N690), .C(n1051), .D(pfifo_datain_1_d[57]), .Z(
        pfifo_datain_1[57]) );
  CAOR2X1 U719 ( .A(n1052), .B(N689), .C(n1053), .D(pfifo_datain_1_d[56]), .Z(
        pfifo_datain_1[56]) );
  CAOR2X1 U720 ( .A(n850), .B(N688), .C(n1051), .D(pfifo_datain_1_d[55]), .Z(
        pfifo_datain_1[55]) );
  CAOR2X1 U721 ( .A(n1052), .B(N687), .C(n1053), .D(pfifo_datain_1_d[54]), .Z(
        pfifo_datain_1[54]) );
  CAOR2X1 U722 ( .A(n1054), .B(N686), .C(n1051), .D(pfifo_datain_1_d[53]), .Z(
        pfifo_datain_1[53]) );
  CAOR2X1 U723 ( .A(n1052), .B(N685), .C(n1051), .D(pfifo_datain_1_d[52]), .Z(
        pfifo_datain_1[52]) );
  CAOR2X1 U724 ( .A(n1052), .B(N684), .C(n1053), .D(pfifo_datain_1_d[51]), .Z(
        pfifo_datain_1[51]) );
  CAOR2X1 U725 ( .A(n1054), .B(N683), .C(n1053), .D(pfifo_datain_1_d[50]), .Z(
        pfifo_datain_1[50]) );
  CAOR2X1 U726 ( .A(n1052), .B(N682), .C(n1053), .D(pfifo_datain_1_d[49]), .Z(
        pfifo_datain_1[49]) );
  CAOR2X1 U727 ( .A(n1054), .B(N681), .C(n1053), .D(pfifo_datain_1_d[48]), .Z(
        pfifo_datain_1[48]) );
  CAOR2X1 U728 ( .A(n1052), .B(N680), .C(n1051), .D(pfifo_datain_1_d[47]), .Z(
        pfifo_datain_1[47]) );
  CAOR2X1 U729 ( .A(n850), .B(N679), .C(n1051), .D(pfifo_datain_1_d[46]), .Z(
        pfifo_datain_1[46]) );
  CAOR2X1 U730 ( .A(n1054), .B(N678), .C(n1051), .D(pfifo_datain_1_d[45]), .Z(
        pfifo_datain_1[45]) );
  CAOR2X1 U731 ( .A(n1054), .B(N677), .C(n1053), .D(pfifo_datain_1_d[44]), .Z(
        pfifo_datain_1[44]) );
  CAOR2X1 U732 ( .A(n850), .B(N676), .C(n1051), .D(pfifo_datain_1_d[43]), .Z(
        pfifo_datain_1[43]) );
  CAOR2X1 U733 ( .A(n1054), .B(N675), .C(n1051), .D(pfifo_datain_1_d[42]), .Z(
        pfifo_datain_1[42]) );
  CAOR2X1 U734 ( .A(n1052), .B(N674), .C(n1053), .D(pfifo_datain_1_d[41]), .Z(
        pfifo_datain_1[41]) );
  CAOR2X1 U735 ( .A(n1052), .B(N673), .C(n1053), .D(pfifo_datain_1_d[40]), .Z(
        pfifo_datain_1[40]) );
  CAOR2X1 U736 ( .A(n1054), .B(N672), .C(n1051), .D(pfifo_datain_1_d[39]), .Z(
        pfifo_datain_1[39]) );
  CAOR2X1 U737 ( .A(n1052), .B(N671), .C(n1053), .D(pfifo_datain_1_d[38]), .Z(
        pfifo_datain_1[38]) );
  CAOR2X1 U738 ( .A(n1052), .B(N670), .C(n1053), .D(pfifo_datain_1_d[37]), .Z(
        pfifo_datain_1[37]) );
  CAOR2X1 U739 ( .A(n1054), .B(N669), .C(n1053), .D(pfifo_datain_1_d[36]), .Z(
        pfifo_datain_1[36]) );
  CAOR2X1 U740 ( .A(n1054), .B(N668), .C(n1053), .D(pfifo_datain_1_d[35]), .Z(
        pfifo_datain_1[35]) );
  CAOR2X1 U741 ( .A(n850), .B(N667), .C(n1051), .D(pfifo_datain_1_d[34]), .Z(
        pfifo_datain_1[34]) );
  CAOR2X1 U742 ( .A(n1052), .B(N666), .C(n1051), .D(pfifo_datain_1_d[33]), .Z(
        pfifo_datain_1[33]) );
  CAOR2X1 U743 ( .A(n1052), .B(N665), .C(n1053), .D(pfifo_datain_1_d[32]), .Z(
        pfifo_datain_1[32]) );
  CAOR2X1 U744 ( .A(n1054), .B(N664), .C(n1051), .D(pfifo_datain_1_d[31]), .Z(
        pfifo_datain_1[31]) );
  CAOR2X1 U745 ( .A(n850), .B(N663), .C(n1051), .D(pfifo_datain_1_d[30]), .Z(
        pfifo_datain_1[30]) );
  CAOR2X1 U746 ( .A(n1052), .B(N662), .C(n1051), .D(pfifo_datain_1_d[29]), .Z(
        pfifo_datain_1[29]) );
  CAOR2X1 U747 ( .A(n1054), .B(N661), .C(n1053), .D(pfifo_datain_1_d[28]), .Z(
        pfifo_datain_1[28]) );
  CAOR2X1 U748 ( .A(n850), .B(N660), .C(n1053), .D(pfifo_datain_1_d[27]), .Z(
        pfifo_datain_1[27]) );
  CAOR2X1 U749 ( .A(n1052), .B(N659), .C(n1053), .D(pfifo_datain_1_d[26]), .Z(
        pfifo_datain_1[26]) );
  CAOR2X1 U750 ( .A(n1054), .B(N658), .C(n1053), .D(pfifo_datain_1_d[25]), .Z(
        pfifo_datain_1[25]) );
  CAOR2X1 U751 ( .A(n1054), .B(N657), .C(n1051), .D(pfifo_datain_1_d[24]), .Z(
        pfifo_datain_1[24]) );
  CAOR2X1 U752 ( .A(n1054), .B(N656), .C(n1053), .D(pfifo_datain_1_d[23]), .Z(
        pfifo_datain_1[23]) );
  CAOR2X1 U753 ( .A(n1052), .B(N655), .C(n1051), .D(pfifo_datain_1_d[22]), .Z(
        pfifo_datain_1[22]) );
  CAOR2X1 U754 ( .A(n1054), .B(N654), .C(n1053), .D(pfifo_datain_1_d[21]), .Z(
        pfifo_datain_1[21]) );
  CAOR2X1 U755 ( .A(n1052), .B(N653), .C(n1051), .D(pfifo_datain_1_d[20]), .Z(
        pfifo_datain_1[20]) );
  CAOR2X1 U756 ( .A(n1052), .B(N652), .C(n1051), .D(pfifo_datain_1_d[19]), .Z(
        pfifo_datain_1[19]) );
  CAOR2X1 U757 ( .A(n1054), .B(N651), .C(n1053), .D(pfifo_datain_1_d[18]), .Z(
        pfifo_datain_1[18]) );
  CAOR2X1 U758 ( .A(n1052), .B(N650), .C(n1051), .D(pfifo_datain_1_d[17]), .Z(
        pfifo_datain_1[17]) );
  CAOR2X1 U759 ( .A(n1052), .B(N649), .C(n1051), .D(pfifo_datain_1_d[16]), .Z(
        pfifo_datain_1[16]) );
  CAOR2X1 U760 ( .A(n1054), .B(N648), .C(n1053), .D(pfifo_datain_1_d[15]), .Z(
        pfifo_datain_1[15]) );
  CAOR2X1 U761 ( .A(n1054), .B(N647), .C(n1053), .D(pfifo_datain_1_d[14]), .Z(
        pfifo_datain_1[14]) );
  CAOR2X1 U762 ( .A(n1054), .B(N646), .C(n1053), .D(pfifo_datain_1_d[13]), .Z(
        pfifo_datain_1[13]) );
  CAOR2X1 U763 ( .A(n850), .B(N645), .C(n1051), .D(pfifo_datain_1_d[12]), .Z(
        pfifo_datain_1[12]) );
  CAOR2X1 U764 ( .A(n1052), .B(N644), .C(n1051), .D(pfifo_datain_1_d[11]), .Z(
        pfifo_datain_1[11]) );
  CAOR2X1 U765 ( .A(n1054), .B(N643), .C(n1053), .D(pfifo_datain_1_d[10]), .Z(
        pfifo_datain_1[10]) );
  CAOR2X1 U766 ( .A(n850), .B(N642), .C(n1051), .D(pfifo_datain_1_d[9]), .Z(
        pfifo_datain_1[9]) );
  CAOR2X1 U767 ( .A(n1052), .B(N641), .C(n1053), .D(pfifo_datain_1_d[8]), .Z(
        pfifo_datain_1[8]) );
  CAOR2X1 U768 ( .A(n850), .B(N640), .C(n1051), .D(pfifo_datain_1_d[7]), .Z(
        pfifo_datain_1[7]) );
  CAOR2X1 U769 ( .A(n1054), .B(N639), .C(n1051), .D(pfifo_datain_1_d[6]), .Z(
        pfifo_datain_1[6]) );
  CAOR2X1 U770 ( .A(n1054), .B(N638), .C(n1053), .D(pfifo_datain_1_d[5]), .Z(
        pfifo_datain_1[5]) );
  CAOR2X1 U771 ( .A(n850), .B(N637), .C(n1051), .D(pfifo_datain_1_d[4]), .Z(
        pfifo_datain_1[4]) );
  CAOR2X1 U772 ( .A(n1054), .B(N636), .C(n1053), .D(pfifo_datain_1_d[3]), .Z(
        pfifo_datain_1[3]) );
  CAOR2X1 U773 ( .A(n1052), .B(N635), .C(n1051), .D(pfifo_datain_1_d[2]), .Z(
        pfifo_datain_1[2]) );
  CAOR2X1 U774 ( .A(n1052), .B(N634), .C(n1051), .D(pfifo_datain_1_d[1]), .Z(
        pfifo_datain_1[1]) );
  CAOR2X1 U775 ( .A(n1052), .B(N633), .C(n1053), .D(pfifo_datain_1_d[0]), .Z(
        pfifo_datain_1[0]) );
  CAOR2X1 U777 ( .A(n1052), .B(N631), .C(n1053), .D(pfifo_datain_0_d[63]), .Z(
        pfifo_datain_0[63]) );
  CAOR2X1 U778 ( .A(n1054), .B(N630), .C(n1051), .D(pfifo_datain_0_d[62]), .Z(
        pfifo_datain_0[62]) );
  CAOR2X1 U779 ( .A(n1054), .B(N629), .C(n1053), .D(pfifo_datain_0_d[61]), .Z(
        pfifo_datain_0[61]) );
  CAOR2X1 U780 ( .A(n850), .B(N628), .C(n1051), .D(pfifo_datain_0_d[60]), .Z(
        pfifo_datain_0[60]) );
  CAOR2X1 U781 ( .A(n1052), .B(N627), .C(n1053), .D(pfifo_datain_0_d[59]), .Z(
        pfifo_datain_0[59]) );
  CAOR2X1 U782 ( .A(n1052), .B(N626), .C(n1053), .D(pfifo_datain_0_d[58]), .Z(
        pfifo_datain_0[58]) );
  CAOR2X1 U783 ( .A(n1052), .B(N625), .C(n1051), .D(pfifo_datain_0_d[57]), .Z(
        pfifo_datain_0[57]) );
  CAOR2X1 U784 ( .A(n1054), .B(N624), .C(n1051), .D(pfifo_datain_0_d[56]), .Z(
        pfifo_datain_0[56]) );
  CAOR2X1 U785 ( .A(n850), .B(N623), .C(n1053), .D(pfifo_datain_0_d[55]), .Z(
        pfifo_datain_0[55]) );
  CAOR2X1 U786 ( .A(n1052), .B(N622), .C(n1051), .D(pfifo_datain_0_d[54]), .Z(
        pfifo_datain_0[54]) );
  CAOR2X1 U787 ( .A(n1052), .B(N621), .C(n1051), .D(pfifo_datain_0_d[53]), .Z(
        pfifo_datain_0[53]) );
  CAOR2X1 U788 ( .A(n1054), .B(N620), .C(n1051), .D(pfifo_datain_0_d[52]), .Z(
        pfifo_datain_0[52]) );
  CAOR2X1 U789 ( .A(n1052), .B(N619), .C(n1053), .D(pfifo_datain_0_d[51]), .Z(
        pfifo_datain_0[51]) );
  CAOR2X1 U790 ( .A(n1054), .B(N618), .C(n1053), .D(pfifo_datain_0_d[50]), .Z(
        pfifo_datain_0[50]) );
  CAOR2X1 U791 ( .A(n1054), .B(N617), .C(n1053), .D(pfifo_datain_0_d[49]), .Z(
        pfifo_datain_0[49]) );
  CAOR2X1 U792 ( .A(n1052), .B(N616), .C(n1051), .D(pfifo_datain_0_d[48]), .Z(
        pfifo_datain_0[48]) );
  CAOR2X1 U793 ( .A(n850), .B(N615), .C(n1053), .D(pfifo_datain_0_d[47]), .Z(
        pfifo_datain_0[47]) );
  CAOR2X1 U794 ( .A(n1052), .B(N614), .C(n1051), .D(pfifo_datain_0_d[46]), .Z(
        pfifo_datain_0[46]) );
  CAOR2X1 U795 ( .A(n1054), .B(N613), .C(n1053), .D(pfifo_datain_0_d[45]), .Z(
        pfifo_datain_0[45]) );
  CAOR2X1 U796 ( .A(n1052), .B(N612), .C(n1053), .D(pfifo_datain_0_d[44]), .Z(
        pfifo_datain_0[44]) );
  CAOR2X1 U797 ( .A(n1052), .B(N611), .C(n1053), .D(pfifo_datain_0_d[43]), .Z(
        pfifo_datain_0[43]) );
  CAOR2X1 U798 ( .A(n1054), .B(N610), .C(n1053), .D(pfifo_datain_0_d[42]), .Z(
        pfifo_datain_0[42]) );
  CAOR2X1 U799 ( .A(n1052), .B(N609), .C(n1053), .D(pfifo_datain_0_d[41]), .Z(
        pfifo_datain_0[41]) );
  CAOR2X1 U800 ( .A(n1054), .B(N608), .C(n1051), .D(pfifo_datain_0_d[40]), .Z(
        pfifo_datain_0[40]) );
  CAOR2X1 U801 ( .A(n1052), .B(N607), .C(n1051), .D(pfifo_datain_0_d[39]), .Z(
        pfifo_datain_0[39]) );
  CAOR2X1 U802 ( .A(n1054), .B(N606), .C(n1053), .D(pfifo_datain_0_d[38]), .Z(
        pfifo_datain_0[38]) );
  CAOR2X1 U803 ( .A(n850), .B(N605), .C(n1051), .D(pfifo_datain_0_d[37]), .Z(
        pfifo_datain_0[37]) );
  CAOR2X1 U804 ( .A(n1054), .B(N604), .C(n1053), .D(pfifo_datain_0_d[36]), .Z(
        pfifo_datain_0[36]) );
  CAOR2X1 U805 ( .A(n850), .B(N603), .C(n1051), .D(pfifo_datain_0_d[35]), .Z(
        pfifo_datain_0[35]) );
  CAOR2X1 U806 ( .A(n1054), .B(N602), .C(n1053), .D(pfifo_datain_0_d[34]), .Z(
        pfifo_datain_0[34]) );
  CAOR2X1 U807 ( .A(n1054), .B(N601), .C(n1051), .D(pfifo_datain_0_d[33]), .Z(
        pfifo_datain_0[33]) );
  CAOR2X1 U808 ( .A(n850), .B(N600), .C(n1051), .D(pfifo_datain_0_d[32]), .Z(
        pfifo_datain_0[32]) );
  CAOR2X1 U809 ( .A(n1054), .B(N599), .C(n1053), .D(pfifo_datain_0_d[31]), .Z(
        pfifo_datain_0[31]) );
  CAOR2X1 U810 ( .A(n1052), .B(N598), .C(n1051), .D(pfifo_datain_0_d[30]), .Z(
        pfifo_datain_0[30]) );
  CAOR2X1 U811 ( .A(n1054), .B(N597), .C(n1051), .D(pfifo_datain_0_d[29]), .Z(
        pfifo_datain_0[29]) );
  CAOR2X1 U812 ( .A(n1052), .B(N596), .C(n1053), .D(pfifo_datain_0_d[28]), .Z(
        pfifo_datain_0[28]) );
  CAOR2X1 U813 ( .A(n1052), .B(N595), .C(n1053), .D(pfifo_datain_0_d[27]), .Z(
        pfifo_datain_0[27]) );
  CAOR2X1 U814 ( .A(n1054), .B(N594), .C(n1053), .D(pfifo_datain_0_d[26]), .Z(
        pfifo_datain_0[26]) );
  CAOR2X1 U815 ( .A(n1054), .B(N593), .C(n1051), .D(pfifo_datain_0_d[25]), .Z(
        pfifo_datain_0[25]) );
  CAOR2X1 U816 ( .A(n850), .B(N592), .C(n1051), .D(pfifo_datain_0_d[24]), .Z(
        pfifo_datain_0[24]) );
  CAOR2X1 U817 ( .A(n1052), .B(N591), .C(n1051), .D(pfifo_datain_0_d[23]), .Z(
        pfifo_datain_0[23]) );
  CAOR2X1 U818 ( .A(n1054), .B(N590), .C(n1051), .D(pfifo_datain_0_d[22]), .Z(
        pfifo_datain_0[22]) );
  CAOR2X1 U819 ( .A(n1054), .B(N589), .C(n1053), .D(pfifo_datain_0_d[21]), .Z(
        pfifo_datain_0[21]) );
  CAOR2X1 U820 ( .A(n1052), .B(N588), .C(n1053), .D(pfifo_datain_0_d[20]), .Z(
        pfifo_datain_0[20]) );
  CAOR2X1 U821 ( .A(n850), .B(N587), .C(n1051), .D(pfifo_datain_0_d[19]), .Z(
        pfifo_datain_0[19]) );
  CAOR2X1 U822 ( .A(n1052), .B(N586), .C(n1053), .D(pfifo_datain_0_d[18]), .Z(
        pfifo_datain_0[18]) );
  CAOR2X1 U823 ( .A(n1054), .B(N585), .C(n1051), .D(pfifo_datain_0_d[17]), .Z(
        pfifo_datain_0[17]) );
  CAOR2X1 U824 ( .A(n1052), .B(N584), .C(n1053), .D(pfifo_datain_0_d[16]), .Z(
        pfifo_datain_0[16]) );
  CAOR2X1 U825 ( .A(n1052), .B(N583), .C(n1051), .D(pfifo_datain_0_d[15]), .Z(
        pfifo_datain_0[15]) );
  CAOR2X1 U826 ( .A(n1054), .B(N582), .C(n1051), .D(pfifo_datain_0_d[14]), .Z(
        pfifo_datain_0[14]) );
  CAOR2X1 U827 ( .A(n1052), .B(N581), .C(n1051), .D(pfifo_datain_0_d[13]), .Z(
        pfifo_datain_0[13]) );
  CAOR2X1 U828 ( .A(n1054), .B(N580), .C(n1053), .D(pfifo_datain_0_d[12]), .Z(
        pfifo_datain_0[12]) );
  CAOR2X1 U829 ( .A(n1052), .B(N579), .C(n1053), .D(pfifo_datain_0_d[11]), .Z(
        pfifo_datain_0[11]) );
  CAOR2X1 U830 ( .A(n1054), .B(N578), .C(n1051), .D(pfifo_datain_0_d[10]), .Z(
        pfifo_datain_0[10]) );
  CAOR2X1 U831 ( .A(n850), .B(N577), .C(n1053), .D(pfifo_datain_0_d[9]), .Z(
        pfifo_datain_0[9]) );
  CAOR2X1 U832 ( .A(n1054), .B(N576), .C(n1053), .D(pfifo_datain_0_d[8]), .Z(
        pfifo_datain_0[8]) );
  CAOR2X1 U833 ( .A(n850), .B(N575), .C(n1053), .D(pfifo_datain_0_d[7]), .Z(
        pfifo_datain_0[7]) );
  CAOR2X1 U834 ( .A(n1054), .B(N574), .C(n1051), .D(pfifo_datain_0_d[6]), .Z(
        pfifo_datain_0[6]) );
  CAOR2X1 U835 ( .A(n1054), .B(N573), .C(n1053), .D(pfifo_datain_0_d[5]), .Z(
        pfifo_datain_0[5]) );
  CAOR2X1 U836 ( .A(n850), .B(N572), .C(n1051), .D(pfifo_datain_0_d[4]), .Z(
        pfifo_datain_0[4]) );
  CAOR2X1 U837 ( .A(n1054), .B(N571), .C(n1051), .D(pfifo_datain_0_d[3]), .Z(
        pfifo_datain_0[3]) );
  CAOR2X1 U838 ( .A(n1052), .B(N570), .C(n1053), .D(pfifo_datain_0_d[2]), .Z(
        pfifo_datain_0[2]) );
  CAOR2X1 U839 ( .A(n1052), .B(N569), .C(n1051), .D(pfifo_datain_0_d[1]), .Z(
        pfifo_datain_0[1]) );
  CAOR2X1 U840 ( .A(n1054), .B(N568), .C(n1053), .D(pfifo_datain_0_d[0]), .Z(
        pfifo_datain_0[0]) );
  CAOR2X1 U841 ( .A(n1055), .B(n1052), .C(1'b0), .D(n1051), .Z(pfifo_push_2)
         );
  CAOR2X1 U842 ( .A(n1052), .B(N761), .C(n1053), .D(pfifo_datain_2_d[63]), .Z(
        pfifo_datain_2[63]) );
  CAOR2X1 U843 ( .A(n1054), .B(N760), .C(n1051), .D(pfifo_datain_2_d[62]), .Z(
        pfifo_datain_2[62]) );
  CAOR2X1 U844 ( .A(n1054), .B(N759), .C(n1051), .D(pfifo_datain_2_d[61]), .Z(
        pfifo_datain_2[61]) );
  CAOR2X1 U845 ( .A(n1052), .B(N758), .C(n1053), .D(pfifo_datain_2_d[60]), .Z(
        pfifo_datain_2[60]) );
  CAOR2X1 U846 ( .A(n1052), .B(N757), .C(n1053), .D(pfifo_datain_2_d[59]), .Z(
        pfifo_datain_2[59]) );
  CAOR2X1 U847 ( .A(n1052), .B(N756), .C(n1053), .D(pfifo_datain_2_d[58]), .Z(
        pfifo_datain_2[58]) );
  CAOR2X1 U848 ( .A(n1054), .B(N755), .C(n1051), .D(pfifo_datain_2_d[57]), .Z(
        pfifo_datain_2[57]) );
  CAOR2X1 U849 ( .A(n850), .B(N754), .C(n1051), .D(pfifo_datain_2_d[56]), .Z(
        pfifo_datain_2[56]) );
  CAOR2X1 U850 ( .A(n1054), .B(N753), .C(n1051), .D(pfifo_datain_2_d[55]), .Z(
        pfifo_datain_2[55]) );
  CAOR2X1 U851 ( .A(n1052), .B(N752), .C(n1053), .D(pfifo_datain_2_d[54]), .Z(
        pfifo_datain_2[54]) );
  CAOR2X1 U852 ( .A(n1054), .B(N751), .C(n1051), .D(pfifo_datain_2_d[53]), .Z(
        pfifo_datain_2[53]) );
  CAOR2X1 U853 ( .A(n850), .B(N750), .C(n1051), .D(pfifo_datain_2_d[52]), .Z(
        pfifo_datain_2[52]) );
  CAOR2X1 U854 ( .A(n1054), .B(N749), .C(n1053), .D(pfifo_datain_2_d[51]), .Z(
        pfifo_datain_2[51]) );
  CAOR2X1 U855 ( .A(n1054), .B(N748), .C(n1051), .D(pfifo_datain_2_d[50]), .Z(
        pfifo_datain_2[50]) );
  CAOR2X1 U856 ( .A(n1052), .B(N747), .C(n1051), .D(pfifo_datain_2_d[49]), .Z(
        pfifo_datain_2[49]) );
  CAOR2X1 U857 ( .A(n1052), .B(N746), .C(n1053), .D(pfifo_datain_2_d[48]), .Z(
        pfifo_datain_2[48]) );
  CAOR2X1 U858 ( .A(n1052), .B(N745), .C(n1051), .D(pfifo_datain_2_d[47]), .Z(
        pfifo_datain_2[47]) );
  CAOR2X1 U859 ( .A(n1054), .B(N744), .C(n1053), .D(pfifo_datain_2_d[46]), .Z(
        pfifo_datain_2[46]) );
  CAOR2X1 U860 ( .A(n1052), .B(N743), .C(n1053), .D(pfifo_datain_2_d[45]), .Z(
        pfifo_datain_2[45]) );
  CAOR2X1 U861 ( .A(n850), .B(N742), .C(n1051), .D(pfifo_datain_2_d[44]), .Z(
        pfifo_datain_2[44]) );
  CAOR2X1 U862 ( .A(n1054), .B(N741), .C(n1051), .D(pfifo_datain_2_d[43]), .Z(
        pfifo_datain_2[43]) );
  CAOR2X1 U863 ( .A(n1052), .B(N740), .C(n1053), .D(pfifo_datain_2_d[42]), .Z(
        pfifo_datain_2[42]) );
  CAOR2X1 U864 ( .A(n1054), .B(N739), .C(n1051), .D(pfifo_datain_2_d[41]), .Z(
        pfifo_datain_2[41]) );
  CAOR2X1 U865 ( .A(n1052), .B(N738), .C(n1051), .D(pfifo_datain_2_d[40]), .Z(
        pfifo_datain_2[40]) );
  CAOR2X1 U866 ( .A(n1054), .B(N737), .C(n1053), .D(pfifo_datain_2_d[39]), .Z(
        pfifo_datain_2[39]) );
  CAOR2X1 U867 ( .A(n850), .B(N736), .C(n1053), .D(pfifo_datain_2_d[38]), .Z(
        pfifo_datain_2[38]) );
  CAOR2X1 U868 ( .A(n1052), .B(N735), .C(n1053), .D(pfifo_datain_2_d[37]), .Z(
        pfifo_datain_2[37]) );
  CAOR2X1 U869 ( .A(n1052), .B(N734), .C(n1053), .D(pfifo_datain_2_d[36]), .Z(
        pfifo_datain_2[36]) );
  CAOR2X1 U870 ( .A(n1054), .B(N733), .C(n1053), .D(pfifo_datain_2_d[35]), .Z(
        pfifo_datain_2[35]) );
  CAOR2X1 U871 ( .A(n1054), .B(N732), .C(n1051), .D(pfifo_datain_2_d[34]), .Z(
        pfifo_datain_2[34]) );
  CAOR2X1 U872 ( .A(n1052), .B(N731), .C(n1053), .D(pfifo_datain_2_d[33]), .Z(
        pfifo_datain_2[33]) );
  CAOR2X1 U873 ( .A(n850), .B(N730), .C(n1053), .D(pfifo_datain_2_d[32]), .Z(
        pfifo_datain_2[32]) );
  CAOR2X1 U874 ( .A(n1054), .B(N729), .C(n1051), .D(pfifo_datain_2_d[31]), .Z(
        pfifo_datain_2[31]) );
  CAOR2X1 U875 ( .A(n1052), .B(N728), .C(n1053), .D(pfifo_datain_2_d[30]), .Z(
        pfifo_datain_2[30]) );
  CAOR2X1 U876 ( .A(n850), .B(N727), .C(n1051), .D(pfifo_datain_2_d[29]), .Z(
        pfifo_datain_2[29]) );
  CAOR2X1 U877 ( .A(n1054), .B(N726), .C(n1053), .D(pfifo_datain_2_d[28]), .Z(
        pfifo_datain_2[28]) );
  CAOR2X1 U878 ( .A(n1054), .B(N725), .C(n1051), .D(pfifo_datain_2_d[27]), .Z(
        pfifo_datain_2[27]) );
  CAOR2X1 U879 ( .A(n1052), .B(N724), .C(n1051), .D(pfifo_datain_2_d[26]), .Z(
        pfifo_datain_2[26]) );
  CAOR2X1 U880 ( .A(n1052), .B(N723), .C(n1053), .D(pfifo_datain_2_d[25]), .Z(
        pfifo_datain_2[25]) );
  CAOR2X1 U881 ( .A(n1054), .B(N722), .C(n1051), .D(pfifo_datain_2_d[24]), .Z(
        pfifo_datain_2[24]) );
  CAOR2X1 U882 ( .A(n1052), .B(N721), .C(n1051), .D(pfifo_datain_2_d[23]), .Z(
        pfifo_datain_2[23]) );
  CAOR2X1 U883 ( .A(n1052), .B(N720), .C(n1051), .D(pfifo_datain_2_d[22]), .Z(
        pfifo_datain_2[22]) );
  CAOR2X1 U884 ( .A(n1052), .B(N719), .C(n1053), .D(pfifo_datain_2_d[21]), .Z(
        pfifo_datain_2[21]) );
  CAOR2X1 U885 ( .A(n1054), .B(N718), .C(n1053), .D(pfifo_datain_2_d[20]), .Z(
        pfifo_datain_2[20]) );
  CAOR2X1 U886 ( .A(n1054), .B(N717), .C(n1051), .D(pfifo_datain_2_d[19]), .Z(
        pfifo_datain_2[19]) );
  CAOR2X1 U887 ( .A(n1054), .B(N716), .C(n1053), .D(pfifo_datain_2_d[18]), .Z(
        pfifo_datain_2[18]) );
  CAOR2X1 U888 ( .A(n1052), .B(N715), .C(n1051), .D(pfifo_datain_2_d[17]), .Z(
        pfifo_datain_2[17]) );
  CAOR2X1 U889 ( .A(n1052), .B(N714), .C(n1051), .D(pfifo_datain_2_d[16]), .Z(
        pfifo_datain_2[16]) );
  CAOR2X1 U890 ( .A(n850), .B(N713), .C(n1053), .D(pfifo_datain_2_d[15]), .Z(
        pfifo_datain_2[15]) );
  CAOR2X1 U891 ( .A(n1054), .B(N712), .C(n1051), .D(pfifo_datain_2_d[14]), .Z(
        pfifo_datain_2[14]) );
  CAOR2X1 U892 ( .A(n1052), .B(N711), .C(n1051), .D(pfifo_datain_2_d[13]), .Z(
        pfifo_datain_2[13]) );
  CAOR2X1 U893 ( .A(n1054), .B(N710), .C(n1053), .D(pfifo_datain_2_d[12]), .Z(
        pfifo_datain_2[12]) );
  CAOR2X1 U894 ( .A(n1054), .B(N709), .C(n1051), .D(pfifo_datain_2_d[11]), .Z(
        pfifo_datain_2[11]) );
  CAOR2X1 U895 ( .A(n1052), .B(N708), .C(n1053), .D(pfifo_datain_2_d[10]), .Z(
        pfifo_datain_2[10]) );
  CAOR2X1 U896 ( .A(n1052), .B(N707), .C(n1053), .D(pfifo_datain_2_d[9]), .Z(
        pfifo_datain_2[9]) );
  CAOR2X1 U897 ( .A(n1052), .B(N706), .C(n1051), .D(pfifo_datain_2_d[8]), .Z(
        pfifo_datain_2[8]) );
  CAOR2X1 U898 ( .A(n1054), .B(N705), .C(n1051), .D(pfifo_datain_2_d[7]), .Z(
        pfifo_datain_2[7]) );
  CAOR2X1 U899 ( .A(n850), .B(N704), .C(n1053), .D(pfifo_datain_2_d[6]), .Z(
        pfifo_datain_2[6]) );
  CAOR2X1 U900 ( .A(n1052), .B(N703), .C(n1051), .D(pfifo_datain_2_d[5]), .Z(
        pfifo_datain_2[5]) );
  CAOR2X1 U901 ( .A(n1054), .B(N702), .C(n1051), .D(pfifo_datain_2_d[4]), .Z(
        pfifo_datain_2[4]) );
  CAOR2X1 U902 ( .A(n1054), .B(N701), .C(n1053), .D(pfifo_datain_2_d[3]), .Z(
        pfifo_datain_2[3]) );
  CAOR2X1 U903 ( .A(n850), .B(N700), .C(n1053), .D(pfifo_datain_2_d[2]), .Z(
        pfifo_datain_2[2]) );
  CAOR2X1 U904 ( .A(n1052), .B(N699), .C(n1053), .D(pfifo_datain_2_d[1]), .Z(
        pfifo_datain_2[1]) );
  CAOR2X1 U905 ( .A(n1052), .B(N698), .C(n1051), .D(pfifo_datain_2_d[0]), .Z(
        pfifo_datain_2[0]) );
  CFD2QXL arvalid_d_reg ( .D(\raddr_ch.ARVALID ), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(arvalid_d) );
  CFD2QXL \arid_d_reg[1]  ( .D(arid_nxt[1]), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\raddr_ch.ARID [1]) );
  CFD2QXL \link_datain_1_d_reg[31]  ( .D(link_datain_1[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[31]) );
  CFD2QXL \link_datain_1_d_reg[30]  ( .D(link_datain_1[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[30]) );
  CFD2QXL \link_datain_1_d_reg[29]  ( .D(link_datain_1[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[29]) );
  CFD2QXL \link_datain_1_d_reg[28]  ( .D(link_datain_1[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[28]) );
  CFD2QXL \link_datain_1_d_reg[27]  ( .D(link_datain_1[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[27]) );
  CFD2QXL \link_datain_1_d_reg[26]  ( .D(link_datain_1[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[26]) );
  CFD2QXL \link_datain_1_d_reg[25]  ( .D(link_datain_1[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[25]) );
  CFD2QXL \link_datain_1_d_reg[24]  ( .D(link_datain_1[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[24]) );
  CFD2QXL \link_datain_1_d_reg[23]  ( .D(link_datain_1[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[23]) );
  CFD2QXL arburst_d_reg ( .D(\raddr_ch.ARBURST [0]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(arburst_d) );
  CFD2QXL \link_datain_0_d_reg[31]  ( .D(link_datain_0[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[31]) );
  CFD2QXL \link_datain_0_d_reg[30]  ( .D(link_datain_0[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[30]) );
  CFD2QXL \link_datain_0_d_reg[29]  ( .D(link_datain_0[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[29]) );
  CFD2QXL \link_datain_0_d_reg[28]  ( .D(link_datain_0[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[28]) );
  CFD2QXL \link_datain_0_d_reg[27]  ( .D(link_datain_0[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[27]) );
  CFD2QXL \link_datain_0_d_reg[26]  ( .D(link_datain_0[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[26]) );
  CFD2QXL \link_datain_0_d_reg[25]  ( .D(link_datain_0[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[25]) );
  CFD2QXL \link_datain_0_d_reg[24]  ( .D(link_datain_0[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[24]) );
  CFD2QXL \link_datain_0_d_reg[23]  ( .D(link_datain_0[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[23]) );
  CFD2QXL \link_datain_0_d_reg[22]  ( .D(link_datain_0[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[22]) );
  CFD2QXL \link_datain_0_d_reg[21]  ( .D(link_datain_0[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[21]) );
  CFD2QXL \link_datain_0_d_reg[20]  ( .D(link_datain_0[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[20]) );
  CFD2QXL \link_datain_0_d_reg[19]  ( .D(link_datain_0[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[19]) );
  CFD2QXL \link_datain_0_d_reg[18]  ( .D(link_datain_0[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[18]) );
  CFD2QXL \link_datain_0_d_reg[17]  ( .D(link_datain_0[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[17]) );
  CFD2QXL \link_datain_0_d_reg[16]  ( .D(link_datain_0[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[16]) );
  CFD2QXL \link_datain_0_d_reg[15]  ( .D(link_datain_0[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[15]) );
  CFD2QXL \link_datain_0_d_reg[14]  ( .D(link_datain_0[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[14]) );
  CFD2QXL \link_datain_0_d_reg[13]  ( .D(link_datain_0[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[13]) );
  CFD2QXL \link_datain_0_d_reg[12]  ( .D(link_datain_0[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[12]) );
  CFD2QXL \link_datain_0_d_reg[11]  ( .D(link_datain_0[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[11]) );
  CFD2QXL \link_datain_0_d_reg[10]  ( .D(link_datain_0[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[10]) );
  CFD2QXL \link_datain_0_d_reg[9]  ( .D(link_datain_0[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[9]) );
  CFD2QXL \link_datain_0_d_reg[8]  ( .D(link_datain_0[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[8]) );
  CFD2QXL \link_datain_0_d_reg[7]  ( .D(link_datain_0[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[7]) );
  CFD2QXL \link_datain_0_d_reg[6]  ( .D(link_datain_0[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[6]) );
  CFD2QXL \link_datain_0_d_reg[5]  ( .D(link_datain_0[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[5]) );
  CFD2QXL \link_datain_0_d_reg[4]  ( .D(link_datain_0[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[4]) );
  CFD2QXL \link_datain_0_d_reg[3]  ( .D(link_datain_0[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[3]) );
  CFD2QXL \link_datain_0_d_reg[2]  ( .D(link_datain_0[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[2]) );
  CFD2QXL \link_datain_0_d_reg[1]  ( .D(link_datain_0[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[1]) );
  CFD2QXL \link_datain_0_d_reg[0]  ( .D(link_datain_0[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_0_d[0]) );
  CFD2QXL \link_datain_1_d_reg[22]  ( .D(link_datain_1[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[22]) );
  CFD2QXL \link_datain_1_d_reg[21]  ( .D(link_datain_1[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[21]) );
  CFD2QXL \link_datain_1_d_reg[20]  ( .D(link_datain_1[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[20]) );
  CFD2QXL \link_datain_1_d_reg[19]  ( .D(link_datain_1[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[19]) );
  CFD2QXL \link_datain_1_d_reg[18]  ( .D(link_datain_1[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[18]) );
  CFD2QXL \link_datain_1_d_reg[17]  ( .D(link_datain_1[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[17]) );
  CFD2QXL \link_datain_1_d_reg[16]  ( .D(link_datain_1[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[16]) );
  CFD2QXL \link_datain_1_d_reg[15]  ( .D(link_datain_1[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[15]) );
  CFD2QXL \link_datain_1_d_reg[14]  ( .D(link_datain_1[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[14]) );
  CFD2QXL \link_datain_1_d_reg[13]  ( .D(link_datain_1[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[13]) );
  CFD2QXL \link_datain_1_d_reg[12]  ( .D(link_datain_1[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[12]) );
  CFD2QXL \link_datain_1_d_reg[11]  ( .D(link_datain_1[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[11]) );
  CFD2QXL \link_datain_1_d_reg[10]  ( .D(link_datain_1[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[10]) );
  CFD2QXL \link_datain_1_d_reg[9]  ( .D(link_datain_1[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[9]) );
  CFD2QXL \link_datain_1_d_reg[8]  ( .D(link_datain_1[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[8]) );
  CFD2QXL \link_datain_1_d_reg[7]  ( .D(link_datain_1[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[7]) );
  CFD2QXL \link_datain_1_d_reg[6]  ( .D(link_datain_1[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[6]) );
  CFD2QXL \link_datain_1_d_reg[5]  ( .D(link_datain_1[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[5]) );
  CFD2QXL \link_datain_1_d_reg[4]  ( .D(link_datain_1[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[4]) );
  CFD2QXL \link_datain_1_d_reg[3]  ( .D(link_datain_1[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[3]) );
  CFD2QXL \link_datain_1_d_reg[2]  ( .D(link_datain_1[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[2]) );
  CFD2QXL \link_datain_1_d_reg[1]  ( .D(link_datain_1[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[1]) );
  CFD2QXL \link_datain_1_d_reg[0]  ( .D(link_datain_1[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_1_d[0]) );
  CFD2QXL \link_datain_2_d_reg[31]  ( .D(link_datain_2[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[31]) );
  CFD2QXL \link_datain_2_d_reg[30]  ( .D(link_datain_2[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[30]) );
  CFD2QXL \link_datain_2_d_reg[29]  ( .D(link_datain_2[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[29]) );
  CFD2QXL \link_datain_2_d_reg[28]  ( .D(link_datain_2[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[28]) );
  CFD2QXL \link_datain_2_d_reg[27]  ( .D(link_datain_2[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[27]) );
  CFD2QXL \link_datain_2_d_reg[26]  ( .D(link_datain_2[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[26]) );
  CFD2QXL \link_datain_2_d_reg[25]  ( .D(link_datain_2[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[25]) );
  CFD2QXL \link_datain_2_d_reg[24]  ( .D(link_datain_2[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[24]) );
  CFD2QXL \link_datain_2_d_reg[23]  ( .D(link_datain_2[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[23]) );
  CFD2QXL \link_datain_2_d_reg[22]  ( .D(link_datain_2[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[22]) );
  CFD2QXL \link_datain_2_d_reg[21]  ( .D(link_datain_2[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[21]) );
  CFD2QXL \link_datain_2_d_reg[20]  ( .D(link_datain_2[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[20]) );
  CFD2QXL \link_datain_2_d_reg[19]  ( .D(link_datain_2[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[19]) );
  CFD2QXL \link_datain_2_d_reg[18]  ( .D(link_datain_2[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[18]) );
  CFD2QXL \link_datain_2_d_reg[17]  ( .D(link_datain_2[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[17]) );
  CFD2QXL \link_datain_2_d_reg[16]  ( .D(link_datain_2[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[16]) );
  CFD2QXL \link_datain_2_d_reg[15]  ( .D(link_datain_2[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[15]) );
  CFD2QXL \link_datain_2_d_reg[14]  ( .D(link_datain_2[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[14]) );
  CFD2QXL \link_datain_2_d_reg[13]  ( .D(link_datain_2[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[13]) );
  CFD2QXL \link_datain_2_d_reg[12]  ( .D(link_datain_2[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[12]) );
  CFD2QXL \link_datain_2_d_reg[11]  ( .D(link_datain_2[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[11]) );
  CFD2QXL \link_datain_2_d_reg[10]  ( .D(link_datain_2[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[10]) );
  CFD2QXL \link_datain_2_d_reg[9]  ( .D(link_datain_2[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[9]) );
  CFD2QXL \link_datain_2_d_reg[8]  ( .D(link_datain_2[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[8]) );
  CFD2QXL \link_datain_2_d_reg[7]  ( .D(link_datain_2[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[7]) );
  CFD2QXL \link_datain_2_d_reg[6]  ( .D(link_datain_2[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[6]) );
  CFD2QXL \link_datain_2_d_reg[5]  ( .D(link_datain_2[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[5]) );
  CFD2QXL \link_datain_2_d_reg[4]  ( .D(link_datain_2[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[4]) );
  CFD2QXL \link_datain_2_d_reg[3]  ( .D(link_datain_2[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[3]) );
  CFD2QXL \link_datain_2_d_reg[2]  ( .D(link_datain_2[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[2]) );
  CFD2QXL \link_datain_2_d_reg[1]  ( .D(link_datain_2[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[1]) );
  CFD2QXL \link_datain_2_d_reg[0]  ( .D(link_datain_2[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(link_datain_2_d[0]) );
  CFD2QXL \arid_d_reg[0]  ( .D(arid_nxt[0]), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\raddr_ch.ARID [0]) );
  CFD2QXL \pfifo_datain_2_d_reg[0]  ( .D(pfifo_datain_2[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[0]) );
  CFD2QXL \pfifo_datain_1_d_reg[0]  ( .D(pfifo_datain_1[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[0]) );
  CFD2QXL \pfifo_datain_0_d_reg[0]  ( .D(pfifo_datain_0[0]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[0]) );
  CFD2QXL \pfifo_datain_0_d_reg[63]  ( .D(pfifo_datain_0[63]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[63]) );
  CFD2QXL \pfifo_datain_0_d_reg[62]  ( .D(pfifo_datain_0[62]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[62]) );
  CFD2QXL \pfifo_datain_0_d_reg[61]  ( .D(pfifo_datain_0[61]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[61]) );
  CFD2QXL \pfifo_datain_0_d_reg[60]  ( .D(pfifo_datain_0[60]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[60]) );
  CFD2QXL \pfifo_datain_0_d_reg[59]  ( .D(pfifo_datain_0[59]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[59]) );
  CFD2QXL \pfifo_datain_0_d_reg[58]  ( .D(pfifo_datain_0[58]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[58]) );
  CFD2QXL \pfifo_datain_0_d_reg[57]  ( .D(pfifo_datain_0[57]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[57]) );
  CFD2QXL \pfifo_datain_0_d_reg[56]  ( .D(pfifo_datain_0[56]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[56]) );
  CFD2QXL \pfifo_datain_0_d_reg[55]  ( .D(pfifo_datain_0[55]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[55]) );
  CFD2QXL \pfifo_datain_0_d_reg[54]  ( .D(pfifo_datain_0[54]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[54]) );
  CFD2QXL \pfifo_datain_0_d_reg[53]  ( .D(pfifo_datain_0[53]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[53]) );
  CFD2QXL \pfifo_datain_0_d_reg[52]  ( .D(pfifo_datain_0[52]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[52]) );
  CFD2QXL \pfifo_datain_0_d_reg[51]  ( .D(pfifo_datain_0[51]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[51]) );
  CFD2QXL \pfifo_datain_0_d_reg[50]  ( .D(pfifo_datain_0[50]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[50]) );
  CFD2QXL \pfifo_datain_0_d_reg[49]  ( .D(pfifo_datain_0[49]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[49]) );
  CFD2QXL \pfifo_datain_0_d_reg[48]  ( .D(pfifo_datain_0[48]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[48]) );
  CFD2QXL \pfifo_datain_0_d_reg[47]  ( .D(pfifo_datain_0[47]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[47]) );
  CFD2QXL \pfifo_datain_0_d_reg[46]  ( .D(pfifo_datain_0[46]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[46]) );
  CFD2QXL \pfifo_datain_0_d_reg[45]  ( .D(pfifo_datain_0[45]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[45]) );
  CFD2QXL \pfifo_datain_0_d_reg[44]  ( .D(pfifo_datain_0[44]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[44]) );
  CFD2QXL \pfifo_datain_0_d_reg[43]  ( .D(pfifo_datain_0[43]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[43]) );
  CFD2QXL \pfifo_datain_0_d_reg[42]  ( .D(pfifo_datain_0[42]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[42]) );
  CFD2QXL \pfifo_datain_0_d_reg[41]  ( .D(pfifo_datain_0[41]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[41]) );
  CFD2QXL \pfifo_datain_0_d_reg[40]  ( .D(pfifo_datain_0[40]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[40]) );
  CFD2QXL \pfifo_datain_0_d_reg[39]  ( .D(pfifo_datain_0[39]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[39]) );
  CFD2QXL \pfifo_datain_0_d_reg[38]  ( .D(pfifo_datain_0[38]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[38]) );
  CFD2QXL \pfifo_datain_0_d_reg[37]  ( .D(pfifo_datain_0[37]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[37]) );
  CFD2QXL \pfifo_datain_0_d_reg[36]  ( .D(pfifo_datain_0[36]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[36]) );
  CFD2QXL \pfifo_datain_0_d_reg[35]  ( .D(pfifo_datain_0[35]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[35]) );
  CFD2QXL \pfifo_datain_0_d_reg[34]  ( .D(pfifo_datain_0[34]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[34]) );
  CFD2QXL \pfifo_datain_0_d_reg[33]  ( .D(pfifo_datain_0[33]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[33]) );
  CFD2QXL \pfifo_datain_0_d_reg[32]  ( .D(pfifo_datain_0[32]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[32]) );
  CFD2QXL \pfifo_datain_0_d_reg[31]  ( .D(pfifo_datain_0[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[31]) );
  CFD2QXL \pfifo_datain_0_d_reg[30]  ( .D(pfifo_datain_0[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[30]) );
  CFD2QXL \pfifo_datain_0_d_reg[29]  ( .D(pfifo_datain_0[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[29]) );
  CFD2QXL \pfifo_datain_0_d_reg[28]  ( .D(pfifo_datain_0[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[28]) );
  CFD2QXL \pfifo_datain_0_d_reg[27]  ( .D(pfifo_datain_0[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[27]) );
  CFD2QXL \pfifo_datain_0_d_reg[26]  ( .D(pfifo_datain_0[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[26]) );
  CFD2QXL \pfifo_datain_0_d_reg[25]  ( .D(pfifo_datain_0[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[25]) );
  CFD2QXL \pfifo_datain_0_d_reg[24]  ( .D(pfifo_datain_0[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[24]) );
  CFD2QXL \pfifo_datain_0_d_reg[23]  ( .D(pfifo_datain_0[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[23]) );
  CFD2QXL \pfifo_datain_0_d_reg[22]  ( .D(pfifo_datain_0[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[22]) );
  CFD2QXL \pfifo_datain_0_d_reg[21]  ( .D(pfifo_datain_0[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[21]) );
  CFD2QXL \pfifo_datain_0_d_reg[20]  ( .D(pfifo_datain_0[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[20]) );
  CFD2QXL \pfifo_datain_0_d_reg[19]  ( .D(pfifo_datain_0[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[19]) );
  CFD2QXL \pfifo_datain_0_d_reg[18]  ( .D(pfifo_datain_0[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[18]) );
  CFD2QXL \pfifo_datain_0_d_reg[17]  ( .D(pfifo_datain_0[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[17]) );
  CFD2QXL \pfifo_datain_0_d_reg[16]  ( .D(pfifo_datain_0[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[16]) );
  CFD2QXL \pfifo_datain_0_d_reg[15]  ( .D(pfifo_datain_0[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[15]) );
  CFD2QXL \pfifo_datain_0_d_reg[14]  ( .D(pfifo_datain_0[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[14]) );
  CFD2QXL \pfifo_datain_0_d_reg[13]  ( .D(pfifo_datain_0[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[13]) );
  CFD2QXL \pfifo_datain_0_d_reg[12]  ( .D(pfifo_datain_0[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[12]) );
  CFD2QXL \pfifo_datain_0_d_reg[11]  ( .D(pfifo_datain_0[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[11]) );
  CFD2QXL \pfifo_datain_0_d_reg[10]  ( .D(pfifo_datain_0[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[10]) );
  CFD2QXL \pfifo_datain_0_d_reg[9]  ( .D(pfifo_datain_0[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[9]) );
  CFD2QXL \pfifo_datain_0_d_reg[8]  ( .D(pfifo_datain_0[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[8]) );
  CFD2QXL \pfifo_datain_0_d_reg[7]  ( .D(pfifo_datain_0[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[7]) );
  CFD2QXL \pfifo_datain_0_d_reg[6]  ( .D(pfifo_datain_0[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[6]) );
  CFD2QXL \pfifo_datain_0_d_reg[5]  ( .D(pfifo_datain_0[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[5]) );
  CFD2QXL \pfifo_datain_0_d_reg[4]  ( .D(pfifo_datain_0[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[4]) );
  CFD2QXL \pfifo_datain_0_d_reg[3]  ( .D(pfifo_datain_0[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[3]) );
  CFD2QXL \pfifo_datain_0_d_reg[2]  ( .D(pfifo_datain_0[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[2]) );
  CFD2QXL \pfifo_datain_0_d_reg[1]  ( .D(pfifo_datain_0[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_0_d[1]) );
  CFD2QXL \pfifo_datain_1_d_reg[63]  ( .D(pfifo_datain_1[63]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[63]) );
  CFD2QXL \pfifo_datain_1_d_reg[62]  ( .D(pfifo_datain_1[62]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[62]) );
  CFD2QXL \pfifo_datain_1_d_reg[61]  ( .D(pfifo_datain_1[61]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[61]) );
  CFD2QXL \pfifo_datain_1_d_reg[60]  ( .D(pfifo_datain_1[60]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[60]) );
  CFD2QXL \pfifo_datain_1_d_reg[59]  ( .D(pfifo_datain_1[59]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[59]) );
  CFD2QXL \pfifo_datain_1_d_reg[58]  ( .D(pfifo_datain_1[58]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[58]) );
  CFD2QXL \pfifo_datain_1_d_reg[57]  ( .D(pfifo_datain_1[57]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[57]) );
  CFD2QXL \pfifo_datain_1_d_reg[56]  ( .D(pfifo_datain_1[56]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[56]) );
  CFD2QXL \pfifo_datain_1_d_reg[55]  ( .D(pfifo_datain_1[55]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[55]) );
  CFD2QXL \pfifo_datain_1_d_reg[54]  ( .D(pfifo_datain_1[54]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[54]) );
  CFD2QXL \pfifo_datain_1_d_reg[53]  ( .D(pfifo_datain_1[53]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[53]) );
  CFD2QXL \pfifo_datain_1_d_reg[52]  ( .D(pfifo_datain_1[52]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[52]) );
  CFD2QXL \pfifo_datain_1_d_reg[51]  ( .D(pfifo_datain_1[51]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[51]) );
  CFD2QXL \pfifo_datain_1_d_reg[50]  ( .D(pfifo_datain_1[50]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[50]) );
  CFD2QXL \pfifo_datain_1_d_reg[49]  ( .D(pfifo_datain_1[49]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[49]) );
  CFD2QXL \pfifo_datain_1_d_reg[48]  ( .D(pfifo_datain_1[48]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[48]) );
  CFD2QXL \pfifo_datain_1_d_reg[47]  ( .D(pfifo_datain_1[47]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[47]) );
  CFD2QXL \pfifo_datain_1_d_reg[46]  ( .D(pfifo_datain_1[46]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[46]) );
  CFD2QXL \pfifo_datain_1_d_reg[45]  ( .D(pfifo_datain_1[45]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[45]) );
  CFD2QXL \pfifo_datain_1_d_reg[44]  ( .D(pfifo_datain_1[44]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[44]) );
  CFD2QXL \pfifo_datain_1_d_reg[43]  ( .D(pfifo_datain_1[43]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[43]) );
  CFD2QXL \pfifo_datain_1_d_reg[42]  ( .D(pfifo_datain_1[42]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[42]) );
  CFD2QXL \pfifo_datain_1_d_reg[41]  ( .D(pfifo_datain_1[41]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[41]) );
  CFD2QXL \pfifo_datain_1_d_reg[40]  ( .D(pfifo_datain_1[40]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[40]) );
  CFD2QXL \pfifo_datain_1_d_reg[39]  ( .D(pfifo_datain_1[39]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[39]) );
  CFD2QXL \pfifo_datain_1_d_reg[38]  ( .D(pfifo_datain_1[38]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[38]) );
  CFD2QXL \pfifo_datain_1_d_reg[37]  ( .D(pfifo_datain_1[37]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[37]) );
  CFD2QXL \pfifo_datain_1_d_reg[36]  ( .D(pfifo_datain_1[36]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[36]) );
  CFD2QXL \pfifo_datain_1_d_reg[35]  ( .D(pfifo_datain_1[35]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[35]) );
  CFD2QXL \pfifo_datain_1_d_reg[34]  ( .D(pfifo_datain_1[34]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[34]) );
  CFD2QXL \pfifo_datain_1_d_reg[33]  ( .D(pfifo_datain_1[33]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[33]) );
  CFD2QXL \pfifo_datain_1_d_reg[32]  ( .D(pfifo_datain_1[32]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[32]) );
  CFD2QXL \pfifo_datain_1_d_reg[31]  ( .D(pfifo_datain_1[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[31]) );
  CFD2QXL \pfifo_datain_1_d_reg[30]  ( .D(pfifo_datain_1[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[30]) );
  CFD2QXL \pfifo_datain_1_d_reg[29]  ( .D(pfifo_datain_1[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[29]) );
  CFD2QXL \pfifo_datain_1_d_reg[28]  ( .D(pfifo_datain_1[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[28]) );
  CFD2QXL \pfifo_datain_1_d_reg[27]  ( .D(pfifo_datain_1[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[27]) );
  CFD2QXL \pfifo_datain_1_d_reg[26]  ( .D(pfifo_datain_1[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[26]) );
  CFD2QXL \pfifo_datain_1_d_reg[25]  ( .D(pfifo_datain_1[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[25]) );
  CFD2QXL \pfifo_datain_1_d_reg[24]  ( .D(pfifo_datain_1[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[24]) );
  CFD2QXL \pfifo_datain_1_d_reg[23]  ( .D(pfifo_datain_1[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[23]) );
  CFD2QXL \pfifo_datain_1_d_reg[22]  ( .D(pfifo_datain_1[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[22]) );
  CFD2QXL \pfifo_datain_1_d_reg[21]  ( .D(pfifo_datain_1[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[21]) );
  CFD2QXL \pfifo_datain_1_d_reg[20]  ( .D(pfifo_datain_1[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[20]) );
  CFD2QXL \pfifo_datain_1_d_reg[19]  ( .D(pfifo_datain_1[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[19]) );
  CFD2QXL \pfifo_datain_1_d_reg[18]  ( .D(pfifo_datain_1[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[18]) );
  CFD2QXL \pfifo_datain_1_d_reg[17]  ( .D(pfifo_datain_1[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[17]) );
  CFD2QXL \pfifo_datain_1_d_reg[16]  ( .D(pfifo_datain_1[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[16]) );
  CFD2QXL \pfifo_datain_1_d_reg[15]  ( .D(pfifo_datain_1[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[15]) );
  CFD2QXL \pfifo_datain_1_d_reg[14]  ( .D(pfifo_datain_1[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[14]) );
  CFD2QXL \pfifo_datain_1_d_reg[13]  ( .D(pfifo_datain_1[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[13]) );
  CFD2QXL \pfifo_datain_1_d_reg[12]  ( .D(pfifo_datain_1[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[12]) );
  CFD2QXL \pfifo_datain_1_d_reg[11]  ( .D(pfifo_datain_1[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[11]) );
  CFD2QXL \pfifo_datain_1_d_reg[10]  ( .D(pfifo_datain_1[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[10]) );
  CFD2QXL \pfifo_datain_1_d_reg[9]  ( .D(pfifo_datain_1[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[9]) );
  CFD2QXL \pfifo_datain_1_d_reg[8]  ( .D(pfifo_datain_1[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[8]) );
  CFD2QXL \pfifo_datain_1_d_reg[7]  ( .D(pfifo_datain_1[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[7]) );
  CFD2QXL \pfifo_datain_1_d_reg[6]  ( .D(pfifo_datain_1[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[6]) );
  CFD2QXL \pfifo_datain_1_d_reg[5]  ( .D(pfifo_datain_1[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[5]) );
  CFD2QXL \pfifo_datain_1_d_reg[4]  ( .D(pfifo_datain_1[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[4]) );
  CFD2QXL \pfifo_datain_1_d_reg[3]  ( .D(pfifo_datain_1[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[3]) );
  CFD2QXL \pfifo_datain_1_d_reg[2]  ( .D(pfifo_datain_1[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[2]) );
  CFD2QXL \pfifo_datain_1_d_reg[1]  ( .D(pfifo_datain_1[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_1_d[1]) );
  CFD2QXL \pfifo_datain_2_d_reg[63]  ( .D(pfifo_datain_2[63]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[63]) );
  CFD2QXL \pfifo_datain_2_d_reg[62]  ( .D(pfifo_datain_2[62]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[62]) );
  CFD2QXL \pfifo_datain_2_d_reg[61]  ( .D(pfifo_datain_2[61]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[61]) );
  CFD2QXL \pfifo_datain_2_d_reg[60]  ( .D(pfifo_datain_2[60]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[60]) );
  CFD2QXL \pfifo_datain_2_d_reg[59]  ( .D(pfifo_datain_2[59]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[59]) );
  CFD2QXL \pfifo_datain_2_d_reg[58]  ( .D(pfifo_datain_2[58]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[58]) );
  CFD2QXL \pfifo_datain_2_d_reg[57]  ( .D(pfifo_datain_2[57]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[57]) );
  CFD2QXL \pfifo_datain_2_d_reg[56]  ( .D(pfifo_datain_2[56]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[56]) );
  CFD2QXL \pfifo_datain_2_d_reg[55]  ( .D(pfifo_datain_2[55]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[55]) );
  CFD2QXL \pfifo_datain_2_d_reg[54]  ( .D(pfifo_datain_2[54]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[54]) );
  CFD2QXL \pfifo_datain_2_d_reg[53]  ( .D(pfifo_datain_2[53]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[53]) );
  CFD2QXL \pfifo_datain_2_d_reg[52]  ( .D(pfifo_datain_2[52]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[52]) );
  CFD2QXL \pfifo_datain_2_d_reg[51]  ( .D(pfifo_datain_2[51]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[51]) );
  CFD2QXL \pfifo_datain_2_d_reg[50]  ( .D(pfifo_datain_2[50]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[50]) );
  CFD2QXL \pfifo_datain_2_d_reg[49]  ( .D(pfifo_datain_2[49]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[49]) );
  CFD2QXL \pfifo_datain_2_d_reg[48]  ( .D(pfifo_datain_2[48]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[48]) );
  CFD2QXL \pfifo_datain_2_d_reg[47]  ( .D(pfifo_datain_2[47]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[47]) );
  CFD2QXL \pfifo_datain_2_d_reg[46]  ( .D(pfifo_datain_2[46]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[46]) );
  CFD2QXL \pfifo_datain_2_d_reg[45]  ( .D(pfifo_datain_2[45]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[45]) );
  CFD2QXL \pfifo_datain_2_d_reg[44]  ( .D(pfifo_datain_2[44]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[44]) );
  CFD2QXL \pfifo_datain_2_d_reg[43]  ( .D(pfifo_datain_2[43]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[43]) );
  CFD2QXL \pfifo_datain_2_d_reg[42]  ( .D(pfifo_datain_2[42]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[42]) );
  CFD2QXL \pfifo_datain_2_d_reg[41]  ( .D(pfifo_datain_2[41]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[41]) );
  CFD2QXL \pfifo_datain_2_d_reg[40]  ( .D(pfifo_datain_2[40]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[40]) );
  CFD2QXL \pfifo_datain_2_d_reg[39]  ( .D(pfifo_datain_2[39]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[39]) );
  CFD2QXL \pfifo_datain_2_d_reg[38]  ( .D(pfifo_datain_2[38]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[38]) );
  CFD2QXL \pfifo_datain_2_d_reg[37]  ( .D(pfifo_datain_2[37]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[37]) );
  CFD2QXL \pfifo_datain_2_d_reg[36]  ( .D(pfifo_datain_2[36]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[36]) );
  CFD2QXL \pfifo_datain_2_d_reg[35]  ( .D(pfifo_datain_2[35]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[35]) );
  CFD2QXL \pfifo_datain_2_d_reg[34]  ( .D(pfifo_datain_2[34]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[34]) );
  CFD2QXL \pfifo_datain_2_d_reg[33]  ( .D(pfifo_datain_2[33]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[33]) );
  CFD2QXL \pfifo_datain_2_d_reg[32]  ( .D(pfifo_datain_2[32]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[32]) );
  CFD2QXL \pfifo_datain_2_d_reg[31]  ( .D(pfifo_datain_2[31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[31]) );
  CFD2QXL \pfifo_datain_2_d_reg[30]  ( .D(pfifo_datain_2[30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[30]) );
  CFD2QXL \pfifo_datain_2_d_reg[29]  ( .D(pfifo_datain_2[29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[29]) );
  CFD2QXL \pfifo_datain_2_d_reg[28]  ( .D(pfifo_datain_2[28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[28]) );
  CFD2QXL \pfifo_datain_2_d_reg[27]  ( .D(pfifo_datain_2[27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[27]) );
  CFD2QXL \pfifo_datain_2_d_reg[26]  ( .D(pfifo_datain_2[26]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[26]) );
  CFD2QXL \pfifo_datain_2_d_reg[25]  ( .D(pfifo_datain_2[25]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[25]) );
  CFD2QXL \pfifo_datain_2_d_reg[24]  ( .D(pfifo_datain_2[24]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[24]) );
  CFD2QXL \pfifo_datain_2_d_reg[23]  ( .D(pfifo_datain_2[23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[23]) );
  CFD2QXL \pfifo_datain_2_d_reg[22]  ( .D(pfifo_datain_2[22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[22]) );
  CFD2QXL \pfifo_datain_2_d_reg[21]  ( .D(pfifo_datain_2[21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[21]) );
  CFD2QXL \pfifo_datain_2_d_reg[20]  ( .D(pfifo_datain_2[20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[20]) );
  CFD2QXL \pfifo_datain_2_d_reg[19]  ( .D(pfifo_datain_2[19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[19]) );
  CFD2QXL \pfifo_datain_2_d_reg[18]  ( .D(pfifo_datain_2[18]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[18]) );
  CFD2QXL \pfifo_datain_2_d_reg[17]  ( .D(pfifo_datain_2[17]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[17]) );
  CFD2QXL \pfifo_datain_2_d_reg[16]  ( .D(pfifo_datain_2[16]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[16]) );
  CFD2QXL \pfifo_datain_2_d_reg[15]  ( .D(pfifo_datain_2[15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[15]) );
  CFD2QXL \pfifo_datain_2_d_reg[14]  ( .D(pfifo_datain_2[14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[14]) );
  CFD2QXL \pfifo_datain_2_d_reg[13]  ( .D(pfifo_datain_2[13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[13]) );
  CFD2QXL \pfifo_datain_2_d_reg[12]  ( .D(pfifo_datain_2[12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[12]) );
  CFD2QXL \pfifo_datain_2_d_reg[11]  ( .D(pfifo_datain_2[11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[11]) );
  CFD2QXL \pfifo_datain_2_d_reg[10]  ( .D(pfifo_datain_2[10]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[10]) );
  CFD2QXL \pfifo_datain_2_d_reg[9]  ( .D(pfifo_datain_2[9]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[9]) );
  CFD2QXL \pfifo_datain_2_d_reg[8]  ( .D(pfifo_datain_2[8]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[8]) );
  CFD2QXL \pfifo_datain_2_d_reg[7]  ( .D(pfifo_datain_2[7]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[7]) );
  CFD2QXL \pfifo_datain_2_d_reg[6]  ( .D(pfifo_datain_2[6]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[6]) );
  CFD2QXL \pfifo_datain_2_d_reg[5]  ( .D(pfifo_datain_2[5]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[5]) );
  CFD2QXL \pfifo_datain_2_d_reg[4]  ( .D(pfifo_datain_2[4]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[4]) );
  CFD2QXL \pfifo_datain_2_d_reg[3]  ( .D(pfifo_datain_2[3]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[3]) );
  CFD2QXL \pfifo_datain_2_d_reg[2]  ( .D(pfifo_datain_2[2]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[2]) );
  CFD2QXL \pfifo_datain_2_d_reg[1]  ( .D(pfifo_datain_2[1]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(pfifo_datain_2_d[1]) );
  CFD2QXL \ch_gnt_2d_reg[2]  ( .D(n794), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        ch_gnt_2d[2]) );
  CFD2QXL \cur_chstate_2_reg[0]  ( .D(n791), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\cur_chstate_2[0] ) );
  CFD2QXL \cur_chstate_0_reg[0]  ( .D(n753), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\cur_chstate_0[0] ) );
  CFD2QXL \cur_chstate_1_reg[0]  ( .D(n716), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\cur_chstate_1[0] ) );
  CFD2QXL \cur_state_reg[1]  ( .D(n786), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cur_state[1]) );
  CFD2QXL \cur_state_reg[0]  ( .D(n787), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cur_state[0]) );
  CFD2QXL \ch_gnt_2d_reg[0]  ( .D(n793), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        ch_gnt_2d[0]) );
  CFD2QXL \haddr0_d_reg[31]  ( .D(n754), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[31]) );
  CFD2QXL \haddr0_d_reg[0]  ( .D(n785), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[0]) );
  CFD2QXL \haddr0_d_reg[1]  ( .D(n784), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[1]) );
  CFD2QXL \haddr0_d_reg[2]  ( .D(n783), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[2]) );
  CFD2QXL \haddr0_d_reg[3]  ( .D(n782), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[3]) );
  CFD2QXL \haddr0_d_reg[4]  ( .D(n781), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[4]) );
  CFD2QXL \haddr0_d_reg[5]  ( .D(n780), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[5]) );
  CFD2QXL \haddr0_d_reg[6]  ( .D(n779), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[6]) );
  CFD2QXL \haddr0_d_reg[7]  ( .D(n778), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[7]) );
  CFD2QXL \haddr0_d_reg[8]  ( .D(n777), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[8]) );
  CFD2QXL \haddr0_d_reg[9]  ( .D(n776), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[9]) );
  CFD2QXL \haddr0_d_reg[12]  ( .D(n773), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[12]) );
  CFD2QXL \haddr0_d_reg[13]  ( .D(n772), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[13]) );
  CFD2QXL \haddr0_d_reg[14]  ( .D(n771), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[14]) );
  CFD2QXL \haddr0_d_reg[15]  ( .D(n770), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[15]) );
  CFD2QXL \haddr0_d_reg[16]  ( .D(n769), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[16]) );
  CFD2QXL \haddr0_d_reg[17]  ( .D(n768), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[17]) );
  CFD2QXL \haddr0_d_reg[18]  ( .D(n767), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[18]) );
  CFD2QXL \haddr0_d_reg[19]  ( .D(n766), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[19]) );
  CFD2QXL \haddr0_d_reg[20]  ( .D(n765), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[20]) );
  CFD2QXL \haddr0_d_reg[21]  ( .D(n764), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[21]) );
  CFD2QXL \haddr0_d_reg[22]  ( .D(n763), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[22]) );
  CFD2QXL \haddr0_d_reg[23]  ( .D(n762), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[23]) );
  CFD2QXL \haddr0_d_reg[24]  ( .D(n761), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[24]) );
  CFD2QXL \haddr0_d_reg[25]  ( .D(n760), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[25]) );
  CFD2QXL \haddr0_d_reg[26]  ( .D(n759), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[26]) );
  CFD2QXL \haddr0_d_reg[27]  ( .D(n758), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[27]) );
  CFD2QXL \haddr0_d_reg[28]  ( .D(n757), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[28]) );
  CFD2QXL \haddr0_d_reg[29]  ( .D(n756), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[29]) );
  CFD2QXL \haddr0_d_reg[30]  ( .D(n755), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[30]) );
  CFD2QXL \haddr2_d_reg[31]  ( .D(n718), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[31]) );
  CFD2QXL \haddr2_d_reg[0]  ( .D(n749), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[0]) );
  CFD2QXL \haddr2_d_reg[1]  ( .D(n748), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[1]) );
  CFD2QXL \haddr2_d_reg[2]  ( .D(n747), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[2]) );
  CFD2QXL \haddr2_d_reg[3]  ( .D(n746), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[3]) );
  CFD2QXL \haddr2_d_reg[4]  ( .D(n745), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[4]) );
  CFD2QXL \haddr2_d_reg[5]  ( .D(n744), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[5]) );
  CFD2QXL \haddr2_d_reg[6]  ( .D(n743), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[6]) );
  CFD2QXL \haddr2_d_reg[7]  ( .D(n742), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[7]) );
  CFD2QXL \haddr2_d_reg[8]  ( .D(n741), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[8]) );
  CFD2QXL \haddr2_d_reg[9]  ( .D(n740), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[9]) );
  CFD2QXL \haddr2_d_reg[12]  ( .D(n737), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[12]) );
  CFD2QXL \haddr2_d_reg[13]  ( .D(n736), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[13]) );
  CFD2QXL \haddr2_d_reg[14]  ( .D(n735), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[14]) );
  CFD2QXL \haddr2_d_reg[15]  ( .D(n734), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[15]) );
  CFD2QXL \haddr2_d_reg[16]  ( .D(n733), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[16]) );
  CFD2QXL \haddr2_d_reg[17]  ( .D(n732), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[17]) );
  CFD2QXL \haddr2_d_reg[18]  ( .D(n731), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[18]) );
  CFD2QXL \haddr2_d_reg[19]  ( .D(n730), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[19]) );
  CFD2QXL \haddr2_d_reg[20]  ( .D(n729), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[20]) );
  CFD2QXL \haddr2_d_reg[21]  ( .D(n728), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[21]) );
  CFD2QXL \haddr2_d_reg[22]  ( .D(n727), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[22]) );
  CFD2QXL \haddr2_d_reg[23]  ( .D(n726), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[23]) );
  CFD2QXL \haddr2_d_reg[24]  ( .D(n725), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[24]) );
  CFD2QXL \haddr2_d_reg[25]  ( .D(n724), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[25]) );
  CFD2QXL \haddr2_d_reg[26]  ( .D(n723), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[26]) );
  CFD2QXL \haddr2_d_reg[27]  ( .D(n722), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[27]) );
  CFD2QXL \haddr2_d_reg[28]  ( .D(n721), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[28]) );
  CFD2QXL \haddr2_d_reg[29]  ( .D(n720), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[29]) );
  CFD2QXL \haddr2_d_reg[30]  ( .D(n719), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[30]) );
  CFD2QXL \haddr0_d_reg[11]  ( .D(n774), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[11]) );
  CFD2QXL \haddr2_d_reg[11]  ( .D(n738), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[11]) );
  CFD2QXL \haddr1_d_reg[10]  ( .D(n702), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[10]) );
  CFD2QXL \haddr0_d_reg[10]  ( .D(n775), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr0_d[10]) );
  CFD2QXL \haddr2_d_reg[10]  ( .D(n739), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr2_d[10]) );
  CFD2QXL \haddr1_d_reg[11]  ( .D(n701), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[11]) );
  CFD2QXL \haddr1_d_reg[31]  ( .D(n680), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[31]) );
  CFD2QXL \haddr1_d_reg[0]  ( .D(n712), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[0]) );
  CFD2QXL \haddr1_d_reg[1]  ( .D(n711), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[1]) );
  CFD2QXL \haddr1_d_reg[2]  ( .D(n710), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[2]) );
  CFD2QXL \haddr1_d_reg[3]  ( .D(n709), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[3]) );
  CFD2QXL \haddr1_d_reg[4]  ( .D(n708), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[4]) );
  CFD2QXL \haddr1_d_reg[5]  ( .D(n707), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[5]) );
  CFD2QXL \haddr1_d_reg[6]  ( .D(n706), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[6]) );
  CFD2QXL \haddr1_d_reg[7]  ( .D(n705), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[7]) );
  CFD2QXL \haddr1_d_reg[8]  ( .D(n704), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[8]) );
  CFD2QXL \haddr1_d_reg[9]  ( .D(n703), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[9]) );
  CFD2QXL \haddr1_d_reg[12]  ( .D(n700), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[12]) );
  CFD2QXL \haddr1_d_reg[13]  ( .D(n699), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[13]) );
  CFD2QXL \haddr1_d_reg[14]  ( .D(n698), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[14]) );
  CFD2QXL \haddr1_d_reg[16]  ( .D(n696), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[16]) );
  CFD2QXL \haddr1_d_reg[17]  ( .D(n695), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[17]) );
  CFD2QXL \haddr1_d_reg[18]  ( .D(n694), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[18]) );
  CFD2QXL \haddr1_d_reg[19]  ( .D(n693), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[19]) );
  CFD2QXL \haddr1_d_reg[20]  ( .D(n692), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[20]) );
  CFD2QXL \haddr1_d_reg[21]  ( .D(n691), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[21]) );
  CFD2QXL \haddr1_d_reg[22]  ( .D(n690), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[22]) );
  CFD2QXL \haddr1_d_reg[23]  ( .D(n689), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[23]) );
  CFD2QXL \haddr1_d_reg[24]  ( .D(n688), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[24]) );
  CFD2QXL \haddr1_d_reg[25]  ( .D(n687), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[25]) );
  CFD2QXL \haddr1_d_reg[26]  ( .D(n686), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[26]) );
  CFD2QXL \haddr1_d_reg[27]  ( .D(n685), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[27]) );
  CFD2QXL \haddr1_d_reg[28]  ( .D(n684), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[28]) );
  CFD2QXL \haddr1_d_reg[29]  ( .D(n683), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[29]) );
  CFD2QXL \haddr1_d_reg[30]  ( .D(n682), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[30]) );
  CFD2QXL \haddr1_d_reg[15]  ( .D(n697), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        haddr1_d[15]) );
  CFD2QXL \dch_cur_state_reg[0]  ( .D(N137), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(\dch_cur_state[0] ) );
  CFD2QXL \ch_gnt_d_reg[2]  ( .D(ch_gnt_nxt[2]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(ch_gnt_d[2]) );
  COR2XL U274 ( .A(\clks.rst ), .B(\dch_cur_state[0] ), .Z(N137) );
  CAOR2XL U776 ( .A(n1058), .B(n1054), .C(1'b0), .D(n1053), .Z(pfifo_push_0)
         );
  CAOR2XL U711 ( .A(n1059), .B(n1052), .C(1'b0), .D(n1051), .Z(pfifo_push_1)
         );
  CFD4XL \ch_gnt_2d_reg[1]  ( .D(n1057), .CP(\clks.clk ), .SD(\clks.rst ), .Q(
        n1056), .QN(ch_gnt_2d[1]) );
  CFD2QXL \ch_gnt_d_reg[1]  ( .D(ch_gnt_nxt[1]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(ch_gnt_d[1]) );
  CFD2QXL \ch_gnt_d_reg[0]  ( .D(ch_gnt_nxt[0]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(ch_gnt_d[0]) );
  CNIVX1 U906 ( .A(ch_gnt_d[0]), .Z(n793) );
  CNIVX1 U907 ( .A(ch_gnt_d[2]), .Z(n794) );
  CND4X1 U908 ( .A(n891), .B(n890), .C(n889), .D(n888), .Z(n797) );
  CNR4X2 U909 ( .A(n796), .B(n797), .C(n798), .D(n799), .Z(n893) );
  CIVX3 U910 ( .A(n800), .Z(n801) );
  CNIVX2 U911 ( .A(n894), .Z(n1058) );
  CENX1 U912 ( .A(haddr1_d[15]), .B(\rdata_ch.RDATA [15]), .Z(n811) );
  CENX1 U913 ( .A(\rdata_ch.RDATA [15]), .B(haddr2_d[15]), .Z(n915) );
  CAN8X1 U914 ( .A(n861), .B(n862), .C(n863), .D(n864), .E(n857), .F(n858), 
        .G(n859), .H(n860), .Z(n795) );
  CANR1X1 U915 ( .A(n795), .B(n893), .C(n892), .Z(link_push_0) );
  CMX2XL U916 ( .A0(\rdata_ch.RDATA [14]), .A1(link_datain_0_d[14]), .S(n960), 
        .Z(link_datain_0[14]) );
  COR3X2 U917 ( .A(n871), .B(n870), .C(n869), .Z(n796) );
  CEOX1 U918 ( .A(\rdata_ch.RDATA [8]), .B(haddr0_d[8]), .Z(n798) );
  CEOX1 U919 ( .A(\rdata_ch.RDATA [9]), .B(haddr0_d[9]), .Z(n799) );
  CENX1 U920 ( .A(haddr1_d[29]), .B(\rdata_ch.RDATA [29]), .Z(n828) );
  CMX2XL U921 ( .A0(\rdata_ch.RDATA [29]), .A1(link_datain_0_d[29]), .S(n960), 
        .Z(link_datain_0[29]) );
  CMX2XL U922 ( .A0(\rdata_ch.RDATA [29]), .A1(link_datain_2_d[29]), .S(n1036), 
        .Z(link_datain_2[29]) );
  CMX2XL U923 ( .A0(\rdata_ch.RDATA [25]), .A1(link_datain_2_d[25]), .S(n1036), 
        .Z(link_datain_2[25]) );
  CMX2XL U924 ( .A0(\rdata_ch.RDATA [25]), .A1(link_datain_0_d[25]), .S(n960), 
        .Z(link_datain_0[25]) );
  CENXL U925 ( .A(haddr1_d[25]), .B(\rdata_ch.RDATA [25]), .Z(n832) );
  CENXL U926 ( .A(\rdata_ch.RDATA [25]), .B(haddr2_d[25]), .Z(n936) );
  CAN3X4 U927 ( .A(\dch_cur_state[0] ), .B(\rdata_ch.RVALID ), .C(n849), .Z(
        n850) );
  CIVX2 U928 ( .A(n967), .Z(n800) );
  CND4X1 U929 ( .A(n966), .B(n965), .C(n964), .D(n963), .Z(n967) );
  CNR2X2 U930 ( .A(link_empty_0), .B(n969), .Z(n802) );
  CND2IX4 U931 ( .B(n968), .A(link_empty_2), .Z(n965) );
  CND2X2 U932 ( .A(n961), .B(link_empty_1), .Z(n966) );
  CIVDX3 U933 ( .A(n850), .Z0(n1051), .Z1(n1052) );
  CIVDX3 U934 ( .A(n850), .Z0(n1053), .Z1(n1054) );
  CND2IX2 U935 ( .B(n969), .A(link_empty_0), .Z(n964) );
  CIVX1 U936 ( .A(cur_state[1]), .Z(n1049) );
  CNR2X1 U937 ( .A(cur_state[0]), .B(n1049), .Z(n959) );
  CIVX1 U938 ( .A(ch_gnt_d[2]), .Z(n899) );
  CIVX2 U939 ( .A(ch_gnt_d[0]), .Z(n903) );
  CND2X1 U940 ( .A(n899), .B(n903), .Z(n1042) );
  CNR2X1 U941 ( .A(n1042), .B(ch_gnt_d[1]), .Z(n954) );
  CIVX2 U942 ( .A(n954), .Z(n1047) );
  CND2X1 U943 ( .A(cur_state[0]), .B(n1047), .Z(n1050) );
  CNR2X1 U944 ( .A(cur_state[1]), .B(n1050), .Z(n958) );
  CAOR1XL U945 ( .A(n959), .B(arvalid_d), .C(n958), .Z(\raddr_ch.ARVALID ) );
  CENX1 U946 ( .A(haddr1_d[0]), .B(\rdata_ch.RDATA [0]), .Z(n806) );
  CENX1 U947 ( .A(haddr1_d[1]), .B(\rdata_ch.RDATA [1]), .Z(n805) );
  CENX1 U948 ( .A(haddr1_d[2]), .B(\rdata_ch.RDATA [2]), .Z(n804) );
  CENX1 U949 ( .A(haddr1_d[3]), .B(\rdata_ch.RDATA [3]), .Z(n803) );
  CAN4X1 U950 ( .A(n806), .B(n805), .C(n804), .D(n803), .Z(n848) );
  CENX1 U951 ( .A(haddr1_d[4]), .B(\rdata_ch.RDATA [4]), .Z(n810) );
  CENX1 U952 ( .A(haddr1_d[5]), .B(\rdata_ch.RDATA [5]), .Z(n809) );
  CENX1 U953 ( .A(haddr1_d[6]), .B(\rdata_ch.RDATA [6]), .Z(n808) );
  CENX1 U954 ( .A(haddr1_d[7]), .B(\rdata_ch.RDATA [7]), .Z(n807) );
  CAN4X1 U955 ( .A(n810), .B(n809), .C(n808), .D(n807), .Z(n847) );
  CEOXL U956 ( .A(\rdata_ch.RDATA [10]), .B(haddr1_d[10]), .Z(n817) );
  CENX1 U957 ( .A(haddr1_d[12]), .B(\rdata_ch.RDATA [12]), .Z(n814) );
  CENX1 U958 ( .A(haddr1_d[13]), .B(\rdata_ch.RDATA [13]), .Z(n813) );
  CENX1 U959 ( .A(haddr1_d[14]), .B(\rdata_ch.RDATA [14]), .Z(n812) );
  CND4X1 U960 ( .A(n814), .B(n813), .C(n812), .D(n811), .Z(n816) );
  CEOXL U961 ( .A(haddr1_d[11]), .B(\rdata_ch.RDATA [11]), .Z(n815) );
  CNR3X1 U962 ( .A(n817), .B(n816), .C(n815), .Z(n841) );
  CENX1 U963 ( .A(haddr1_d[20]), .B(\rdata_ch.RDATA [20]), .Z(n821) );
  CENX1 U964 ( .A(haddr1_d[21]), .B(\rdata_ch.RDATA [21]), .Z(n820) );
  CENX1 U965 ( .A(haddr1_d[22]), .B(\rdata_ch.RDATA [22]), .Z(n819) );
  CENX1 U966 ( .A(haddr1_d[23]), .B(\rdata_ch.RDATA [23]), .Z(n818) );
  CAN4X1 U967 ( .A(n821), .B(n820), .C(n819), .D(n818), .Z(n837) );
  CENX1 U968 ( .A(haddr1_d[16]), .B(\rdata_ch.RDATA [16]), .Z(n825) );
  CENX1 U969 ( .A(haddr1_d[17]), .B(\rdata_ch.RDATA [17]), .Z(n824) );
  CENX1 U970 ( .A(haddr1_d[18]), .B(\rdata_ch.RDATA [18]), .Z(n823) );
  CENX1 U971 ( .A(haddr1_d[19]), .B(\rdata_ch.RDATA [19]), .Z(n822) );
  CAN4X1 U972 ( .A(n825), .B(n824), .C(n823), .D(n822), .Z(n836) );
  CENX1 U973 ( .A(haddr1_d[28]), .B(\rdata_ch.RDATA [28]), .Z(n829) );
  CENX1 U974 ( .A(haddr1_d[30]), .B(\rdata_ch.RDATA [30]), .Z(n827) );
  CENX1 U975 ( .A(haddr1_d[31]), .B(\rdata_ch.RDATA [31]), .Z(n826) );
  CAN4X1 U976 ( .A(n829), .B(n828), .C(n827), .D(n826), .Z(n835) );
  CENX1 U977 ( .A(haddr1_d[24]), .B(\rdata_ch.RDATA [24]), .Z(n833) );
  CENX1 U978 ( .A(haddr1_d[26]), .B(\rdata_ch.RDATA [26]), .Z(n831) );
  CENX1 U979 ( .A(haddr1_d[27]), .B(\rdata_ch.RDATA [27]), .Z(n830) );
  CAN4X1 U980 ( .A(n833), .B(n832), .C(n831), .D(n830), .Z(n834) );
  CAN4X1 U981 ( .A(n837), .B(n836), .C(n835), .D(n834), .Z(n840) );
  CENX1 U982 ( .A(haddr1_d[8]), .B(\rdata_ch.RDATA [8]), .Z(n839) );
  CENX1 U983 ( .A(haddr1_d[9]), .B(\rdata_ch.RDATA [9]), .Z(n838) );
  CAN4X1 U984 ( .A(n841), .B(n840), .C(n839), .D(n838), .Z(n846) );
  CND3XL U985 ( .A(\rdata_ch.RVALID ), .B(\rdata_ch.RLAST ), .C(
        \dch_cur_state[0] ), .Z(n842) );
  CNR2X1 U986 ( .A(\rdata_ch.RRESP [1]), .B(n842), .Z(n854) );
  CIVX2 U987 ( .A(\rdata_ch.RID [0]), .Z(n856) );
  CNR2X2 U988 ( .A(\rdata_ch.RID [3]), .B(\rdata_ch.RID [2]), .Z(n853) );
  CIVX1 U989 ( .A(\rdata_ch.RID [1]), .Z(n843) );
  CND2X1 U990 ( .A(n853), .B(n843), .Z(n844) );
  CNR2X2 U991 ( .A(n856), .B(n844), .Z(n905) );
  CND2X1 U992 ( .A(n854), .B(n905), .Z(n845) );
  CNIVX4 U993 ( .A(n845), .Z(n950) );
  CANR11X4 U994 ( .A(n848), .B(n847), .C(n846), .D(n950), .Z(link_push_1) );
  CNR2X1 U995 ( .A(\rdata_ch.RLAST ), .B(\rdata_ch.RRESP [1]), .Z(n849) );
  CAN2XL U996 ( .A(n853), .B(\rdata_ch.RID [1]), .Z(n855) );
  CAN2X1 U997 ( .A(n856), .B(n855), .Z(n851) );
  CND2X1 U998 ( .A(n854), .B(n851), .Z(n946) );
  CNIVX8 U999 ( .A(n946), .Z(n1036) );
  CMX2XL U1000 ( .A0(\rdata_ch.RDATA [15]), .A1(link_datain_2_d[15]), .S(n1036), .Z(link_datain_2[15]) );
  CMX2XL U1001 ( .A0(\rdata_ch.RDATA [15]), .A1(link_datain_1_d[15]), .S(n950), 
        .Z(link_datain_1[15]) );
  CNR2X1 U1002 ( .A(\rdata_ch.RID [0]), .B(\rdata_ch.RID [1]), .Z(n852) );
  CAN2XL U1003 ( .A(n853), .B(n852), .Z(n894) );
  CND2X1 U1004 ( .A(n854), .B(n894), .Z(n892) );
  CNIVX2 U1005 ( .A(n892), .Z(n960) );
  CMX2XL U1006 ( .A0(\rdata_ch.RDATA [15]), .A1(link_datain_0_d[15]), .S(n960), 
        .Z(link_datain_0[15]) );
  CAN2X2 U1007 ( .A(n856), .B(n855), .Z(n1055) );
  CENX1 U1008 ( .A(\rdata_ch.RDATA [0]), .B(haddr0_d[0]), .Z(n860) );
  CENX1 U1009 ( .A(\rdata_ch.RDATA [1]), .B(haddr0_d[1]), .Z(n859) );
  CENX1 U1010 ( .A(\rdata_ch.RDATA [2]), .B(haddr0_d[2]), .Z(n858) );
  CENX1 U1011 ( .A(\rdata_ch.RDATA [3]), .B(haddr0_d[3]), .Z(n857) );
  CENX1 U1012 ( .A(\rdata_ch.RDATA [4]), .B(haddr0_d[4]), .Z(n864) );
  CENX1 U1013 ( .A(\rdata_ch.RDATA [5]), .B(haddr0_d[5]), .Z(n863) );
  CENX1 U1014 ( .A(\rdata_ch.RDATA [6]), .B(haddr0_d[6]), .Z(n862) );
  CENX1 U1015 ( .A(\rdata_ch.RDATA [7]), .B(haddr0_d[7]), .Z(n861) );
  CEOXL U1016 ( .A(haddr0_d[10]), .B(\rdata_ch.RDATA [10]), .Z(n871) );
  CENX1 U1017 ( .A(\rdata_ch.RDATA [12]), .B(haddr0_d[12]), .Z(n868) );
  CENX1 U1018 ( .A(\rdata_ch.RDATA [13]), .B(haddr0_d[13]), .Z(n867) );
  CENX1 U1019 ( .A(\rdata_ch.RDATA [14]), .B(haddr0_d[14]), .Z(n866) );
  CENX1 U1020 ( .A(\rdata_ch.RDATA [15]), .B(haddr0_d[15]), .Z(n865) );
  CND4X1 U1021 ( .A(n868), .B(n867), .C(n866), .D(n865), .Z(n870) );
  CEOXL U1022 ( .A(\rdata_ch.RDATA [11]), .B(haddr0_d[11]), .Z(n869) );
  CENX1 U1023 ( .A(\rdata_ch.RDATA [20]), .B(haddr0_d[20]), .Z(n875) );
  CENX1 U1024 ( .A(\rdata_ch.RDATA [21]), .B(haddr0_d[21]), .Z(n874) );
  CENX1 U1025 ( .A(\rdata_ch.RDATA [22]), .B(haddr0_d[22]), .Z(n873) );
  CENX1 U1026 ( .A(\rdata_ch.RDATA [23]), .B(haddr0_d[23]), .Z(n872) );
  CAN4X1 U1027 ( .A(n875), .B(n874), .C(n873), .D(n872), .Z(n891) );
  CENX1 U1028 ( .A(\rdata_ch.RDATA [16]), .B(haddr0_d[16]), .Z(n879) );
  CENX1 U1029 ( .A(\rdata_ch.RDATA [17]), .B(haddr0_d[17]), .Z(n878) );
  CENX1 U1030 ( .A(\rdata_ch.RDATA [18]), .B(haddr0_d[18]), .Z(n877) );
  CENX1 U1031 ( .A(\rdata_ch.RDATA [19]), .B(haddr0_d[19]), .Z(n876) );
  CAN4X1 U1032 ( .A(n879), .B(n878), .C(n877), .D(n876), .Z(n890) );
  CENX1 U1033 ( .A(\rdata_ch.RDATA [28]), .B(haddr0_d[28]), .Z(n883) );
  CENX1 U1034 ( .A(\rdata_ch.RDATA [29]), .B(haddr0_d[29]), .Z(n882) );
  CENX1 U1035 ( .A(\rdata_ch.RDATA [30]), .B(haddr0_d[30]), .Z(n881) );
  CENX1 U1036 ( .A(\rdata_ch.RDATA [31]), .B(haddr0_d[31]), .Z(n880) );
  CAN4X1 U1037 ( .A(n883), .B(n882), .C(n881), .D(n880), .Z(n889) );
  CENX1 U1038 ( .A(\rdata_ch.RDATA [24]), .B(haddr0_d[24]), .Z(n887) );
  CENX1 U1039 ( .A(\rdata_ch.RDATA [25]), .B(haddr0_d[25]), .Z(n886) );
  CENX1 U1040 ( .A(\rdata_ch.RDATA [26]), .B(haddr0_d[26]), .Z(n885) );
  CENX1 U1041 ( .A(\rdata_ch.RDATA [27]), .B(haddr0_d[27]), .Z(n884) );
  CAN4X1 U1042 ( .A(n887), .B(n884), .C(n885), .D(n886), .Z(n888) );
  CMX2XL U1043 ( .A0(\rdata_ch.RDATA [17]), .A1(link_datain_1_d[17]), .S(n950), 
        .Z(link_datain_1[17]) );
  CMX2XL U1044 ( .A0(\rdata_ch.RDATA [18]), .A1(link_datain_1_d[18]), .S(n950), 
        .Z(link_datain_1[18]) );
  CMX2XL U1045 ( .A0(\rdata_ch.RDATA [20]), .A1(link_datain_1_d[20]), .S(n950), 
        .Z(link_datain_1[20]) );
  CMX2XL U1046 ( .A0(\rdata_ch.RDATA [21]), .A1(link_datain_1_d[21]), .S(n950), 
        .Z(link_datain_1[21]) );
  CMX2XL U1047 ( .A0(\rdata_ch.RDATA [7]), .A1(link_datain_1_d[7]), .S(n950), 
        .Z(link_datain_1[7]) );
  CMX2XL U1048 ( .A0(\rdata_ch.RDATA [8]), .A1(link_datain_1_d[8]), .S(n950), 
        .Z(link_datain_1[8]) );
  CMX2XL U1049 ( .A0(\rdata_ch.RDATA [6]), .A1(link_datain_1_d[6]), .S(n950), 
        .Z(link_datain_1[6]) );
  CMX2XL U1050 ( .A0(\rdata_ch.RDATA [9]), .A1(link_datain_1_d[9]), .S(n950), 
        .Z(link_datain_1[9]) );
  CMX2XL U1051 ( .A0(\rdata_ch.RDATA [10]), .A1(link_datain_1_d[10]), .S(n950), 
        .Z(link_datain_1[10]) );
  CMX2XL U1052 ( .A0(\rdata_ch.RDATA [11]), .A1(link_datain_1_d[11]), .S(n950), 
        .Z(link_datain_1[11]) );
  CMX2XL U1053 ( .A0(\rdata_ch.RDATA [5]), .A1(link_datain_1_d[5]), .S(n950), 
        .Z(link_datain_1[5]) );
  CMX2XL U1054 ( .A0(\rdata_ch.RDATA [12]), .A1(link_datain_1_d[12]), .S(n950), 
        .Z(link_datain_1[12]) );
  CMX2XL U1055 ( .A0(\rdata_ch.RDATA [4]), .A1(link_datain_1_d[4]), .S(n950), 
        .Z(link_datain_1[4]) );
  CMX2XL U1056 ( .A0(\rdata_ch.RDATA [13]), .A1(link_datain_1_d[13]), .S(n950), 
        .Z(link_datain_1[13]) );
  CMX2XL U1057 ( .A0(\rdata_ch.RDATA [14]), .A1(link_datain_1_d[14]), .S(n950), 
        .Z(link_datain_1[14]) );
  CMX2XL U1058 ( .A0(\rdata_ch.RDATA [2]), .A1(link_datain_1_d[2]), .S(n950), 
        .Z(link_datain_1[2]) );
  CMX2XL U1059 ( .A0(\rdata_ch.RDATA [16]), .A1(link_datain_1_d[16]), .S(n950), 
        .Z(link_datain_1[16]) );
  CMX2XL U1060 ( .A0(\rdata_ch.RDATA [0]), .A1(link_datain_1_d[0]), .S(n950), 
        .Z(link_datain_1[0]) );
  CMX2X1 U1061 ( .A0(\rdata_ch.RDATA [18]), .A1(link_datain_2_d[18]), .S(n1036), .Z(link_datain_2[18]) );
  CMX2XL U1062 ( .A0(pfifo_datain_1_d[54]), .A1(\rdata_ch.RDATA [54]), .S(n906), .Z(N687) );
  CMX2XL U1063 ( .A0(pfifo_datain_1_d[20]), .A1(\rdata_ch.RDATA [20]), .S(
        n1059), .Z(N653) );
  CMX2XL U1064 ( .A0(pfifo_datain_1_d[22]), .A1(\rdata_ch.RDATA [22]), .S(n906), .Z(N655) );
  CMX2XL U1065 ( .A0(pfifo_datain_1_d[21]), .A1(\rdata_ch.RDATA [21]), .S(
        n1059), .Z(N654) );
  CMX2XL U1066 ( .A0(pfifo_datain_1_d[63]), .A1(\rdata_ch.RDATA [63]), .S(n906), .Z(N696) );
  CMX2XL U1067 ( .A0(pfifo_datain_1_d[59]), .A1(\rdata_ch.RDATA [59]), .S(
        n1059), .Z(N692) );
  CNIVX1 U1068 ( .A(n905), .Z(n1059) );
  CNR2IX1 U1069 ( .B(ch_gnt_d[1]), .A(n1042), .Z(n961) );
  CMX2XL U1070 ( .A0(haddr[43]), .A1(haddr1_d[11]), .S(n966), .Z(n701) );
  CMX2XL U1071 ( .A0(haddr[42]), .A1(haddr1_d[10]), .S(n966), .Z(n702) );
  CMX2XL U1072 ( .A0(haddr[56]), .A1(haddr1_d[24]), .S(n966), .Z(n688) );
  CMX2XL U1073 ( .A0(haddr[59]), .A1(haddr1_d[27]), .S(n966), .Z(n685) );
  CMX2XL U1074 ( .A0(haddr[58]), .A1(haddr1_d[26]), .S(n966), .Z(n686) );
  CMX2XL U1075 ( .A0(haddr[47]), .A1(haddr1_d[15]), .S(n966), .Z(n697) );
  CMX2XL U1076 ( .A0(haddr[55]), .A1(haddr1_d[23]), .S(n966), .Z(n689) );
  CMX2XL U1077 ( .A0(haddr[61]), .A1(haddr1_d[29]), .S(n966), .Z(n683) );
  CMX2XL U1078 ( .A0(haddr[33]), .A1(haddr1_d[1]), .S(n966), .Z(n711) );
  CMX2XL U1079 ( .A0(haddr[60]), .A1(haddr1_d[28]), .S(n966), .Z(n684) );
  CMX2XL U1080 ( .A0(haddr[62]), .A1(haddr1_d[30]), .S(n966), .Z(n682) );
  CMX2XL U1081 ( .A0(haddr[34]), .A1(haddr1_d[2]), .S(n966), .Z(n710) );
  CMX2XL U1082 ( .A0(haddr[53]), .A1(haddr1_d[21]), .S(n966), .Z(n691) );
  CMX2XL U1083 ( .A0(haddr[35]), .A1(haddr1_d[3]), .S(n966), .Z(n709) );
  CMX2XL U1084 ( .A0(haddr[57]), .A1(haddr1_d[25]), .S(n966), .Z(n687) );
  CMX2XL U1085 ( .A0(haddr[63]), .A1(haddr1_d[31]), .S(n966), .Z(n680) );
  CMX2XL U1086 ( .A0(haddr[52]), .A1(haddr1_d[20]), .S(n966), .Z(n692) );
  CMX2XL U1087 ( .A0(haddr[54]), .A1(haddr1_d[22]), .S(n966), .Z(n690) );
  CMX2XL U1088 ( .A0(haddr[36]), .A1(haddr1_d[4]), .S(n966), .Z(n708) );
  CMX2XL U1089 ( .A0(haddr[32]), .A1(haddr1_d[0]), .S(n966), .Z(n712) );
  CMX2XL U1090 ( .A0(haddr[44]), .A1(haddr1_d[12]), .S(n966), .Z(n700) );
  CMX2XL U1091 ( .A0(haddr[51]), .A1(haddr1_d[19]), .S(n966), .Z(n693) );
  CMX2XL U1092 ( .A0(haddr[39]), .A1(haddr1_d[7]), .S(n966), .Z(n705) );
  CMX2XL U1093 ( .A0(haddr[37]), .A1(haddr1_d[5]), .S(n966), .Z(n707) );
  CMX2XL U1094 ( .A0(haddr[41]), .A1(haddr1_d[9]), .S(n966), .Z(n703) );
  CMX2XL U1095 ( .A0(haddr[50]), .A1(haddr1_d[18]), .S(n966), .Z(n694) );
  CMX2XL U1096 ( .A0(haddr[38]), .A1(haddr1_d[6]), .S(n966), .Z(n706) );
  CMX2XL U1097 ( .A0(haddr[46]), .A1(haddr1_d[14]), .S(n966), .Z(n698) );
  CMX2XL U1098 ( .A0(haddr[40]), .A1(haddr1_d[8]), .S(n966), .Z(n704) );
  CMX2XL U1099 ( .A0(haddr[45]), .A1(haddr1_d[13]), .S(n966), .Z(n699) );
  CMX2XL U1100 ( .A0(haddr[49]), .A1(haddr1_d[17]), .S(n966), .Z(n695) );
  CMX2XL U1101 ( .A0(haddr[48]), .A1(haddr1_d[16]), .S(n966), .Z(n696) );
  COR3X1 U1102 ( .A(ch_gnt_d[2]), .B(ch_gnt_d[1]), .C(n903), .Z(n969) );
  CMX2XL U1103 ( .A0(haddr[36]), .A1(haddr0_d[4]), .S(n964), .Z(n781) );
  CMX2XL U1104 ( .A0(haddr[47]), .A1(haddr0_d[15]), .S(n964), .Z(n770) );
  CMX2XL U1105 ( .A0(haddr[48]), .A1(haddr0_d[16]), .S(n964), .Z(n769) );
  CMX2XL U1106 ( .A0(haddr[50]), .A1(haddr0_d[18]), .S(n964), .Z(n767) );
  CMX2XL U1107 ( .A0(haddr[46]), .A1(haddr0_d[14]), .S(n964), .Z(n771) );
  CMX2XL U1108 ( .A0(haddr[35]), .A1(haddr0_d[3]), .S(n964), .Z(n782) );
  CMX2XL U1109 ( .A0(haddr[38]), .A1(haddr0_d[6]), .S(n964), .Z(n779) );
  CMX2XL U1110 ( .A0(haddr[45]), .A1(haddr0_d[13]), .S(n964), .Z(n772) );
  CMX2XL U1111 ( .A0(haddr[32]), .A1(haddr0_d[0]), .S(n964), .Z(n785) );
  CMX2XL U1112 ( .A0(haddr[52]), .A1(haddr0_d[20]), .S(n964), .Z(n765) );
  CMX2XL U1113 ( .A0(haddr[39]), .A1(haddr0_d[7]), .S(n964), .Z(n778) );
  CMX2XL U1114 ( .A0(haddr[40]), .A1(haddr0_d[8]), .S(n964), .Z(n777) );
  CMX2X1 U1115 ( .A0(\rdata_ch.RDATA [31]), .A1(link_datain_2_d[31]), .S(n1036), .Z(link_datain_2[31]) );
  CMX2XL U1116 ( .A0(haddr[53]), .A1(haddr0_d[21]), .S(n964), .Z(n764) );
  CMX2X1 U1117 ( .A0(\rdata_ch.RDATA [30]), .A1(link_datain_2_d[30]), .S(n1036), .Z(link_datain_2[30]) );
  CMX2XL U1118 ( .A0(haddr[41]), .A1(haddr0_d[9]), .S(n964), .Z(n776) );
  CMX2XL U1119 ( .A0(haddr[34]), .A1(haddr0_d[2]), .S(n964), .Z(n783) );
  CMX2XL U1120 ( .A0(haddr[44]), .A1(haddr0_d[12]), .S(n964), .Z(n773) );
  CMX2XL U1121 ( .A0(haddr[51]), .A1(haddr0_d[19]), .S(n964), .Z(n766) );
  CMX2XL U1122 ( .A0(haddr[33]), .A1(haddr0_d[1]), .S(n964), .Z(n784) );
  CMX2XL U1123 ( .A0(haddr[54]), .A1(haddr0_d[22]), .S(n964), .Z(n763) );
  CMX2X1 U1124 ( .A0(\rdata_ch.RDATA [19]), .A1(link_datain_2_d[19]), .S(n1036), .Z(link_datain_2[19]) );
  CMX2X1 U1125 ( .A0(\rdata_ch.RDATA [26]), .A1(link_datain_2_d[26]), .S(n1036), .Z(link_datain_2[26]) );
  CMX2X1 U1126 ( .A0(\rdata_ch.RDATA [27]), .A1(link_datain_2_d[27]), .S(n1036), .Z(link_datain_2[27]) );
  CIVX1 U1127 ( .A(ch_gnt_d[1]), .Z(n1057) );
  CND3XL U1128 ( .A(n903), .B(n1057), .C(ch_gnt_d[2]), .Z(n968) );
  CMX2XL U1129 ( .A0(haddr[40]), .A1(haddr2_d[8]), .S(n965), .Z(n741) );
  CMX2XL U1130 ( .A0(haddr[41]), .A1(haddr2_d[9]), .S(n965), .Z(n740) );
  CMX2XL U1131 ( .A0(haddr[44]), .A1(haddr2_d[12]), .S(n965), .Z(n737) );
  CMX2XL U1132 ( .A0(haddr[45]), .A1(haddr2_d[13]), .S(n965), .Z(n736) );
  CMX2XL U1133 ( .A0(haddr[48]), .A1(haddr2_d[16]), .S(n965), .Z(n733) );
  CMX2XL U1134 ( .A0(haddr[49]), .A1(haddr2_d[17]), .S(n965), .Z(n732) );
  CMX2XL U1135 ( .A0(haddr[52]), .A1(haddr2_d[20]), .S(n965), .Z(n729) );
  CMX2XL U1136 ( .A0(haddr[53]), .A1(haddr2_d[21]), .S(n965), .Z(n728) );
  CNR3XL U1137 ( .A(ch_gnt_2d[0]), .B(ch_gnt_2d[2]), .C(n1056), .Z(n902) );
  CIVX1 U1138 ( .A(ch_gnt_2d[2]), .Z(n1037) );
  CND3XL U1139 ( .A(ch_gnt_2d[0]), .B(n1056), .C(n1037), .Z(n1038) );
  CNR2X1 U1140 ( .A(ch_gnt_2d[1]), .B(ch_gnt_2d[0]), .Z(n900) );
  CIVX2 U1141 ( .A(main_ptr_empty), .Z(n896) );
  CND2X1 U1142 ( .A(\cur_chstate_0[0] ), .B(n896), .Z(n1045) );
  CND2XL U1143 ( .A(n900), .B(n1045), .Z(n895) );
  CND2X1 U1144 ( .A(n896), .B(\cur_chstate_1[0] ), .Z(n955) );
  CIVX2 U1145 ( .A(n955), .Z(n1041) );
  CANR1XL U1146 ( .A(n1038), .B(n895), .C(n1041), .Z(n898) );
  CND2X1 U1147 ( .A(\cur_chstate_2[0] ), .B(n896), .Z(n1044) );
  CIVX2 U1148 ( .A(n1044), .Z(n897) );
  COND3X1 U1149 ( .A(n902), .B(n898), .C(n897), .D(n954), .Z(n957) );
  CND2XL U1150 ( .A(n899), .B(n957), .Z(ch_gnt_nxt[2]) );
  CMX2XL U1151 ( .A0(haddr[56]), .A1(haddr2_d[24]), .S(n965), .Z(n725) );
  CMX2XL U1152 ( .A0(haddr[57]), .A1(haddr2_d[25]), .S(n965), .Z(n724) );
  CMX2XL U1153 ( .A0(haddr[37]), .A1(haddr2_d[5]), .S(n965), .Z(n744) );
  CMX2XL U1154 ( .A0(haddr[60]), .A1(haddr2_d[28]), .S(n965), .Z(n721) );
  CNR2XL U1155 ( .A(n1041), .B(n1038), .Z(n901) );
  CANR4CXL U1156 ( .A(n902), .B(n901), .C(n1044), .D(n900), .Z(n904) );
  COND11XL U1157 ( .A(n904), .B(n1047), .C(n1045), .D(n903), .Z(ch_gnt_nxt[0])
         );
  CMX2XL U1158 ( .A0(haddr[61]), .A1(haddr2_d[29]), .S(n965), .Z(n720) );
  CMX2XL U1159 ( .A0(haddr[42]), .A1(haddr0_d[10]), .S(n964), .Z(n775) );
  CMX2XL U1160 ( .A0(haddr[33]), .A1(haddr2_d[1]), .S(n965), .Z(n748) );
  CMX2XL U1161 ( .A0(haddr[56]), .A1(haddr0_d[24]), .S(n964), .Z(n761) );
  CMX2XL U1162 ( .A0(haddr[34]), .A1(haddr2_d[2]), .S(n965), .Z(n747) );
  CMX2XL U1163 ( .A0(haddr[32]), .A1(haddr2_d[0]), .S(n965), .Z(n749) );
  CMX2XL U1164 ( .A0(haddr[55]), .A1(haddr0_d[23]), .S(n964), .Z(n762) );
  CMX2XL U1165 ( .A0(haddr[58]), .A1(haddr0_d[26]), .S(n964), .Z(n759) );
  CMX2XL U1166 ( .A0(haddr[59]), .A1(haddr0_d[27]), .S(n964), .Z(n758) );
  CMX2XL U1167 ( .A0(haddr[62]), .A1(haddr0_d[30]), .S(n964), .Z(n755) );
  CMX2XL U1168 ( .A0(haddr[61]), .A1(haddr0_d[29]), .S(n964), .Z(n756) );
  CMX2XL U1169 ( .A0(haddr[36]), .A1(haddr2_d[4]), .S(n965), .Z(n745) );
  CMX2XL U1170 ( .A0(haddr[60]), .A1(haddr0_d[28]), .S(n964), .Z(n757) );
  CMX2XL U1171 ( .A0(haddr[57]), .A1(haddr0_d[25]), .S(n964), .Z(n760) );
  CMX2XL U1172 ( .A0(haddr[38]), .A1(haddr2_d[6]), .S(n965), .Z(n743) );
  CMX2XL U1173 ( .A0(haddr[62]), .A1(haddr2_d[30]), .S(n965), .Z(n719) );
  CMX2XL U1174 ( .A0(haddr[43]), .A1(haddr0_d[11]), .S(n964), .Z(n774) );
  CMX2XL U1175 ( .A0(haddr[63]), .A1(haddr0_d[31]), .S(n964), .Z(n754) );
  CMX2XL U1176 ( .A0(haddr[43]), .A1(haddr2_d[11]), .S(n965), .Z(n738) );
  CMX2XL U1177 ( .A0(haddr[37]), .A1(haddr0_d[5]), .S(n964), .Z(n780) );
  CMX2XL U1178 ( .A0(haddr[42]), .A1(haddr2_d[10]), .S(n965), .Z(n739) );
  CMX2XL U1179 ( .A0(haddr[39]), .A1(haddr2_d[7]), .S(n965), .Z(n742) );
  CMX2XL U1180 ( .A0(haddr[50]), .A1(haddr2_d[18]), .S(n965), .Z(n731) );
  CMX2XL U1181 ( .A0(haddr[49]), .A1(haddr0_d[17]), .S(n964), .Z(n768) );
  CMX2XL U1182 ( .A0(haddr[63]), .A1(haddr2_d[31]), .S(n965), .Z(n718) );
  CMX2XL U1183 ( .A0(haddr[35]), .A1(haddr2_d[3]), .S(n965), .Z(n746) );
  CMX2XL U1184 ( .A0(haddr[54]), .A1(haddr2_d[22]), .S(n965), .Z(n727) );
  CMX2XL U1185 ( .A0(haddr[55]), .A1(haddr2_d[23]), .S(n965), .Z(n726) );
  CMX2XL U1186 ( .A0(haddr[47]), .A1(haddr2_d[15]), .S(n965), .Z(n734) );
  CMX2XL U1187 ( .A0(haddr[51]), .A1(haddr2_d[19]), .S(n965), .Z(n730) );
  CMX2XL U1188 ( .A0(haddr[59]), .A1(haddr2_d[27]), .S(n965), .Z(n722) );
  CMX2XL U1189 ( .A0(haddr[58]), .A1(haddr2_d[26]), .S(n965), .Z(n723) );
  CMX2XL U1190 ( .A0(haddr[46]), .A1(haddr2_d[14]), .S(n965), .Z(n735) );
  CMX2XL U1191 ( .A0(pfifo_datain_1_d[28]), .A1(\rdata_ch.RDATA [28]), .S(n906), .Z(N661) );
  CMX2XL U1192 ( .A0(pfifo_datain_1_d[32]), .A1(\rdata_ch.RDATA [32]), .S(
        n1059), .Z(N665) );
  CMX2XL U1193 ( .A0(pfifo_datain_1_d[0]), .A1(\rdata_ch.RDATA [0]), .S(n1059), 
        .Z(N633) );
  CNIVX1 U1194 ( .A(n905), .Z(n906) );
  CMX2XL U1195 ( .A0(pfifo_datain_1_d[1]), .A1(\rdata_ch.RDATA [1]), .S(n906), 
        .Z(N634) );
  CMX2XL U1196 ( .A0(pfifo_datain_1_d[2]), .A1(\rdata_ch.RDATA [2]), .S(n1059), 
        .Z(N635) );
  CMX2XL U1197 ( .A0(pfifo_datain_1_d[3]), .A1(\rdata_ch.RDATA [3]), .S(n906), 
        .Z(N636) );
  CMX2XL U1198 ( .A0(pfifo_datain_1_d[4]), .A1(\rdata_ch.RDATA [4]), .S(n1059), 
        .Z(N637) );
  CMX2XL U1199 ( .A0(pfifo_datain_1_d[5]), .A1(\rdata_ch.RDATA [5]), .S(n906), 
        .Z(N638) );
  CMX2XL U1200 ( .A0(pfifo_datain_1_d[6]), .A1(\rdata_ch.RDATA [6]), .S(n1059), 
        .Z(N639) );
  CMX2XL U1201 ( .A0(pfifo_datain_1_d[7]), .A1(\rdata_ch.RDATA [7]), .S(n906), 
        .Z(N640) );
  CMX2XL U1202 ( .A0(pfifo_datain_1_d[8]), .A1(\rdata_ch.RDATA [8]), .S(n1059), 
        .Z(N641) );
  CMX2XL U1203 ( .A0(pfifo_datain_1_d[9]), .A1(\rdata_ch.RDATA [9]), .S(n1059), 
        .Z(N642) );
  CMX2XL U1204 ( .A0(pfifo_datain_1_d[10]), .A1(\rdata_ch.RDATA [10]), .S(
        n1059), .Z(N643) );
  CMX2XL U1205 ( .A0(pfifo_datain_1_d[11]), .A1(\rdata_ch.RDATA [11]), .S(
        n1059), .Z(N644) );
  CMX2XL U1206 ( .A0(pfifo_datain_1_d[12]), .A1(\rdata_ch.RDATA [12]), .S(
        n1059), .Z(N645) );
  CMX2XL U1207 ( .A0(pfifo_datain_1_d[13]), .A1(\rdata_ch.RDATA [13]), .S(
        n1059), .Z(N646) );
  CMX2XL U1208 ( .A0(pfifo_datain_1_d[14]), .A1(\rdata_ch.RDATA [14]), .S(
        n1059), .Z(N647) );
  CMX2XL U1209 ( .A0(pfifo_datain_1_d[15]), .A1(\rdata_ch.RDATA [15]), .S(
        n1059), .Z(N648) );
  CMX2XL U1210 ( .A0(pfifo_datain_1_d[16]), .A1(\rdata_ch.RDATA [16]), .S(
        n1059), .Z(N649) );
  CMX2XL U1211 ( .A0(pfifo_datain_1_d[37]), .A1(\rdata_ch.RDATA [37]), .S(n906), .Z(N670) );
  CMX2XL U1212 ( .A0(pfifo_datain_1_d[47]), .A1(\rdata_ch.RDATA [47]), .S(n906), .Z(N680) );
  CMX2XL U1213 ( .A0(pfifo_datain_1_d[52]), .A1(\rdata_ch.RDATA [52]), .S(n906), .Z(N685) );
  CMX2XL U1214 ( .A0(pfifo_datain_1_d[58]), .A1(\rdata_ch.RDATA [58]), .S(
        n1059), .Z(N691) );
  CMX2XL U1215 ( .A0(pfifo_datain_1_d[61]), .A1(\rdata_ch.RDATA [61]), .S(
        n1059), .Z(N694) );
  CMX2XL U1216 ( .A0(pfifo_datain_1_d[42]), .A1(\rdata_ch.RDATA [42]), .S(n906), .Z(N675) );
  CMX2XL U1217 ( .A0(pfifo_datain_1_d[53]), .A1(\rdata_ch.RDATA [53]), .S(n906), .Z(N686) );
  CMX2XL U1218 ( .A0(pfifo_datain_1_d[50]), .A1(\rdata_ch.RDATA [50]), .S(n906), .Z(N683) );
  CMX2XL U1219 ( .A0(pfifo_datain_1_d[41]), .A1(\rdata_ch.RDATA [41]), .S(n906), .Z(N674) );
  CMX2XL U1220 ( .A0(pfifo_datain_1_d[57]), .A1(\rdata_ch.RDATA [57]), .S(n906), .Z(N690) );
  CMX2XL U1221 ( .A0(pfifo_datain_1_d[38]), .A1(\rdata_ch.RDATA [38]), .S(
        n1059), .Z(N671) );
  CMX2XL U1222 ( .A0(pfifo_datain_1_d[36]), .A1(\rdata_ch.RDATA [36]), .S(n906), .Z(N669) );
  CMX2XL U1223 ( .A0(pfifo_datain_1_d[62]), .A1(\rdata_ch.RDATA [62]), .S(n906), .Z(N695) );
  CMX2XL U1224 ( .A0(pfifo_datain_1_d[45]), .A1(\rdata_ch.RDATA [45]), .S(n906), .Z(N678) );
  CMX2XL U1225 ( .A0(pfifo_datain_1_d[56]), .A1(\rdata_ch.RDATA [56]), .S(
        n1059), .Z(N689) );
  CMX2XL U1226 ( .A0(pfifo_datain_1_d[35]), .A1(\rdata_ch.RDATA [35]), .S(
        n1059), .Z(N668) );
  CMX2XL U1227 ( .A0(pfifo_datain_1_d[46]), .A1(\rdata_ch.RDATA [46]), .S(n906), .Z(N679) );
  CMX2XL U1228 ( .A0(pfifo_datain_1_d[49]), .A1(\rdata_ch.RDATA [49]), .S(n906), .Z(N682) );
  CMX2XL U1229 ( .A0(pfifo_datain_1_d[51]), .A1(\rdata_ch.RDATA [51]), .S(n906), .Z(N684) );
  CMX2XL U1230 ( .A0(pfifo_datain_1_d[43]), .A1(\rdata_ch.RDATA [43]), .S(n906), .Z(N676) );
  CMX2XL U1231 ( .A0(pfifo_datain_1_d[48]), .A1(\rdata_ch.RDATA [48]), .S(n906), .Z(N681) );
  CMX2XL U1232 ( .A0(pfifo_datain_1_d[39]), .A1(\rdata_ch.RDATA [39]), .S(n906), .Z(N672) );
  CMX2XL U1233 ( .A0(pfifo_datain_1_d[60]), .A1(\rdata_ch.RDATA [60]), .S(
        n1059), .Z(N693) );
  CMX2XL U1234 ( .A0(pfifo_datain_1_d[44]), .A1(\rdata_ch.RDATA [44]), .S(n906), .Z(N677) );
  CMX2XL U1235 ( .A0(pfifo_datain_1_d[55]), .A1(\rdata_ch.RDATA [55]), .S(
        n1059), .Z(N688) );
  CMX2XL U1236 ( .A0(pfifo_datain_1_d[34]), .A1(\rdata_ch.RDATA [34]), .S(
        n1059), .Z(N667) );
  CMX2XL U1237 ( .A0(pfifo_datain_1_d[33]), .A1(\rdata_ch.RDATA [33]), .S(n906), .Z(N666) );
  CMX2XL U1238 ( .A0(pfifo_datain_1_d[40]), .A1(\rdata_ch.RDATA [40]), .S(n906), .Z(N673) );
  CMX2XL U1239 ( .A0(pfifo_datain_0_d[62]), .A1(\rdata_ch.RDATA [62]), .S(
        n1058), .Z(N630) );
  CMX2XL U1240 ( .A0(pfifo_datain_0_d[36]), .A1(\rdata_ch.RDATA [36]), .S(
        n1058), .Z(N604) );
  CMX2XL U1241 ( .A0(pfifo_datain_0_d[54]), .A1(\rdata_ch.RDATA [54]), .S(
        n1058), .Z(N622) );
  CMX2XL U1242 ( .A0(pfifo_datain_0_d[58]), .A1(\rdata_ch.RDATA [58]), .S(
        n1058), .Z(N626) );
  CMX2XL U1243 ( .A0(pfifo_datain_0_d[9]), .A1(\rdata_ch.RDATA [9]), .S(n1058), 
        .Z(N577) );
  CMX2XL U1244 ( .A0(pfifo_datain_0_d[61]), .A1(\rdata_ch.RDATA [61]), .S(
        n1058), .Z(N629) );
  CMX2XL U1245 ( .A0(pfifo_datain_0_d[56]), .A1(\rdata_ch.RDATA [56]), .S(
        n1058), .Z(N624) );
  CMX2XL U1246 ( .A0(pfifo_datain_0_d[50]), .A1(\rdata_ch.RDATA [50]), .S(
        n1058), .Z(N618) );
  CMX2XL U1247 ( .A0(pfifo_datain_0_d[16]), .A1(\rdata_ch.RDATA [16]), .S(
        n1058), .Z(N584) );
  CMX2XL U1248 ( .A0(pfifo_datain_0_d[35]), .A1(\rdata_ch.RDATA [35]), .S(
        n1058), .Z(N603) );
  CMX2XL U1249 ( .A0(pfifo_datain_0_d[40]), .A1(\rdata_ch.RDATA [40]), .S(
        n1058), .Z(N608) );
  CMX2XL U1250 ( .A0(pfifo_datain_0_d[55]), .A1(\rdata_ch.RDATA [55]), .S(
        n1058), .Z(N623) );
  CMX2XL U1251 ( .A0(pfifo_datain_0_d[60]), .A1(\rdata_ch.RDATA [60]), .S(
        n1058), .Z(N628) );
  CMX2XL U1252 ( .A0(pfifo_datain_0_d[59]), .A1(\rdata_ch.RDATA [59]), .S(
        n1058), .Z(N627) );
  CMX2XL U1253 ( .A0(pfifo_datain_0_d[11]), .A1(\rdata_ch.RDATA [11]), .S(
        n1058), .Z(N579) );
  CMX2XL U1254 ( .A0(pfifo_datain_0_d[10]), .A1(\rdata_ch.RDATA [10]), .S(
        n1058), .Z(N578) );
  CMX2XL U1255 ( .A0(pfifo_datain_0_d[52]), .A1(\rdata_ch.RDATA [52]), .S(
        n1058), .Z(N620) );
  CMX2XL U1256 ( .A0(pfifo_datain_0_d[41]), .A1(\rdata_ch.RDATA [41]), .S(
        n1058), .Z(N609) );
  CMX2XL U1257 ( .A0(pfifo_datain_0_d[42]), .A1(\rdata_ch.RDATA [42]), .S(
        n1058), .Z(N610) );
  CMX2XL U1258 ( .A0(pfifo_datain_0_d[13]), .A1(\rdata_ch.RDATA [13]), .S(
        n1058), .Z(N581) );
  CMX2XL U1259 ( .A0(pfifo_datain_0_d[51]), .A1(\rdata_ch.RDATA [51]), .S(
        n1058), .Z(N619) );
  CMX2XL U1260 ( .A0(pfifo_datain_0_d[14]), .A1(\rdata_ch.RDATA [14]), .S(
        n1058), .Z(N582) );
  CMX2XL U1261 ( .A0(pfifo_datain_0_d[12]), .A1(\rdata_ch.RDATA [12]), .S(
        n1058), .Z(N580) );
  CMX2XL U1262 ( .A0(pfifo_datain_0_d[15]), .A1(\rdata_ch.RDATA [15]), .S(
        n1058), .Z(N583) );
  CMX2XL U1263 ( .A0(pfifo_datain_0_d[63]), .A1(\rdata_ch.RDATA [63]), .S(
        n1058), .Z(N631) );
  CMX2XL U1264 ( .A0(pfifo_datain_0_d[37]), .A1(\rdata_ch.RDATA [37]), .S(
        n1058), .Z(N605) );
  CMX2XL U1265 ( .A0(pfifo_datain_0_d[53]), .A1(\rdata_ch.RDATA [53]), .S(
        n1058), .Z(N621) );
  CMX2XL U1266 ( .A0(pfifo_datain_0_d[5]), .A1(\rdata_ch.RDATA [5]), .S(n1058), 
        .Z(N573) );
  CMX2XL U1267 ( .A0(pfifo_datain_0_d[32]), .A1(\rdata_ch.RDATA [32]), .S(
        n1058), .Z(N600) );
  CMX2XL U1268 ( .A0(pfifo_datain_0_d[4]), .A1(\rdata_ch.RDATA [4]), .S(n1058), 
        .Z(N572) );
  CMX2XL U1269 ( .A0(pfifo_datain_0_d[39]), .A1(\rdata_ch.RDATA [39]), .S(
        n1058), .Z(N607) );
  CMX2XL U1270 ( .A0(pfifo_datain_0_d[3]), .A1(\rdata_ch.RDATA [3]), .S(n1058), 
        .Z(N571) );
  CMX2XL U1271 ( .A0(pfifo_datain_0_d[47]), .A1(\rdata_ch.RDATA [47]), .S(
        n1058), .Z(N615) );
  CMX2XL U1272 ( .A0(pfifo_datain_0_d[44]), .A1(\rdata_ch.RDATA [44]), .S(
        n1058), .Z(N612) );
  CMX2XL U1273 ( .A0(pfifo_datain_0_d[2]), .A1(\rdata_ch.RDATA [2]), .S(n1058), 
        .Z(N570) );
  CMX2XL U1274 ( .A0(pfifo_datain_0_d[20]), .A1(\rdata_ch.RDATA [20]), .S(
        n1058), .Z(N588) );
  CMX2XL U1275 ( .A0(pfifo_datain_0_d[46]), .A1(\rdata_ch.RDATA [46]), .S(
        n1058), .Z(N614) );
  CMX2XL U1276 ( .A0(pfifo_datain_0_d[1]), .A1(\rdata_ch.RDATA [1]), .S(n1058), 
        .Z(N569) );
  CMX2XL U1277 ( .A0(pfifo_datain_0_d[21]), .A1(\rdata_ch.RDATA [21]), .S(
        n1058), .Z(N589) );
  CMX2XL U1278 ( .A0(pfifo_datain_0_d[28]), .A1(\rdata_ch.RDATA [28]), .S(
        n1058), .Z(N596) );
  CMX2XL U1279 ( .A0(pfifo_datain_0_d[22]), .A1(\rdata_ch.RDATA [22]), .S(
        n1058), .Z(N590) );
  CMX2XL U1280 ( .A0(pfifo_datain_0_d[0]), .A1(\rdata_ch.RDATA [0]), .S(n1058), 
        .Z(N568) );
  CMX2XL U1281 ( .A0(pfifo_datain_0_d[45]), .A1(\rdata_ch.RDATA [45]), .S(
        n1058), .Z(N613) );
  CMX2XL U1282 ( .A0(pfifo_datain_0_d[49]), .A1(\rdata_ch.RDATA [49]), .S(
        n1058), .Z(N617) );
  CMX2XL U1283 ( .A0(pfifo_datain_0_d[38]), .A1(\rdata_ch.RDATA [38]), .S(
        n1058), .Z(N606) );
  CMX2XL U1284 ( .A0(pfifo_datain_0_d[33]), .A1(\rdata_ch.RDATA [33]), .S(
        n1058), .Z(N601) );
  CMX2XL U1285 ( .A0(pfifo_datain_0_d[7]), .A1(\rdata_ch.RDATA [7]), .S(n1058), 
        .Z(N575) );
  CMX2XL U1286 ( .A0(pfifo_datain_0_d[34]), .A1(\rdata_ch.RDATA [34]), .S(
        n1058), .Z(N602) );
  CMX2XL U1287 ( .A0(pfifo_datain_0_d[6]), .A1(\rdata_ch.RDATA [6]), .S(n1058), 
        .Z(N574) );
  CMX2XL U1288 ( .A0(pfifo_datain_0_d[48]), .A1(\rdata_ch.RDATA [48]), .S(
        n1058), .Z(N616) );
  CMX2XL U1289 ( .A0(pfifo_datain_0_d[43]), .A1(\rdata_ch.RDATA [43]), .S(
        n1058), .Z(N611) );
  CMX2XL U1290 ( .A0(pfifo_datain_0_d[57]), .A1(\rdata_ch.RDATA [57]), .S(
        n1058), .Z(N625) );
  CMX2XL U1291 ( .A0(pfifo_datain_0_d[8]), .A1(\rdata_ch.RDATA [8]), .S(n1058), 
        .Z(N576) );
  CMX2XL U1292 ( .A0(pfifo_datain_1_d[24]), .A1(\rdata_ch.RDATA [24]), .S(n906), .Z(N657) );
  CMX2XL U1293 ( .A0(pfifo_datain_0_d[24]), .A1(\rdata_ch.RDATA [24]), .S(
        n1058), .Z(N592) );
  CMX2XL U1294 ( .A0(pfifo_datain_1_d[23]), .A1(\rdata_ch.RDATA [23]), .S(
        n1059), .Z(N656) );
  CMX2XL U1295 ( .A0(pfifo_datain_0_d[23]), .A1(\rdata_ch.RDATA [23]), .S(
        n1058), .Z(N591) );
  CMX2XL U1296 ( .A0(pfifo_datain_1_d[17]), .A1(\rdata_ch.RDATA [17]), .S(
        n1059), .Z(N650) );
  CMX2XL U1297 ( .A0(pfifo_datain_0_d[17]), .A1(\rdata_ch.RDATA [17]), .S(
        n1058), .Z(N585) );
  CMX2XL U1298 ( .A0(pfifo_datain_1_d[29]), .A1(\rdata_ch.RDATA [29]), .S(
        n1059), .Z(N662) );
  CMX2XL U1299 ( .A0(pfifo_datain_0_d[29]), .A1(\rdata_ch.RDATA [29]), .S(
        n1058), .Z(N597) );
  CMX2XL U1300 ( .A0(pfifo_datain_1_d[25]), .A1(\rdata_ch.RDATA [25]), .S(n906), .Z(N658) );
  CMX2XL U1301 ( .A0(pfifo_datain_0_d[25]), .A1(\rdata_ch.RDATA [25]), .S(
        n1058), .Z(N593) );
  CMX2XL U1302 ( .A0(pfifo_datain_1_d[18]), .A1(\rdata_ch.RDATA [18]), .S(
        n1059), .Z(N651) );
  CMX2XL U1303 ( .A0(pfifo_datain_0_d[18]), .A1(\rdata_ch.RDATA [18]), .S(
        n1058), .Z(N586) );
  CMX2XL U1304 ( .A0(pfifo_datain_1_d[30]), .A1(\rdata_ch.RDATA [30]), .S(n906), .Z(N663) );
  CMX2XL U1305 ( .A0(pfifo_datain_0_d[30]), .A1(\rdata_ch.RDATA [30]), .S(
        n1058), .Z(N598) );
  CMX2XL U1306 ( .A0(\rdata_ch.RDATA [30]), .A1(link_datain_0_d[30]), .S(n960), 
        .Z(link_datain_0[30]) );
  CMX2XL U1307 ( .A0(pfifo_datain_1_d[19]), .A1(\rdata_ch.RDATA [19]), .S(n906), .Z(N652) );
  CMX2XL U1308 ( .A0(pfifo_datain_0_d[19]), .A1(\rdata_ch.RDATA [19]), .S(
        n1058), .Z(N587) );
  CMX2XL U1309 ( .A0(\rdata_ch.RDATA [19]), .A1(link_datain_1_d[19]), .S(n950), 
        .Z(link_datain_1[19]) );
  CMX2XL U1310 ( .A0(pfifo_datain_1_d[26]), .A1(\rdata_ch.RDATA [26]), .S(
        n1059), .Z(N659) );
  CMX2XL U1311 ( .A0(pfifo_datain_0_d[26]), .A1(\rdata_ch.RDATA [26]), .S(
        n1058), .Z(N594) );
  CMX2XL U1312 ( .A0(\rdata_ch.RDATA [26]), .A1(link_datain_0_d[26]), .S(n960), 
        .Z(link_datain_0[26]) );
  CMX2XL U1313 ( .A0(pfifo_datain_1_d[31]), .A1(\rdata_ch.RDATA [31]), .S(
        n1059), .Z(N664) );
  CMX2XL U1314 ( .A0(pfifo_datain_0_d[31]), .A1(\rdata_ch.RDATA [31]), .S(
        n1058), .Z(N599) );
  CMX2XL U1315 ( .A0(\rdata_ch.RDATA [31]), .A1(link_datain_0_d[31]), .S(n960), 
        .Z(link_datain_0[31]) );
  CMX2XL U1316 ( .A0(pfifo_datain_1_d[27]), .A1(\rdata_ch.RDATA [27]), .S(
        n1059), .Z(N660) );
  CMX2XL U1317 ( .A0(pfifo_datain_0_d[27]), .A1(\rdata_ch.RDATA [27]), .S(
        n1058), .Z(N595) );
  CMX2XL U1318 ( .A0(\rdata_ch.RDATA [27]), .A1(link_datain_0_d[27]), .S(n960), 
        .Z(link_datain_0[27]) );
  CENX1 U1319 ( .A(\rdata_ch.RDATA [0]), .B(haddr2_d[0]), .Z(n910) );
  CENX1 U1320 ( .A(\rdata_ch.RDATA [1]), .B(haddr2_d[1]), .Z(n909) );
  CENX1 U1321 ( .A(\rdata_ch.RDATA [2]), .B(haddr2_d[2]), .Z(n908) );
  CENX1 U1322 ( .A(\rdata_ch.RDATA [3]), .B(haddr2_d[3]), .Z(n907) );
  CAN4X1 U1323 ( .A(n910), .B(n909), .C(n908), .D(n907), .Z(n949) );
  CENX1 U1324 ( .A(\rdata_ch.RDATA [4]), .B(haddr2_d[4]), .Z(n914) );
  CENX1 U1325 ( .A(\rdata_ch.RDATA [5]), .B(haddr2_d[5]), .Z(n913) );
  CENX1 U1326 ( .A(\rdata_ch.RDATA [6]), .B(haddr2_d[6]), .Z(n912) );
  CENX1 U1327 ( .A(\rdata_ch.RDATA [7]), .B(haddr2_d[7]), .Z(n911) );
  CAN4X1 U1328 ( .A(n914), .B(n913), .C(n912), .D(n911), .Z(n948) );
  CEOXL U1329 ( .A(haddr2_d[10]), .B(\rdata_ch.RDATA [10]), .Z(n921) );
  CENX1 U1330 ( .A(\rdata_ch.RDATA [12]), .B(haddr2_d[12]), .Z(n918) );
  CENX1 U1331 ( .A(\rdata_ch.RDATA [13]), .B(haddr2_d[13]), .Z(n917) );
  CENX1 U1332 ( .A(\rdata_ch.RDATA [14]), .B(haddr2_d[14]), .Z(n916) );
  CND4X1 U1333 ( .A(n918), .B(n917), .C(n916), .D(n915), .Z(n920) );
  CEOXL U1334 ( .A(\rdata_ch.RDATA [11]), .B(haddr2_d[11]), .Z(n919) );
  CNR3X1 U1335 ( .A(n921), .B(n920), .C(n919), .Z(n945) );
  CENX1 U1336 ( .A(\rdata_ch.RDATA [20]), .B(haddr2_d[20]), .Z(n925) );
  CENX1 U1337 ( .A(\rdata_ch.RDATA [21]), .B(haddr2_d[21]), .Z(n924) );
  CENX1 U1338 ( .A(\rdata_ch.RDATA [22]), .B(haddr2_d[22]), .Z(n923) );
  CENX1 U1339 ( .A(\rdata_ch.RDATA [23]), .B(haddr2_d[23]), .Z(n922) );
  CAN4X1 U1340 ( .A(n925), .B(n924), .C(n923), .D(n922), .Z(n941) );
  CENX1 U1341 ( .A(\rdata_ch.RDATA [16]), .B(haddr2_d[16]), .Z(n929) );
  CENX1 U1342 ( .A(\rdata_ch.RDATA [17]), .B(haddr2_d[17]), .Z(n928) );
  CENX1 U1343 ( .A(\rdata_ch.RDATA [18]), .B(haddr2_d[18]), .Z(n927) );
  CENX1 U1344 ( .A(\rdata_ch.RDATA [19]), .B(haddr2_d[19]), .Z(n926) );
  CAN4X1 U1345 ( .A(n929), .B(n928), .C(n927), .D(n926), .Z(n940) );
  CENX1 U1346 ( .A(\rdata_ch.RDATA [28]), .B(haddr2_d[28]), .Z(n933) );
  CENX1 U1347 ( .A(\rdata_ch.RDATA [29]), .B(haddr2_d[29]), .Z(n932) );
  CENX1 U1348 ( .A(\rdata_ch.RDATA [30]), .B(haddr2_d[30]), .Z(n931) );
  CENX1 U1349 ( .A(\rdata_ch.RDATA [31]), .B(haddr2_d[31]), .Z(n930) );
  CAN4X1 U1350 ( .A(n933), .B(n932), .C(n931), .D(n930), .Z(n939) );
  CENX1 U1351 ( .A(\rdata_ch.RDATA [24]), .B(haddr2_d[24]), .Z(n937) );
  CENX1 U1352 ( .A(\rdata_ch.RDATA [26]), .B(haddr2_d[26]), .Z(n935) );
  CENX1 U1353 ( .A(\rdata_ch.RDATA [27]), .B(haddr2_d[27]), .Z(n934) );
  CAN4X1 U1354 ( .A(n937), .B(n936), .C(n935), .D(n934), .Z(n938) );
  CAN4X1 U1355 ( .A(n941), .B(n940), .C(n939), .D(n938), .Z(n944) );
  CENX1 U1356 ( .A(\rdata_ch.RDATA [8]), .B(haddr2_d[8]), .Z(n943) );
  CENX1 U1357 ( .A(\rdata_ch.RDATA [9]), .B(haddr2_d[9]), .Z(n942) );
  CAN4X1 U1358 ( .A(n945), .B(n944), .C(n943), .D(n942), .Z(n947) );
  CANR11X4 U1359 ( .A(n949), .B(n948), .C(n947), .D(n946), .Z(link_push_2) );
  CMX2XL U1360 ( .A0(\rdata_ch.RDATA [1]), .A1(link_datain_1_d[1]), .S(n950), 
        .Z(link_datain_1[1]) );
  CMX2XL U1361 ( .A0(\rdata_ch.RDATA [3]), .A1(link_datain_1_d[3]), .S(n950), 
        .Z(link_datain_1[3]) );
  CMX2XL U1362 ( .A0(\rdata_ch.RDATA [31]), .A1(link_datain_1_d[31]), .S(n950), 
        .Z(link_datain_1[31]) );
  CMX2XL U1363 ( .A0(\rdata_ch.RDATA [25]), .A1(link_datain_1_d[25]), .S(n950), 
        .Z(link_datain_1[25]) );
  CMX2XL U1364 ( .A0(\rdata_ch.RDATA [26]), .A1(link_datain_1_d[26]), .S(n950), 
        .Z(link_datain_1[26]) );
  CMX2XL U1365 ( .A0(\rdata_ch.RDATA [27]), .A1(link_datain_1_d[27]), .S(n950), 
        .Z(link_datain_1[27]) );
  CMX2XL U1366 ( .A0(\rdata_ch.RDATA [28]), .A1(link_datain_1_d[28]), .S(n950), 
        .Z(link_datain_1[28]) );
  CMX2XL U1367 ( .A0(\rdata_ch.RDATA [29]), .A1(link_datain_1_d[29]), .S(n950), 
        .Z(link_datain_1[29]) );
  CMX2XL U1368 ( .A0(\rdata_ch.RDATA [23]), .A1(link_datain_1_d[23]), .S(n950), 
        .Z(link_datain_1[23]) );
  CMX2XL U1369 ( .A0(\rdata_ch.RDATA [24]), .A1(link_datain_1_d[24]), .S(n950), 
        .Z(link_datain_1[24]) );
  CMX2XL U1370 ( .A0(\rdata_ch.RDATA [22]), .A1(link_datain_1_d[22]), .S(n950), 
        .Z(link_datain_1[22]) );
  CMX2XL U1371 ( .A0(\rdata_ch.RDATA [30]), .A1(link_datain_1_d[30]), .S(n950), 
        .Z(link_datain_1[30]) );
  CND2IX1 U1372 ( .B(\cur_chstate_0[0] ), .A(n122), .Z(n753) );
  CND2IX1 U1373 ( .B(\cur_chstate_2[0] ), .A(n129), .Z(n791) );
  CND2IX1 U1374 ( .B(\cur_chstate_1[0] ), .A(n40), .Z(n716) );
  CND2XL U1375 ( .A(n1049), .B(n1050), .Z(n952) );
  CIVXL U1376 ( .A(cur_state[0]), .Z(n951) );
  COND2X1 U1377 ( .A(n127), .B(n952), .C(n1049), .D(n951), .Z(n787) );
  CANR5CXL U1378 ( .A(ch_gnt_2d[1]), .B(ch_gnt_2d[0]), .C(ch_gnt_2d[2]), .Z(
        n953) );
  CND2X1 U1379 ( .A(n954), .B(n953), .Z(n1043) );
  COND4CX1 U1380 ( .A(n1045), .B(n955), .C(n1043), .D(\raddr_ch.ARID [1]), .Z(
        n956) );
  CND2X1 U1381 ( .A(n957), .B(n956), .Z(arid_nxt[1]) );
  CAOR1X1 U1382 ( .A(arburst_d), .B(n959), .C(n958), .Z(\raddr_ch.ARBURST [0])
         );
  CMX2X1 U1383 ( .A0(\rdata_ch.RDATA [19]), .A1(link_datain_0_d[19]), .S(n960), 
        .Z(link_datain_0[19]) );
  CMX2X1 U1384 ( .A0(\rdata_ch.RDATA [23]), .A1(link_datain_0_d[23]), .S(n960), 
        .Z(link_datain_0[23]) );
  CMX2X1 U1385 ( .A0(\rdata_ch.RDATA [21]), .A1(link_datain_0_d[21]), .S(n960), 
        .Z(link_datain_0[21]) );
  CMX2X1 U1386 ( .A0(\rdata_ch.RDATA [20]), .A1(link_datain_0_d[20]), .S(n960), 
        .Z(link_datain_0[20]) );
  CMX2X1 U1387 ( .A0(\rdata_ch.RDATA [18]), .A1(link_datain_0_d[18]), .S(n960), 
        .Z(link_datain_0[18]) );
  CMX2X1 U1388 ( .A0(\rdata_ch.RDATA [17]), .A1(link_datain_0_d[17]), .S(n960), 
        .Z(link_datain_0[17]) );
  CMX2X1 U1389 ( .A0(\rdata_ch.RDATA [16]), .A1(link_datain_0_d[16]), .S(n960), 
        .Z(link_datain_0[16]) );
  CMX2X1 U1390 ( .A0(\rdata_ch.RDATA [13]), .A1(link_datain_0_d[13]), .S(n960), 
        .Z(link_datain_0[13]) );
  CMX2X1 U1391 ( .A0(\rdata_ch.RDATA [12]), .A1(link_datain_0_d[12]), .S(n960), 
        .Z(link_datain_0[12]) );
  CMX2X1 U1392 ( .A0(\rdata_ch.RDATA [11]), .A1(link_datain_0_d[11]), .S(n960), 
        .Z(link_datain_0[11]) );
  CMX2X1 U1393 ( .A0(\rdata_ch.RDATA [10]), .A1(link_datain_0_d[10]), .S(n960), 
        .Z(link_datain_0[10]) );
  CMX2X1 U1394 ( .A0(\rdata_ch.RDATA [9]), .A1(link_datain_0_d[9]), .S(n960), 
        .Z(link_datain_0[9]) );
  CMX2X1 U1395 ( .A0(\rdata_ch.RDATA [22]), .A1(link_datain_0_d[22]), .S(n960), 
        .Z(link_datain_0[22]) );
  CMX2X1 U1396 ( .A0(\rdata_ch.RDATA [8]), .A1(link_datain_0_d[8]), .S(n960), 
        .Z(link_datain_0[8]) );
  CMX2X1 U1397 ( .A0(\rdata_ch.RDATA [7]), .A1(link_datain_0_d[7]), .S(n960), 
        .Z(link_datain_0[7]) );
  CMX2X1 U1398 ( .A0(\rdata_ch.RDATA [6]), .A1(link_datain_0_d[6]), .S(n960), 
        .Z(link_datain_0[6]) );
  CMX2X1 U1399 ( .A0(\rdata_ch.RDATA [5]), .A1(link_datain_0_d[5]), .S(n960), 
        .Z(link_datain_0[5]) );
  CMX2X1 U1400 ( .A0(\rdata_ch.RDATA [4]), .A1(link_datain_0_d[4]), .S(n960), 
        .Z(link_datain_0[4]) );
  CMX2X1 U1401 ( .A0(\rdata_ch.RDATA [3]), .A1(link_datain_0_d[3]), .S(n960), 
        .Z(link_datain_0[3]) );
  CMX2X1 U1402 ( .A0(\rdata_ch.RDATA [2]), .A1(link_datain_0_d[2]), .S(n960), 
        .Z(link_datain_0[2]) );
  CMX2X1 U1403 ( .A0(\rdata_ch.RDATA [1]), .A1(link_datain_0_d[1]), .S(n960), 
        .Z(link_datain_0[1]) );
  CMX2X1 U1404 ( .A0(\rdata_ch.RDATA [0]), .A1(link_datain_0_d[0]), .S(n960), 
        .Z(link_datain_0[0]) );
  CMX2X1 U1405 ( .A0(\rdata_ch.RDATA [24]), .A1(link_datain_0_d[24]), .S(n960), 
        .Z(link_datain_0[24]) );
  CMX2X1 U1406 ( .A0(\rdata_ch.RDATA [28]), .A1(link_datain_0_d[28]), .S(n960), 
        .Z(link_datain_0[28]) );
  CIVX1 U1407 ( .A(n961), .Z(n962) );
  CNR2X2 U1408 ( .A(link_empty_1), .B(n962), .Z(n1032) );
  CND3XL U1409 ( .A(n968), .B(n969), .C(n962), .Z(n963) );
  CANR2X1 U1410 ( .A(n1032), .B(link_dataout_1[18]), .C(haddr[50]), .D(n801), 
        .Z(n971) );
  CNR2X2 U1411 ( .A(link_empty_2), .B(n968), .Z(n1033) );
  CANR2X1 U1412 ( .A(n1033), .B(link_dataout_2[18]), .C(n802), .D(
        link_dataout_0[18]), .Z(n970) );
  CND2X1 U1413 ( .A(n971), .B(n970), .Z(\raddr_ch.ARADDR [18]) );
  CANR2X1 U1414 ( .A(n1032), .B(link_dataout_1[31]), .C(haddr[63]), .D(n801), 
        .Z(n973) );
  CANR2X1 U1415 ( .A(n1033), .B(link_dataout_2[31]), .C(n802), .D(
        link_dataout_0[31]), .Z(n972) );
  CND2X1 U1416 ( .A(n973), .B(n972), .Z(\raddr_ch.ARADDR [31]) );
  CANR2X1 U1417 ( .A(n1032), .B(link_dataout_1[3]), .C(haddr[35]), .D(n801), 
        .Z(n975) );
  CANR2X1 U1418 ( .A(n1033), .B(link_dataout_2[3]), .C(n802), .D(
        link_dataout_0[3]), .Z(n974) );
  CND2X1 U1419 ( .A(n975), .B(n974), .Z(\raddr_ch.ARADDR [3]) );
  CANR2X1 U1420 ( .A(n1032), .B(link_dataout_1[4]), .C(haddr[36]), .D(n801), 
        .Z(n977) );
  CANR2X1 U1421 ( .A(n1033), .B(link_dataout_2[4]), .C(n802), .D(
        link_dataout_0[4]), .Z(n976) );
  CND2X1 U1422 ( .A(n977), .B(n976), .Z(\raddr_ch.ARADDR [4]) );
  CANR2X1 U1423 ( .A(n1032), .B(link_dataout_1[5]), .C(haddr[37]), .D(n801), 
        .Z(n979) );
  CANR2X1 U1424 ( .A(n1033), .B(link_dataout_2[5]), .C(n802), .D(
        link_dataout_0[5]), .Z(n978) );
  CND2X1 U1425 ( .A(n979), .B(n978), .Z(\raddr_ch.ARADDR [5]) );
  CANR2X1 U1426 ( .A(n1032), .B(link_dataout_1[6]), .C(haddr[38]), .D(n801), 
        .Z(n981) );
  CANR2X1 U1427 ( .A(n1033), .B(link_dataout_2[6]), .C(n802), .D(
        link_dataout_0[6]), .Z(n980) );
  CND2X1 U1428 ( .A(n981), .B(n980), .Z(\raddr_ch.ARADDR [6]) );
  CANR2X1 U1429 ( .A(n1032), .B(link_dataout_1[16]), .C(haddr[48]), .D(n801), 
        .Z(n983) );
  CANR2X1 U1430 ( .A(n1033), .B(link_dataout_2[16]), .C(n802), .D(
        link_dataout_0[16]), .Z(n982) );
  CND2X1 U1431 ( .A(n983), .B(n982), .Z(\raddr_ch.ARADDR [16]) );
  CANR2X1 U1432 ( .A(n1032), .B(link_dataout_1[2]), .C(haddr[34]), .D(n801), 
        .Z(n985) );
  CANR2X1 U1433 ( .A(n1033), .B(link_dataout_2[2]), .C(n802), .D(
        link_dataout_0[2]), .Z(n984) );
  CND2X1 U1434 ( .A(n985), .B(n984), .Z(\raddr_ch.ARADDR [2]) );
  CANR2X1 U1435 ( .A(n1032), .B(link_dataout_1[20]), .C(haddr[52]), .D(n801), 
        .Z(n987) );
  CANR2X1 U1436 ( .A(n1033), .B(link_dataout_2[20]), .C(n802), .D(
        link_dataout_0[20]), .Z(n986) );
  CND2X1 U1437 ( .A(n987), .B(n986), .Z(\raddr_ch.ARADDR [20]) );
  CANR2X1 U1438 ( .A(n1032), .B(link_dataout_1[0]), .C(haddr[32]), .D(n801), 
        .Z(n989) );
  CANR2X1 U1439 ( .A(n1033), .B(link_dataout_2[0]), .C(n802), .D(
        link_dataout_0[0]), .Z(n988) );
  CND2X1 U1440 ( .A(n989), .B(n988), .Z(\raddr_ch.ARADDR [0]) );
  CANR2X1 U1441 ( .A(n1032), .B(link_dataout_1[1]), .C(haddr[33]), .D(n801), 
        .Z(n991) );
  CANR2X1 U1442 ( .A(n1033), .B(link_dataout_2[1]), .C(n802), .D(
        link_dataout_0[1]), .Z(n990) );
  CND2X1 U1443 ( .A(n991), .B(n990), .Z(\raddr_ch.ARADDR [1]) );
  CANR2X1 U1444 ( .A(n1032), .B(link_dataout_1[21]), .C(haddr[53]), .D(n801), 
        .Z(n993) );
  CANR2X1 U1445 ( .A(n1033), .B(link_dataout_2[21]), .C(n802), .D(
        link_dataout_0[21]), .Z(n992) );
  CND2X1 U1446 ( .A(n993), .B(n992), .Z(\raddr_ch.ARADDR [21]) );
  CANR2X1 U1447 ( .A(n1032), .B(link_dataout_1[24]), .C(haddr[56]), .D(n801), 
        .Z(n995) );
  CANR2X1 U1448 ( .A(n1033), .B(link_dataout_2[24]), .C(n802), .D(
        link_dataout_0[24]), .Z(n994) );
  CND2X1 U1449 ( .A(n995), .B(n994), .Z(\raddr_ch.ARADDR [24]) );
  CANR2X1 U1450 ( .A(n1032), .B(link_dataout_1[27]), .C(haddr[59]), .D(n801), 
        .Z(n997) );
  CANR2X1 U1451 ( .A(n1033), .B(link_dataout_2[27]), .C(n802), .D(
        link_dataout_0[27]), .Z(n996) );
  CND2X1 U1452 ( .A(n997), .B(n996), .Z(\raddr_ch.ARADDR [27]) );
  CANR2X1 U1453 ( .A(n1032), .B(link_dataout_1[23]), .C(haddr[55]), .D(n801), 
        .Z(n999) );
  CANR2X1 U1454 ( .A(n1033), .B(link_dataout_2[23]), .C(n802), .D(
        link_dataout_0[23]), .Z(n998) );
  CND2X1 U1455 ( .A(n999), .B(n998), .Z(\raddr_ch.ARADDR [23]) );
  CANR2X1 U1456 ( .A(n1032), .B(link_dataout_1[11]), .C(haddr[43]), .D(n801), 
        .Z(n1001) );
  CANR2X1 U1457 ( .A(n1033), .B(link_dataout_2[11]), .C(n802), .D(
        link_dataout_0[11]), .Z(n1000) );
  CND2X1 U1458 ( .A(n1001), .B(n1000), .Z(\raddr_ch.ARADDR [11]) );
  CANR2X1 U1459 ( .A(n1032), .B(link_dataout_1[9]), .C(haddr[41]), .D(n801), 
        .Z(n1003) );
  CANR2X1 U1460 ( .A(n1033), .B(link_dataout_2[9]), .C(n802), .D(
        link_dataout_0[9]), .Z(n1002) );
  CND2X1 U1461 ( .A(n1003), .B(n1002), .Z(\raddr_ch.ARADDR [9]) );
  CANR2X1 U1462 ( .A(n1032), .B(link_dataout_1[22]), .C(haddr[54]), .D(n801), 
        .Z(n1005) );
  CANR2X1 U1463 ( .A(n1033), .B(link_dataout_2[22]), .C(n802), .D(
        link_dataout_0[22]), .Z(n1004) );
  CND2X1 U1464 ( .A(n1005), .B(n1004), .Z(\raddr_ch.ARADDR [22]) );
  CANR2X1 U1465 ( .A(n1032), .B(link_dataout_1[13]), .C(haddr[45]), .D(n801), 
        .Z(n1007) );
  CANR2X1 U1466 ( .A(n1033), .B(link_dataout_2[13]), .C(n802), .D(
        link_dataout_0[13]), .Z(n1006) );
  CND2X1 U1467 ( .A(n1007), .B(n1006), .Z(\raddr_ch.ARADDR [13]) );
  CANR2X1 U1468 ( .A(n1032), .B(link_dataout_1[12]), .C(haddr[44]), .D(n801), 
        .Z(n1009) );
  CANR2X1 U1469 ( .A(n1033), .B(link_dataout_2[12]), .C(n802), .D(
        link_dataout_0[12]), .Z(n1008) );
  CND2X1 U1470 ( .A(n1009), .B(n1008), .Z(\raddr_ch.ARADDR [12]) );
  CANR2X1 U1471 ( .A(n1032), .B(link_dataout_1[19]), .C(haddr[51]), .D(n801), 
        .Z(n1011) );
  CANR2X1 U1472 ( .A(n1033), .B(link_dataout_2[19]), .C(n802), .D(
        link_dataout_0[19]), .Z(n1010) );
  CND2X1 U1473 ( .A(n1011), .B(n1010), .Z(\raddr_ch.ARADDR [19]) );
  CANR2X1 U1474 ( .A(n1032), .B(link_dataout_1[10]), .C(haddr[42]), .D(n801), 
        .Z(n1013) );
  CANR2X1 U1475 ( .A(n1033), .B(link_dataout_2[10]), .C(n802), .D(
        link_dataout_0[10]), .Z(n1012) );
  CND2X1 U1476 ( .A(n1013), .B(n1012), .Z(\raddr_ch.ARADDR [10]) );
  CANR2X1 U1477 ( .A(n1032), .B(link_dataout_1[17]), .C(haddr[49]), .D(n801), 
        .Z(n1015) );
  CANR2X1 U1478 ( .A(n1033), .B(link_dataout_2[17]), .C(n802), .D(
        link_dataout_0[17]), .Z(n1014) );
  CND2X1 U1479 ( .A(n1015), .B(n1014), .Z(\raddr_ch.ARADDR [17]) );
  CANR2X1 U1480 ( .A(n1032), .B(link_dataout_1[8]), .C(haddr[40]), .D(n801), 
        .Z(n1017) );
  CANR2X1 U1481 ( .A(n1033), .B(link_dataout_2[8]), .C(n802), .D(
        link_dataout_0[8]), .Z(n1016) );
  CND2X1 U1482 ( .A(n1017), .B(n1016), .Z(\raddr_ch.ARADDR [8]) );
  CANR2X1 U1483 ( .A(n1032), .B(link_dataout_1[15]), .C(haddr[47]), .D(n801), 
        .Z(n1019) );
  CANR2X1 U1484 ( .A(n1033), .B(link_dataout_2[15]), .C(n802), .D(
        link_dataout_0[15]), .Z(n1018) );
  CND2X1 U1485 ( .A(n1019), .B(n1018), .Z(\raddr_ch.ARADDR [15]) );
  CANR2X1 U1486 ( .A(n1032), .B(link_dataout_1[14]), .C(haddr[46]), .D(n801), 
        .Z(n1021) );
  CANR2X1 U1487 ( .A(n1033), .B(link_dataout_2[14]), .C(n802), .D(
        link_dataout_0[14]), .Z(n1020) );
  CND2X1 U1488 ( .A(n1021), .B(n1020), .Z(\raddr_ch.ARADDR [14]) );
  CANR2X1 U1489 ( .A(n1032), .B(link_dataout_1[30]), .C(haddr[62]), .D(n801), 
        .Z(n1023) );
  CANR2X1 U1490 ( .A(n1033), .B(link_dataout_2[30]), .C(n802), .D(
        link_dataout_0[30]), .Z(n1022) );
  CND2X1 U1491 ( .A(n1023), .B(n1022), .Z(\raddr_ch.ARADDR [30]) );
  CANR2X1 U1492 ( .A(n1032), .B(link_dataout_1[29]), .C(haddr[61]), .D(n801), 
        .Z(n1025) );
  CANR2X1 U1493 ( .A(n1033), .B(link_dataout_2[29]), .C(n802), .D(
        link_dataout_0[29]), .Z(n1024) );
  CND2X1 U1494 ( .A(n1025), .B(n1024), .Z(\raddr_ch.ARADDR [29]) );
  CANR2X1 U1495 ( .A(n1032), .B(link_dataout_1[28]), .C(haddr[60]), .D(n801), 
        .Z(n1027) );
  CANR2X1 U1496 ( .A(n1033), .B(link_dataout_2[28]), .C(n802), .D(
        link_dataout_0[28]), .Z(n1026) );
  CND2X1 U1497 ( .A(n1027), .B(n1026), .Z(\raddr_ch.ARADDR [28]) );
  CANR2X1 U1498 ( .A(n1032), .B(link_dataout_1[25]), .C(haddr[57]), .D(n801), 
        .Z(n1029) );
  CANR2X1 U1499 ( .A(n1033), .B(link_dataout_2[25]), .C(n802), .D(
        link_dataout_0[25]), .Z(n1028) );
  CND2X1 U1500 ( .A(n1029), .B(n1028), .Z(\raddr_ch.ARADDR [25]) );
  CANR2X1 U1501 ( .A(n1032), .B(link_dataout_1[26]), .C(haddr[58]), .D(n801), 
        .Z(n1031) );
  CANR2X1 U1502 ( .A(n1033), .B(link_dataout_2[26]), .C(n802), .D(
        link_dataout_0[26]), .Z(n1030) );
  CND2X1 U1503 ( .A(n1031), .B(n1030), .Z(\raddr_ch.ARADDR [26]) );
  CANR2X1 U1504 ( .A(n1032), .B(link_dataout_1[7]), .C(haddr[39]), .D(n801), 
        .Z(n1035) );
  CANR2X1 U1505 ( .A(n1033), .B(link_dataout_2[7]), .C(n802), .D(
        link_dataout_0[7]), .Z(n1034) );
  CND2X1 U1506 ( .A(n1035), .B(n1034), .Z(\raddr_ch.ARADDR [7]) );
  CMX2X1 U1507 ( .A0(\rdata_ch.RDATA [28]), .A1(link_datain_2_d[28]), .S(n1036), .Z(link_datain_2[28]) );
  CMX2X1 U1508 ( .A0(\rdata_ch.RDATA [23]), .A1(link_datain_2_d[23]), .S(n1036), .Z(link_datain_2[23]) );
  CMX2X1 U1509 ( .A0(\rdata_ch.RDATA [24]), .A1(link_datain_2_d[24]), .S(n1036), .Z(link_datain_2[24]) );
  CMX2X1 U1510 ( .A0(\rdata_ch.RDATA [8]), .A1(link_datain_2_d[8]), .S(n1036), 
        .Z(link_datain_2[8]) );
  CMX2X1 U1511 ( .A0(\rdata_ch.RDATA [0]), .A1(link_datain_2_d[0]), .S(n1036), 
        .Z(link_datain_2[0]) );
  CMX2X1 U1512 ( .A0(\rdata_ch.RDATA [1]), .A1(link_datain_2_d[1]), .S(n1036), 
        .Z(link_datain_2[1]) );
  CMX2X1 U1513 ( .A0(\rdata_ch.RDATA [2]), .A1(link_datain_2_d[2]), .S(n1036), 
        .Z(link_datain_2[2]) );
  CMX2X1 U1514 ( .A0(\rdata_ch.RDATA [3]), .A1(link_datain_2_d[3]), .S(n1036), 
        .Z(link_datain_2[3]) );
  CMX2X1 U1515 ( .A0(\rdata_ch.RDATA [4]), .A1(link_datain_2_d[4]), .S(n1036), 
        .Z(link_datain_2[4]) );
  CMX2X1 U1516 ( .A0(\rdata_ch.RDATA [5]), .A1(link_datain_2_d[5]), .S(n1036), 
        .Z(link_datain_2[5]) );
  CMX2X1 U1517 ( .A0(\rdata_ch.RDATA [6]), .A1(link_datain_2_d[6]), .S(n1036), 
        .Z(link_datain_2[6]) );
  CMX2X1 U1518 ( .A0(\rdata_ch.RDATA [7]), .A1(link_datain_2_d[7]), .S(n1036), 
        .Z(link_datain_2[7]) );
  CMX2X1 U1519 ( .A0(\rdata_ch.RDATA [20]), .A1(link_datain_2_d[20]), .S(n1036), .Z(link_datain_2[20]) );
  CMX2X1 U1520 ( .A0(\rdata_ch.RDATA [9]), .A1(link_datain_2_d[9]), .S(n1036), 
        .Z(link_datain_2[9]) );
  CMX2X1 U1521 ( .A0(\rdata_ch.RDATA [22]), .A1(link_datain_2_d[22]), .S(n1036), .Z(link_datain_2[22]) );
  CMX2X1 U1522 ( .A0(\rdata_ch.RDATA [21]), .A1(link_datain_2_d[21]), .S(n1036), .Z(link_datain_2[21]) );
  CMX2X1 U1523 ( .A0(\rdata_ch.RDATA [12]), .A1(link_datain_2_d[12]), .S(n1036), .Z(link_datain_2[12]) );
  CMX2X1 U1524 ( .A0(\rdata_ch.RDATA [13]), .A1(link_datain_2_d[13]), .S(n1036), .Z(link_datain_2[13]) );
  CMX2X1 U1525 ( .A0(\rdata_ch.RDATA [14]), .A1(link_datain_2_d[14]), .S(n1036), .Z(link_datain_2[14]) );
  CMX2X1 U1526 ( .A0(\rdata_ch.RDATA [16]), .A1(link_datain_2_d[16]), .S(n1036), .Z(link_datain_2[16]) );
  CMX2X1 U1527 ( .A0(\rdata_ch.RDATA [17]), .A1(link_datain_2_d[17]), .S(n1036), .Z(link_datain_2[17]) );
  CMX2X1 U1528 ( .A0(\rdata_ch.RDATA [10]), .A1(link_datain_2_d[10]), .S(n1036), .Z(link_datain_2[10]) );
  CMX2X1 U1529 ( .A0(\rdata_ch.RDATA [11]), .A1(link_datain_2_d[11]), .S(n1036), .Z(link_datain_2[11]) );
  CMX2XL U1530 ( .A0(pfifo_datain_2_d[22]), .A1(\rdata_ch.RDATA [22]), .S(
        n1055), .Z(N720) );
  CMX2XL U1531 ( .A0(pfifo_datain_2_d[19]), .A1(\rdata_ch.RDATA [19]), .S(
        n1055), .Z(N717) );
  CMX2XL U1532 ( .A0(pfifo_datain_2_d[18]), .A1(\rdata_ch.RDATA [18]), .S(
        n1055), .Z(N716) );
  CMX2XL U1533 ( .A0(pfifo_datain_2_d[31]), .A1(\rdata_ch.RDATA [31]), .S(
        n1055), .Z(N729) );
  CMX2XL U1534 ( .A0(pfifo_datain_2_d[29]), .A1(\rdata_ch.RDATA [29]), .S(
        n1055), .Z(N727) );
  CMX2XL U1535 ( .A0(pfifo_datain_2_d[27]), .A1(\rdata_ch.RDATA [27]), .S(
        n1055), .Z(N725) );
  CMX2XL U1536 ( .A0(pfifo_datain_2_d[20]), .A1(\rdata_ch.RDATA [20]), .S(
        n1055), .Z(N718) );
  CMX2XL U1537 ( .A0(pfifo_datain_2_d[25]), .A1(\rdata_ch.RDATA [25]), .S(
        n1055), .Z(N723) );
  CMX2XL U1538 ( .A0(pfifo_datain_2_d[14]), .A1(\rdata_ch.RDATA [14]), .S(
        n1055), .Z(N712) );
  CMX2XL U1539 ( .A0(pfifo_datain_2_d[33]), .A1(\rdata_ch.RDATA [33]), .S(
        n1055), .Z(N731) );
  CMX2XL U1540 ( .A0(pfifo_datain_2_d[24]), .A1(\rdata_ch.RDATA [24]), .S(
        n1055), .Z(N722) );
  CMX2XL U1541 ( .A0(pfifo_datain_2_d[34]), .A1(\rdata_ch.RDATA [34]), .S(
        n1055), .Z(N732) );
  CMX2XL U1542 ( .A0(pfifo_datain_2_d[16]), .A1(\rdata_ch.RDATA [16]), .S(
        n1055), .Z(N714) );
  CMX2XL U1543 ( .A0(pfifo_datain_2_d[35]), .A1(\rdata_ch.RDATA [35]), .S(
        n1055), .Z(N733) );
  CMX2XL U1544 ( .A0(pfifo_datain_2_d[15]), .A1(\rdata_ch.RDATA [15]), .S(
        n1055), .Z(N713) );
  CMX2XL U1545 ( .A0(pfifo_datain_2_d[13]), .A1(\rdata_ch.RDATA [13]), .S(
        n1055), .Z(N711) );
  CMX2XL U1546 ( .A0(pfifo_datain_2_d[37]), .A1(\rdata_ch.RDATA [37]), .S(
        n1055), .Z(N735) );
  CMX2XL U1547 ( .A0(pfifo_datain_2_d[30]), .A1(\rdata_ch.RDATA [30]), .S(
        n1055), .Z(N728) );
  CMX2XL U1548 ( .A0(pfifo_datain_2_d[38]), .A1(\rdata_ch.RDATA [38]), .S(
        n1055), .Z(N736) );
  CMX2XL U1549 ( .A0(pfifo_datain_2_d[12]), .A1(\rdata_ch.RDATA [12]), .S(
        n1055), .Z(N710) );
  CMX2XL U1550 ( .A0(pfifo_datain_2_d[39]), .A1(\rdata_ch.RDATA [39]), .S(
        n1055), .Z(N737) );
  CMX2XL U1551 ( .A0(pfifo_datain_2_d[36]), .A1(\rdata_ch.RDATA [36]), .S(
        n1055), .Z(N734) );
  CMX2XL U1552 ( .A0(pfifo_datain_2_d[40]), .A1(\rdata_ch.RDATA [40]), .S(
        n1055), .Z(N738) );
  CMX2XL U1553 ( .A0(pfifo_datain_2_d[32]), .A1(\rdata_ch.RDATA [32]), .S(
        n1055), .Z(N730) );
  CMX2XL U1554 ( .A0(pfifo_datain_2_d[41]), .A1(\rdata_ch.RDATA [41]), .S(
        n1055), .Z(N739) );
  CMX2XL U1555 ( .A0(pfifo_datain_2_d[11]), .A1(\rdata_ch.RDATA [11]), .S(
        n1055), .Z(N709) );
  CMX2XL U1556 ( .A0(pfifo_datain_2_d[42]), .A1(\rdata_ch.RDATA [42]), .S(
        n1055), .Z(N740) );
  CMX2XL U1557 ( .A0(pfifo_datain_2_d[26]), .A1(\rdata_ch.RDATA [26]), .S(
        n1055), .Z(N724) );
  CMX2XL U1558 ( .A0(pfifo_datain_2_d[43]), .A1(\rdata_ch.RDATA [43]), .S(
        n1055), .Z(N741) );
  CMX2XL U1559 ( .A0(pfifo_datain_2_d[23]), .A1(\rdata_ch.RDATA [23]), .S(
        n1055), .Z(N721) );
  CMX2XL U1560 ( .A0(pfifo_datain_2_d[44]), .A1(\rdata_ch.RDATA [44]), .S(
        n1055), .Z(N742) );
  CMX2XL U1561 ( .A0(pfifo_datain_2_d[10]), .A1(\rdata_ch.RDATA [10]), .S(
        n1055), .Z(N708) );
  CMX2XL U1562 ( .A0(pfifo_datain_2_d[45]), .A1(\rdata_ch.RDATA [45]), .S(
        n1055), .Z(N743) );
  CMX2XL U1563 ( .A0(pfifo_datain_2_d[28]), .A1(\rdata_ch.RDATA [28]), .S(
        n1055), .Z(N726) );
  CMX2XL U1564 ( .A0(pfifo_datain_2_d[46]), .A1(\rdata_ch.RDATA [46]), .S(
        n1055), .Z(N744) );
  CMX2XL U1565 ( .A0(pfifo_datain_2_d[9]), .A1(\rdata_ch.RDATA [9]), .S(n1055), 
        .Z(N707) );
  CMX2XL U1566 ( .A0(pfifo_datain_2_d[47]), .A1(\rdata_ch.RDATA [47]), .S(
        n1055), .Z(N745) );
  CMX2XL U1567 ( .A0(pfifo_datain_2_d[21]), .A1(\rdata_ch.RDATA [21]), .S(
        n1055), .Z(N719) );
  CMX2XL U1568 ( .A0(pfifo_datain_2_d[48]), .A1(\rdata_ch.RDATA [48]), .S(
        n1055), .Z(N746) );
  CMX2XL U1569 ( .A0(pfifo_datain_2_d[8]), .A1(\rdata_ch.RDATA [8]), .S(n1055), 
        .Z(N706) );
  CMX2XL U1570 ( .A0(pfifo_datain_2_d[49]), .A1(\rdata_ch.RDATA [49]), .S(
        n1055), .Z(N747) );
  CMX2XL U1571 ( .A0(pfifo_datain_2_d[7]), .A1(\rdata_ch.RDATA [7]), .S(n1055), 
        .Z(N705) );
  CMX2XL U1572 ( .A0(pfifo_datain_2_d[50]), .A1(\rdata_ch.RDATA [50]), .S(
        n1055), .Z(N748) );
  CMX2XL U1573 ( .A0(pfifo_datain_2_d[17]), .A1(\rdata_ch.RDATA [17]), .S(
        n1055), .Z(N715) );
  CMX2XL U1574 ( .A0(pfifo_datain_2_d[51]), .A1(\rdata_ch.RDATA [51]), .S(
        n1055), .Z(N749) );
  CMX2XL U1575 ( .A0(pfifo_datain_2_d[6]), .A1(\rdata_ch.RDATA [6]), .S(n1055), 
        .Z(N704) );
  CMX2XL U1576 ( .A0(pfifo_datain_2_d[52]), .A1(\rdata_ch.RDATA [52]), .S(
        n1055), .Z(N750) );
  CMX2XL U1577 ( .A0(pfifo_datain_2_d[5]), .A1(\rdata_ch.RDATA [5]), .S(n1055), 
        .Z(N703) );
  CMX2XL U1578 ( .A0(pfifo_datain_2_d[53]), .A1(\rdata_ch.RDATA [53]), .S(
        n1055), .Z(N751) );
  CMX2XL U1579 ( .A0(pfifo_datain_2_d[4]), .A1(\rdata_ch.RDATA [4]), .S(n1055), 
        .Z(N702) );
  CMX2XL U1580 ( .A0(pfifo_datain_2_d[54]), .A1(\rdata_ch.RDATA [54]), .S(
        n1055), .Z(N752) );
  CMX2XL U1581 ( .A0(pfifo_datain_2_d[3]), .A1(\rdata_ch.RDATA [3]), .S(n1055), 
        .Z(N701) );
  CMX2XL U1582 ( .A0(pfifo_datain_2_d[55]), .A1(\rdata_ch.RDATA [55]), .S(
        n1055), .Z(N753) );
  CMX2XL U1583 ( .A0(pfifo_datain_2_d[2]), .A1(\rdata_ch.RDATA [2]), .S(n1055), 
        .Z(N700) );
  CMX2XL U1584 ( .A0(pfifo_datain_2_d[56]), .A1(\rdata_ch.RDATA [56]), .S(
        n1055), .Z(N754) );
  CMX2XL U1585 ( .A0(pfifo_datain_2_d[1]), .A1(\rdata_ch.RDATA [1]), .S(n1055), 
        .Z(N699) );
  CMX2XL U1586 ( .A0(pfifo_datain_2_d[0]), .A1(\rdata_ch.RDATA [0]), .S(n1055), 
        .Z(N698) );
  CMX2XL U1587 ( .A0(pfifo_datain_2_d[63]), .A1(\rdata_ch.RDATA [63]), .S(
        n1055), .Z(N761) );
  CMX2XL U1588 ( .A0(pfifo_datain_2_d[61]), .A1(\rdata_ch.RDATA [61]), .S(
        n1055), .Z(N759) );
  CMX2XL U1589 ( .A0(pfifo_datain_2_d[62]), .A1(\rdata_ch.RDATA [62]), .S(
        n1055), .Z(N760) );
  CMX2XL U1590 ( .A0(pfifo_datain_2_d[60]), .A1(\rdata_ch.RDATA [60]), .S(
        n1055), .Z(N758) );
  CMX2XL U1591 ( .A0(pfifo_datain_2_d[58]), .A1(\rdata_ch.RDATA [58]), .S(
        n1055), .Z(N756) );
  CMX2XL U1592 ( .A0(pfifo_datain_2_d[57]), .A1(\rdata_ch.RDATA [57]), .S(
        n1055), .Z(N755) );
  CMX2XL U1593 ( .A0(pfifo_datain_2_d[59]), .A1(\rdata_ch.RDATA [59]), .S(
        n1055), .Z(N757) );
  COND4CXL U1596 ( .A(n1044), .B(n1037), .C(n1056), .D(n1045), .Z(n1039) );
  COND1XL U1597 ( .A(ch_gnt_2d[0]), .B(n1039), .C(n1038), .Z(n1040) );
  CND2X1 U1598 ( .A(n1041), .B(n1040), .Z(n1048) );
  COND1XL U1599 ( .A(n1042), .B(n1048), .C(n1057), .Z(ch_gnt_nxt[1]) );
  COND4CX1 U1600 ( .A(n1045), .B(n1044), .C(n1043), .D(\raddr_ch.ARID [0]), 
        .Z(n1046) );
  COND1XL U1601 ( .A(n1048), .B(n1047), .C(n1046), .Z(arid_nxt[0]) );
  COND1XL U1602 ( .A(n127), .B(n1050), .C(n1049), .Z(n786) );
endmodule

