/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sun Nov  6 01:41:14 2016
/////////////////////////////////////////////////////////////


module queue_selection ( \clks.clk , \clks.rst , arb_nxt, pfifo_datain0, 
        pfifo_datain1, pfifo_datain2, crcfifo0_dataout, crcfifo1_dataout, 
        crcfifo2_dataout, pfifo_datain_ctrl_0, pfifo_datain_ctrl_1, 
        pfifo_datain_ctrl_2, crcfifo0_empty, crcfifo1_empty, crcfifo2_empty, 
        pfifo_pop, crcfifo_pop, crcfifo0_pull, crcfifo1_pull, crcfifo2_pull, 
        pfifo_pop_0, pfifo_pop_1, pfifo_pop_2, pcfifo_pop_0, pcfifo_pop_1, 
        pcfifo_pop_2, pfifo_datain, pfifo_datain_ctrl, crcfifo_dataout, 
        start_transmit );
  input [63:0] pfifo_datain0;
  input [63:0] pfifo_datain1;
  input [63:0] pfifo_datain2;
  input [31:0] crcfifo0_dataout;
  input [31:0] crcfifo1_dataout;
  input [31:0] crcfifo2_dataout;
  input [15:0] pfifo_datain_ctrl_0;
  input [15:0] pfifo_datain_ctrl_1;
  input [15:0] pfifo_datain_ctrl_2;
  output [63:0] pfifo_datain;
  output [15:0] pfifo_datain_ctrl;
  output [31:0] crcfifo_dataout;
  input \clks.clk , \clks.rst , arb_nxt, crcfifo0_empty, crcfifo1_empty,
         crcfifo2_empty, pfifo_pop, crcfifo_pop;
  output crcfifo0_pull, crcfifo1_pull, crcfifo2_pull, pfifo_pop_0, pfifo_pop_1,
         pfifo_pop_2, pcfifo_pop_0, pcfifo_pop_1, pcfifo_pop_2, start_transmit;
  wire   pfifo_pop_0, pfifo_pop_1, pfifo_pop_2, \qos/N33 , \qos/N32 ,
         \qos/N31 , \qos/N30 , \qos/N29 , \qos/N28 , \qos/N27 , \qos/N26 ,
         \qos/N25 , \qos/N24 , \qos/N23 , \qos/N22 , \qos/N21 , \qos/N20 ,
         \qos/N19 , \qos/N18 , \qos/N17 , \qos/N16 , \qos/N15 , \qos/N14 ,
         \qos/N13 , \qos/N12 , \qos/N11 , \qos/N10 , n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n900,
         n901, n902, n903, n904, n905, n906, n907, n908, n909, n910, n911,
         n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922,
         n923, n924, n925, n926, n927, n928, n929, n930, n931, n932, n933,
         n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, n944,
         n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955,
         n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966,
         n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977,
         n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999,
         n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009,
         n1010, n1011, n1012, n1013, n1014, n1015, n1016;
  wire   [2:0] buffer_sel;
  wire   [2:0] \qos/queue_gnt_q ;
  wire   [7:0] \qos/srv_cnt2_d ;
  wire   [7:0] \qos/srv_cnt1_d ;
  wire   [7:0] \qos/srv_cnt0_d ;
  assign pcfifo_pop_0 = pfifo_pop_0;
  assign pcfifo_pop_1 = pfifo_pop_1;
  assign pcfifo_pop_2 = pfifo_pop_2;

  DFFSR \qos/queue_gnt_d_reg[2]  ( .D(\qos/queue_gnt_q [2]), .CLK(\clks.clk ), 
        .R(\clks.rst ), .S(1'b1), .Q(buffer_sel[2]) );
  DFFSR \qos/srv_cnt2_d_reg[0]  ( .D(\qos/N26 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [0]) );
  DFFSR \qos/srv_cnt2_d_reg[1]  ( .D(\qos/N27 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [1]) );
  DFFSR \qos/srv_cnt2_d_reg[2]  ( .D(\qos/N28 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [2]) );
  DFFSR \qos/srv_cnt2_d_reg[3]  ( .D(\qos/N29 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [3]) );
  DFFSR \qos/srv_cnt2_d_reg[4]  ( .D(\qos/N30 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [4]) );
  DFFSR \qos/srv_cnt2_d_reg[5]  ( .D(\qos/N31 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [5]) );
  DFFSR \qos/srv_cnt2_d_reg[6]  ( .D(\qos/N32 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [6]) );
  DFFSR \qos/srv_cnt2_d_reg[7]  ( .D(\qos/N33 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt2_d [7]) );
  DFFSR \qos/queue_gnt_d_reg[1]  ( .D(\qos/queue_gnt_q [1]), .CLK(\clks.clk ), 
        .R(\clks.rst ), .S(1'b1), .Q(buffer_sel[1]) );
  DFFSR \qos/srv_cnt1_d_reg[0]  ( .D(\qos/N18 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [0]) );
  DFFSR \qos/srv_cnt1_d_reg[1]  ( .D(\qos/N19 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [1]) );
  DFFSR \qos/srv_cnt1_d_reg[2]  ( .D(\qos/N20 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [2]) );
  DFFSR \qos/srv_cnt1_d_reg[3]  ( .D(\qos/N21 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [3]) );
  DFFSR \qos/srv_cnt1_d_reg[4]  ( .D(\qos/N22 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [4]) );
  DFFSR \qos/srv_cnt1_d_reg[5]  ( .D(\qos/N23 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [5]) );
  DFFSR \qos/srv_cnt1_d_reg[6]  ( .D(\qos/N24 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [6]) );
  DFFSR \qos/srv_cnt1_d_reg[7]  ( .D(\qos/N25 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt1_d [7]) );
  DFFSR \qos/queue_gnt_d_reg[0]  ( .D(n1016), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(buffer_sel[0]) );
  DFFSR \qos/srv_cnt0_d_reg[0]  ( .D(\qos/N10 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [0]) );
  DFFSR \qos/srv_cnt0_d_reg[1]  ( .D(\qos/N11 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [1]) );
  DFFSR \qos/srv_cnt0_d_reg[2]  ( .D(\qos/N12 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [2]) );
  DFFSR \qos/srv_cnt0_d_reg[3]  ( .D(\qos/N13 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [3]) );
  DFFSR \qos/srv_cnt0_d_reg[4]  ( .D(\qos/N14 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [4]) );
  DFFSR \qos/srv_cnt0_d_reg[5]  ( .D(\qos/N15 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [5]) );
  DFFSR \qos/srv_cnt0_d_reg[6]  ( .D(\qos/N16 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [6]) );
  DFFSR \qos/srv_cnt0_d_reg[7]  ( .D(\qos/N17 ), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\qos/srv_cnt0_d [7]) );
  BUFX2 U527 ( .A(n561), .Y(n556) );
  INVX4 U528 ( .A(arb_nxt), .Y(n777) );
  INVX4 U529 ( .A(n537), .Y(n558) );
  INVX1 U530 ( .A(n479), .Y(n480) );
  BUFX2 U531 ( .A(n743), .Y(n499) );
  OR2X1 U532 ( .A(n753), .B(n750), .Y(n707) );
  INVX8 U533 ( .A(n1015), .Y(n924) );
  AOI22X1 U534 ( .A(n469), .B(n468), .C(n578), .D(n573), .Y(n771) );
  NAND2X1 U535 ( .A(n537), .B(n472), .Y(n468) );
  NOR2X1 U536 ( .A(crcfifo0_empty), .B(n777), .Y(n469) );
  NAND3X1 U537 ( .A(crcfifo2_empty), .B(n575), .C(n598), .Y(n574) );
  BUFX2 U538 ( .A(n556), .Y(n470) );
  BUFX2 U539 ( .A(n513), .Y(n471) );
  INVX8 U540 ( .A(crcfifo0_empty), .Y(n597) );
  NAND3X1 U541 ( .A(n473), .B(crcfifo1_empty), .C(crcfifo2_empty), .Y(n472) );
  INVX1 U542 ( .A(n586), .Y(n473) );
  BUFX2 U543 ( .A(n704), .Y(n474) );
  NAND2X1 U544 ( .A(n609), .B(n474), .Y(n610) );
  AOI21X1 U545 ( .A(n477), .B(n476), .C(n475), .Y(n704) );
  NOR2X1 U546 ( .A(n594), .B(n564), .Y(n475) );
  NAND2X1 U547 ( .A(n594), .B(n769), .Y(n476) );
  OAI21X1 U548 ( .A(n489), .B(n592), .C(n599), .Y(n477) );
  XOR2X1 U549 ( .A(n478), .B(n758), .Y(n497) );
  XNOR2X1 U550 ( .A(n723), .B(n724), .Y(n478) );
  INVX1 U551 ( .A(n751), .Y(n479) );
  OR2X1 U552 ( .A(n634), .B(n635), .Y(n636) );
  OR2X1 U553 ( .A(n694), .B(n693), .Y(n482) );
  INVX1 U554 ( .A(\qos/srv_cnt2_d [6]), .Y(n686) );
  INVX1 U555 ( .A(n632), .Y(n604) );
  BUFX2 U556 ( .A(n563), .Y(n537) );
  INVX1 U557 ( .A(n744), .Y(n507) );
  INVX1 U558 ( .A(\qos/srv_cnt1_d [6]), .Y(n680) );
  INVX1 U559 ( .A(\qos/srv_cnt1_d [4]), .Y(n654) );
  AND2X1 U560 ( .A(buffer_sel[1]), .B(arb_nxt), .Y(n483) );
  INVX1 U561 ( .A(n686), .Y(n661) );
  INVX1 U562 ( .A(n643), .Y(n644) );
  INVX1 U563 ( .A(n625), .Y(n626) );
  INVX1 U564 ( .A(\qos/srv_cnt0_d [6]), .Y(n671) );
  INVX1 U565 ( .A(\qos/srv_cnt1_d [5]), .Y(n655) );
  INVX1 U566 ( .A(n654), .Y(n639) );
  INVX1 U567 ( .A(n624), .Y(n607) );
  INVX4 U568 ( .A(n1013), .Y(n1007) );
  INVX1 U569 ( .A(pfifo_pop), .Y(n1011) );
  INVX1 U570 ( .A(crcfifo_pop), .Y(n1014) );
  INVX1 U571 ( .A(n674), .Y(n676) );
  INVX1 U572 ( .A(n665), .Y(n650) );
  INVX1 U573 ( .A(n630), .Y(n590) );
  INVX1 U574 ( .A(\qos/srv_cnt0_d [0]), .Y(n486) );
  INVX1 U575 ( .A(n579), .Y(n578) );
  AND2X1 U576 ( .A(n688), .B(n687), .Y(n689) );
  INVX1 U577 ( .A(n511), .Y(n498) );
  INVX1 U578 ( .A(n594), .Y(n768) );
  AND2X2 U579 ( .A(n483), .B(n560), .Y(n481) );
  INVX1 U580 ( .A(\qos/srv_cnt0_d [4]), .Y(n647) );
  INVX2 U581 ( .A(crcfifo1_empty), .Y(n598) );
  INVX1 U582 ( .A(n769), .Y(n484) );
  INVX1 U583 ( .A(n484), .Y(n485) );
  AND2X2 U584 ( .A(n707), .B(n742), .Y(n721) );
  XNOR2X1 U585 ( .A(n711), .B(n486), .Y(n753) );
  BUFX2 U586 ( .A(n725), .Y(n487) );
  AOI22X1 U587 ( .A(n481), .B(n514), .C(n536), .D(arb_nxt), .Y(n488) );
  BUFX2 U588 ( .A(n572), .Y(n489) );
  BUFX2 U589 ( .A(n572), .Y(n561) );
  INVX1 U590 ( .A(n757), .Y(n490) );
  INVX1 U591 ( .A(n490), .Y(n491) );
  INVX1 U592 ( .A(n750), .Y(n492) );
  INVX1 U593 ( .A(n492), .Y(n493) );
  BUFX2 U594 ( .A(n715), .Y(n522) );
  INVX1 U595 ( .A(n513), .Y(n580) );
  INVX1 U596 ( .A(n513), .Y(n562) );
  BUFX2 U597 ( .A(n575), .Y(n494) );
  BUFX2 U598 ( .A(n752), .Y(n495) );
  INVX1 U599 ( .A(n574), .Y(n573) );
  NAND2X1 U600 ( .A(n558), .B(n597), .Y(n496) );
  XNOR2X1 U601 ( .A(n497), .B(n726), .Y(n529) );
  INVX1 U602 ( .A(n505), .Y(n500) );
  BUFX4 U603 ( .A(n553), .Y(n523) );
  INVX1 U604 ( .A(n760), .Y(n501) );
  INVX1 U605 ( .A(n501), .Y(n502) );
  XNOR2X1 U606 ( .A(n738), .B(n725), .Y(n503) );
  INVX1 U607 ( .A(n503), .Y(n720) );
  BUFX2 U608 ( .A(n723), .Y(n756) );
  XNOR2X1 U609 ( .A(n504), .B(n759), .Y(n634) );
  XNOR2X1 U610 ( .A(n577), .B(n700), .Y(n504) );
  MUX2X1 U611 ( .B(n595), .A(n596), .S(n505), .Y(n757) );
  INVX1 U612 ( .A(n704), .Y(n505) );
  AND2X1 U613 ( .A(n551), .B(n756), .Y(\qos/N28 ) );
  AND2X1 U614 ( .A(n523), .B(n763), .Y(\qos/N20 ) );
  OAI21X1 U615 ( .A(n599), .B(n600), .C(n506), .Y(n536) );
  NAND3X1 U616 ( .A(n598), .B(n489), .C(n541), .Y(n506) );
  NAND2X1 U617 ( .A(n503), .B(n507), .Y(n722) );
  NAND2X1 U618 ( .A(n721), .B(n722), .Y(n528) );
  NAND2X1 U619 ( .A(n741), .B(n740), .Y(n755) );
  NOR2X1 U620 ( .A(n525), .B(n524), .Y(n740) );
  NAND2X1 U621 ( .A(n741), .B(n740), .Y(n553) );
  OAI21X1 U622 ( .A(n530), .B(n622), .C(n621), .Y(n700) );
  OR2X2 U623 ( .A(n566), .B(n565), .Y(n513) );
  OAI21X1 U624 ( .A(n615), .B(n530), .C(n508), .Y(n724) );
  NAND2X1 U625 ( .A(n616), .B(n620), .Y(n508) );
  OAI21X1 U626 ( .A(n511), .B(n510), .C(n509), .Y(n693) );
  OAI21X1 U627 ( .A(n748), .B(n761), .C(n746), .Y(n509) );
  INVX1 U628 ( .A(n761), .Y(n510) );
  INVX1 U629 ( .A(n748), .Y(n511) );
  NOR2X1 U630 ( .A(n733), .B(n734), .Y(n669) );
  XNOR2X1 U631 ( .A(n512), .B(n746), .Y(n734) );
  XNOR2X1 U632 ( .A(n761), .B(n748), .Y(n512) );
  AOI22X1 U633 ( .A(n481), .B(n514), .C(arb_nxt), .D(n536), .Y(n613) );
  INVX2 U634 ( .A(n556), .Y(n514) );
  BUFX2 U635 ( .A(n620), .Y(n515) );
  NAND2X1 U636 ( .A(n698), .B(n554), .Y(n699) );
  NAND2X1 U637 ( .A(n728), .B(n729), .Y(n554) );
  NAND2X1 U638 ( .A(n517), .B(n516), .Y(n729) );
  OAI21X1 U639 ( .A(n758), .B(n756), .C(n763), .Y(n516) );
  NAND2X1 U640 ( .A(n758), .B(n756), .Y(n517) );
  NAND2X1 U641 ( .A(n634), .B(n635), .Y(n698) );
  AOI21X1 U642 ( .A(n711), .B(n633), .C(n518), .Y(n759) );
  NOR2X1 U643 ( .A(n664), .B(n711), .Y(n518) );
  NOR2X1 U644 ( .A(\qos/srv_cnt2_d [3]), .B(\qos/srv_cnt2_d [2]), .Y(n519) );
  AND2X1 U645 ( .A(n765), .B(n491), .Y(\qos/N29 ) );
  AND2X1 U646 ( .A(n747), .B(n738), .Y(\qos/N27 ) );
  NAND2X1 U647 ( .A(n520), .B(n519), .Y(n565) );
  NOR2X1 U648 ( .A(\qos/srv_cnt2_d [1]), .B(\qos/srv_cnt2_d [0]), .Y(n520) );
  AND2X1 U649 ( .A(n523), .B(n493), .Y(\qos/N26 ) );
  BUFX2 U650 ( .A(n522), .Y(n521) );
  NAND2X1 U651 ( .A(n581), .B(n522), .Y(n589) );
  OAI21X1 U652 ( .A(n587), .B(n766), .C(n771), .Y(n715) );
  AOI21X1 U653 ( .A(n494), .B(n599), .C(n777), .Y(n766) );
  NAND2X1 U654 ( .A(n542), .B(n544), .Y(n524) );
  XOR2X1 U655 ( .A(n571), .B(n737), .Y(n525) );
  NOR2X1 U656 ( .A(n527), .B(n526), .Y(n741) );
  XNOR2X1 U657 ( .A(n696), .B(n697), .Y(n526) );
  XNOR2X1 U658 ( .A(n638), .B(n637), .Y(n527) );
  XOR2X1 U659 ( .A(n529), .B(n528), .Y(n546) );
  AOI21X1 U660 ( .A(n711), .B(n605), .C(n576), .Y(n758) );
  BUFX2 U661 ( .A(n613), .Y(n530) );
  BUFX4 U662 ( .A(n488), .Y(n531) );
  MUX2X1 U663 ( .B(n683), .A(n682), .S(n531), .Y(n684) );
  MUX2X1 U664 ( .B(n658), .A(n680), .S(n531), .Y(n748) );
  MUX2X1 U665 ( .B(n641), .A(n655), .S(n531), .Y(n739) );
  XNOR2X1 U666 ( .A(n531), .B(\qos/srv_cnt1_d [0]), .Y(n742) );
  OAI21X1 U667 ( .A(n531), .B(n603), .C(n532), .Y(n743) );
  NAND2X1 U668 ( .A(n617), .B(n530), .Y(n532) );
  OAI21X1 U669 ( .A(n515), .B(n710), .C(n533), .Y(n744) );
  NAND2X1 U670 ( .A(n709), .B(n515), .Y(n533) );
  AND2X1 U671 ( .A(n747), .B(n534), .Y(\qos/N30 ) );
  BUFX2 U672 ( .A(n577), .Y(n534) );
  OAI21X1 U673 ( .A(n552), .B(n628), .C(n627), .Y(n577) );
  BUFX2 U674 ( .A(n554), .Y(n535) );
  INVX1 U675 ( .A(n536), .Y(n776) );
  NOR2X1 U676 ( .A(\qos/srv_cnt0_d [5]), .B(\qos/srv_cnt0_d [2]), .Y(n540) );
  NAND3X1 U677 ( .A(n540), .B(n539), .C(n538), .Y(n563) );
  NOR2X1 U678 ( .A(\qos/srv_cnt0_d [3]), .B(\qos/srv_cnt0_d [4]), .Y(n538) );
  NOR2X1 U679 ( .A(\qos/srv_cnt0_d [6]), .B(\qos/srv_cnt0_d [7]), .Y(n539) );
  NAND3X1 U680 ( .A(crcfifo1_empty), .B(n496), .C(n561), .Y(n564) );
  NAND2X1 U681 ( .A(n558), .B(n559), .Y(n541) );
  XOR2X1 U682 ( .A(n699), .B(n543), .Y(n542) );
  OAI21X1 U683 ( .A(n569), .B(n703), .C(n732), .Y(n543) );
  NAND2X1 U684 ( .A(n569), .B(n703), .Y(n732) );
  NOR2X1 U685 ( .A(n548), .B(n545), .Y(n544) );
  NAND2X1 U686 ( .A(n547), .B(n546), .Y(n545) );
  NAND2X1 U687 ( .A(n731), .B(n535), .Y(n547) );
  NAND2X1 U688 ( .A(n727), .B(n549), .Y(n548) );
  XNOR2X1 U689 ( .A(n550), .B(n721), .Y(n549) );
  NAND2X1 U690 ( .A(n722), .B(n719), .Y(n550) );
  BUFX2 U691 ( .A(n553), .Y(n551) );
  BUFX4 U692 ( .A(n704), .Y(n552) );
  INVX1 U693 ( .A(n564), .Y(n767) );
  MUX2X1 U694 ( .B(n718), .A(n717), .S(n552), .Y(n738) );
  AND2X1 U695 ( .A(n523), .B(n495), .Y(\qos/N31 ) );
  NOR2X1 U696 ( .A(n555), .B(n699), .Y(n571) );
  INVX1 U697 ( .A(n732), .Y(n555) );
  XOR2X1 U698 ( .A(n570), .B(n739), .Y(n569) );
  AOI21X1 U699 ( .A(n470), .B(arb_nxt), .C(n557), .Y(n774) );
  NAND2X1 U700 ( .A(buffer_sel[1]), .B(n560), .Y(n557) );
  OR2X2 U701 ( .A(n513), .B(n572), .Y(n599) );
  INVX8 U702 ( .A(crcfifo0_empty), .Y(n559) );
  NAND2X1 U703 ( .A(arb_nxt), .B(n562), .Y(n560) );
  NOR2X1 U704 ( .A(n561), .B(n471), .Y(n769) );
  NAND2X1 U705 ( .A(n567), .B(n568), .Y(n566) );
  NOR2X1 U706 ( .A(\qos/srv_cnt2_d [4]), .B(\qos/srv_cnt2_d [5]), .Y(n567) );
  NOR2X1 U707 ( .A(\qos/srv_cnt2_d [6]), .B(\qos/srv_cnt2_d [7]), .Y(n568) );
  NAND2X1 U708 ( .A(n586), .B(n563), .Y(n572) );
  NAND3X1 U709 ( .A(n585), .B(n584), .C(n583), .Y(n586) );
  XOR2X1 U710 ( .A(n760), .B(n752), .Y(n570) );
  INVX1 U711 ( .A(n572), .Y(n575) );
  NOR2X1 U712 ( .A(n629), .B(n711), .Y(n576) );
  NAND2X1 U713 ( .A(n759), .B(n534), .Y(n702) );
  NAND2X1 U714 ( .A(arb_nxt), .B(n580), .Y(n579) );
  XOR2X1 U715 ( .A(n588), .B(n590), .Y(n581) );
  XOR2X1 U716 ( .A(n648), .B(n650), .Y(n582) );
  INVX1 U717 ( .A(n669), .Y(n735) );
  INVX1 U718 ( .A(n739), .Y(n653) );
  INVX1 U719 ( .A(n670), .Y(n666) );
  BUFX2 U720 ( .A(\qos/srv_cnt0_d [5]), .Y(n665) );
  INVX1 U721 ( .A(n608), .Y(n609) );
  INVX1 U722 ( .A(n678), .Y(n675) );
  INVX1 U723 ( .A(n616), .Y(n614) );
  INVX1 U724 ( .A(\qos/srv_cnt2_d [3]), .Y(n595) );
  INVX1 U725 ( .A(n684), .Y(n749) );
  INVX1 U726 ( .A(crcfifo2_dataout[0]), .Y(n783) );
  INVX1 U727 ( .A(crcfifo2_dataout[3]), .Y(n789) );
  INVX1 U728 ( .A(crcfifo2_dataout[11]), .Y(n805) );
  INVX1 U729 ( .A(crcfifo2_dataout[18]), .Y(n819) );
  INVX1 U730 ( .A(crcfifo2_dataout[26]), .Y(n835) );
  INVX1 U731 ( .A(pfifo_datain_ctrl_2[1]), .Y(n849) );
  INVX1 U732 ( .A(pfifo_datain_ctrl_2[9]), .Y(n865) );
  INVX1 U733 ( .A(pfifo_datain2[0]), .Y(n879) );
  INVX1 U734 ( .A(pfifo_datain2[8]), .Y(n895) );
  INVX1 U735 ( .A(pfifo_datain2[15]), .Y(n909) );
  INVX1 U736 ( .A(pfifo_datain2[23]), .Y(n926) );
  INVX1 U737 ( .A(pfifo_datain2[30]), .Y(n940) );
  INVX1 U738 ( .A(pfifo_datain2[38]), .Y(n956) );
  INVX1 U739 ( .A(pfifo_datain2[45]), .Y(n970) );
  INVX1 U740 ( .A(pfifo_datain2[53]), .Y(n986) );
  INVX1 U741 ( .A(pfifo_datain2[60]), .Y(n1000) );
  BUFX2 U742 ( .A(\qos/srv_cnt0_d [3]), .Y(n630) );
  NOR2X1 U743 ( .A(\qos/srv_cnt1_d [7]), .B(\qos/srv_cnt1_d [4]), .Y(n585) );
  NOR2X1 U744 ( .A(\qos/srv_cnt1_d [5]), .B(\qos/srv_cnt1_d [1]), .Y(n584) );
  NOR3X1 U745 ( .A(\qos/srv_cnt1_d [3]), .B(\qos/srv_cnt1_d [2]), .C(
        \qos/srv_cnt1_d [6]), .Y(n583) );
  NAND2X1 U746 ( .A(buffer_sel[0]), .B(arb_nxt), .Y(n587) );
  INVX1 U747 ( .A(\qos/srv_cnt0_d [2]), .Y(n606) );
  INVX1 U748 ( .A(n606), .Y(n629) );
  NAND2X1 U749 ( .A(\qos/srv_cnt0_d [0]), .B(\qos/srv_cnt0_d [1]), .Y(n632) );
  NAND2X1 U750 ( .A(n629), .B(n604), .Y(n588) );
  OAI21X1 U751 ( .A(n590), .B(n522), .C(n589), .Y(n751) );
  NAND2X1 U752 ( .A(\qos/srv_cnt2_d [0]), .B(\qos/srv_cnt2_d [1]), .Y(n624) );
  NAND2X1 U753 ( .A(\qos/srv_cnt2_d [2]), .B(n607), .Y(n591) );
  XNOR2X1 U754 ( .A(n591), .B(n595), .Y(n596) );
  NAND2X1 U755 ( .A(buffer_sel[2]), .B(arb_nxt), .Y(n592) );
  INVX2 U756 ( .A(crcfifo2_empty), .Y(n593) );
  NAND2X1 U757 ( .A(arb_nxt), .B(n593), .Y(n594) );
  NAND3X1 U758 ( .A(crcfifo1_empty), .B(crcfifo2_empty), .C(n559), .Y(n600) );
  BUFX2 U759 ( .A(\qos/srv_cnt1_d [2]), .Y(n616) );
  NAND2X1 U760 ( .A(\qos/srv_cnt1_d [1]), .B(\qos/srv_cnt1_d [0]), .Y(n619) );
  INVX1 U761 ( .A(n619), .Y(n612) );
  NAND2X1 U762 ( .A(n616), .B(n612), .Y(n602) );
  BUFX2 U763 ( .A(\qos/srv_cnt1_d [3]), .Y(n617) );
  INVX1 U764 ( .A(n617), .Y(n601) );
  XNOR2X1 U765 ( .A(n602), .B(n601), .Y(n603) );
  XOR2X1 U766 ( .A(n606), .B(n604), .Y(n605) );
  BUFX4 U767 ( .A(n715), .Y(n711) );
  INVX1 U768 ( .A(\qos/srv_cnt2_d [2]), .Y(n608) );
  XOR2X1 U769 ( .A(n607), .B(n608), .Y(n611) );
  OAI21X1 U770 ( .A(n611), .B(n500), .C(n610), .Y(n723) );
  XOR2X1 U771 ( .A(n612), .B(n614), .Y(n615) );
  BUFX2 U772 ( .A(n613), .Y(n620) );
  BUFX2 U773 ( .A(n724), .Y(n763) );
  INVX1 U774 ( .A(n535), .Y(n638) );
  NAND2X1 U775 ( .A(n617), .B(n616), .Y(n618) );
  NOR2X1 U776 ( .A(n619), .B(n618), .Y(n656) );
  XOR2X1 U777 ( .A(n656), .B(n654), .Y(n622) );
  NAND2X1 U778 ( .A(n620), .B(n639), .Y(n621) );
  NAND2X1 U779 ( .A(\qos/srv_cnt2_d [3]), .B(\qos/srv_cnt2_d [2]), .Y(n623) );
  NOR2X1 U780 ( .A(n624), .B(n623), .Y(n688) );
  INVX1 U781 ( .A(\qos/srv_cnt2_d [4]), .Y(n625) );
  XOR2X1 U782 ( .A(n688), .B(n625), .Y(n628) );
  NAND2X1 U783 ( .A(n626), .B(n474), .Y(n627) );
  NAND2X1 U784 ( .A(n630), .B(n629), .Y(n631) );
  NOR2X1 U785 ( .A(n632), .B(n631), .Y(n673) );
  XOR2X1 U786 ( .A(n673), .B(n647), .Y(n633) );
  FAX1 U787 ( .A(n751), .B(n757), .C(n743), .YC(n635), .YS(n728) );
  NAND2X1 U788 ( .A(n698), .B(n636), .Y(n637) );
  NAND2X1 U789 ( .A(n639), .B(n656), .Y(n640) );
  XNOR2X1 U790 ( .A(n640), .B(n655), .Y(n641) );
  NAND2X1 U791 ( .A(\qos/srv_cnt2_d [4]), .B(n688), .Y(n642) );
  INVX1 U792 ( .A(\qos/srv_cnt2_d [5]), .Y(n643) );
  XNOR2X1 U793 ( .A(n642), .B(n643), .Y(n646) );
  NAND2X1 U794 ( .A(n474), .B(n644), .Y(n645) );
  OAI21X1 U795 ( .A(n646), .B(n552), .C(n645), .Y(n752) );
  INVX1 U796 ( .A(n752), .Y(n652) );
  INVX1 U797 ( .A(n647), .Y(n664) );
  NAND2X1 U798 ( .A(n664), .B(n673), .Y(n648) );
  NAND2X1 U799 ( .A(n582), .B(n711), .Y(n649) );
  OAI21X1 U800 ( .A(n650), .B(n711), .C(n649), .Y(n760) );
  OAI21X1 U801 ( .A(n495), .B(n739), .C(n502), .Y(n651) );
  OAI21X1 U802 ( .A(n653), .B(n652), .C(n651), .Y(n733) );
  NOR2X1 U803 ( .A(n655), .B(n654), .Y(n657) );
  NAND2X1 U804 ( .A(n657), .B(n656), .Y(n679) );
  XNOR2X1 U805 ( .A(n679), .B(n680), .Y(n658) );
  NAND2X1 U806 ( .A(\qos/srv_cnt2_d [5]), .B(n626), .Y(n685) );
  INVX1 U807 ( .A(n685), .Y(n659) );
  NAND2X1 U808 ( .A(n659), .B(n688), .Y(n660) );
  XNOR2X1 U809 ( .A(n660), .B(n686), .Y(n663) );
  NAND2X1 U810 ( .A(n661), .B(n474), .Y(n662) );
  OAI21X1 U811 ( .A(n663), .B(n552), .C(n662), .Y(n761) );
  NAND2X1 U812 ( .A(n665), .B(n664), .Y(n670) );
  NAND2X1 U813 ( .A(n666), .B(n673), .Y(n667) );
  XNOR2X1 U814 ( .A(n667), .B(n671), .Y(n668) );
  MUX2X1 U815 ( .B(n671), .A(n668), .S(n521), .Y(n746) );
  INVX1 U816 ( .A(n669), .Y(n697) );
  INVX1 U817 ( .A(\qos/srv_cnt0_d [7]), .Y(n678) );
  NOR2X1 U818 ( .A(n671), .B(n670), .Y(n672) );
  NAND2X1 U819 ( .A(n673), .B(n672), .Y(n674) );
  XNOR2X1 U820 ( .A(n676), .B(n675), .Y(n677) );
  MUX2X1 U821 ( .B(n678), .A(n677), .S(n711), .Y(n745) );
  BUFX2 U822 ( .A(\qos/srv_cnt1_d [7]), .Y(n682) );
  NOR2X1 U823 ( .A(n680), .B(n679), .Y(n681) );
  XOR2X1 U824 ( .A(n682), .B(n681), .Y(n683) );
  NOR2X1 U825 ( .A(n686), .B(n685), .Y(n687) );
  XNOR2X1 U826 ( .A(n689), .B(\qos/srv_cnt2_d [7]), .Y(n691) );
  INVX1 U827 ( .A(\qos/srv_cnt2_d [7]), .Y(n690) );
  MUX2X1 U828 ( .B(n691), .A(n690), .S(n552), .Y(n762) );
  XOR2X1 U829 ( .A(n749), .B(n762), .Y(n692) );
  XOR2X1 U830 ( .A(n745), .B(n692), .Y(n694) );
  NAND2X1 U831 ( .A(n694), .B(n693), .Y(n695) );
  NAND2X1 U832 ( .A(n695), .B(n482), .Y(n696) );
  BUFX2 U833 ( .A(n700), .Y(n764) );
  OAI21X1 U834 ( .A(n534), .B(n759), .C(n764), .Y(n701) );
  NAND2X1 U835 ( .A(n702), .B(n701), .Y(n703) );
  BUFX2 U836 ( .A(\qos/srv_cnt2_d [0]), .Y(n716) );
  XNOR2X1 U837 ( .A(n552), .B(n716), .Y(n750) );
  NAND2X1 U838 ( .A(n750), .B(n753), .Y(n705) );
  NAND2X1 U839 ( .A(n707), .B(n705), .Y(n706) );
  XNOR2X1 U840 ( .A(n706), .B(n742), .Y(n727) );
  INVX1 U841 ( .A(\qos/srv_cnt1_d [1]), .Y(n708) );
  XOR2X1 U842 ( .A(n708), .B(\qos/srv_cnt1_d [0]), .Y(n710) );
  INVX1 U843 ( .A(n708), .Y(n709) );
  INVX1 U844 ( .A(\qos/srv_cnt0_d [1]), .Y(n714) );
  XNOR2X1 U845 ( .A(n714), .B(\qos/srv_cnt0_d [0]), .Y(n712) );
  NAND2X1 U846 ( .A(n712), .B(n711), .Y(n713) );
  OAI21X1 U847 ( .A(n711), .B(n714), .C(n713), .Y(n725) );
  INVX1 U848 ( .A(\qos/srv_cnt2_d [1]), .Y(n717) );
  XOR2X1 U849 ( .A(n717), .B(n716), .Y(n718) );
  NAND2X1 U850 ( .A(n720), .B(n744), .Y(n719) );
  NAND2X1 U851 ( .A(n725), .B(n738), .Y(n726) );
  NOR2X1 U852 ( .A(n728), .B(n729), .Y(n730) );
  INVX1 U853 ( .A(n730), .Y(n731) );
  NAND2X1 U854 ( .A(n734), .B(n733), .Y(n736) );
  NAND2X1 U855 ( .A(n736), .B(n735), .Y(n737) );
  BUFX4 U856 ( .A(n755), .Y(n747) );
  AND2X1 U857 ( .A(n747), .B(n739), .Y(\qos/N23 ) );
  AND2X1 U858 ( .A(n523), .B(n742), .Y(\qos/N18 ) );
  AND2X1 U859 ( .A(n551), .B(n499), .Y(\qos/N21 ) );
  AND2X1 U860 ( .A(n747), .B(n744), .Y(\qos/N19 ) );
  AND2X1 U861 ( .A(n551), .B(n745), .Y(\qos/N17 ) );
  AND2X1 U862 ( .A(n747), .B(n746), .Y(\qos/N16 ) );
  AND2X1 U863 ( .A(n523), .B(n498), .Y(\qos/N24 ) );
  AND2X1 U864 ( .A(n551), .B(n749), .Y(\qos/N25 ) );
  AND2X1 U865 ( .A(n523), .B(n480), .Y(\qos/N13 ) );
  BUFX2 U866 ( .A(n753), .Y(n754) );
  AND2X1 U867 ( .A(n551), .B(n754), .Y(\qos/N10 ) );
  BUFX4 U868 ( .A(n755), .Y(n765) );
  AND2X1 U869 ( .A(n765), .B(n487), .Y(\qos/N11 ) );
  AND2X1 U870 ( .A(n765), .B(n758), .Y(\qos/N12 ) );
  AND2X1 U871 ( .A(n523), .B(n759), .Y(\qos/N14 ) );
  AND2X1 U872 ( .A(n765), .B(n760), .Y(\qos/N15 ) );
  AND2X1 U873 ( .A(n747), .B(n761), .Y(\qos/N32 ) );
  AND2X1 U874 ( .A(n765), .B(n762), .Y(\qos/N33 ) );
  AND2X1 U875 ( .A(n765), .B(n764), .Y(\qos/N22 ) );
  BUFX2 U876 ( .A(n766), .Y(n773) );
  INVX1 U877 ( .A(buffer_sel[2]), .Y(n780) );
  OAI21X1 U878 ( .A(n767), .B(n485), .C(n768), .Y(n770) );
  OAI21X1 U879 ( .A(n773), .B(n780), .C(n770), .Y(\qos/queue_gnt_q [2]) );
  INVX1 U880 ( .A(buffer_sel[0]), .Y(n779) );
  BUFX2 U881 ( .A(n771), .Y(n772) );
  OAI21X1 U882 ( .A(n773), .B(n779), .C(n772), .Y(n1016) );
  INVX1 U883 ( .A(n774), .Y(n775) );
  OAI21X1 U884 ( .A(n777), .B(n776), .C(n775), .Y(\qos/queue_gnt_q [1]) );
  NOR2X1 U885 ( .A(buffer_sel[0]), .B(buffer_sel[1]), .Y(n778) );
  NAND2X1 U886 ( .A(buffer_sel[2]), .B(n778), .Y(n1001) );
  BUFX4 U887 ( .A(n1001), .Y(n1012) );
  NAND3X1 U888 ( .A(buffer_sel[1]), .B(n779), .C(n780), .Y(n1013) );
  INVX1 U889 ( .A(buffer_sel[1]), .Y(n781) );
  NAND3X1 U890 ( .A(buffer_sel[0]), .B(n781), .C(n780), .Y(n1015) );
  AOI22X1 U891 ( .A(n1007), .B(crcfifo1_dataout[0]), .C(n924), .D(
        crcfifo0_dataout[0]), .Y(n782) );
  OAI21X1 U892 ( .A(n1012), .B(n783), .C(n782), .Y(crcfifo_dataout[0]) );
  INVX1 U893 ( .A(crcfifo2_dataout[1]), .Y(n785) );
  AOI22X1 U894 ( .A(n1007), .B(crcfifo1_dataout[1]), .C(n924), .D(
        crcfifo0_dataout[1]), .Y(n784) );
  OAI21X1 U895 ( .A(n1012), .B(n785), .C(n784), .Y(crcfifo_dataout[1]) );
  INVX1 U896 ( .A(crcfifo2_dataout[2]), .Y(n787) );
  AOI22X1 U897 ( .A(n1007), .B(crcfifo1_dataout[2]), .C(n924), .D(
        crcfifo0_dataout[2]), .Y(n786) );
  OAI21X1 U898 ( .A(n1012), .B(n787), .C(n786), .Y(crcfifo_dataout[2]) );
  AOI22X1 U899 ( .A(n1007), .B(crcfifo1_dataout[3]), .C(n924), .D(
        crcfifo0_dataout[3]), .Y(n788) );
  OAI21X1 U900 ( .A(n1012), .B(n789), .C(n788), .Y(crcfifo_dataout[3]) );
  INVX1 U901 ( .A(crcfifo2_dataout[4]), .Y(n791) );
  AOI22X1 U902 ( .A(n1007), .B(crcfifo1_dataout[4]), .C(n924), .D(
        crcfifo0_dataout[4]), .Y(n790) );
  OAI21X1 U903 ( .A(n1012), .B(n791), .C(n790), .Y(crcfifo_dataout[4]) );
  INVX1 U904 ( .A(crcfifo2_dataout[5]), .Y(n793) );
  AOI22X1 U905 ( .A(n1007), .B(crcfifo1_dataout[5]), .C(n924), .D(
        crcfifo0_dataout[5]), .Y(n792) );
  OAI21X1 U906 ( .A(n1012), .B(n793), .C(n792), .Y(crcfifo_dataout[5]) );
  INVX1 U907 ( .A(crcfifo2_dataout[6]), .Y(n795) );
  AOI22X1 U908 ( .A(n1007), .B(crcfifo1_dataout[6]), .C(n924), .D(
        crcfifo0_dataout[6]), .Y(n794) );
  OAI21X1 U909 ( .A(n1012), .B(n795), .C(n794), .Y(crcfifo_dataout[6]) );
  INVX1 U910 ( .A(crcfifo2_dataout[7]), .Y(n797) );
  AOI22X1 U911 ( .A(n1007), .B(crcfifo1_dataout[7]), .C(n924), .D(
        crcfifo0_dataout[7]), .Y(n796) );
  OAI21X1 U912 ( .A(n1012), .B(n797), .C(n796), .Y(crcfifo_dataout[7]) );
  INVX1 U913 ( .A(crcfifo2_dataout[8]), .Y(n799) );
  AOI22X1 U914 ( .A(n1007), .B(crcfifo1_dataout[8]), .C(n924), .D(
        crcfifo0_dataout[8]), .Y(n798) );
  OAI21X1 U915 ( .A(n1012), .B(n799), .C(n798), .Y(crcfifo_dataout[8]) );
  INVX1 U916 ( .A(crcfifo2_dataout[9]), .Y(n801) );
  AOI22X1 U917 ( .A(n1007), .B(crcfifo1_dataout[9]), .C(n924), .D(
        crcfifo0_dataout[9]), .Y(n800) );
  OAI21X1 U918 ( .A(n1012), .B(n801), .C(n800), .Y(crcfifo_dataout[9]) );
  INVX1 U919 ( .A(crcfifo2_dataout[10]), .Y(n803) );
  AOI22X1 U920 ( .A(n1007), .B(crcfifo1_dataout[10]), .C(n924), .D(
        crcfifo0_dataout[10]), .Y(n802) );
  OAI21X1 U921 ( .A(n1012), .B(n803), .C(n802), .Y(crcfifo_dataout[10]) );
  AOI22X1 U922 ( .A(n1007), .B(crcfifo1_dataout[11]), .C(n924), .D(
        crcfifo0_dataout[11]), .Y(n804) );
  OAI21X1 U923 ( .A(n1012), .B(n805), .C(n804), .Y(crcfifo_dataout[11]) );
  INVX1 U924 ( .A(crcfifo2_dataout[12]), .Y(n807) );
  AOI22X1 U925 ( .A(n1007), .B(crcfifo1_dataout[12]), .C(n924), .D(
        crcfifo0_dataout[12]), .Y(n806) );
  OAI21X1 U926 ( .A(n1012), .B(n807), .C(n806), .Y(crcfifo_dataout[12]) );
  BUFX4 U927 ( .A(n1001), .Y(n1010) );
  INVX1 U928 ( .A(crcfifo2_dataout[13]), .Y(n809) );
  AOI22X1 U929 ( .A(n1007), .B(crcfifo1_dataout[13]), .C(n924), .D(
        crcfifo0_dataout[13]), .Y(n808) );
  OAI21X1 U930 ( .A(n1010), .B(n809), .C(n808), .Y(crcfifo_dataout[13]) );
  INVX1 U931 ( .A(crcfifo2_dataout[14]), .Y(n811) );
  AOI22X1 U932 ( .A(n1007), .B(crcfifo1_dataout[14]), .C(n924), .D(
        crcfifo0_dataout[14]), .Y(n810) );
  OAI21X1 U933 ( .A(n1010), .B(n811), .C(n810), .Y(crcfifo_dataout[14]) );
  INVX1 U934 ( .A(crcfifo2_dataout[15]), .Y(n813) );
  AOI22X1 U935 ( .A(n1007), .B(crcfifo1_dataout[15]), .C(n924), .D(
        crcfifo0_dataout[15]), .Y(n812) );
  OAI21X1 U936 ( .A(n1010), .B(n813), .C(n812), .Y(crcfifo_dataout[15]) );
  INVX1 U937 ( .A(crcfifo2_dataout[16]), .Y(n815) );
  AOI22X1 U938 ( .A(n1007), .B(crcfifo1_dataout[16]), .C(n924), .D(
        crcfifo0_dataout[16]), .Y(n814) );
  OAI21X1 U939 ( .A(n1010), .B(n815), .C(n814), .Y(crcfifo_dataout[16]) );
  INVX1 U940 ( .A(crcfifo2_dataout[17]), .Y(n817) );
  AOI22X1 U941 ( .A(n1007), .B(crcfifo1_dataout[17]), .C(n924), .D(
        crcfifo0_dataout[17]), .Y(n816) );
  OAI21X1 U942 ( .A(n1010), .B(n817), .C(n816), .Y(crcfifo_dataout[17]) );
  AOI22X1 U943 ( .A(n1007), .B(crcfifo1_dataout[18]), .C(n924), .D(
        crcfifo0_dataout[18]), .Y(n818) );
  OAI21X1 U944 ( .A(n1010), .B(n819), .C(n818), .Y(crcfifo_dataout[18]) );
  INVX1 U945 ( .A(crcfifo2_dataout[19]), .Y(n821) );
  AOI22X1 U946 ( .A(n1007), .B(crcfifo1_dataout[19]), .C(n924), .D(
        crcfifo0_dataout[19]), .Y(n820) );
  OAI21X1 U947 ( .A(n1010), .B(n821), .C(n820), .Y(crcfifo_dataout[19]) );
  INVX1 U948 ( .A(crcfifo2_dataout[20]), .Y(n823) );
  AOI22X1 U949 ( .A(n1007), .B(crcfifo1_dataout[20]), .C(n924), .D(
        crcfifo0_dataout[20]), .Y(n822) );
  OAI21X1 U950 ( .A(n1010), .B(n823), .C(n822), .Y(crcfifo_dataout[20]) );
  INVX1 U951 ( .A(crcfifo2_dataout[21]), .Y(n825) );
  AOI22X1 U952 ( .A(n1007), .B(crcfifo1_dataout[21]), .C(n924), .D(
        crcfifo0_dataout[21]), .Y(n824) );
  OAI21X1 U953 ( .A(n1010), .B(n825), .C(n824), .Y(crcfifo_dataout[21]) );
  INVX1 U954 ( .A(crcfifo2_dataout[22]), .Y(n827) );
  AOI22X1 U955 ( .A(n1007), .B(crcfifo1_dataout[22]), .C(n924), .D(
        crcfifo0_dataout[22]), .Y(n826) );
  OAI21X1 U956 ( .A(n1010), .B(n827), .C(n826), .Y(crcfifo_dataout[22]) );
  INVX1 U957 ( .A(crcfifo2_dataout[23]), .Y(n829) );
  AOI22X1 U958 ( .A(n1007), .B(crcfifo1_dataout[23]), .C(n924), .D(
        crcfifo0_dataout[23]), .Y(n828) );
  OAI21X1 U959 ( .A(n1010), .B(n829), .C(n828), .Y(crcfifo_dataout[23]) );
  INVX1 U960 ( .A(crcfifo2_dataout[24]), .Y(n831) );
  AOI22X1 U961 ( .A(n1007), .B(crcfifo1_dataout[24]), .C(n924), .D(
        crcfifo0_dataout[24]), .Y(n830) );
  OAI21X1 U962 ( .A(n1010), .B(n831), .C(n830), .Y(crcfifo_dataout[24]) );
  INVX1 U963 ( .A(crcfifo2_dataout[25]), .Y(n833) );
  AOI22X1 U964 ( .A(n1007), .B(crcfifo1_dataout[25]), .C(n924), .D(
        crcfifo0_dataout[25]), .Y(n832) );
  OAI21X1 U965 ( .A(n1010), .B(n833), .C(n832), .Y(crcfifo_dataout[25]) );
  BUFX4 U966 ( .A(n1001), .Y(n1006) );
  AOI22X1 U967 ( .A(n1007), .B(crcfifo1_dataout[26]), .C(n924), .D(
        crcfifo0_dataout[26]), .Y(n834) );
  OAI21X1 U968 ( .A(n1006), .B(n835), .C(n834), .Y(crcfifo_dataout[26]) );
  INVX1 U969 ( .A(crcfifo2_dataout[27]), .Y(n837) );
  AOI22X1 U970 ( .A(n1007), .B(crcfifo1_dataout[27]), .C(n924), .D(
        crcfifo0_dataout[27]), .Y(n836) );
  OAI21X1 U971 ( .A(n1006), .B(n837), .C(n836), .Y(crcfifo_dataout[27]) );
  INVX1 U972 ( .A(crcfifo2_dataout[28]), .Y(n839) );
  AOI22X1 U973 ( .A(n1007), .B(crcfifo1_dataout[28]), .C(n924), .D(
        crcfifo0_dataout[28]), .Y(n838) );
  OAI21X1 U974 ( .A(n1006), .B(n839), .C(n838), .Y(crcfifo_dataout[28]) );
  INVX1 U975 ( .A(crcfifo2_dataout[29]), .Y(n841) );
  AOI22X1 U976 ( .A(n1007), .B(crcfifo1_dataout[29]), .C(n924), .D(
        crcfifo0_dataout[29]), .Y(n840) );
  OAI21X1 U977 ( .A(n1006), .B(n841), .C(n840), .Y(crcfifo_dataout[29]) );
  INVX1 U978 ( .A(crcfifo2_dataout[30]), .Y(n843) );
  AOI22X1 U979 ( .A(n1007), .B(crcfifo1_dataout[30]), .C(n924), .D(
        crcfifo0_dataout[30]), .Y(n842) );
  OAI21X1 U980 ( .A(n1006), .B(n843), .C(n842), .Y(crcfifo_dataout[30]) );
  INVX1 U981 ( .A(crcfifo2_dataout[31]), .Y(n845) );
  AOI22X1 U982 ( .A(n1007), .B(crcfifo1_dataout[31]), .C(n924), .D(
        crcfifo0_dataout[31]), .Y(n844) );
  OAI21X1 U983 ( .A(n1006), .B(n845), .C(n844), .Y(crcfifo_dataout[31]) );
  INVX1 U984 ( .A(pfifo_datain_ctrl_2[0]), .Y(n847) );
  AOI22X1 U985 ( .A(n1007), .B(pfifo_datain_ctrl_1[0]), .C(n924), .D(
        pfifo_datain_ctrl_0[0]), .Y(n846) );
  OAI21X1 U986 ( .A(n1006), .B(n847), .C(n846), .Y(pfifo_datain_ctrl[0]) );
  AOI22X1 U987 ( .A(n1007), .B(pfifo_datain_ctrl_1[1]), .C(n924), .D(
        pfifo_datain_ctrl_0[1]), .Y(n848) );
  OAI21X1 U988 ( .A(n1006), .B(n849), .C(n848), .Y(pfifo_datain_ctrl[1]) );
  INVX1 U989 ( .A(pfifo_datain_ctrl_2[2]), .Y(n851) );
  AOI22X1 U990 ( .A(n1007), .B(pfifo_datain_ctrl_1[2]), .C(n924), .D(
        pfifo_datain_ctrl_0[2]), .Y(n850) );
  OAI21X1 U991 ( .A(n1006), .B(n851), .C(n850), .Y(pfifo_datain_ctrl[2]) );
  INVX1 U992 ( .A(pfifo_datain_ctrl_2[3]), .Y(n853) );
  AOI22X1 U993 ( .A(n1007), .B(pfifo_datain_ctrl_1[3]), .C(n924), .D(
        pfifo_datain_ctrl_0[3]), .Y(n852) );
  OAI21X1 U994 ( .A(n1006), .B(n853), .C(n852), .Y(pfifo_datain_ctrl[3]) );
  INVX1 U995 ( .A(pfifo_datain_ctrl_2[4]), .Y(n855) );
  AOI22X1 U996 ( .A(n1007), .B(pfifo_datain_ctrl_1[4]), .C(n924), .D(
        pfifo_datain_ctrl_0[4]), .Y(n854) );
  OAI21X1 U997 ( .A(n1006), .B(n855), .C(n854), .Y(pfifo_datain_ctrl[4]) );
  INVX1 U998 ( .A(pfifo_datain_ctrl_2[5]), .Y(n857) );
  AOI22X1 U999 ( .A(n1007), .B(pfifo_datain_ctrl_1[5]), .C(n924), .D(
        pfifo_datain_ctrl_0[5]), .Y(n856) );
  OAI21X1 U1000 ( .A(n1006), .B(n857), .C(n856), .Y(pfifo_datain_ctrl[5]) );
  INVX1 U1001 ( .A(pfifo_datain_ctrl_2[6]), .Y(n859) );
  AOI22X1 U1002 ( .A(n1007), .B(pfifo_datain_ctrl_1[6]), .C(n924), .D(
        pfifo_datain_ctrl_0[6]), .Y(n858) );
  OAI21X1 U1003 ( .A(n1006), .B(n859), .C(n858), .Y(pfifo_datain_ctrl[6]) );
  INVX1 U1004 ( .A(pfifo_datain_ctrl_2[7]), .Y(n861) );
  AOI22X1 U1005 ( .A(n1007), .B(pfifo_datain_ctrl_1[7]), .C(n924), .D(
        pfifo_datain_ctrl_0[7]), .Y(n860) );
  OAI21X1 U1006 ( .A(n1006), .B(n861), .C(n860), .Y(pfifo_datain_ctrl[7]) );
  INVX1 U1007 ( .A(pfifo_datain_ctrl_2[8]), .Y(n863) );
  AOI22X1 U1008 ( .A(n1007), .B(pfifo_datain_ctrl_1[8]), .C(n924), .D(
        pfifo_datain_ctrl_0[8]), .Y(n862) );
  OAI21X1 U1009 ( .A(n1006), .B(n863), .C(n862), .Y(pfifo_datain_ctrl[8]) );
  AOI22X1 U1010 ( .A(n1007), .B(pfifo_datain_ctrl_1[9]), .C(n924), .D(
        pfifo_datain_ctrl_0[9]), .Y(n864) );
  OAI21X1 U1011 ( .A(n1012), .B(n865), .C(n864), .Y(pfifo_datain_ctrl[9]) );
  INVX1 U1012 ( .A(pfifo_datain_ctrl_2[10]), .Y(n867) );
  AOI22X1 U1013 ( .A(n1007), .B(pfifo_datain_ctrl_1[10]), .C(n924), .D(
        pfifo_datain_ctrl_0[10]), .Y(n866) );
  OAI21X1 U1014 ( .A(n1010), .B(n867), .C(n866), .Y(pfifo_datain_ctrl[10]) );
  INVX1 U1015 ( .A(pfifo_datain_ctrl_2[11]), .Y(n869) );
  AOI22X1 U1016 ( .A(n1007), .B(pfifo_datain_ctrl_1[11]), .C(n924), .D(
        pfifo_datain_ctrl_0[11]), .Y(n868) );
  OAI21X1 U1017 ( .A(n1006), .B(n869), .C(n868), .Y(pfifo_datain_ctrl[11]) );
  INVX1 U1018 ( .A(pfifo_datain_ctrl_2[12]), .Y(n871) );
  AOI22X1 U1019 ( .A(n1007), .B(pfifo_datain_ctrl_1[12]), .C(n924), .D(
        pfifo_datain_ctrl_0[12]), .Y(n870) );
  OAI21X1 U1020 ( .A(n1012), .B(n871), .C(n870), .Y(pfifo_datain_ctrl[12]) );
  INVX1 U1021 ( .A(pfifo_datain_ctrl_2[13]), .Y(n873) );
  AOI22X1 U1022 ( .A(n1007), .B(pfifo_datain_ctrl_1[13]), .C(n924), .D(
        pfifo_datain_ctrl_0[13]), .Y(n872) );
  OAI21X1 U1023 ( .A(n1010), .B(n873), .C(n872), .Y(pfifo_datain_ctrl[13]) );
  INVX1 U1024 ( .A(pfifo_datain_ctrl_2[14]), .Y(n875) );
  AOI22X1 U1025 ( .A(n1007), .B(pfifo_datain_ctrl_1[14]), .C(n924), .D(
        pfifo_datain_ctrl_0[14]), .Y(n874) );
  OAI21X1 U1026 ( .A(n1006), .B(n875), .C(n874), .Y(pfifo_datain_ctrl[14]) );
  INVX1 U1027 ( .A(pfifo_datain_ctrl_2[15]), .Y(n877) );
  AOI22X1 U1028 ( .A(n1007), .B(pfifo_datain_ctrl_1[15]), .C(n924), .D(
        pfifo_datain_ctrl_0[15]), .Y(n876) );
  OAI21X1 U1029 ( .A(n1012), .B(n877), .C(n876), .Y(pfifo_datain_ctrl[15]) );
  AOI22X1 U1030 ( .A(n1007), .B(pfifo_datain1[0]), .C(n924), .D(
        pfifo_datain0[0]), .Y(n878) );
  OAI21X1 U1031 ( .A(n1010), .B(n879), .C(n878), .Y(pfifo_datain[0]) );
  INVX1 U1032 ( .A(pfifo_datain2[1]), .Y(n881) );
  AOI22X1 U1033 ( .A(n1007), .B(pfifo_datain1[1]), .C(n924), .D(
        pfifo_datain0[1]), .Y(n880) );
  OAI21X1 U1034 ( .A(n1006), .B(n881), .C(n880), .Y(pfifo_datain[1]) );
  INVX1 U1035 ( .A(pfifo_datain2[2]), .Y(n883) );
  AOI22X1 U1036 ( .A(n1007), .B(pfifo_datain1[2]), .C(n924), .D(
        pfifo_datain0[2]), .Y(n882) );
  OAI21X1 U1037 ( .A(n1001), .B(n883), .C(n882), .Y(pfifo_datain[2]) );
  INVX1 U1038 ( .A(pfifo_datain2[3]), .Y(n885) );
  AOI22X1 U1039 ( .A(n1007), .B(pfifo_datain1[3]), .C(n924), .D(
        pfifo_datain0[3]), .Y(n884) );
  OAI21X1 U1040 ( .A(n1001), .B(n885), .C(n884), .Y(pfifo_datain[3]) );
  INVX1 U1041 ( .A(pfifo_datain2[4]), .Y(n887) );
  AOI22X1 U1042 ( .A(n1007), .B(pfifo_datain1[4]), .C(n924), .D(
        pfifo_datain0[4]), .Y(n886) );
  OAI21X1 U1043 ( .A(n1001), .B(n887), .C(n886), .Y(pfifo_datain[4]) );
  INVX1 U1044 ( .A(pfifo_datain2[5]), .Y(n889) );
  AOI22X1 U1045 ( .A(n1007), .B(pfifo_datain1[5]), .C(n924), .D(
        pfifo_datain0[5]), .Y(n888) );
  OAI21X1 U1046 ( .A(n1001), .B(n889), .C(n888), .Y(pfifo_datain[5]) );
  INVX1 U1047 ( .A(pfifo_datain2[6]), .Y(n891) );
  AOI22X1 U1048 ( .A(n1007), .B(pfifo_datain1[6]), .C(n924), .D(
        pfifo_datain0[6]), .Y(n890) );
  OAI21X1 U1049 ( .A(n1001), .B(n891), .C(n890), .Y(pfifo_datain[6]) );
  INVX1 U1050 ( .A(pfifo_datain2[7]), .Y(n893) );
  AOI22X1 U1051 ( .A(n1007), .B(pfifo_datain1[7]), .C(n924), .D(
        pfifo_datain0[7]), .Y(n892) );
  OAI21X1 U1052 ( .A(n1001), .B(n893), .C(n892), .Y(pfifo_datain[7]) );
  AOI22X1 U1053 ( .A(n1007), .B(pfifo_datain1[8]), .C(n924), .D(
        pfifo_datain0[8]), .Y(n894) );
  OAI21X1 U1054 ( .A(n1001), .B(n895), .C(n894), .Y(pfifo_datain[8]) );
  INVX1 U1055 ( .A(pfifo_datain2[9]), .Y(n897) );
  AOI22X1 U1056 ( .A(n1007), .B(pfifo_datain1[9]), .C(n924), .D(
        pfifo_datain0[9]), .Y(n896) );
  OAI21X1 U1057 ( .A(n1001), .B(n897), .C(n896), .Y(pfifo_datain[9]) );
  INVX1 U1058 ( .A(pfifo_datain2[10]), .Y(n899) );
  AOI22X1 U1059 ( .A(n1007), .B(pfifo_datain1[10]), .C(n924), .D(
        pfifo_datain0[10]), .Y(n898) );
  OAI21X1 U1060 ( .A(n1001), .B(n899), .C(n898), .Y(pfifo_datain[10]) );
  INVX1 U1061 ( .A(pfifo_datain2[11]), .Y(n901) );
  AOI22X1 U1062 ( .A(n1007), .B(pfifo_datain1[11]), .C(n924), .D(
        pfifo_datain0[11]), .Y(n900) );
  OAI21X1 U1063 ( .A(n1001), .B(n901), .C(n900), .Y(pfifo_datain[11]) );
  INVX1 U1064 ( .A(pfifo_datain2[12]), .Y(n903) );
  AOI22X1 U1065 ( .A(n1007), .B(pfifo_datain1[12]), .C(n924), .D(
        pfifo_datain0[12]), .Y(n902) );
  OAI21X1 U1066 ( .A(n1001), .B(n903), .C(n902), .Y(pfifo_datain[12]) );
  INVX1 U1067 ( .A(pfifo_datain2[13]), .Y(n905) );
  AOI22X1 U1068 ( .A(n1007), .B(pfifo_datain1[13]), .C(n924), .D(
        pfifo_datain0[13]), .Y(n904) );
  OAI21X1 U1069 ( .A(n1001), .B(n905), .C(n904), .Y(pfifo_datain[13]) );
  INVX1 U1070 ( .A(pfifo_datain2[14]), .Y(n907) );
  AOI22X1 U1071 ( .A(n1007), .B(pfifo_datain1[14]), .C(n924), .D(
        pfifo_datain0[14]), .Y(n906) );
  OAI21X1 U1072 ( .A(n1001), .B(n907), .C(n906), .Y(pfifo_datain[14]) );
  AOI22X1 U1073 ( .A(n1007), .B(pfifo_datain1[15]), .C(n924), .D(
        pfifo_datain0[15]), .Y(n908) );
  OAI21X1 U1074 ( .A(n1001), .B(n909), .C(n908), .Y(pfifo_datain[15]) );
  INVX1 U1075 ( .A(pfifo_datain2[16]), .Y(n911) );
  AOI22X1 U1076 ( .A(n1007), .B(pfifo_datain1[16]), .C(n924), .D(
        pfifo_datain0[16]), .Y(n910) );
  OAI21X1 U1077 ( .A(n1012), .B(n911), .C(n910), .Y(pfifo_datain[16]) );
  INVX1 U1078 ( .A(pfifo_datain2[17]), .Y(n913) );
  AOI22X1 U1079 ( .A(n1007), .B(pfifo_datain1[17]), .C(n924), .D(
        pfifo_datain0[17]), .Y(n912) );
  OAI21X1 U1080 ( .A(n1001), .B(n913), .C(n912), .Y(pfifo_datain[17]) );
  INVX1 U1081 ( .A(pfifo_datain2[18]), .Y(n915) );
  AOI22X1 U1082 ( .A(n1007), .B(pfifo_datain1[18]), .C(n924), .D(
        pfifo_datain0[18]), .Y(n914) );
  OAI21X1 U1083 ( .A(n1001), .B(n915), .C(n914), .Y(pfifo_datain[18]) );
  INVX1 U1084 ( .A(pfifo_datain2[19]), .Y(n917) );
  AOI22X1 U1085 ( .A(n1007), .B(pfifo_datain1[19]), .C(n924), .D(
        pfifo_datain0[19]), .Y(n916) );
  OAI21X1 U1086 ( .A(n1001), .B(n917), .C(n916), .Y(pfifo_datain[19]) );
  INVX1 U1087 ( .A(pfifo_datain2[20]), .Y(n919) );
  AOI22X1 U1088 ( .A(n1007), .B(pfifo_datain1[20]), .C(n924), .D(
        pfifo_datain0[20]), .Y(n918) );
  OAI21X1 U1089 ( .A(n1001), .B(n919), .C(n918), .Y(pfifo_datain[20]) );
  INVX1 U1090 ( .A(pfifo_datain2[21]), .Y(n921) );
  AOI22X1 U1091 ( .A(n1007), .B(pfifo_datain1[21]), .C(n924), .D(
        pfifo_datain0[21]), .Y(n920) );
  OAI21X1 U1092 ( .A(n1001), .B(n921), .C(n920), .Y(pfifo_datain[21]) );
  INVX1 U1093 ( .A(pfifo_datain2[22]), .Y(n923) );
  AOI22X1 U1094 ( .A(n1007), .B(pfifo_datain1[22]), .C(n924), .D(
        pfifo_datain0[22]), .Y(n922) );
  OAI21X1 U1095 ( .A(n1001), .B(n923), .C(n922), .Y(pfifo_datain[22]) );
  AOI22X1 U1096 ( .A(n1007), .B(pfifo_datain1[23]), .C(n924), .D(
        pfifo_datain0[23]), .Y(n925) );
  OAI21X1 U1097 ( .A(n1001), .B(n926), .C(n925), .Y(pfifo_datain[23]) );
  INVX1 U1098 ( .A(pfifo_datain2[24]), .Y(n928) );
  AOI22X1 U1099 ( .A(n1007), .B(pfifo_datain1[24]), .C(n924), .D(
        pfifo_datain0[24]), .Y(n927) );
  OAI21X1 U1100 ( .A(n1001), .B(n928), .C(n927), .Y(pfifo_datain[24]) );
  INVX1 U1101 ( .A(pfifo_datain2[25]), .Y(n930) );
  AOI22X1 U1102 ( .A(n1007), .B(pfifo_datain1[25]), .C(n924), .D(
        pfifo_datain0[25]), .Y(n929) );
  OAI21X1 U1103 ( .A(n1001), .B(n930), .C(n929), .Y(pfifo_datain[25]) );
  INVX1 U1104 ( .A(pfifo_datain2[26]), .Y(n932) );
  AOI22X1 U1105 ( .A(n1007), .B(pfifo_datain1[26]), .C(n924), .D(
        pfifo_datain0[26]), .Y(n931) );
  OAI21X1 U1106 ( .A(n1010), .B(n932), .C(n931), .Y(pfifo_datain[26]) );
  INVX1 U1107 ( .A(pfifo_datain2[27]), .Y(n934) );
  AOI22X1 U1108 ( .A(n1007), .B(pfifo_datain1[27]), .C(n924), .D(
        pfifo_datain0[27]), .Y(n933) );
  OAI21X1 U1109 ( .A(n1006), .B(n934), .C(n933), .Y(pfifo_datain[27]) );
  INVX1 U1110 ( .A(pfifo_datain2[28]), .Y(n936) );
  AOI22X1 U1111 ( .A(n1007), .B(pfifo_datain1[28]), .C(n924), .D(
        pfifo_datain0[28]), .Y(n935) );
  OAI21X1 U1112 ( .A(n1010), .B(n936), .C(n935), .Y(pfifo_datain[28]) );
  INVX1 U1113 ( .A(pfifo_datain2[29]), .Y(n938) );
  AOI22X1 U1114 ( .A(n1007), .B(pfifo_datain1[29]), .C(n924), .D(
        pfifo_datain0[29]), .Y(n937) );
  OAI21X1 U1115 ( .A(n1006), .B(n938), .C(n937), .Y(pfifo_datain[29]) );
  AOI22X1 U1116 ( .A(n1007), .B(pfifo_datain1[30]), .C(n924), .D(
        pfifo_datain0[30]), .Y(n939) );
  OAI21X1 U1117 ( .A(n1012), .B(n940), .C(n939), .Y(pfifo_datain[30]) );
  INVX1 U1118 ( .A(pfifo_datain2[31]), .Y(n942) );
  AOI22X1 U1119 ( .A(n1007), .B(pfifo_datain1[31]), .C(n924), .D(
        pfifo_datain0[31]), .Y(n941) );
  OAI21X1 U1120 ( .A(n1012), .B(n942), .C(n941), .Y(pfifo_datain[31]) );
  INVX1 U1121 ( .A(pfifo_datain2[32]), .Y(n944) );
  AOI22X1 U1122 ( .A(n1007), .B(pfifo_datain1[32]), .C(n924), .D(
        pfifo_datain0[32]), .Y(n943) );
  OAI21X1 U1123 ( .A(n1012), .B(n944), .C(n943), .Y(pfifo_datain[32]) );
  INVX1 U1124 ( .A(pfifo_datain2[33]), .Y(n946) );
  AOI22X1 U1125 ( .A(n1007), .B(pfifo_datain1[33]), .C(n924), .D(
        pfifo_datain0[33]), .Y(n945) );
  OAI21X1 U1126 ( .A(n1006), .B(n946), .C(n945), .Y(pfifo_datain[33]) );
  INVX1 U1127 ( .A(pfifo_datain2[34]), .Y(n948) );
  AOI22X1 U1128 ( .A(n1007), .B(pfifo_datain1[34]), .C(n924), .D(
        pfifo_datain0[34]), .Y(n947) );
  OAI21X1 U1129 ( .A(n1006), .B(n948), .C(n947), .Y(pfifo_datain[34]) );
  INVX1 U1130 ( .A(pfifo_datain2[35]), .Y(n950) );
  AOI22X1 U1131 ( .A(n1007), .B(pfifo_datain1[35]), .C(n924), .D(
        pfifo_datain0[35]), .Y(n949) );
  OAI21X1 U1132 ( .A(n1010), .B(n950), .C(n949), .Y(pfifo_datain[35]) );
  INVX1 U1133 ( .A(pfifo_datain2[36]), .Y(n952) );
  AOI22X1 U1134 ( .A(n1007), .B(pfifo_datain1[36]), .C(n924), .D(
        pfifo_datain0[36]), .Y(n951) );
  OAI21X1 U1135 ( .A(n1012), .B(n952), .C(n951), .Y(pfifo_datain[36]) );
  INVX1 U1136 ( .A(pfifo_datain2[37]), .Y(n954) );
  AOI22X1 U1137 ( .A(n1007), .B(pfifo_datain1[37]), .C(n924), .D(
        pfifo_datain0[37]), .Y(n953) );
  OAI21X1 U1138 ( .A(n1010), .B(n954), .C(n953), .Y(pfifo_datain[37]) );
  AOI22X1 U1139 ( .A(n1007), .B(pfifo_datain1[38]), .C(n924), .D(
        pfifo_datain0[38]), .Y(n955) );
  OAI21X1 U1140 ( .A(n1006), .B(n956), .C(n955), .Y(pfifo_datain[38]) );
  INVX1 U1141 ( .A(pfifo_datain2[39]), .Y(n958) );
  AOI22X1 U1142 ( .A(n1007), .B(pfifo_datain1[39]), .C(n924), .D(
        pfifo_datain0[39]), .Y(n957) );
  OAI21X1 U1143 ( .A(n1010), .B(n958), .C(n957), .Y(pfifo_datain[39]) );
  INVX1 U1144 ( .A(pfifo_datain2[40]), .Y(n960) );
  AOI22X1 U1145 ( .A(n1007), .B(pfifo_datain1[40]), .C(n924), .D(
        pfifo_datain0[40]), .Y(n959) );
  OAI21X1 U1146 ( .A(n1012), .B(n960), .C(n959), .Y(pfifo_datain[40]) );
  INVX1 U1147 ( .A(pfifo_datain2[41]), .Y(n962) );
  AOI22X1 U1148 ( .A(n1007), .B(pfifo_datain1[41]), .C(n924), .D(
        pfifo_datain0[41]), .Y(n961) );
  OAI21X1 U1149 ( .A(n1006), .B(n962), .C(n961), .Y(pfifo_datain[41]) );
  INVX1 U1150 ( .A(pfifo_datain2[42]), .Y(n964) );
  AOI22X1 U1151 ( .A(n1007), .B(pfifo_datain1[42]), .C(n924), .D(
        pfifo_datain0[42]), .Y(n963) );
  OAI21X1 U1152 ( .A(n1010), .B(n964), .C(n963), .Y(pfifo_datain[42]) );
  INVX1 U1153 ( .A(pfifo_datain2[43]), .Y(n966) );
  AOI22X1 U1154 ( .A(n1007), .B(pfifo_datain1[43]), .C(n924), .D(
        pfifo_datain0[43]), .Y(n965) );
  OAI21X1 U1155 ( .A(n1012), .B(n966), .C(n965), .Y(pfifo_datain[43]) );
  INVX1 U1156 ( .A(pfifo_datain2[44]), .Y(n968) );
  AOI22X1 U1157 ( .A(n1007), .B(pfifo_datain1[44]), .C(n924), .D(
        pfifo_datain0[44]), .Y(n967) );
  OAI21X1 U1158 ( .A(n1012), .B(n968), .C(n967), .Y(pfifo_datain[44]) );
  AOI22X1 U1159 ( .A(n1007), .B(pfifo_datain1[45]), .C(n924), .D(
        pfifo_datain0[45]), .Y(n969) );
  OAI21X1 U1160 ( .A(n1010), .B(n970), .C(n969), .Y(pfifo_datain[45]) );
  INVX1 U1161 ( .A(pfifo_datain2[46]), .Y(n972) );
  AOI22X1 U1162 ( .A(n1007), .B(pfifo_datain1[46]), .C(n924), .D(
        pfifo_datain0[46]), .Y(n971) );
  OAI21X1 U1163 ( .A(n1010), .B(n972), .C(n971), .Y(pfifo_datain[46]) );
  INVX1 U1164 ( .A(pfifo_datain2[47]), .Y(n974) );
  AOI22X1 U1165 ( .A(n1007), .B(pfifo_datain1[47]), .C(n924), .D(
        pfifo_datain0[47]), .Y(n973) );
  OAI21X1 U1166 ( .A(n1006), .B(n974), .C(n973), .Y(pfifo_datain[47]) );
  INVX1 U1167 ( .A(pfifo_datain2[48]), .Y(n976) );
  AOI22X1 U1168 ( .A(n1007), .B(pfifo_datain1[48]), .C(n924), .D(
        pfifo_datain0[48]), .Y(n975) );
  OAI21X1 U1169 ( .A(n1006), .B(n976), .C(n975), .Y(pfifo_datain[48]) );
  INVX1 U1170 ( .A(pfifo_datain2[49]), .Y(n978) );
  AOI22X1 U1171 ( .A(n1007), .B(pfifo_datain1[49]), .C(n924), .D(
        pfifo_datain0[49]), .Y(n977) );
  OAI21X1 U1172 ( .A(n1012), .B(n978), .C(n977), .Y(pfifo_datain[49]) );
  INVX1 U1173 ( .A(pfifo_datain2[50]), .Y(n980) );
  AOI22X1 U1174 ( .A(n1007), .B(pfifo_datain1[50]), .C(n924), .D(
        pfifo_datain0[50]), .Y(n979) );
  OAI21X1 U1175 ( .A(n1006), .B(n980), .C(n979), .Y(pfifo_datain[50]) );
  INVX1 U1176 ( .A(pfifo_datain2[51]), .Y(n982) );
  AOI22X1 U1177 ( .A(n1007), .B(pfifo_datain1[51]), .C(n924), .D(
        pfifo_datain0[51]), .Y(n981) );
  OAI21X1 U1178 ( .A(n1010), .B(n982), .C(n981), .Y(pfifo_datain[51]) );
  INVX1 U1179 ( .A(pfifo_datain2[52]), .Y(n984) );
  AOI22X1 U1180 ( .A(n1007), .B(pfifo_datain1[52]), .C(n924), .D(
        pfifo_datain0[52]), .Y(n983) );
  OAI21X1 U1181 ( .A(n1006), .B(n984), .C(n983), .Y(pfifo_datain[52]) );
  AOI22X1 U1182 ( .A(n1007), .B(pfifo_datain1[53]), .C(n924), .D(
        pfifo_datain0[53]), .Y(n985) );
  OAI21X1 U1183 ( .A(n1006), .B(n986), .C(n985), .Y(pfifo_datain[53]) );
  INVX1 U1184 ( .A(pfifo_datain2[54]), .Y(n988) );
  AOI22X1 U1185 ( .A(n1007), .B(pfifo_datain1[54]), .C(n924), .D(
        pfifo_datain0[54]), .Y(n987) );
  OAI21X1 U1186 ( .A(n1012), .B(n988), .C(n987), .Y(pfifo_datain[54]) );
  INVX1 U1187 ( .A(pfifo_datain2[55]), .Y(n990) );
  AOI22X1 U1188 ( .A(n1007), .B(pfifo_datain1[55]), .C(n924), .D(
        pfifo_datain0[55]), .Y(n989) );
  OAI21X1 U1189 ( .A(n1006), .B(n990), .C(n989), .Y(pfifo_datain[55]) );
  INVX1 U1190 ( .A(pfifo_datain2[56]), .Y(n992) );
  AOI22X1 U1191 ( .A(n1007), .B(pfifo_datain1[56]), .C(n924), .D(
        pfifo_datain0[56]), .Y(n991) );
  OAI21X1 U1192 ( .A(n1012), .B(n992), .C(n991), .Y(pfifo_datain[56]) );
  INVX1 U1193 ( .A(pfifo_datain2[57]), .Y(n994) );
  AOI22X1 U1194 ( .A(n1007), .B(pfifo_datain1[57]), .C(n924), .D(
        pfifo_datain0[57]), .Y(n993) );
  OAI21X1 U1195 ( .A(n1001), .B(n994), .C(n993), .Y(pfifo_datain[57]) );
  INVX1 U1196 ( .A(pfifo_datain2[58]), .Y(n996) );
  AOI22X1 U1197 ( .A(n1007), .B(pfifo_datain1[58]), .C(n924), .D(
        pfifo_datain0[58]), .Y(n995) );
  OAI21X1 U1198 ( .A(n1010), .B(n996), .C(n995), .Y(pfifo_datain[58]) );
  INVX1 U1199 ( .A(pfifo_datain2[59]), .Y(n998) );
  AOI22X1 U1200 ( .A(n1007), .B(pfifo_datain1[59]), .C(n924), .D(
        pfifo_datain0[59]), .Y(n997) );
  OAI21X1 U1201 ( .A(n1001), .B(n998), .C(n997), .Y(pfifo_datain[59]) );
  AOI22X1 U1202 ( .A(n1007), .B(pfifo_datain1[60]), .C(n924), .D(
        pfifo_datain0[60]), .Y(n999) );
  OAI21X1 U1203 ( .A(n1001), .B(n1000), .C(n999), .Y(pfifo_datain[60]) );
  INVX1 U1204 ( .A(pfifo_datain2[61]), .Y(n1003) );
  AOI22X1 U1205 ( .A(n1007), .B(pfifo_datain1[61]), .C(n924), .D(
        pfifo_datain0[61]), .Y(n1002) );
  OAI21X1 U1206 ( .A(n1012), .B(n1003), .C(n1002), .Y(pfifo_datain[61]) );
  INVX1 U1207 ( .A(pfifo_datain2[62]), .Y(n1005) );
  AOI22X1 U1208 ( .A(n1007), .B(pfifo_datain1[62]), .C(n924), .D(
        pfifo_datain0[62]), .Y(n1004) );
  OAI21X1 U1209 ( .A(n1006), .B(n1005), .C(n1004), .Y(pfifo_datain[62]) );
  INVX1 U1210 ( .A(pfifo_datain2[63]), .Y(n1009) );
  AOI22X1 U1211 ( .A(n1007), .B(pfifo_datain1[63]), .C(n924), .D(
        pfifo_datain0[63]), .Y(n1008) );
  OAI21X1 U1212 ( .A(n1010), .B(n1009), .C(n1008), .Y(pfifo_datain[63]) );
  NOR2X1 U1213 ( .A(n1010), .B(n1011), .Y(pfifo_pop_2) );
  NOR2X1 U1214 ( .A(n1013), .B(n1011), .Y(pfifo_pop_1) );
  NOR2X1 U1215 ( .A(n1015), .B(n1011), .Y(pfifo_pop_0) );
  NOR2X1 U1216 ( .A(n1012), .B(n1014), .Y(crcfifo2_pull) );
  NOR2X1 U1217 ( .A(n1013), .B(n1014), .Y(crcfifo1_pull) );
  NOR2X1 U1218 ( .A(n1015), .B(n1014), .Y(crcfifo0_pull) );
  NAND3X1 U1220 ( .A(crcfifo2_empty), .B(crcfifo1_empty), .C(crcfifo0_empty), 
        .Y(start_transmit) );
endmodule

