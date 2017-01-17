/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 22:47:10 2016
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
         \qos/N13 , \qos/N12 , \qos/N11 , \qos/N10 , n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077;
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
  DFFSR \qos/queue_gnt_d_reg[0]  ( .D(\qos/queue_gnt_q [0]), .CLK(\clks.clk ), 
        .R(\clks.rst ), .S(1'b1), .Q(buffer_sel[0]) );
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
  OR2X1 U469 ( .A(n788), .B(n566), .Y(n786) );
  OR2X1 U470 ( .A(n586), .B(n745), .Y(n756) );
  AND2X1 U471 ( .A(n590), .B(n410), .Y(n790) );
  INVX2 U472 ( .A(n432), .Y(n1074) );
  BUFX2 U473 ( .A(n1075), .Y(n728) );
  INVX4 U474 ( .A(n411), .Y(n822) );
  AND2X2 U475 ( .A(arb_nxt), .B(\qos/queue_gnt_q [0]), .Y(n565) );
  AND2X2 U476 ( .A(n589), .B(n415), .Y(n779) );
  INVX2 U477 ( .A(n782), .Y(n843) );
  OR2X1 U478 ( .A(n423), .B(n766), .Y(n765) );
  OR2X1 U479 ( .A(n559), .B(n578), .Y(n797) );
  AND2X1 U480 ( .A(n710), .B(crcfifo1_empty), .Y(n738) );
  INVX1 U481 ( .A(n778), .Y(n835) );
  INVX1 U482 ( .A(n780), .Y(n827) );
  INVX1 U483 ( .A(n820), .Y(n413) );
  INVX1 U484 ( .A(n821), .Y(n412) );
  AND2X1 U485 ( .A(n846), .B(n822), .Y(\qos/N17 ) );
  AND2X1 U486 ( .A(n845), .B(n822), .Y(\qos/N16 ) );
  AND2X1 U487 ( .A(n419), .B(n822), .Y(\qos/N15 ) );
  AND2X1 U488 ( .A(n843), .B(n822), .Y(\qos/N14 ) );
  AND2X1 U489 ( .A(n575), .B(n822), .Y(\qos/N13 ) );
  AND2X1 U490 ( .A(n841), .B(n822), .Y(\qos/N12 ) );
  AND2X1 U491 ( .A(n568), .B(n822), .Y(\qos/N11 ) );
  AND2X1 U492 ( .A(n717), .B(n822), .Y(\qos/N10 ) );
  AND2X1 U493 ( .A(n573), .B(n757), .Y(n747) );
  AND2X1 U494 ( .A(n838), .B(n822), .Y(\qos/N25 ) );
  AND2X1 U495 ( .A(n837), .B(n822), .Y(\qos/N24 ) );
  AND2X1 U496 ( .A(n716), .B(n822), .Y(\qos/N23 ) );
  AND2X1 U497 ( .A(n835), .B(n822), .Y(\qos/N22 ) );
  AND2X1 U498 ( .A(n715), .B(n822), .Y(\qos/N21 ) );
  AND2X1 U499 ( .A(n596), .B(n822), .Y(\qos/N20 ) );
  AND2X1 U500 ( .A(n832), .B(n822), .Y(\qos/N19 ) );
  AND2X1 U501 ( .A(n831), .B(n822), .Y(\qos/N18 ) );
  AND2X1 U502 ( .A(n830), .B(n822), .Y(\qos/N33 ) );
  AND2X1 U503 ( .A(n829), .B(n822), .Y(\qos/N32 ) );
  AND2X1 U504 ( .A(n592), .B(n822), .Y(\qos/N31 ) );
  AND2X1 U505 ( .A(n827), .B(n822), .Y(\qos/N30 ) );
  AND2X1 U506 ( .A(n593), .B(n822), .Y(\qos/N29 ) );
  AND2X1 U507 ( .A(n825), .B(n822), .Y(\qos/N28 ) );
  AND2X1 U508 ( .A(n824), .B(n822), .Y(\qos/N27 ) );
  AND2X1 U509 ( .A(n574), .B(n822), .Y(\qos/N26 ) );
  OR2X1 U510 ( .A(n556), .B(n579), .Y(n799) );
  OR2X1 U511 ( .A(n554), .B(n577), .Y(n792) );
  AND2X1 U512 ( .A(n712), .B(n581), .Y(n781) );
  AND2X1 U513 ( .A(n553), .B(n760), .Y(n784) );
  AND2X1 U514 ( .A(n721), .B(n767), .Y(n760) );
  OR2X1 U515 ( .A(n785), .B(n572), .Y(n783) );
  OR2X1 U516 ( .A(n791), .B(n576), .Y(n789) );
  AND2X1 U517 ( .A(n711), .B(n416), .Y(n767) );
  AND2X1 U518 ( .A(n714), .B(n774), .Y(n787) );
  AND2X1 U519 ( .A(n718), .B(n763), .Y(n774) );
  INVX1 U520 ( .A(n739), .Y(n586) );
  INVX1 U521 ( .A(arb_nxt), .Y(n848) );
  INVX1 U522 ( .A(n797), .Y(n713) );
  INVX1 U523 ( .A(n799), .Y(n595) );
  INVX1 U524 ( .A(n789), .Y(n581) );
  AND2X1 U525 ( .A(n428), .B(n420), .Y(n410) );
  INVX1 U526 ( .A(n819), .Y(n414) );
  NOR3X1 U527 ( .A(n412), .B(n413), .C(n414), .Y(n411) );
  INVX1 U528 ( .A(n786), .Y(n415) );
  BUFX2 U529 ( .A(n564), .Y(n416) );
  BUFX2 U530 ( .A(n740), .Y(n417) );
  BUFX2 U531 ( .A(n849), .Y(n418) );
  BUFX2 U532 ( .A(n844), .Y(n419) );
  INVX1 U533 ( .A(n765), .Y(n420) );
  BUFX2 U534 ( .A(n744), .Y(n421) );
  INVX1 U535 ( .A(n747), .Y(n422) );
  INVX1 U536 ( .A(n565), .Y(n423) );
  INVX1 U537 ( .A(n738), .Y(n424) );
  BUFX2 U538 ( .A(n748), .Y(n425) );
  BUFX2 U539 ( .A(n741), .Y(n426) );
  BUFX2 U540 ( .A(n749), .Y(n427) );
  AND2X1 U541 ( .A(n569), .B(n757), .Y(n847) );
  BUFX2 U542 ( .A(\qos/srv_cnt0_d [1]), .Y(n428) );
  BUFX2 U543 ( .A(\qos/srv_cnt0_d [0]), .Y(n429) );
  BUFX2 U544 ( .A(\qos/srv_cnt1_d [3]), .Y(n430) );
  BUFX2 U545 ( .A(\qos/srv_cnt2_d [3]), .Y(n431) );
  BUFX2 U546 ( .A(n726), .Y(n432) );
  AND2X1 U547 ( .A(n807), .B(n808), .Y(n724) );
  INVX1 U548 ( .A(n850), .Y(n433) );
  AND2X1 U549 ( .A(n728), .B(pfifo_datain_ctrl_0[0]), .Y(n850) );
  INVX1 U550 ( .A(n852), .Y(n434) );
  AND2X1 U551 ( .A(n728), .B(pfifo_datain_ctrl_0[1]), .Y(n852) );
  INVX1 U552 ( .A(n854), .Y(n435) );
  AND2X1 U553 ( .A(n728), .B(pfifo_datain_ctrl_0[2]), .Y(n854) );
  INVX1 U554 ( .A(n856), .Y(n436) );
  AND2X1 U555 ( .A(n728), .B(pfifo_datain_ctrl_0[3]), .Y(n856) );
  INVX1 U556 ( .A(n858), .Y(n437) );
  AND2X1 U557 ( .A(n728), .B(pfifo_datain_ctrl_0[4]), .Y(n858) );
  INVX1 U558 ( .A(n860), .Y(n438) );
  AND2X1 U559 ( .A(n728), .B(pfifo_datain_ctrl_0[5]), .Y(n860) );
  INVX1 U560 ( .A(n862), .Y(n439) );
  AND2X1 U561 ( .A(n728), .B(pfifo_datain_ctrl_0[6]), .Y(n862) );
  INVX1 U562 ( .A(n864), .Y(n440) );
  AND2X1 U563 ( .A(n728), .B(pfifo_datain_ctrl_0[7]), .Y(n864) );
  INVX1 U564 ( .A(n866), .Y(n441) );
  AND2X1 U565 ( .A(n728), .B(pfifo_datain_ctrl_0[8]), .Y(n866) );
  INVX1 U566 ( .A(n868), .Y(n442) );
  AND2X1 U567 ( .A(n728), .B(pfifo_datain_ctrl_0[9]), .Y(n868) );
  INVX1 U568 ( .A(n870), .Y(n443) );
  AND2X1 U569 ( .A(n728), .B(pfifo_datain_ctrl_0[10]), .Y(n870) );
  INVX1 U570 ( .A(n872), .Y(n444) );
  AND2X1 U571 ( .A(n728), .B(pfifo_datain_ctrl_0[11]), .Y(n872) );
  INVX1 U572 ( .A(n874), .Y(n445) );
  AND2X1 U573 ( .A(n728), .B(pfifo_datain_ctrl_0[12]), .Y(n874) );
  INVX1 U574 ( .A(n876), .Y(n446) );
  AND2X1 U575 ( .A(n728), .B(pfifo_datain_ctrl_0[13]), .Y(n876) );
  INVX1 U576 ( .A(n878), .Y(n447) );
  AND2X1 U577 ( .A(n728), .B(pfifo_datain_ctrl_0[14]), .Y(n878) );
  INVX1 U578 ( .A(n880), .Y(n448) );
  AND2X1 U579 ( .A(n728), .B(pfifo_datain_ctrl_0[15]), .Y(n880) );
  INVX1 U580 ( .A(n882), .Y(n449) );
  AND2X1 U581 ( .A(n728), .B(crcfifo0_dataout[0]), .Y(n882) );
  INVX1 U582 ( .A(n884), .Y(n450) );
  AND2X1 U583 ( .A(n728), .B(crcfifo0_dataout[1]), .Y(n884) );
  INVX1 U584 ( .A(n886), .Y(n451) );
  AND2X1 U585 ( .A(n728), .B(crcfifo0_dataout[2]), .Y(n886) );
  INVX1 U586 ( .A(n888), .Y(n452) );
  AND2X1 U587 ( .A(n728), .B(crcfifo0_dataout[3]), .Y(n888) );
  INVX1 U588 ( .A(n890), .Y(n453) );
  AND2X1 U589 ( .A(n728), .B(crcfifo0_dataout[4]), .Y(n890) );
  INVX1 U590 ( .A(n892), .Y(n454) );
  AND2X1 U591 ( .A(n728), .B(crcfifo0_dataout[5]), .Y(n892) );
  INVX1 U592 ( .A(n894), .Y(n455) );
  AND2X1 U593 ( .A(n728), .B(crcfifo0_dataout[6]), .Y(n894) );
  INVX1 U594 ( .A(n896), .Y(n456) );
  AND2X1 U595 ( .A(n728), .B(crcfifo0_dataout[7]), .Y(n896) );
  INVX1 U596 ( .A(n898), .Y(n457) );
  AND2X1 U597 ( .A(n728), .B(crcfifo0_dataout[8]), .Y(n898) );
  AND2X1 U598 ( .A(n1075), .B(crcfifo0_dataout[9]), .Y(n900) );
  INVX1 U599 ( .A(n900), .Y(n458) );
  AND2X1 U600 ( .A(n1075), .B(crcfifo0_dataout[10]), .Y(n902) );
  INVX1 U601 ( .A(n902), .Y(n459) );
  AND2X2 U602 ( .A(n1075), .B(crcfifo0_dataout[11]), .Y(n904) );
  INVX1 U603 ( .A(n904), .Y(n460) );
  AND2X1 U604 ( .A(n1075), .B(crcfifo0_dataout[12]), .Y(n906) );
  INVX1 U605 ( .A(n906), .Y(n461) );
  AND2X2 U606 ( .A(n1075), .B(crcfifo0_dataout[13]), .Y(n908) );
  INVX1 U607 ( .A(n908), .Y(n462) );
  AND2X1 U608 ( .A(n1075), .B(crcfifo0_dataout[14]), .Y(n910) );
  INVX1 U609 ( .A(n910), .Y(n463) );
  AND2X1 U610 ( .A(n1075), .B(crcfifo0_dataout[15]), .Y(n912) );
  INVX1 U611 ( .A(n912), .Y(n464) );
  AND2X2 U612 ( .A(n1075), .B(crcfifo0_dataout[16]), .Y(n914) );
  INVX1 U613 ( .A(n914), .Y(n465) );
  AND2X1 U614 ( .A(n1075), .B(crcfifo0_dataout[17]), .Y(n916) );
  INVX1 U615 ( .A(n916), .Y(n466) );
  AND2X1 U616 ( .A(n1075), .B(crcfifo0_dataout[18]), .Y(n918) );
  INVX1 U617 ( .A(n918), .Y(n467) );
  AND2X2 U618 ( .A(n1075), .B(crcfifo0_dataout[19]), .Y(n920) );
  INVX1 U619 ( .A(n920), .Y(n468) );
  INVX1 U620 ( .A(n922), .Y(n469) );
  AND2X1 U621 ( .A(n728), .B(crcfifo0_dataout[20]), .Y(n922) );
  INVX1 U622 ( .A(n924), .Y(n470) );
  AND2X1 U623 ( .A(n728), .B(crcfifo0_dataout[21]), .Y(n924) );
  INVX1 U624 ( .A(n926), .Y(n471) );
  AND2X1 U625 ( .A(n728), .B(crcfifo0_dataout[22]), .Y(n926) );
  AND2X1 U626 ( .A(n1075), .B(crcfifo0_dataout[23]), .Y(n928) );
  INVX1 U627 ( .A(n928), .Y(n472) );
  AND2X2 U628 ( .A(n1075), .B(crcfifo0_dataout[24]), .Y(n930) );
  INVX1 U629 ( .A(n930), .Y(n473) );
  AND2X1 U630 ( .A(n1075), .B(crcfifo0_dataout[25]), .Y(n932) );
  INVX1 U631 ( .A(n932), .Y(n474) );
  AND2X1 U632 ( .A(n1075), .B(crcfifo0_dataout[26]), .Y(n934) );
  INVX1 U633 ( .A(n934), .Y(n475) );
  AND2X2 U634 ( .A(n1075), .B(crcfifo0_dataout[27]), .Y(n936) );
  INVX1 U635 ( .A(n936), .Y(n476) );
  AND2X1 U636 ( .A(n1075), .B(crcfifo0_dataout[28]), .Y(n938) );
  INVX1 U637 ( .A(n938), .Y(n477) );
  AND2X1 U638 ( .A(n1075), .B(crcfifo0_dataout[29]), .Y(n940) );
  INVX1 U639 ( .A(n940), .Y(n478) );
  AND2X2 U640 ( .A(n1075), .B(crcfifo0_dataout[30]), .Y(n942) );
  INVX1 U641 ( .A(n942), .Y(n479) );
  AND2X1 U642 ( .A(n1075), .B(crcfifo0_dataout[31]), .Y(n944) );
  INVX1 U643 ( .A(n944), .Y(n480) );
  AND2X1 U644 ( .A(n1075), .B(pfifo_datain0[0]), .Y(n946) );
  INVX1 U645 ( .A(n946), .Y(n481) );
  AND2X2 U646 ( .A(n1075), .B(pfifo_datain0[1]), .Y(n948) );
  INVX1 U647 ( .A(n948), .Y(n482) );
  AND2X1 U648 ( .A(n1075), .B(pfifo_datain0[2]), .Y(n950) );
  INVX1 U649 ( .A(n950), .Y(n483) );
  AND2X2 U650 ( .A(n1075), .B(pfifo_datain0[3]), .Y(n952) );
  INVX1 U651 ( .A(n952), .Y(n484) );
  INVX1 U652 ( .A(n954), .Y(n485) );
  AND2X1 U653 ( .A(n728), .B(pfifo_datain0[4]), .Y(n954) );
  INVX1 U654 ( .A(n956), .Y(n486) );
  AND2X1 U655 ( .A(n728), .B(pfifo_datain0[5]), .Y(n956) );
  INVX1 U656 ( .A(n958), .Y(n487) );
  AND2X1 U657 ( .A(n728), .B(pfifo_datain0[6]), .Y(n958) );
  INVX1 U658 ( .A(n960), .Y(n488) );
  AND2X1 U659 ( .A(n728), .B(pfifo_datain0[7]), .Y(n960) );
  INVX1 U660 ( .A(n962), .Y(n489) );
  AND2X1 U661 ( .A(n728), .B(pfifo_datain0[8]), .Y(n962) );
  INVX1 U662 ( .A(n964), .Y(n490) );
  AND2X1 U663 ( .A(n728), .B(pfifo_datain0[9]), .Y(n964) );
  INVX1 U664 ( .A(n966), .Y(n491) );
  AND2X1 U665 ( .A(n728), .B(pfifo_datain0[10]), .Y(n966) );
  INVX1 U666 ( .A(n968), .Y(n492) );
  AND2X1 U667 ( .A(n728), .B(pfifo_datain0[11]), .Y(n968) );
  INVX1 U668 ( .A(n970), .Y(n493) );
  AND2X1 U669 ( .A(n728), .B(pfifo_datain0[12]), .Y(n970) );
  INVX1 U670 ( .A(n972), .Y(n494) );
  AND2X1 U671 ( .A(n728), .B(pfifo_datain0[13]), .Y(n972) );
  INVX1 U672 ( .A(n974), .Y(n495) );
  AND2X1 U673 ( .A(n728), .B(pfifo_datain0[14]), .Y(n974) );
  INVX1 U674 ( .A(n976), .Y(n496) );
  AND2X1 U675 ( .A(n728), .B(pfifo_datain0[15]), .Y(n976) );
  INVX1 U676 ( .A(n978), .Y(n497) );
  AND2X1 U677 ( .A(n728), .B(pfifo_datain0[16]), .Y(n978) );
  INVX1 U678 ( .A(n980), .Y(n498) );
  AND2X1 U679 ( .A(n728), .B(pfifo_datain0[17]), .Y(n980) );
  INVX1 U680 ( .A(n982), .Y(n499) );
  AND2X1 U681 ( .A(n728), .B(pfifo_datain0[18]), .Y(n982) );
  AND2X1 U682 ( .A(n1075), .B(pfifo_datain0[19]), .Y(n984) );
  INVX1 U683 ( .A(n984), .Y(n500) );
  AND2X1 U684 ( .A(n1075), .B(pfifo_datain0[20]), .Y(n986) );
  INVX1 U685 ( .A(n986), .Y(n501) );
  AND2X2 U686 ( .A(n1075), .B(pfifo_datain0[21]), .Y(n988) );
  INVX1 U687 ( .A(n988), .Y(n502) );
  AND2X1 U688 ( .A(n1075), .B(pfifo_datain0[22]), .Y(n990) );
  INVX1 U689 ( .A(n990), .Y(n503) );
  AND2X1 U690 ( .A(n1075), .B(pfifo_datain0[23]), .Y(n992) );
  INVX1 U691 ( .A(n992), .Y(n504) );
  AND2X2 U692 ( .A(n1075), .B(pfifo_datain0[24]), .Y(n994) );
  INVX1 U693 ( .A(n994), .Y(n505) );
  AND2X1 U694 ( .A(n1075), .B(pfifo_datain0[25]), .Y(n996) );
  INVX1 U695 ( .A(n996), .Y(n506) );
  AND2X1 U696 ( .A(n1075), .B(pfifo_datain0[26]), .Y(n998) );
  INVX1 U697 ( .A(n998), .Y(n507) );
  AND2X2 U698 ( .A(n1075), .B(pfifo_datain0[27]), .Y(n1000) );
  INVX1 U699 ( .A(n1000), .Y(n508) );
  AND2X1 U700 ( .A(n1075), .B(pfifo_datain0[28]), .Y(n1002) );
  INVX1 U701 ( .A(n1002), .Y(n509) );
  AND2X2 U702 ( .A(n1075), .B(pfifo_datain0[29]), .Y(n1004) );
  INVX1 U703 ( .A(n1004), .Y(n510) );
  AND2X1 U704 ( .A(n1075), .B(pfifo_datain0[30]), .Y(n1006) );
  INVX1 U705 ( .A(n1006), .Y(n511) );
  AND2X1 U706 ( .A(n1075), .B(pfifo_datain0[31]), .Y(n1008) );
  INVX1 U707 ( .A(n1008), .Y(n512) );
  AND2X2 U708 ( .A(n1075), .B(pfifo_datain0[32]), .Y(n1010) );
  INVX1 U709 ( .A(n1010), .Y(n513) );
  AND2X1 U710 ( .A(n1075), .B(pfifo_datain0[33]), .Y(n1012) );
  INVX1 U711 ( .A(n1012), .Y(n514) );
  AND2X1 U712 ( .A(n1075), .B(pfifo_datain0[34]), .Y(n1014) );
  INVX1 U713 ( .A(n1014), .Y(n515) );
  AND2X2 U714 ( .A(n1075), .B(pfifo_datain0[35]), .Y(n1016) );
  INVX1 U715 ( .A(n1016), .Y(n516) );
  AND2X1 U716 ( .A(n1075), .B(pfifo_datain0[36]), .Y(n1018) );
  INVX1 U717 ( .A(n1018), .Y(n517) );
  INVX1 U718 ( .A(n1020), .Y(n518) );
  AND2X1 U719 ( .A(n728), .B(pfifo_datain0[37]), .Y(n1020) );
  INVX1 U720 ( .A(n1022), .Y(n519) );
  AND2X1 U721 ( .A(n728), .B(pfifo_datain0[38]), .Y(n1022) );
  INVX1 U722 ( .A(n1024), .Y(n520) );
  AND2X1 U723 ( .A(n728), .B(pfifo_datain0[39]), .Y(n1024) );
  INVX1 U724 ( .A(n1026), .Y(n521) );
  AND2X1 U725 ( .A(n728), .B(pfifo_datain0[40]), .Y(n1026) );
  INVX1 U726 ( .A(n1028), .Y(n522) );
  AND2X1 U727 ( .A(n728), .B(pfifo_datain0[41]), .Y(n1028) );
  INVX1 U728 ( .A(n1030), .Y(n523) );
  AND2X1 U729 ( .A(n728), .B(pfifo_datain0[42]), .Y(n1030) );
  INVX1 U730 ( .A(n1032), .Y(n524) );
  AND2X1 U731 ( .A(n728), .B(pfifo_datain0[43]), .Y(n1032) );
  INVX1 U732 ( .A(n1034), .Y(n525) );
  AND2X1 U733 ( .A(n728), .B(pfifo_datain0[44]), .Y(n1034) );
  INVX1 U734 ( .A(n1036), .Y(n526) );
  AND2X1 U735 ( .A(n728), .B(pfifo_datain0[45]), .Y(n1036) );
  INVX1 U736 ( .A(n1038), .Y(n527) );
  AND2X1 U737 ( .A(n728), .B(pfifo_datain0[46]), .Y(n1038) );
  INVX1 U738 ( .A(n1040), .Y(n528) );
  AND2X1 U739 ( .A(n728), .B(pfifo_datain0[47]), .Y(n1040) );
  INVX1 U740 ( .A(n1042), .Y(n529) );
  AND2X1 U741 ( .A(n728), .B(pfifo_datain0[48]), .Y(n1042) );
  INVX1 U742 ( .A(n1044), .Y(n530) );
  AND2X1 U743 ( .A(n728), .B(pfifo_datain0[49]), .Y(n1044) );
  INVX1 U744 ( .A(n1046), .Y(n531) );
  AND2X1 U745 ( .A(n728), .B(pfifo_datain0[50]), .Y(n1046) );
  INVX1 U746 ( .A(n1049), .Y(n532) );
  AND2X1 U747 ( .A(n728), .B(pfifo_datain0[51]), .Y(n1049) );
  INVX1 U748 ( .A(n1051), .Y(n533) );
  AND2X1 U749 ( .A(n728), .B(pfifo_datain0[52]), .Y(n1051) );
  INVX1 U750 ( .A(n1053), .Y(n534) );
  AND2X1 U751 ( .A(n728), .B(pfifo_datain0[53]), .Y(n1053) );
  INVX1 U752 ( .A(n1055), .Y(n535) );
  AND2X1 U753 ( .A(n728), .B(pfifo_datain0[54]), .Y(n1055) );
  INVX1 U754 ( .A(n1057), .Y(n536) );
  AND2X1 U755 ( .A(n728), .B(pfifo_datain0[55]), .Y(n1057) );
  INVX1 U756 ( .A(n1059), .Y(n537) );
  AND2X1 U757 ( .A(n728), .B(pfifo_datain0[56]), .Y(n1059) );
  INVX1 U758 ( .A(n1061), .Y(n538) );
  AND2X1 U759 ( .A(n728), .B(pfifo_datain0[57]), .Y(n1061) );
  INVX1 U760 ( .A(n1063), .Y(n539) );
  AND2X1 U761 ( .A(n728), .B(pfifo_datain0[58]), .Y(n1063) );
  INVX1 U762 ( .A(n1065), .Y(n540) );
  AND2X1 U763 ( .A(n728), .B(pfifo_datain0[59]), .Y(n1065) );
  INVX1 U764 ( .A(n1067), .Y(n541) );
  AND2X1 U765 ( .A(n728), .B(pfifo_datain0[60]), .Y(n1067) );
  AND2X2 U766 ( .A(n1075), .B(pfifo_datain0[61]), .Y(n1069) );
  INVX1 U767 ( .A(n1069), .Y(n542) );
  AND2X1 U768 ( .A(n1075), .B(pfifo_datain0[62]), .Y(n1071) );
  INVX1 U769 ( .A(n1071), .Y(n543) );
  AND2X1 U770 ( .A(n1075), .B(pfifo_datain0[63]), .Y(n1076) );
  INVX1 U771 ( .A(n1076), .Y(n544) );
  INVX1 U772 ( .A(n750), .Y(n545) );
  AND2X1 U773 ( .A(arb_nxt), .B(\qos/queue_gnt_q [2]), .Y(n750) );
  BUFX2 U774 ( .A(n730), .Y(n546) );
  BUFX2 U775 ( .A(n735), .Y(n547) );
  INVX1 U776 ( .A(n816), .Y(n548) );
  AND2X1 U777 ( .A(n815), .B(n814), .Y(n816) );
  INVX1 U778 ( .A(n793), .Y(n549) );
  AND2X1 U779 ( .A(n720), .B(n594), .Y(n793) );
  INVX1 U780 ( .A(n798), .Y(n550) );
  AND2X1 U781 ( .A(n571), .B(n713), .Y(n798) );
  INVX1 U782 ( .A(n800), .Y(n551) );
  AND2X1 U783 ( .A(n719), .B(n595), .Y(n800) );
  INVX1 U784 ( .A(n767), .Y(n552) );
  BUFX2 U785 ( .A(\qos/srv_cnt1_d [2]), .Y(n553) );
  INVX1 U786 ( .A(n555), .Y(n554) );
  BUFX2 U787 ( .A(\qos/srv_cnt1_d [5]), .Y(n555) );
  INVX1 U788 ( .A(n557), .Y(n556) );
  BUFX2 U789 ( .A(\qos/srv_cnt0_d [5]), .Y(n557) );
  BUFX2 U790 ( .A(\qos/srv_cnt0_d [3]), .Y(n558) );
  INVX1 U791 ( .A(n560), .Y(n559) );
  BUFX2 U792 ( .A(\qos/srv_cnt2_d [5]), .Y(n560) );
  BUFX2 U793 ( .A(\qos/srv_cnt2_d [0]), .Y(n561) );
  INVX1 U794 ( .A(n760), .Y(n562) );
  INVX1 U795 ( .A(n774), .Y(n563) );
  AOI21X1 U796 ( .A(n418), .B(n709), .C(n848), .Y(n564) );
  INVX1 U797 ( .A(n787), .Y(n566) );
  INVX1 U798 ( .A(n752), .Y(n567) );
  AND2X1 U799 ( .A(crcfifo1_empty), .B(crcfifo2_empty), .Y(n752) );
  BUFX2 U800 ( .A(n840), .Y(n568) );
  BUFX2 U801 ( .A(buffer_sel[1]), .Y(n569) );
  INVX1 U802 ( .A(n571), .Y(n570) );
  BUFX2 U803 ( .A(\qos/srv_cnt2_d [6]), .Y(n571) );
  INVX1 U804 ( .A(n784), .Y(n572) );
  BUFX2 U805 ( .A(buffer_sel[0]), .Y(n573) );
  BUFX2 U806 ( .A(n823), .Y(n574) );
  BUFX2 U807 ( .A(n842), .Y(n575) );
  INVX1 U808 ( .A(n790), .Y(n576) );
  AND2X1 U809 ( .A(n591), .B(n580), .Y(n777) );
  INVX1 U810 ( .A(n777), .Y(n577) );
  INVX1 U811 ( .A(n779), .Y(n578) );
  INVX1 U812 ( .A(n781), .Y(n579) );
  INVX1 U813 ( .A(n783), .Y(n580) );
  INVX1 U814 ( .A(n583), .Y(n582) );
  BUFX2 U815 ( .A(\qos/srv_cnt1_d [7]), .Y(n583) );
  INVX1 U816 ( .A(n585), .Y(n584) );
  BUFX2 U817 ( .A(\qos/srv_cnt2_d [7]), .Y(n585) );
  OR2X1 U818 ( .A(n743), .B(n737), .Y(n739) );
  INVX1 U819 ( .A(n588), .Y(n587) );
  BUFX2 U820 ( .A(\qos/srv_cnt0_d [7]), .Y(n588) );
  BUFX2 U821 ( .A(\qos/srv_cnt2_d [4]), .Y(n589) );
  BUFX2 U822 ( .A(\qos/srv_cnt0_d [2]), .Y(n590) );
  BUFX2 U823 ( .A(\qos/srv_cnt1_d [4]), .Y(n591) );
  BUFX2 U824 ( .A(n828), .Y(n592) );
  BUFX2 U825 ( .A(n826), .Y(n593) );
  INVX1 U826 ( .A(n792), .Y(n594) );
  BUFX2 U827 ( .A(n833), .Y(n596) );
  BUFX2 U828 ( .A(n1077), .Y(n597) );
  BUFX2 U829 ( .A(n1072), .Y(n598) );
  BUFX2 U830 ( .A(n1070), .Y(n599) );
  BUFX2 U831 ( .A(n1068), .Y(n600) );
  BUFX2 U832 ( .A(n1066), .Y(n601) );
  BUFX2 U833 ( .A(n1064), .Y(n602) );
  BUFX2 U834 ( .A(n1062), .Y(n603) );
  BUFX2 U835 ( .A(n1060), .Y(n604) );
  BUFX2 U836 ( .A(n1058), .Y(n605) );
  BUFX2 U837 ( .A(n1056), .Y(n606) );
  BUFX2 U838 ( .A(n1054), .Y(n607) );
  BUFX2 U839 ( .A(n1052), .Y(n608) );
  BUFX2 U840 ( .A(n1050), .Y(n609) );
  BUFX2 U841 ( .A(n1047), .Y(n610) );
  BUFX2 U842 ( .A(n1045), .Y(n611) );
  BUFX2 U843 ( .A(n1043), .Y(n612) );
  BUFX2 U844 ( .A(n1041), .Y(n613) );
  BUFX2 U845 ( .A(n1039), .Y(n614) );
  BUFX2 U846 ( .A(n1037), .Y(n615) );
  BUFX2 U847 ( .A(n1035), .Y(n616) );
  BUFX2 U848 ( .A(n1033), .Y(n617) );
  BUFX2 U849 ( .A(n1031), .Y(n618) );
  BUFX2 U850 ( .A(n1029), .Y(n619) );
  BUFX2 U851 ( .A(n1027), .Y(n620) );
  BUFX2 U852 ( .A(n1025), .Y(n621) );
  BUFX2 U853 ( .A(n1023), .Y(n622) );
  BUFX2 U854 ( .A(n1021), .Y(n623) );
  BUFX2 U855 ( .A(n1019), .Y(n624) );
  BUFX2 U856 ( .A(n1017), .Y(n625) );
  BUFX2 U857 ( .A(n1015), .Y(n626) );
  BUFX2 U858 ( .A(n1013), .Y(n627) );
  BUFX2 U859 ( .A(n1011), .Y(n628) );
  BUFX2 U860 ( .A(n1009), .Y(n629) );
  BUFX2 U861 ( .A(n1007), .Y(n630) );
  BUFX2 U862 ( .A(n1005), .Y(n631) );
  BUFX2 U863 ( .A(n1003), .Y(n632) );
  BUFX2 U864 ( .A(n1001), .Y(n633) );
  BUFX2 U865 ( .A(n999), .Y(n634) );
  BUFX2 U866 ( .A(n997), .Y(n635) );
  BUFX2 U867 ( .A(n995), .Y(n636) );
  BUFX2 U868 ( .A(n993), .Y(n637) );
  BUFX2 U869 ( .A(n991), .Y(n638) );
  BUFX2 U870 ( .A(n989), .Y(n639) );
  BUFX2 U871 ( .A(n987), .Y(n640) );
  BUFX2 U872 ( .A(n985), .Y(n641) );
  BUFX2 U873 ( .A(n983), .Y(n642) );
  BUFX2 U874 ( .A(n981), .Y(n643) );
  BUFX2 U875 ( .A(n979), .Y(n644) );
  BUFX2 U876 ( .A(n977), .Y(n645) );
  BUFX2 U877 ( .A(n975), .Y(n646) );
  BUFX2 U878 ( .A(n973), .Y(n647) );
  BUFX2 U879 ( .A(n971), .Y(n648) );
  BUFX2 U880 ( .A(n969), .Y(n649) );
  BUFX2 U881 ( .A(n967), .Y(n650) );
  BUFX2 U882 ( .A(n965), .Y(n651) );
  BUFX2 U883 ( .A(n963), .Y(n652) );
  BUFX2 U884 ( .A(n961), .Y(n653) );
  BUFX2 U885 ( .A(n959), .Y(n654) );
  BUFX2 U886 ( .A(n957), .Y(n655) );
  BUFX2 U887 ( .A(n955), .Y(n656) );
  BUFX2 U888 ( .A(n953), .Y(n657) );
  BUFX2 U889 ( .A(n951), .Y(n658) );
  BUFX2 U890 ( .A(n949), .Y(n659) );
  BUFX2 U891 ( .A(n947), .Y(n660) );
  BUFX2 U892 ( .A(n881), .Y(n661) );
  BUFX2 U893 ( .A(n879), .Y(n662) );
  BUFX2 U894 ( .A(n877), .Y(n663) );
  BUFX2 U895 ( .A(n875), .Y(n664) );
  BUFX2 U896 ( .A(n873), .Y(n665) );
  BUFX2 U897 ( .A(n871), .Y(n666) );
  BUFX2 U898 ( .A(n869), .Y(n667) );
  BUFX2 U899 ( .A(n867), .Y(n668) );
  BUFX2 U900 ( .A(n865), .Y(n669) );
  BUFX2 U901 ( .A(n863), .Y(n670) );
  BUFX2 U902 ( .A(n861), .Y(n671) );
  BUFX2 U903 ( .A(n859), .Y(n672) );
  BUFX2 U904 ( .A(n857), .Y(n673) );
  BUFX2 U905 ( .A(n855), .Y(n674) );
  BUFX2 U906 ( .A(n853), .Y(n675) );
  BUFX2 U907 ( .A(n851), .Y(n676) );
  BUFX2 U908 ( .A(n945), .Y(n677) );
  BUFX2 U909 ( .A(n943), .Y(n678) );
  BUFX2 U910 ( .A(n941), .Y(n679) );
  BUFX2 U911 ( .A(n939), .Y(n680) );
  BUFX2 U912 ( .A(n937), .Y(n681) );
  BUFX2 U913 ( .A(n935), .Y(n682) );
  BUFX2 U914 ( .A(n933), .Y(n683) );
  BUFX2 U915 ( .A(n931), .Y(n684) );
  BUFX2 U916 ( .A(n929), .Y(n685) );
  BUFX2 U917 ( .A(n927), .Y(n686) );
  BUFX2 U918 ( .A(n925), .Y(n687) );
  BUFX2 U919 ( .A(n923), .Y(n688) );
  BUFX2 U920 ( .A(n921), .Y(n689) );
  BUFX2 U921 ( .A(n919), .Y(n690) );
  BUFX2 U922 ( .A(n917), .Y(n691) );
  BUFX2 U923 ( .A(n915), .Y(n692) );
  BUFX2 U924 ( .A(n913), .Y(n693) );
  BUFX2 U925 ( .A(n911), .Y(n694) );
  BUFX2 U926 ( .A(n909), .Y(n695) );
  BUFX2 U927 ( .A(n907), .Y(n696) );
  BUFX2 U928 ( .A(n905), .Y(n697) );
  BUFX2 U929 ( .A(n903), .Y(n698) );
  BUFX2 U930 ( .A(n901), .Y(n699) );
  BUFX2 U931 ( .A(n899), .Y(n700) );
  BUFX2 U932 ( .A(n897), .Y(n701) );
  BUFX2 U933 ( .A(n895), .Y(n702) );
  BUFX2 U934 ( .A(n893), .Y(n703) );
  BUFX2 U935 ( .A(n891), .Y(n704) );
  BUFX2 U936 ( .A(n889), .Y(n705) );
  BUFX2 U937 ( .A(n887), .Y(n706) );
  BUFX2 U938 ( .A(n885), .Y(n707) );
  BUFX2 U939 ( .A(n883), .Y(n708) );
  INVX1 U940 ( .A(n847), .Y(n709) );
  INVX1 U941 ( .A(n756), .Y(n710) );
  BUFX2 U942 ( .A(\qos/srv_cnt1_d [0]), .Y(n711) );
  BUFX2 U943 ( .A(\qos/srv_cnt0_d [4]), .Y(n712) );
  BUFX2 U944 ( .A(\qos/srv_cnt2_d [2]), .Y(n714) );
  BUFX2 U945 ( .A(n834), .Y(n715) );
  BUFX2 U946 ( .A(n836), .Y(n716) );
  BUFX2 U947 ( .A(n839), .Y(n717) );
  BUFX2 U948 ( .A(\qos/srv_cnt2_d [1]), .Y(n718) );
  BUFX2 U949 ( .A(\qos/srv_cnt0_d [6]), .Y(n719) );
  BUFX2 U950 ( .A(\qos/srv_cnt1_d [6]), .Y(n720) );
  BUFX2 U951 ( .A(\qos/srv_cnt1_d [1]), .Y(n721) );
  BUFX2 U952 ( .A(n753), .Y(n722) );
  BUFX2 U953 ( .A(buffer_sel[2]), .Y(n723) );
  XOR2X1 U954 ( .A(n807), .B(n808), .Y(n812) );
  INVX1 U955 ( .A(n569), .Y(n725) );
  NOR3X1 U956 ( .A(n573), .B(n723), .C(n725), .Y(n1048) );
  AND2X1 U957 ( .A(n1048), .B(crcfifo_pop), .Y(crcfifo1_pull) );
  AND2X1 U958 ( .A(n1048), .B(pfifo_pop), .Y(pfifo_pop_1) );
  INVX1 U959 ( .A(n573), .Y(n727) );
  NAND3X1 U960 ( .A(n727), .B(n725), .C(n723), .Y(n726) );
  AND2X1 U961 ( .A(n1074), .B(crcfifo_pop), .Y(crcfifo2_pull) );
  AND2X1 U962 ( .A(n1074), .B(pfifo_pop), .Y(pfifo_pop_2) );
  NOR3X1 U963 ( .A(n723), .B(n569), .C(n727), .Y(n1075) );
  AND2X1 U964 ( .A(n728), .B(crcfifo_pop), .Y(crcfifo0_pull) );
  AND2X1 U965 ( .A(n728), .B(pfifo_pop), .Y(pfifo_pop_0) );
  INVX1 U966 ( .A(crcfifo0_empty), .Y(n742) );
  OR2X1 U967 ( .A(n742), .B(n567), .Y(start_transmit) );
  NOR3X1 U968 ( .A(n555), .B(n720), .C(n591), .Y(n729) );
  INVX1 U969 ( .A(n553), .Y(n761) );
  INVX1 U970 ( .A(n430), .Y(n785) );
  NAND3X1 U971 ( .A(n729), .B(n761), .C(n785), .Y(n730) );
  NOR3X1 U972 ( .A(n583), .B(n721), .C(n546), .Y(n743) );
  NOR3X1 U973 ( .A(n712), .B(n558), .C(n588), .Y(n732) );
  NOR3X1 U974 ( .A(n719), .B(n557), .C(n590), .Y(n731) );
  AND2X1 U975 ( .A(n732), .B(n731), .Y(n737) );
  NOR3X1 U976 ( .A(n585), .B(n561), .C(n714), .Y(n734) );
  INVX1 U977 ( .A(n718), .Y(n733) );
  NAND3X1 U978 ( .A(n586), .B(n734), .C(n733), .Y(n735) );
  NOR3X1 U979 ( .A(n589), .B(n560), .C(n547), .Y(n736) );
  INVX1 U980 ( .A(n431), .Y(n788) );
  NAND3X1 U981 ( .A(n736), .B(n788), .C(n570), .Y(n753) );
  AND2X1 U982 ( .A(n742), .B(n737), .Y(n745) );
  AOI21X1 U983 ( .A(n722), .B(n424), .C(crcfifo2_empty), .Y(n741) );
  AOI21X1 U984 ( .A(n722), .B(n586), .C(n848), .Y(n740) );
  INVX1 U985 ( .A(n417), .Y(n757) );
  AOI22X1 U986 ( .A(arb_nxt), .B(n426), .C(n723), .D(n757), .Y(n749) );
  INVX1 U987 ( .A(n427), .Y(\qos/queue_gnt_q [2]) );
  NAND3X1 U988 ( .A(n743), .B(n742), .C(crcfifo1_empty), .Y(n744) );
  OAI21X1 U989 ( .A(crcfifo1_empty), .B(n722), .C(n421), .Y(n746) );
  AOI21X1 U990 ( .A(n746), .B(crcfifo2_empty), .C(n745), .Y(n748) );
  OAI21X1 U991 ( .A(n425), .B(n848), .C(n422), .Y(\qos/queue_gnt_q [0]) );
  INVX1 U992 ( .A(n561), .Y(n751) );
  NOR3X1 U993 ( .A(n751), .B(n848), .C(n427), .Y(n763) );
  AOI21X1 U994 ( .A(n751), .B(n545), .C(n763), .Y(n823) );
  INVX1 U995 ( .A(crcfifo1_empty), .Y(n755) );
  NOR3X1 U996 ( .A(crcfifo0_empty), .B(n722), .C(n567), .Y(n754) );
  AOI21X1 U997 ( .A(n710), .B(n755), .C(n754), .Y(n849) );
  OAI21X1 U998 ( .A(n721), .B(n767), .C(n562), .Y(n758) );
  INVX1 U999 ( .A(n758), .Y(n832) );
  INVX1 U1000 ( .A(n428), .Y(n759) );
  INVX1 U1001 ( .A(n429), .Y(n766) );
  AOI21X1 U1002 ( .A(n759), .B(n765), .C(n410), .Y(n840) );
  AOI21X1 U1003 ( .A(n761), .B(n562), .C(n784), .Y(n833) );
  MUX2X1 U1004 ( .B(n563), .A(n774), .S(n714), .Y(n825) );
  OAI21X1 U1005 ( .A(n590), .B(n410), .C(n576), .Y(n762) );
  INVX1 U1006 ( .A(n762), .Y(n841) );
  OAI21X1 U1007 ( .A(n718), .B(n763), .C(n563), .Y(n764) );
  INVX1 U1008 ( .A(n764), .Y(n824) );
  HAX1 U1009 ( .A(n832), .B(n568), .YC(n771), .YS(n773) );
  AOI21X1 U1010 ( .A(n766), .B(n423), .C(n420), .Y(n839) );
  OAI21X1 U1011 ( .A(n416), .B(n711), .C(n552), .Y(n768) );
  INVX1 U1012 ( .A(n768), .Y(n831) );
  FAX1 U1013 ( .A(n771), .B(n770), .C(n769), .YS(n821) );
  FAX1 U1014 ( .A(n824), .B(n773), .C(n772), .YC(n769), .YS(n820) );
  AOI21X1 U1015 ( .A(n554), .B(n577), .C(n594), .Y(n836) );
  AOI21X1 U1016 ( .A(n559), .B(n578), .C(n713), .Y(n828) );
  INVX1 U1017 ( .A(n558), .Y(n791) );
  AOI21X1 U1018 ( .A(n556), .B(n579), .C(n595), .Y(n844) );
  INVX1 U1019 ( .A(n720), .Y(n775) );
  MUX2X1 U1020 ( .B(n775), .A(n720), .S(n594), .Y(n837) );
  MUX2X1 U1021 ( .B(n570), .A(n571), .S(n713), .Y(n829) );
  INVX1 U1022 ( .A(n719), .Y(n776) );
  MUX2X1 U1023 ( .B(n776), .A(n719), .S(n595), .Y(n845) );
  OAI21X1 U1024 ( .A(n591), .B(n580), .C(n577), .Y(n778) );
  OAI21X1 U1025 ( .A(n589), .B(n415), .C(n578), .Y(n780) );
  OAI21X1 U1026 ( .A(n712), .B(n581), .C(n579), .Y(n782) );
  FAX1 U1027 ( .A(n716), .B(n592), .C(n419), .YC(n796), .YS(n805) );
  AOI21X1 U1028 ( .A(n785), .B(n572), .C(n580), .Y(n834) );
  AOI21X1 U1029 ( .A(n788), .B(n566), .C(n415), .Y(n826) );
  AOI21X1 U1030 ( .A(n791), .B(n576), .C(n581), .Y(n842) );
  FAX1 U1031 ( .A(n835), .B(n843), .C(n827), .YC(n806), .YS(n809) );
  FAX1 U1032 ( .A(n596), .B(n825), .C(n841), .YC(n808), .YS(n770) );
  FAX1 U1033 ( .A(n715), .B(n593), .C(n575), .YC(n810), .YS(n807) );
  MUX2X1 U1034 ( .B(n583), .A(n582), .S(n549), .Y(n838) );
  FAX1 U1035 ( .A(n796), .B(n795), .C(n794), .YC(n803), .YS(n818) );
  FAX1 U1036 ( .A(n837), .B(n829), .C(n845), .YC(n801), .YS(n795) );
  MUX2X1 U1037 ( .B(n585), .A(n584), .S(n550), .Y(n830) );
  MUX2X1 U1038 ( .B(n588), .A(n587), .S(n551), .Y(n846) );
  FAX1 U1039 ( .A(n801), .B(n830), .C(n846), .YS(n802) );
  FAX1 U1040 ( .A(n838), .B(n803), .C(n802), .YS(n817) );
  FAX1 U1041 ( .A(n717), .B(n831), .C(n574), .YC(n772), .YS(n815) );
  FAX1 U1042 ( .A(n806), .B(n805), .C(n804), .YC(n794), .YS(n813) );
  FAX1 U1043 ( .A(n810), .B(n809), .C(n724), .YC(n804), .YS(n811) );
  NOR3X1 U1044 ( .A(n813), .B(n812), .C(n811), .Y(n814) );
  NOR3X1 U1045 ( .A(n818), .B(n817), .C(n548), .Y(n819) );
  OAI21X1 U1046 ( .A(n418), .B(n848), .C(n709), .Y(\qos/queue_gnt_q [1]) );
  BUFX2 U1047 ( .A(n1048), .Y(n1073) );
  AOI22X1 U1048 ( .A(n1074), .B(pfifo_datain_ctrl_2[0]), .C(n1073), .D(
        pfifo_datain_ctrl_1[0]), .Y(n851) );
  NAND2X1 U1049 ( .A(n676), .B(n433), .Y(pfifo_datain_ctrl[0]) );
  AOI22X1 U1050 ( .A(n1074), .B(pfifo_datain_ctrl_2[1]), .C(n1073), .D(
        pfifo_datain_ctrl_1[1]), .Y(n853) );
  NAND2X1 U1051 ( .A(n675), .B(n434), .Y(pfifo_datain_ctrl[1]) );
  AOI22X1 U1052 ( .A(n1074), .B(pfifo_datain_ctrl_2[2]), .C(n1073), .D(
        pfifo_datain_ctrl_1[2]), .Y(n855) );
  NAND2X1 U1053 ( .A(n674), .B(n435), .Y(pfifo_datain_ctrl[2]) );
  AOI22X1 U1054 ( .A(n1074), .B(pfifo_datain_ctrl_2[3]), .C(n1048), .D(
        pfifo_datain_ctrl_1[3]), .Y(n857) );
  NAND2X1 U1055 ( .A(n673), .B(n436), .Y(pfifo_datain_ctrl[3]) );
  AOI22X1 U1056 ( .A(n1074), .B(pfifo_datain_ctrl_2[4]), .C(n1073), .D(
        pfifo_datain_ctrl_1[4]), .Y(n859) );
  NAND2X1 U1057 ( .A(n672), .B(n437), .Y(pfifo_datain_ctrl[4]) );
  AOI22X1 U1058 ( .A(n1074), .B(pfifo_datain_ctrl_2[5]), .C(n1073), .D(
        pfifo_datain_ctrl_1[5]), .Y(n861) );
  NAND2X1 U1059 ( .A(n671), .B(n438), .Y(pfifo_datain_ctrl[5]) );
  AOI22X1 U1060 ( .A(n1074), .B(pfifo_datain_ctrl_2[6]), .C(n1073), .D(
        pfifo_datain_ctrl_1[6]), .Y(n863) );
  NAND2X1 U1061 ( .A(n670), .B(n439), .Y(pfifo_datain_ctrl[6]) );
  AOI22X1 U1062 ( .A(n1074), .B(pfifo_datain_ctrl_2[7]), .C(n1073), .D(
        pfifo_datain_ctrl_1[7]), .Y(n865) );
  NAND2X1 U1063 ( .A(n669), .B(n440), .Y(pfifo_datain_ctrl[7]) );
  AOI22X1 U1064 ( .A(n1074), .B(pfifo_datain_ctrl_2[8]), .C(n1073), .D(
        pfifo_datain_ctrl_1[8]), .Y(n867) );
  NAND2X1 U1065 ( .A(n668), .B(n441), .Y(pfifo_datain_ctrl[8]) );
  AOI22X1 U1066 ( .A(n1074), .B(pfifo_datain_ctrl_2[9]), .C(n1048), .D(
        pfifo_datain_ctrl_1[9]), .Y(n869) );
  NAND2X1 U1067 ( .A(n667), .B(n442), .Y(pfifo_datain_ctrl[9]) );
  AOI22X1 U1068 ( .A(n1074), .B(pfifo_datain_ctrl_2[10]), .C(n1073), .D(
        pfifo_datain_ctrl_1[10]), .Y(n871) );
  NAND2X1 U1069 ( .A(n666), .B(n443), .Y(pfifo_datain_ctrl[10]) );
  AOI22X1 U1070 ( .A(n1074), .B(pfifo_datain_ctrl_2[11]), .C(n1048), .D(
        pfifo_datain_ctrl_1[11]), .Y(n873) );
  NAND2X1 U1071 ( .A(n665), .B(n444), .Y(pfifo_datain_ctrl[11]) );
  AOI22X1 U1072 ( .A(n1074), .B(pfifo_datain_ctrl_2[12]), .C(n1048), .D(
        pfifo_datain_ctrl_1[12]), .Y(n875) );
  NAND2X1 U1073 ( .A(n664), .B(n445), .Y(pfifo_datain_ctrl[12]) );
  AOI22X1 U1074 ( .A(n1074), .B(pfifo_datain_ctrl_2[13]), .C(n1073), .D(
        pfifo_datain_ctrl_1[13]), .Y(n877) );
  NAND2X1 U1075 ( .A(n663), .B(n446), .Y(pfifo_datain_ctrl[13]) );
  AOI22X1 U1076 ( .A(n1074), .B(pfifo_datain_ctrl_2[14]), .C(n1048), .D(
        pfifo_datain_ctrl_1[14]), .Y(n879) );
  NAND2X1 U1077 ( .A(n662), .B(n447), .Y(pfifo_datain_ctrl[14]) );
  AOI22X1 U1078 ( .A(n1074), .B(pfifo_datain_ctrl_2[15]), .C(n1073), .D(
        pfifo_datain_ctrl_1[15]), .Y(n881) );
  NAND2X1 U1079 ( .A(n661), .B(n448), .Y(pfifo_datain_ctrl[15]) );
  AOI22X1 U1080 ( .A(n1074), .B(crcfifo2_dataout[0]), .C(n1048), .D(
        crcfifo1_dataout[0]), .Y(n883) );
  NAND2X1 U1081 ( .A(n708), .B(n449), .Y(crcfifo_dataout[0]) );
  AOI22X1 U1082 ( .A(n1074), .B(crcfifo2_dataout[1]), .C(n1073), .D(
        crcfifo1_dataout[1]), .Y(n885) );
  NAND2X1 U1083 ( .A(n707), .B(n450), .Y(crcfifo_dataout[1]) );
  AOI22X1 U1084 ( .A(n1074), .B(crcfifo2_dataout[2]), .C(n1048), .D(
        crcfifo1_dataout[2]), .Y(n887) );
  NAND2X1 U1085 ( .A(n706), .B(n451), .Y(crcfifo_dataout[2]) );
  AOI22X1 U1086 ( .A(n1074), .B(crcfifo2_dataout[3]), .C(n1048), .D(
        crcfifo1_dataout[3]), .Y(n889) );
  NAND2X1 U1087 ( .A(n705), .B(n452), .Y(crcfifo_dataout[3]) );
  AOI22X1 U1088 ( .A(n1074), .B(crcfifo2_dataout[4]), .C(n1073), .D(
        crcfifo1_dataout[4]), .Y(n891) );
  NAND2X1 U1089 ( .A(n704), .B(n453), .Y(crcfifo_dataout[4]) );
  AOI22X1 U1090 ( .A(n1074), .B(crcfifo2_dataout[5]), .C(n1048), .D(
        crcfifo1_dataout[5]), .Y(n893) );
  NAND2X1 U1091 ( .A(n703), .B(n454), .Y(crcfifo_dataout[5]) );
  AOI22X1 U1092 ( .A(n1074), .B(crcfifo2_dataout[6]), .C(n1073), .D(
        crcfifo1_dataout[6]), .Y(n895) );
  NAND2X1 U1093 ( .A(n702), .B(n455), .Y(crcfifo_dataout[6]) );
  AOI22X1 U1094 ( .A(n1074), .B(crcfifo2_dataout[7]), .C(n1048), .D(
        crcfifo1_dataout[7]), .Y(n897) );
  NAND2X1 U1095 ( .A(n701), .B(n456), .Y(crcfifo_dataout[7]) );
  AOI22X1 U1096 ( .A(n1074), .B(crcfifo2_dataout[8]), .C(n1073), .D(
        crcfifo1_dataout[8]), .Y(n899) );
  NAND2X1 U1097 ( .A(n700), .B(n457), .Y(crcfifo_dataout[8]) );
  AOI22X1 U1098 ( .A(n1074), .B(crcfifo2_dataout[9]), .C(n1048), .D(
        crcfifo1_dataout[9]), .Y(n901) );
  NAND2X1 U1099 ( .A(n699), .B(n458), .Y(crcfifo_dataout[9]) );
  AOI22X1 U1100 ( .A(n1074), .B(crcfifo2_dataout[10]), .C(n1048), .D(
        crcfifo1_dataout[10]), .Y(n903) );
  NAND2X1 U1101 ( .A(n698), .B(n459), .Y(crcfifo_dataout[10]) );
  AOI22X1 U1102 ( .A(n1074), .B(crcfifo2_dataout[11]), .C(n1048), .D(
        crcfifo1_dataout[11]), .Y(n905) );
  NAND2X1 U1103 ( .A(n697), .B(n460), .Y(crcfifo_dataout[11]) );
  AOI22X1 U1104 ( .A(n1074), .B(crcfifo2_dataout[12]), .C(n1048), .D(
        crcfifo1_dataout[12]), .Y(n907) );
  NAND2X1 U1105 ( .A(n696), .B(n461), .Y(crcfifo_dataout[12]) );
  AOI22X1 U1106 ( .A(n1074), .B(crcfifo2_dataout[13]), .C(n1073), .D(
        crcfifo1_dataout[13]), .Y(n909) );
  NAND2X1 U1107 ( .A(n695), .B(n462), .Y(crcfifo_dataout[13]) );
  AOI22X1 U1108 ( .A(n1074), .B(crcfifo2_dataout[14]), .C(n1073), .D(
        crcfifo1_dataout[14]), .Y(n911) );
  NAND2X1 U1109 ( .A(n694), .B(n463), .Y(crcfifo_dataout[14]) );
  AOI22X1 U1110 ( .A(n1074), .B(crcfifo2_dataout[15]), .C(n1073), .D(
        crcfifo1_dataout[15]), .Y(n913) );
  NAND2X1 U1111 ( .A(n693), .B(n464), .Y(crcfifo_dataout[15]) );
  AOI22X1 U1112 ( .A(n1074), .B(crcfifo2_dataout[16]), .C(n1048), .D(
        crcfifo1_dataout[16]), .Y(n915) );
  NAND2X1 U1113 ( .A(n692), .B(n465), .Y(crcfifo_dataout[16]) );
  AOI22X1 U1114 ( .A(n1074), .B(crcfifo2_dataout[17]), .C(n1073), .D(
        crcfifo1_dataout[17]), .Y(n917) );
  NAND2X1 U1115 ( .A(n691), .B(n466), .Y(crcfifo_dataout[17]) );
  AOI22X1 U1116 ( .A(n1074), .B(crcfifo2_dataout[18]), .C(n1048), .D(
        crcfifo1_dataout[18]), .Y(n919) );
  NAND2X1 U1117 ( .A(n690), .B(n467), .Y(crcfifo_dataout[18]) );
  AOI22X1 U1118 ( .A(n1074), .B(crcfifo2_dataout[19]), .C(n1073), .D(
        crcfifo1_dataout[19]), .Y(n921) );
  NAND2X1 U1119 ( .A(n689), .B(n468), .Y(crcfifo_dataout[19]) );
  AOI22X1 U1120 ( .A(n1074), .B(crcfifo2_dataout[20]), .C(n1048), .D(
        crcfifo1_dataout[20]), .Y(n923) );
  NAND2X1 U1121 ( .A(n688), .B(n469), .Y(crcfifo_dataout[20]) );
  AOI22X1 U1122 ( .A(n1074), .B(crcfifo2_dataout[21]), .C(n1048), .D(
        crcfifo1_dataout[21]), .Y(n925) );
  NAND2X1 U1123 ( .A(n687), .B(n470), .Y(crcfifo_dataout[21]) );
  AOI22X1 U1124 ( .A(n1074), .B(crcfifo2_dataout[22]), .C(n1073), .D(
        crcfifo1_dataout[22]), .Y(n927) );
  NAND2X1 U1125 ( .A(n686), .B(n471), .Y(crcfifo_dataout[22]) );
  AOI22X1 U1126 ( .A(n1074), .B(crcfifo2_dataout[23]), .C(n1073), .D(
        crcfifo1_dataout[23]), .Y(n929) );
  NAND2X1 U1127 ( .A(n685), .B(n472), .Y(crcfifo_dataout[23]) );
  AOI22X1 U1128 ( .A(n1074), .B(crcfifo2_dataout[24]), .C(n1073), .D(
        crcfifo1_dataout[24]), .Y(n931) );
  NAND2X1 U1129 ( .A(n684), .B(n473), .Y(crcfifo_dataout[24]) );
  AOI22X1 U1130 ( .A(n1074), .B(crcfifo2_dataout[25]), .C(n1073), .D(
        crcfifo1_dataout[25]), .Y(n933) );
  NAND2X1 U1131 ( .A(n683), .B(n474), .Y(crcfifo_dataout[25]) );
  AOI22X1 U1132 ( .A(n1074), .B(crcfifo2_dataout[26]), .C(n1048), .D(
        crcfifo1_dataout[26]), .Y(n935) );
  NAND2X1 U1133 ( .A(n682), .B(n475), .Y(crcfifo_dataout[26]) );
  AOI22X1 U1134 ( .A(n1074), .B(crcfifo2_dataout[27]), .C(n1073), .D(
        crcfifo1_dataout[27]), .Y(n937) );
  NAND2X1 U1135 ( .A(n681), .B(n476), .Y(crcfifo_dataout[27]) );
  AOI22X1 U1136 ( .A(n1074), .B(crcfifo2_dataout[28]), .C(n1073), .D(
        crcfifo1_dataout[28]), .Y(n939) );
  NAND2X1 U1137 ( .A(n680), .B(n477), .Y(crcfifo_dataout[28]) );
  AOI22X1 U1138 ( .A(n1074), .B(crcfifo2_dataout[29]), .C(n1048), .D(
        crcfifo1_dataout[29]), .Y(n941) );
  NAND2X1 U1139 ( .A(n679), .B(n478), .Y(crcfifo_dataout[29]) );
  AOI22X1 U1140 ( .A(n1074), .B(crcfifo2_dataout[30]), .C(n1073), .D(
        crcfifo1_dataout[30]), .Y(n943) );
  NAND2X1 U1141 ( .A(n678), .B(n479), .Y(crcfifo_dataout[30]) );
  AOI22X1 U1142 ( .A(n1074), .B(crcfifo2_dataout[31]), .C(n1073), .D(
        crcfifo1_dataout[31]), .Y(n945) );
  NAND2X1 U1143 ( .A(n677), .B(n480), .Y(crcfifo_dataout[31]) );
  AOI22X1 U1144 ( .A(n1074), .B(pfifo_datain2[0]), .C(n1073), .D(
        pfifo_datain1[0]), .Y(n947) );
  NAND2X1 U1145 ( .A(n660), .B(n481), .Y(pfifo_datain[0]) );
  AOI22X1 U1146 ( .A(n1074), .B(pfifo_datain2[1]), .C(n1073), .D(
        pfifo_datain1[1]), .Y(n949) );
  NAND2X1 U1147 ( .A(n659), .B(n482), .Y(pfifo_datain[1]) );
  AOI22X1 U1148 ( .A(n1074), .B(pfifo_datain2[2]), .C(n1073), .D(
        pfifo_datain1[2]), .Y(n951) );
  NAND2X1 U1149 ( .A(n658), .B(n483), .Y(pfifo_datain[2]) );
  AOI22X1 U1150 ( .A(n1074), .B(pfifo_datain2[3]), .C(n1073), .D(
        pfifo_datain1[3]), .Y(n953) );
  NAND2X1 U1151 ( .A(n657), .B(n484), .Y(pfifo_datain[3]) );
  AOI22X1 U1152 ( .A(n1074), .B(pfifo_datain2[4]), .C(n1048), .D(
        pfifo_datain1[4]), .Y(n955) );
  NAND2X1 U1153 ( .A(n656), .B(n485), .Y(pfifo_datain[4]) );
  AOI22X1 U1154 ( .A(n1074), .B(pfifo_datain2[5]), .C(n1073), .D(
        pfifo_datain1[5]), .Y(n957) );
  NAND2X1 U1155 ( .A(n655), .B(n486), .Y(pfifo_datain[5]) );
  AOI22X1 U1156 ( .A(n1074), .B(pfifo_datain2[6]), .C(n1073), .D(
        pfifo_datain1[6]), .Y(n959) );
  NAND2X1 U1157 ( .A(n654), .B(n487), .Y(pfifo_datain[6]) );
  AOI22X1 U1158 ( .A(n1074), .B(pfifo_datain2[7]), .C(n1048), .D(
        pfifo_datain1[7]), .Y(n961) );
  NAND2X1 U1159 ( .A(n653), .B(n488), .Y(pfifo_datain[7]) );
  AOI22X1 U1160 ( .A(n1074), .B(pfifo_datain2[8]), .C(n1073), .D(
        pfifo_datain1[8]), .Y(n963) );
  NAND2X1 U1161 ( .A(n652), .B(n489), .Y(pfifo_datain[8]) );
  AOI22X1 U1162 ( .A(n1074), .B(pfifo_datain2[9]), .C(n1073), .D(
        pfifo_datain1[9]), .Y(n965) );
  NAND2X1 U1163 ( .A(n651), .B(n490), .Y(pfifo_datain[9]) );
  AOI22X1 U1164 ( .A(n1074), .B(pfifo_datain2[10]), .C(n1073), .D(
        pfifo_datain1[10]), .Y(n967) );
  NAND2X1 U1165 ( .A(n650), .B(n491), .Y(pfifo_datain[10]) );
  AOI22X1 U1166 ( .A(n1074), .B(pfifo_datain2[11]), .C(n1073), .D(
        pfifo_datain1[11]), .Y(n969) );
  NAND2X1 U1167 ( .A(n649), .B(n492), .Y(pfifo_datain[11]) );
  AOI22X1 U1168 ( .A(n1074), .B(pfifo_datain2[12]), .C(n1073), .D(
        pfifo_datain1[12]), .Y(n971) );
  NAND2X1 U1169 ( .A(n648), .B(n493), .Y(pfifo_datain[12]) );
  AOI22X1 U1170 ( .A(n1074), .B(pfifo_datain2[13]), .C(n1048), .D(
        pfifo_datain1[13]), .Y(n973) );
  NAND2X1 U1171 ( .A(n647), .B(n494), .Y(pfifo_datain[13]) );
  AOI22X1 U1172 ( .A(n1074), .B(pfifo_datain2[14]), .C(n1048), .D(
        pfifo_datain1[14]), .Y(n975) );
  NAND2X1 U1173 ( .A(n646), .B(n495), .Y(pfifo_datain[14]) );
  AOI22X1 U1174 ( .A(n1074), .B(pfifo_datain2[15]), .C(n1048), .D(
        pfifo_datain1[15]), .Y(n977) );
  NAND2X1 U1175 ( .A(n645), .B(n496), .Y(pfifo_datain[15]) );
  AOI22X1 U1176 ( .A(n1074), .B(pfifo_datain2[16]), .C(n1073), .D(
        pfifo_datain1[16]), .Y(n979) );
  NAND2X1 U1177 ( .A(n644), .B(n497), .Y(pfifo_datain[16]) );
  AOI22X1 U1178 ( .A(n1074), .B(pfifo_datain2[17]), .C(n1073), .D(
        pfifo_datain1[17]), .Y(n981) );
  NAND2X1 U1179 ( .A(n643), .B(n498), .Y(pfifo_datain[17]) );
  AOI22X1 U1180 ( .A(n1074), .B(pfifo_datain2[18]), .C(n1073), .D(
        pfifo_datain1[18]), .Y(n983) );
  NAND2X1 U1181 ( .A(n642), .B(n499), .Y(pfifo_datain[18]) );
  AOI22X1 U1182 ( .A(n1074), .B(pfifo_datain2[19]), .C(n1073), .D(
        pfifo_datain1[19]), .Y(n985) );
  NAND2X1 U1183 ( .A(n641), .B(n500), .Y(pfifo_datain[19]) );
  AOI22X1 U1184 ( .A(n1074), .B(pfifo_datain2[20]), .C(n1073), .D(
        pfifo_datain1[20]), .Y(n987) );
  NAND2X1 U1185 ( .A(n640), .B(n501), .Y(pfifo_datain[20]) );
  AOI22X1 U1186 ( .A(n1074), .B(pfifo_datain2[21]), .C(n1073), .D(
        pfifo_datain1[21]), .Y(n989) );
  NAND2X1 U1187 ( .A(n639), .B(n502), .Y(pfifo_datain[21]) );
  AOI22X1 U1188 ( .A(n1074), .B(pfifo_datain2[22]), .C(n1073), .D(
        pfifo_datain1[22]), .Y(n991) );
  NAND2X1 U1189 ( .A(n638), .B(n503), .Y(pfifo_datain[22]) );
  AOI22X1 U1190 ( .A(n1074), .B(pfifo_datain2[23]), .C(n1073), .D(
        pfifo_datain1[23]), .Y(n993) );
  NAND2X1 U1191 ( .A(n637), .B(n504), .Y(pfifo_datain[23]) );
  AOI22X1 U1192 ( .A(n1074), .B(pfifo_datain2[24]), .C(n1073), .D(
        pfifo_datain1[24]), .Y(n995) );
  NAND2X1 U1193 ( .A(n636), .B(n505), .Y(pfifo_datain[24]) );
  AOI22X1 U1194 ( .A(n1074), .B(pfifo_datain2[25]), .C(n1073), .D(
        pfifo_datain1[25]), .Y(n997) );
  NAND2X1 U1195 ( .A(n635), .B(n506), .Y(pfifo_datain[25]) );
  AOI22X1 U1196 ( .A(n1074), .B(pfifo_datain2[26]), .C(n1073), .D(
        pfifo_datain1[26]), .Y(n999) );
  NAND2X1 U1197 ( .A(n634), .B(n507), .Y(pfifo_datain[26]) );
  AOI22X1 U1198 ( .A(n1074), .B(pfifo_datain2[27]), .C(n1073), .D(
        pfifo_datain1[27]), .Y(n1001) );
  NAND2X1 U1199 ( .A(n633), .B(n508), .Y(pfifo_datain[27]) );
  AOI22X1 U1200 ( .A(n1074), .B(pfifo_datain2[28]), .C(n1073), .D(
        pfifo_datain1[28]), .Y(n1003) );
  NAND2X1 U1201 ( .A(n632), .B(n509), .Y(pfifo_datain[28]) );
  AOI22X1 U1202 ( .A(n1074), .B(pfifo_datain2[29]), .C(n1073), .D(
        pfifo_datain1[29]), .Y(n1005) );
  NAND2X1 U1203 ( .A(n631), .B(n510), .Y(pfifo_datain[29]) );
  AOI22X1 U1204 ( .A(n1074), .B(pfifo_datain2[30]), .C(n1073), .D(
        pfifo_datain1[30]), .Y(n1007) );
  NAND2X1 U1205 ( .A(n630), .B(n511), .Y(pfifo_datain[30]) );
  AOI22X1 U1206 ( .A(n1074), .B(pfifo_datain2[31]), .C(n1073), .D(
        pfifo_datain1[31]), .Y(n1009) );
  NAND2X1 U1207 ( .A(n629), .B(n512), .Y(pfifo_datain[31]) );
  AOI22X1 U1208 ( .A(n1074), .B(pfifo_datain2[32]), .C(n1073), .D(
        pfifo_datain1[32]), .Y(n1011) );
  NAND2X1 U1209 ( .A(n628), .B(n513), .Y(pfifo_datain[32]) );
  AOI22X1 U1210 ( .A(n1074), .B(pfifo_datain2[33]), .C(n1073), .D(
        pfifo_datain1[33]), .Y(n1013) );
  NAND2X1 U1211 ( .A(n627), .B(n514), .Y(pfifo_datain[33]) );
  AOI22X1 U1212 ( .A(n1074), .B(pfifo_datain2[34]), .C(n1073), .D(
        pfifo_datain1[34]), .Y(n1015) );
  NAND2X1 U1213 ( .A(n626), .B(n515), .Y(pfifo_datain[34]) );
  AOI22X1 U1214 ( .A(n1074), .B(pfifo_datain2[35]), .C(n1073), .D(
        pfifo_datain1[35]), .Y(n1017) );
  NAND2X1 U1215 ( .A(n625), .B(n516), .Y(pfifo_datain[35]) );
  AOI22X1 U1216 ( .A(n1074), .B(pfifo_datain2[36]), .C(n1048), .D(
        pfifo_datain1[36]), .Y(n1019) );
  NAND2X1 U1217 ( .A(n624), .B(n517), .Y(pfifo_datain[36]) );
  AOI22X1 U1218 ( .A(n1074), .B(pfifo_datain2[37]), .C(n1073), .D(
        pfifo_datain1[37]), .Y(n1021) );
  NAND2X1 U1219 ( .A(n623), .B(n518), .Y(pfifo_datain[37]) );
  AOI22X1 U1220 ( .A(n1074), .B(pfifo_datain2[38]), .C(n1073), .D(
        pfifo_datain1[38]), .Y(n1023) );
  NAND2X1 U1221 ( .A(n622), .B(n519), .Y(pfifo_datain[38]) );
  AOI22X1 U1222 ( .A(n1074), .B(pfifo_datain2[39]), .C(n1073), .D(
        pfifo_datain1[39]), .Y(n1025) );
  NAND2X1 U1223 ( .A(n621), .B(n520), .Y(pfifo_datain[39]) );
  AOI22X1 U1224 ( .A(n1074), .B(pfifo_datain2[40]), .C(n1073), .D(
        pfifo_datain1[40]), .Y(n1027) );
  NAND2X1 U1225 ( .A(n620), .B(n521), .Y(pfifo_datain[40]) );
  AOI22X1 U1226 ( .A(n1074), .B(pfifo_datain2[41]), .C(n1073), .D(
        pfifo_datain1[41]), .Y(n1029) );
  NAND2X1 U1227 ( .A(n619), .B(n522), .Y(pfifo_datain[41]) );
  AOI22X1 U1228 ( .A(n1074), .B(pfifo_datain2[42]), .C(n1073), .D(
        pfifo_datain1[42]), .Y(n1031) );
  NAND2X1 U1229 ( .A(n618), .B(n523), .Y(pfifo_datain[42]) );
  AOI22X1 U1230 ( .A(n1074), .B(pfifo_datain2[43]), .C(n1048), .D(
        pfifo_datain1[43]), .Y(n1033) );
  NAND2X1 U1231 ( .A(n617), .B(n524), .Y(pfifo_datain[43]) );
  AOI22X1 U1232 ( .A(n1074), .B(pfifo_datain2[44]), .C(n1048), .D(
        pfifo_datain1[44]), .Y(n1035) );
  NAND2X1 U1233 ( .A(n616), .B(n525), .Y(pfifo_datain[44]) );
  AOI22X1 U1234 ( .A(n1074), .B(pfifo_datain2[45]), .C(n1048), .D(
        pfifo_datain1[45]), .Y(n1037) );
  NAND2X1 U1235 ( .A(n615), .B(n526), .Y(pfifo_datain[45]) );
  AOI22X1 U1236 ( .A(n1074), .B(pfifo_datain2[46]), .C(n1048), .D(
        pfifo_datain1[46]), .Y(n1039) );
  NAND2X1 U1237 ( .A(n614), .B(n527), .Y(pfifo_datain[46]) );
  AOI22X1 U1238 ( .A(n1074), .B(pfifo_datain2[47]), .C(n1073), .D(
        pfifo_datain1[47]), .Y(n1041) );
  NAND2X1 U1239 ( .A(n613), .B(n528), .Y(pfifo_datain[47]) );
  AOI22X1 U1240 ( .A(n1074), .B(pfifo_datain2[48]), .C(n1073), .D(
        pfifo_datain1[48]), .Y(n1043) );
  NAND2X1 U1241 ( .A(n612), .B(n529), .Y(pfifo_datain[48]) );
  AOI22X1 U1242 ( .A(n1074), .B(pfifo_datain2[49]), .C(n1073), .D(
        pfifo_datain1[49]), .Y(n1045) );
  NAND2X1 U1243 ( .A(n611), .B(n530), .Y(pfifo_datain[49]) );
  AOI22X1 U1244 ( .A(n1074), .B(pfifo_datain2[50]), .C(n1073), .D(
        pfifo_datain1[50]), .Y(n1047) );
  NAND2X1 U1245 ( .A(n610), .B(n531), .Y(pfifo_datain[50]) );
  AOI22X1 U1246 ( .A(n1074), .B(pfifo_datain2[51]), .C(n1048), .D(
        pfifo_datain1[51]), .Y(n1050) );
  NAND2X1 U1247 ( .A(n609), .B(n532), .Y(pfifo_datain[51]) );
  AOI22X1 U1248 ( .A(n1074), .B(pfifo_datain2[52]), .C(n1073), .D(
        pfifo_datain1[52]), .Y(n1052) );
  NAND2X1 U1249 ( .A(n608), .B(n533), .Y(pfifo_datain[52]) );
  AOI22X1 U1250 ( .A(n1074), .B(pfifo_datain2[53]), .C(n1073), .D(
        pfifo_datain1[53]), .Y(n1054) );
  NAND2X1 U1251 ( .A(n607), .B(n534), .Y(pfifo_datain[53]) );
  AOI22X1 U1252 ( .A(n1074), .B(pfifo_datain2[54]), .C(n1073), .D(
        pfifo_datain1[54]), .Y(n1056) );
  NAND2X1 U1253 ( .A(n606), .B(n535), .Y(pfifo_datain[54]) );
  AOI22X1 U1254 ( .A(n1074), .B(pfifo_datain2[55]), .C(n1073), .D(
        pfifo_datain1[55]), .Y(n1058) );
  NAND2X1 U1255 ( .A(n605), .B(n536), .Y(pfifo_datain[55]) );
  AOI22X1 U1256 ( .A(n1074), .B(pfifo_datain2[56]), .C(n1073), .D(
        pfifo_datain1[56]), .Y(n1060) );
  NAND2X1 U1257 ( .A(n604), .B(n537), .Y(pfifo_datain[56]) );
  AOI22X1 U1258 ( .A(n1074), .B(pfifo_datain2[57]), .C(n1073), .D(
        pfifo_datain1[57]), .Y(n1062) );
  NAND2X1 U1259 ( .A(n603), .B(n538), .Y(pfifo_datain[57]) );
  AOI22X1 U1260 ( .A(n1074), .B(pfifo_datain2[58]), .C(n1073), .D(
        pfifo_datain1[58]), .Y(n1064) );
  NAND2X1 U1261 ( .A(n602), .B(n539), .Y(pfifo_datain[58]) );
  AOI22X1 U1262 ( .A(n1074), .B(pfifo_datain2[59]), .C(n1073), .D(
        pfifo_datain1[59]), .Y(n1066) );
  NAND2X1 U1263 ( .A(n601), .B(n540), .Y(pfifo_datain[59]) );
  AOI22X1 U1264 ( .A(n1074), .B(pfifo_datain2[60]), .C(n1073), .D(
        pfifo_datain1[60]), .Y(n1068) );
  NAND2X1 U1265 ( .A(n600), .B(n541), .Y(pfifo_datain[60]) );
  AOI22X1 U1266 ( .A(n1074), .B(pfifo_datain2[61]), .C(n1073), .D(
        pfifo_datain1[61]), .Y(n1070) );
  NAND2X1 U1267 ( .A(n599), .B(n542), .Y(pfifo_datain[61]) );
  AOI22X1 U1268 ( .A(n1074), .B(pfifo_datain2[62]), .C(n1073), .D(
        pfifo_datain1[62]), .Y(n1072) );
  NAND2X1 U1269 ( .A(n598), .B(n543), .Y(pfifo_datain[62]) );
  AOI22X1 U1270 ( .A(n1074), .B(pfifo_datain2[63]), .C(n1073), .D(
        pfifo_datain1[63]), .Y(n1077) );
  NAND2X1 U1271 ( .A(n597), .B(n544), .Y(pfifo_datain[63]) );
endmodule

