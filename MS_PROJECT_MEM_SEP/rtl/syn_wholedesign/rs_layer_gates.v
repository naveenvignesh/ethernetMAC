/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sat Oct 29 02:47:17 2016
/////////////////////////////////////////////////////////////


module rs_layer ( \clks.clk , \clks.rst , \xgmii_tx.TXC , \xgmii_tx.TXD , 
        \xgmii_tx.TXCLK , start_transmit, lpi, pop_pkt, pop_crc, pkt_data, 
        pkt_empty, pkt_ctrl, pkt_crc, nxt_buf, bvalidin );
  output [3:0] \xgmii_tx.TXC ;
  output [31:0] \xgmii_tx.TXD ;
  input [63:0] pkt_data;
  input [7:0] pkt_ctrl;
  input [31:0] pkt_crc;
  input [7:0] bvalidin;
  input \clks.clk , \clks.rst , start_transmit, lpi, pkt_empty;
  output \xgmii_tx.TXCLK , pop_pkt, pop_crc, nxt_buf;
  wire   gclk_en_d, clk125mhz, cnt2_d, gclk_en, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
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
         n975, n976, n977, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040;
  wire   [3:0] cur_state;
  wire   [1:0] IDC_cnt_d;
  wire   [7:0] pkt_ctrl_d;
  wire   [31:0] crc_tx_d;
  wire   [63:0] xgmii_tx_hold;
  wire   [31:0] crc_left_d;
  wire   [1:0] crc_bvalid_d;
  wire   [6:0] cnt128_d;
  wire   [1:0] cur_state_clk;
  wire   [31:0] wakeuptimer_d;
  wire   [1:0] idlernd_cnt_d;
  wire   [7:0] bvalid;
  wire   [31:0] xgmii_txd_d;
  wire   [3:0] xgmii_txc_d;
  wire   [3:0] nxt_state;

  CFD2QX1 \wakeuptimer_d_reg[0]  ( .D(n543), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[0]) );
  CFD2QXL \cur_state_clk_reg[0]  ( .D(n542), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(cur_state_clk[0]) );
  CFD2QXL \cnt128_d_reg[3]  ( .D(n538), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[3]) );
  CFD2QXL \cnt128_d_reg[4]  ( .D(n537), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[4]) );
  CFD2QXL \cnt128_d_reg[5]  ( .D(n536), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[5]) );
  CFD2QXL \cnt128_d_reg[6]  ( .D(n535), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[6]) );
  CFD2QX1 \wakeuptimer_d_reg[1]  ( .D(n533), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[1]) );
  CFD2QX1 \wakeuptimer_d_reg[2]  ( .D(n532), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[2]) );
  CFD2QX1 \wakeuptimer_d_reg[3]  ( .D(n531), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[3]) );
  CFD2QX1 \wakeuptimer_d_reg[5]  ( .D(n529), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[5]) );
  CFD2QX1 \wakeuptimer_d_reg[6]  ( .D(n528), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[6]) );
  CFD2QX1 \wakeuptimer_d_reg[7]  ( .D(n527), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[7]) );
  CFD2QX1 \wakeuptimer_d_reg[8]  ( .D(n526), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[8]) );
  CFD2QXL \wakeuptimer_d_reg[25]  ( .D(n509), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[25]) );
  CFD2QXL \wakeuptimer_d_reg[27]  ( .D(n507), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[27]) );
  CFD2QX1 \bvalid_reg[0]  ( .D(n502), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[0]) );
  CFD2QXL \idlernd_cnt_d_reg[0]  ( .D(n417), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(idlernd_cnt_d[0]) );
  CFD2QXL cnt2_d_reg ( .D(n497), .CP(\clks.clk ), .CD(\clks.rst ), .Q(cnt2_d)
         );
  CFD2QXL \xgmii_tx_hold_reg[63]  ( .D(n496), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[63]) );
  CFD2QX1 \bvalid_reg[1]  ( .D(n495), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[1]) );
  CFD2QX1 \bvalid_reg[2]  ( .D(n494), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[2]) );
  CFD2QX1 \bvalid_reg[3]  ( .D(n493), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[3]) );
  CFD2QX1 \bvalid_reg[5]  ( .D(n491), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[5]) );
  CFD2QX1 \bvalid_reg[6]  ( .D(n490), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[6]) );
  CFD2QXL \bvalid_reg[7]  ( .D(n489), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[7]) );
  CFD2QX1 \pkt_ctrl_d_reg[0]  ( .D(n488), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[0]) );
  CFD2QX1 \pkt_ctrl_d_reg[2]  ( .D(n486), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[2]) );
  CFD2QX1 \pkt_ctrl_d_reg[3]  ( .D(n485), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[3]) );
  CFD2QX1 \pkt_ctrl_d_reg[4]  ( .D(n484), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[4]) );
  CFD2QXL \xgmii_tx_hold_reg[0]  ( .D(n480), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[0]) );
  CFD2QXL \xgmii_tx_hold_reg[1]  ( .D(n479), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[1]) );
  CFD2QXL \xgmii_tx_hold_reg[2]  ( .D(n478), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[2]) );
  CFD2QXL \xgmii_tx_hold_reg[3]  ( .D(n477), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[3]) );
  CFD2QXL \xgmii_tx_hold_reg[4]  ( .D(n476), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[4]) );
  CFD2QXL \xgmii_tx_hold_reg[5]  ( .D(n475), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[5]) );
  CFD2QXL \xgmii_tx_hold_reg[6]  ( .D(n474), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[6]) );
  CFD2QXL \xgmii_tx_hold_reg[7]  ( .D(n473), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[7]) );
  CFD2QXL \xgmii_tx_hold_reg[8]  ( .D(n472), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[8]) );
  CFD2QXL \xgmii_tx_hold_reg[9]  ( .D(n471), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[9]) );
  CFD2QXL \xgmii_tx_hold_reg[10]  ( .D(n470), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[10]) );
  CFD2QXL \xgmii_tx_hold_reg[11]  ( .D(n469), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[11]) );
  CFD2QXL \xgmii_tx_hold_reg[12]  ( .D(n468), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[12]) );
  CFD2QXL \xgmii_tx_hold_reg[13]  ( .D(n467), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[13]) );
  CFD2QXL \xgmii_tx_hold_reg[14]  ( .D(n466), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[14]) );
  CFD2QXL \xgmii_tx_hold_reg[15]  ( .D(n465), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[15]) );
  CFD2QXL \xgmii_tx_hold_reg[16]  ( .D(n464), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[16]) );
  CFD2QXL \xgmii_tx_hold_reg[17]  ( .D(n463), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[17]) );
  CFD2QXL \xgmii_tx_hold_reg[18]  ( .D(n462), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[18]) );
  CFD2QXL \xgmii_tx_hold_reg[19]  ( .D(n461), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[19]) );
  CFD2QXL \xgmii_tx_hold_reg[20]  ( .D(n460), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[20]) );
  CFD2QXL \xgmii_tx_hold_reg[21]  ( .D(n459), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[21]) );
  CFD2QXL \xgmii_tx_hold_reg[22]  ( .D(n458), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[22]) );
  CFD2QXL \xgmii_tx_hold_reg[23]  ( .D(n457), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[23]) );
  CFD2QXL \xgmii_tx_hold_reg[24]  ( .D(n456), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[24]) );
  CFD2QXL \xgmii_tx_hold_reg[25]  ( .D(n455), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[25]) );
  CFD2QXL \xgmii_tx_hold_reg[26]  ( .D(n454), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[26]) );
  CFD2QXL \xgmii_tx_hold_reg[27]  ( .D(n453), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[27]) );
  CFD2QXL \xgmii_tx_hold_reg[28]  ( .D(n452), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[28]) );
  CFD2QXL \xgmii_tx_hold_reg[29]  ( .D(n451), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[29]) );
  CFD2QXL \xgmii_tx_hold_reg[30]  ( .D(n450), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[30]) );
  CFD2QXL \xgmii_tx_hold_reg[31]  ( .D(n449), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[31]) );
  CFD2QXL \xgmii_tx_hold_reg[32]  ( .D(n448), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[32]) );
  CFD2QXL \xgmii_tx_hold_reg[33]  ( .D(n447), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[33]) );
  CFD2QXL \xgmii_tx_hold_reg[34]  ( .D(n446), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[34]) );
  CFD2QXL \xgmii_tx_hold_reg[35]  ( .D(n445), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[35]) );
  CFD2QXL \xgmii_tx_hold_reg[36]  ( .D(n444), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[36]) );
  CFD2QXL \xgmii_tx_hold_reg[37]  ( .D(n443), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[37]) );
  CFD2QXL \xgmii_tx_hold_reg[38]  ( .D(n442), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[38]) );
  CFD2QXL \xgmii_tx_hold_reg[39]  ( .D(n441), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[39]) );
  CFD2QXL \xgmii_tx_hold_reg[40]  ( .D(n440), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[40]) );
  CFD2QXL \xgmii_tx_hold_reg[41]  ( .D(n439), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[41]) );
  CFD2QXL \xgmii_tx_hold_reg[42]  ( .D(n438), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[42]) );
  CFD2QXL \xgmii_tx_hold_reg[43]  ( .D(n437), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[43]) );
  CFD2QXL \xgmii_tx_hold_reg[44]  ( .D(n436), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[44]) );
  CFD2QXL \xgmii_tx_hold_reg[45]  ( .D(n435), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[45]) );
  CFD2QXL \xgmii_tx_hold_reg[46]  ( .D(n434), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[46]) );
  CFD2QXL \xgmii_tx_hold_reg[47]  ( .D(n433), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[47]) );
  CFD2QXL \xgmii_tx_hold_reg[48]  ( .D(n432), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[48]) );
  CFD2QXL \xgmii_tx_hold_reg[49]  ( .D(n431), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[49]) );
  CFD2QXL \xgmii_tx_hold_reg[50]  ( .D(n430), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[50]) );
  CFD2QXL \xgmii_tx_hold_reg[51]  ( .D(n429), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[51]) );
  CFD2QXL \xgmii_tx_hold_reg[52]  ( .D(n428), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[52]) );
  CFD2QXL \xgmii_tx_hold_reg[53]  ( .D(n427), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[53]) );
  CFD2QXL \xgmii_tx_hold_reg[54]  ( .D(n426), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[54]) );
  CFD2QXL \xgmii_tx_hold_reg[55]  ( .D(n425), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[55]) );
  CFD2QXL \xgmii_tx_hold_reg[56]  ( .D(n424), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[56]) );
  CFD2QXL \xgmii_tx_hold_reg[57]  ( .D(n423), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[57]) );
  CFD2QXL \xgmii_tx_hold_reg[58]  ( .D(n422), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[58]) );
  CFD2QXL \xgmii_tx_hold_reg[59]  ( .D(n421), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[59]) );
  CFD2QXL \xgmii_tx_hold_reg[60]  ( .D(n420), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[60]) );
  CFD2QXL \xgmii_tx_hold_reg[61]  ( .D(n419), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[61]) );
  CFD2QXL \xgmii_tx_hold_reg[62]  ( .D(n418), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(xgmii_tx_hold[62]) );
  CFD2QXL \IDC_cnt_d_reg[0]  ( .D(n499), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        IDC_cnt_d[0]) );
  CFD2QXL \IDC_cnt_d_reg[1]  ( .D(n498), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        IDC_cnt_d[1]) );
  CFD2QXL \crc_left_d_reg[0]  ( .D(n415), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[0]) );
  CFD2QXL \crc_left_d_reg[1]  ( .D(n414), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[1]) );
  CFD2QXL \crc_left_d_reg[2]  ( .D(n413), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[2]) );
  CFD2QXL \crc_left_d_reg[3]  ( .D(n412), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[3]) );
  CFD2QXL \crc_left_d_reg[4]  ( .D(n411), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[4]) );
  CFD2QXL \crc_left_d_reg[5]  ( .D(n410), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[5]) );
  CFD2QXL \crc_left_d_reg[6]  ( .D(n409), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[6]) );
  CFD2QXL \crc_left_d_reg[7]  ( .D(n408), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[7]) );
  CFD2QXL \crc_left_d_reg[8]  ( .D(n407), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[8]) );
  CFD2QXL \crc_left_d_reg[9]  ( .D(n406), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[9]) );
  CFD2QXL \crc_left_d_reg[10]  ( .D(n405), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[10]) );
  CFD2QXL \crc_left_d_reg[11]  ( .D(n404), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[11]) );
  CFD2QXL \crc_left_d_reg[12]  ( .D(n403), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[12]) );
  CFD2QXL \crc_left_d_reg[13]  ( .D(n402), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[13]) );
  CFD2QXL \crc_left_d_reg[14]  ( .D(n401), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[14]) );
  CFD2QXL \crc_left_d_reg[15]  ( .D(n400), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[15]) );
  CFD2QXL \crc_left_d_reg[16]  ( .D(n399), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[16]) );
  CFD2QXL \crc_left_d_reg[17]  ( .D(n398), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[17]) );
  CFD2QXL \crc_left_d_reg[18]  ( .D(n397), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[18]) );
  CFD2QXL \crc_left_d_reg[19]  ( .D(n396), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[19]) );
  CFD2QXL \crc_left_d_reg[20]  ( .D(n395), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[20]) );
  CFD2QXL \crc_left_d_reg[21]  ( .D(n394), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[21]) );
  CFD2QXL \crc_left_d_reg[22]  ( .D(n393), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[22]) );
  CFD2QXL \crc_left_d_reg[23]  ( .D(n392), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[23]) );
  CFD2QXL \crc_left_d_reg[24]  ( .D(n391), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[24]) );
  CFD2QXL \crc_left_d_reg[25]  ( .D(n390), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[25]) );
  CFD2QXL \crc_left_d_reg[26]  ( .D(n389), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[26]) );
  CFD2QXL \crc_left_d_reg[27]  ( .D(n388), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[27]) );
  CFD2QXL \crc_left_d_reg[28]  ( .D(n387), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[28]) );
  CFD2QXL \crc_left_d_reg[29]  ( .D(n386), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[29]) );
  CFD2QXL \crc_left_d_reg[30]  ( .D(n385), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[30]) );
  CFD2QXL \crc_left_d_reg[31]  ( .D(n384), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_left_d[31]) );
  CFD2QXL \xgmii_txd_d_reg[31]  ( .D(\xgmii_tx.TXD [31]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[31]) );
  CFD2QXL \xgmii_txd_d_reg[30]  ( .D(\xgmii_tx.TXD [30]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[30]) );
  CFD2QXL \xgmii_txd_d_reg[29]  ( .D(\xgmii_tx.TXD [29]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[29]) );
  CFD2QXL \xgmii_txd_d_reg[28]  ( .D(\xgmii_tx.TXD [28]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[28]) );
  CFD2QXL \xgmii_txd_d_reg[27]  ( .D(\xgmii_tx.TXD [27]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[27]) );
  CFD2QXL \xgmii_txd_d_reg[23]  ( .D(\xgmii_tx.TXD [23]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[23]) );
  CFD2QXL \xgmii_txd_d_reg[22]  ( .D(\xgmii_tx.TXD [22]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[22]) );
  CFD2QXL \xgmii_txd_d_reg[21]  ( .D(\xgmii_tx.TXD [21]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[21]) );
  CFD2QXL \xgmii_txd_d_reg[20]  ( .D(\xgmii_tx.TXD [20]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[20]) );
  CFD2QXL \xgmii_txd_d_reg[19]  ( .D(\xgmii_tx.TXD [19]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[19]) );
  CFD2QXL \xgmii_txd_d_reg[15]  ( .D(\xgmii_tx.TXD [15]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[15]) );
  CFD2QXL \xgmii_txd_d_reg[14]  ( .D(\xgmii_tx.TXD [14]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[14]) );
  CFD2QXL \xgmii_txd_d_reg[13]  ( .D(\xgmii_tx.TXD [13]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[13]) );
  CFD2QXL \xgmii_txd_d_reg[12]  ( .D(\xgmii_tx.TXD [12]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[12]) );
  CFD2QXL \xgmii_txd_d_reg[11]  ( .D(\xgmii_tx.TXD [11]), .CP(\clks.clk ), 
        .CD(\clks.rst ), .Q(xgmii_txd_d[11]) );
  CFD2QXL \xgmii_txd_d_reg[7]  ( .D(\xgmii_tx.TXD [7]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(xgmii_txd_d[7]) );
  CFD2QXL \xgmii_txd_d_reg[6]  ( .D(\xgmii_tx.TXD [6]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(xgmii_txd_d[6]) );
  CFD2QXL \xgmii_txd_d_reg[5]  ( .D(\xgmii_tx.TXD [5]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(xgmii_txd_d[5]) );
  CFD2QXL \xgmii_txd_d_reg[4]  ( .D(\xgmii_tx.TXD [4]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(xgmii_txd_d[4]) );
  CFD2QXL \xgmii_txd_d_reg[3]  ( .D(\xgmii_tx.TXD [3]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(xgmii_txd_d[3]) );
  CFD4QXL \idlernd_cnt_d_reg[1]  ( .D(n416), .CP(\clks.clk ), .SD(\clks.rst ), 
        .Q(idlernd_cnt_d[1]) );
  CFD4QXL \xgmii_txc_d_reg[2]  ( .D(\xgmii_tx.TXC [2]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txc_d[2]) );
  CFD4QXL \xgmii_txd_d_reg[2]  ( .D(\xgmii_tx.TXD [2]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txd_d[2]) );
  CFD4QXL \xgmii_txd_d_reg[1]  ( .D(\xgmii_tx.TXD [1]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txd_d[1]) );
  CFD2QXL \crc_tx_d_reg[31]  ( .D(n383), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[31]) );
  CFD2QXL \crc_tx_d_reg[0]  ( .D(n382), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[0]) );
  CFD2QXL \crc_tx_d_reg[1]  ( .D(n381), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[1]) );
  CFD2QXL \crc_tx_d_reg[2]  ( .D(n380), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[2]) );
  CFD2QXL \crc_tx_d_reg[3]  ( .D(n379), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[3]) );
  CFD2QXL \crc_tx_d_reg[4]  ( .D(n378), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[4]) );
  CFD2QXL \crc_tx_d_reg[5]  ( .D(n377), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[5]) );
  CFD2QXL \crc_tx_d_reg[6]  ( .D(n376), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[6]) );
  CFD2QXL \crc_tx_d_reg[7]  ( .D(n375), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[7]) );
  CFD2QXL \crc_tx_d_reg[8]  ( .D(n374), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[8]) );
  CFD2QXL \crc_tx_d_reg[9]  ( .D(n373), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[9]) );
  CFD2QXL \crc_tx_d_reg[10]  ( .D(n372), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[10]) );
  CFD2QXL \crc_tx_d_reg[11]  ( .D(n371), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[11]) );
  CFD2QXL \crc_tx_d_reg[12]  ( .D(n370), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[12]) );
  CFD2QXL \crc_tx_d_reg[13]  ( .D(n369), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[13]) );
  CFD2QXL \crc_tx_d_reg[14]  ( .D(n368), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[14]) );
  CFD2QXL \crc_tx_d_reg[15]  ( .D(n367), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[15]) );
  CFD2QXL \crc_tx_d_reg[16]  ( .D(n366), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[16]) );
  CFD2QXL \crc_tx_d_reg[17]  ( .D(n365), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[17]) );
  CFD2QXL \crc_tx_d_reg[18]  ( .D(n364), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[18]) );
  CFD2QXL \crc_tx_d_reg[19]  ( .D(n363), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[19]) );
  CFD2QXL \crc_tx_d_reg[20]  ( .D(n362), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[20]) );
  CFD2QXL \crc_tx_d_reg[21]  ( .D(n361), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[21]) );
  CFD2QXL \crc_tx_d_reg[22]  ( .D(n360), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[22]) );
  CFD2QXL \crc_tx_d_reg[23]  ( .D(n359), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[23]) );
  CFD2QXL \crc_tx_d_reg[24]  ( .D(n358), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[24]) );
  CFD2QXL \crc_tx_d_reg[25]  ( .D(n357), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[25]) );
  CFD2QXL \crc_tx_d_reg[26]  ( .D(n356), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[26]) );
  CFD2QXL \crc_tx_d_reg[27]  ( .D(n355), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[27]) );
  CFD2QXL \crc_tx_d_reg[28]  ( .D(n354), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[28]) );
  CFD2QXL \crc_tx_d_reg[29]  ( .D(n353), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[29]) );
  CFD2QXL \crc_tx_d_reg[30]  ( .D(n352), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        crc_tx_d[30]) );
  CFD4QX2 \cur_state_reg[3]  ( .D(nxt_state[3]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(cur_state[3]) );
  CFD2QX2 \cur_state_reg[2]  ( .D(nxt_state[2]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(cur_state[2]) );
  CFD4QXL \xgmii_txc_d_reg[1]  ( .D(\xgmii_tx.TXC [1]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txc_d[1]) );
  CFD2QXL gclk_en_d_reg ( .D(gclk_en), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        gclk_en_d) );
  CFD2QXL div2_d_reg ( .D(n546), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        clk125mhz) );
  CFD4QXL \xgmii_txc_d_reg[0]  ( .D(\xgmii_tx.TXC [0]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txc_d[0]) );
  CFD4QXL \xgmii_txc_d_reg[3]  ( .D(\xgmii_tx.TXC [3]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txc_d[3]) );
  CFD4QXL \xgmii_txd_d_reg[26]  ( .D(\xgmii_tx.TXD [26]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[26]) );
  CFD4QXL \xgmii_txd_d_reg[25]  ( .D(\xgmii_tx.TXD [25]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[25]) );
  CFD4QXL \xgmii_txd_d_reg[24]  ( .D(\xgmii_tx.TXD [24]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[24]) );
  CFD4QXL \xgmii_txd_d_reg[18]  ( .D(\xgmii_tx.TXD [18]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[18]) );
  CFD4QXL \xgmii_txd_d_reg[17]  ( .D(\xgmii_tx.TXD [17]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[17]) );
  CFD4QXL \xgmii_txd_d_reg[16]  ( .D(\xgmii_tx.TXD [16]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[16]) );
  CFD4QXL \xgmii_txd_d_reg[10]  ( .D(\xgmii_tx.TXD [10]), .CP(\clks.clk ), 
        .SD(\clks.rst ), .Q(xgmii_txd_d[10]) );
  CFD4QXL \xgmii_txd_d_reg[9]  ( .D(\xgmii_tx.TXD [9]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txd_d[9]) );
  CFD4QXL \xgmii_txd_d_reg[8]  ( .D(\xgmii_tx.TXD [8]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txd_d[8]) );
  CFD4QXL \xgmii_txd_d_reg[0]  ( .D(\xgmii_tx.TXD [0]), .CP(\clks.clk ), .SD(
        \clks.rst ), .Q(xgmii_txd_d[0]) );
  CFD2QXL \wakeuptimer_d_reg[22]  ( .D(n512), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[22]) );
  CFD2QXL \wakeuptimer_d_reg[30]  ( .D(n504), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[30]) );
  CFD2QXL \wakeuptimer_d_reg[29]  ( .D(n505), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[29]) );
  CFD2QXL \wakeuptimer_d_reg[23]  ( .D(n511), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[23]) );
  CFD2QXL \cnt128_d_reg[2]  ( .D(n539), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[2]) );
  CFD2QXL \wakeuptimer_d_reg[21]  ( .D(n513), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[21]) );
  CFD2QXL \wakeuptimer_d_reg[26]  ( .D(n508), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[26]) );
  CFD2QXL \wakeuptimer_d_reg[31]  ( .D(n503), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[31]) );
  CFD2QXL \cnt128_d_reg[1]  ( .D(n540), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[1]) );
  CFD2QXL \crc_bvalid_d_reg[0]  ( .D(n501), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_bvalid_d[0]) );
  CFD2QXL \crc_bvalid_d_reg[1]  ( .D(n500), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(crc_bvalid_d[1]) );
  CFD2QX1 \cur_state_reg[0]  ( .D(nxt_state[0]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(cur_state[0]) );
  CFD2QX1 \cur_state_reg[1]  ( .D(nxt_state[1]), .CP(\clks.clk ), .CD(
        \clks.rst ), .Q(cur_state[1]) );
  CFD2QX1 \cur_state_clk_reg[1]  ( .D(n534), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(cur_state_clk[1]) );
  CFD2QX1 \cnt128_d_reg[0]  ( .D(n541), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        cnt128_d[0]) );
  CFD2QXL \pkt_ctrl_d_reg[5]  ( .D(n483), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[5]) );
  CFD2QXL \pkt_ctrl_d_reg[7]  ( .D(n481), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[7]) );
  CFD2QX1 \bvalid_reg[4]  ( .D(n492), .CP(\clks.clk ), .CD(\clks.rst ), .Q(
        bvalid[4]) );
  CFD2QXL \wakeuptimer_d_reg[28]  ( .D(n506), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[28]) );
  CFD2QXL \wakeuptimer_d_reg[9]  ( .D(n525), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[9]) );
  CFD2QXL \pkt_ctrl_d_reg[6]  ( .D(n482), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[6]) );
  CFD2QXL \pkt_ctrl_d_reg[1]  ( .D(n487), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(pkt_ctrl_d[1]) );
  CFD2QXL \wakeuptimer_d_reg[16]  ( .D(n518), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[16]) );
  CFD2QXL \wakeuptimer_d_reg[12]  ( .D(n522), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[12]) );
  CFD2QXL \wakeuptimer_d_reg[11]  ( .D(n523), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[11]) );
  CFD2QXL \wakeuptimer_d_reg[14]  ( .D(n520), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[14]) );
  CFD2QXL \wakeuptimer_d_reg[10]  ( .D(n524), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[10]) );
  CFD2QXL \wakeuptimer_d_reg[18]  ( .D(n516), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[18]) );
  CFD2QXL \wakeuptimer_d_reg[13]  ( .D(n521), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[13]) );
  CFD2QXL \wakeuptimer_d_reg[17]  ( .D(n517), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[17]) );
  CFD2QXL \wakeuptimer_d_reg[15]  ( .D(n519), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[15]) );
  CFD2QXL \wakeuptimer_d_reg[4]  ( .D(n530), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[4]) );
  CFD2QXL \wakeuptimer_d_reg[19]  ( .D(n515), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[19]) );
  CFD2QXL \wakeuptimer_d_reg[24]  ( .D(n510), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[24]) );
  CFD2QXL \wakeuptimer_d_reg[20]  ( .D(n514), .CP(\clks.clk ), .CD(\clks.rst ), 
        .Q(wakeuptimer_d[20]) );
  CNIVX4 U592 ( .A(pop_pkt), .Z(n548) );
  CANR1XL U593 ( .A(n726), .B(n803), .C(n808), .Z(n727) );
  CNR2IX1 U594 ( .B(bvalid[5]), .A(n725), .Z(n721) );
  CND2IX2 U595 ( .B(n715), .A(bvalid[7]), .Z(n776) );
  CNR2X1 U596 ( .A(n753), .B(n752), .Z(n750) );
  CNR2IX1 U597 ( .B(n1039), .A(n1022), .Z(n719) );
  CND2X1 U598 ( .A(cur_state_clk[0]), .B(n1020), .Z(n751) );
  CNIVX2 U599 ( .A(n773), .Z(n979) );
  CND3XL U600 ( .A(n863), .B(n862), .C(n861), .Z(\xgmii_tx.TXD [2]) );
  CND4X1 U601 ( .A(n719), .B(n718), .C(n774), .D(n717), .Z(n722) );
  CNIVX2 U602 ( .A(n722), .Z(n547) );
  CNIVX1 U603 ( .A(n722), .Z(n993) );
  CIVX1 U604 ( .A(nxt_state[0]), .Z(n1013) );
  CAOR2X1 U605 ( .A(crc_left_d[2]), .B(n993), .C(crc_tx_d[2]), .D(n735), .Z(
        n413) );
  CAOR2X1 U606 ( .A(crc_left_d[3]), .B(n993), .C(crc_tx_d[3]), .D(n735), .Z(
        n412) );
  CAOR2X1 U607 ( .A(crc_left_d[9]), .B(n547), .C(crc_tx_d[9]), .D(n992), .Z(
        n406) );
  CAOR2X1 U608 ( .A(crc_left_d[11]), .B(n547), .C(crc_tx_d[11]), .D(n992), .Z(
        n404) );
  CAOR2X1 U609 ( .A(crc_left_d[7]), .B(n993), .C(crc_tx_d[7]), .D(n735), .Z(
        n408) );
  CAOR2X1 U610 ( .A(crc_left_d[1]), .B(n993), .C(crc_tx_d[1]), .D(n735), .Z(
        n414) );
  CAOR2X1 U611 ( .A(crc_left_d[8]), .B(n547), .C(crc_tx_d[8]), .D(n992), .Z(
        n407) );
  CAOR2X1 U612 ( .A(crc_left_d[6]), .B(n547), .C(crc_tx_d[6]), .D(n735), .Z(
        n409) );
  CAOR2X1 U613 ( .A(crc_left_d[4]), .B(n722), .C(crc_tx_d[4]), .D(n735), .Z(
        n411) );
  CAOR2X1 U614 ( .A(crc_left_d[5]), .B(n993), .C(crc_tx_d[5]), .D(n735), .Z(
        n410) );
  CIVX1 U615 ( .A(n1035), .Z(n1037) );
  CMX2XL U616 ( .A0(xgmii_tx_hold[56]), .A1(pkt_data[56]), .S(n994), .Z(n424)
         );
  CMX2XL U617 ( .A0(xgmii_tx_hold[32]), .A1(pkt_data[32]), .S(n977), .Z(n448)
         );
  CMX2XL U618 ( .A0(xgmii_tx_hold[31]), .A1(pkt_data[31]), .S(n977), .Z(n449)
         );
  CMX2XL U619 ( .A0(xgmii_tx_hold[57]), .A1(pkt_data[57]), .S(n994), .Z(n423)
         );
  CMX2XL U620 ( .A0(xgmii_tx_hold[38]), .A1(pkt_data[38]), .S(n995), .Z(n442)
         );
  CMX2XL U621 ( .A0(xgmii_tx_hold[0]), .A1(pkt_data[0]), .S(n548), .Z(n480) );
  CMX2XL U622 ( .A0(xgmii_tx_hold[55]), .A1(pkt_data[55]), .S(n994), .Z(n425)
         );
  CMX2XL U623 ( .A0(xgmii_tx_hold[37]), .A1(pkt_data[37]), .S(n996), .Z(n443)
         );
  CMX2XL U624 ( .A0(xgmii_tx_hold[28]), .A1(pkt_data[28]), .S(n977), .Z(n452)
         );
  CMX2XL U625 ( .A0(xgmii_tx_hold[33]), .A1(pkt_data[33]), .S(n977), .Z(n447)
         );
  CMX2XL U626 ( .A0(xgmii_tx_hold[39]), .A1(pkt_data[39]), .S(n994), .Z(n441)
         );
  CMX2XL U627 ( .A0(xgmii_tx_hold[34]), .A1(pkt_data[34]), .S(n977), .Z(n446)
         );
  CMX2XL U628 ( .A0(xgmii_tx_hold[29]), .A1(pkt_data[29]), .S(n977), .Z(n451)
         );
  CMX2XL U629 ( .A0(xgmii_tx_hold[61]), .A1(pkt_data[61]), .S(n994), .Z(n419)
         );
  CMX2XL U630 ( .A0(xgmii_tx_hold[30]), .A1(pkt_data[30]), .S(n977), .Z(n450)
         );
  CMX2XL U631 ( .A0(xgmii_tx_hold[35]), .A1(pkt_data[35]), .S(n977), .Z(n445)
         );
  CMX2XL U632 ( .A0(xgmii_tx_hold[60]), .A1(pkt_data[60]), .S(n994), .Z(n420)
         );
  CMX2XL U633 ( .A0(xgmii_tx_hold[27]), .A1(pkt_data[27]), .S(n996), .Z(n453)
         );
  CMX2XL U634 ( .A0(xgmii_tx_hold[62]), .A1(pkt_data[62]), .S(n994), .Z(n418)
         );
  CMX2XL U635 ( .A0(xgmii_tx_hold[58]), .A1(pkt_data[58]), .S(n994), .Z(n422)
         );
  CMX2XL U636 ( .A0(xgmii_tx_hold[36]), .A1(pkt_data[36]), .S(n977), .Z(n444)
         );
  CMX2XL U637 ( .A0(xgmii_tx_hold[59]), .A1(pkt_data[59]), .S(n994), .Z(n421)
         );
  CMX2XL U638 ( .A0(xgmii_tx_hold[26]), .A1(pkt_data[26]), .S(n996), .Z(n454)
         );
  CMX2XL U639 ( .A0(xgmii_tx_hold[40]), .A1(pkt_data[40]), .S(n995), .Z(n440)
         );
  CMX2XL U640 ( .A0(xgmii_tx_hold[5]), .A1(pkt_data[5]), .S(n548), .Z(n475) );
  CMX2XL U641 ( .A0(xgmii_tx_hold[3]), .A1(pkt_data[3]), .S(n548), .Z(n477) );
  CMX2XL U642 ( .A0(xgmii_tx_hold[19]), .A1(pkt_data[19]), .S(n996), .Z(n461)
         );
  CMX2XL U643 ( .A0(xgmii_tx_hold[25]), .A1(pkt_data[25]), .S(n996), .Z(n455)
         );
  CMX2XL U644 ( .A0(xgmii_tx_hold[18]), .A1(pkt_data[18]), .S(n995), .Z(n462)
         );
  CMX2XL U645 ( .A0(xgmii_tx_hold[47]), .A1(pkt_data[47]), .S(n994), .Z(n433)
         );
  CMX2XL U646 ( .A0(xgmii_tx_hold[41]), .A1(pkt_data[41]), .S(n996), .Z(n439)
         );
  CMX2XL U647 ( .A0(xgmii_tx_hold[24]), .A1(pkt_data[24]), .S(n996), .Z(n456)
         );
  CMX2XL U648 ( .A0(xgmii_tx_hold[7]), .A1(pkt_data[7]), .S(n548), .Z(n473) );
  CMX2XL U649 ( .A0(xgmii_tx_hold[23]), .A1(pkt_data[23]), .S(n996), .Z(n457)
         );
  CMX2XL U650 ( .A0(xgmii_tx_hold[42]), .A1(pkt_data[42]), .S(n994), .Z(n438)
         );
  CMX2XL U651 ( .A0(xgmii_tx_hold[22]), .A1(pkt_data[22]), .S(n996), .Z(n458)
         );
  CMX2XL U652 ( .A0(xgmii_tx_hold[2]), .A1(pkt_data[2]), .S(n548), .Z(n478) );
  CMX2XL U653 ( .A0(xgmii_tx_hold[43]), .A1(pkt_data[43]), .S(n995), .Z(n437)
         );
  CMX2XL U654 ( .A0(xgmii_tx_hold[15]), .A1(pkt_data[15]), .S(n995), .Z(n465)
         );
  CMX2XL U655 ( .A0(xgmii_tx_hold[14]), .A1(pkt_data[14]), .S(n995), .Z(n466)
         );
  CMX2XL U656 ( .A0(xgmii_tx_hold[21]), .A1(pkt_data[21]), .S(n996), .Z(n459)
         );
  CMX2XL U657 ( .A0(xgmii_tx_hold[8]), .A1(pkt_data[8]), .S(n548), .Z(n472) );
  CMX2XL U658 ( .A0(xgmii_tx_hold[20]), .A1(pkt_data[20]), .S(n996), .Z(n460)
         );
  CMX2XL U659 ( .A0(xgmii_tx_hold[44]), .A1(pkt_data[44]), .S(n996), .Z(n436)
         );
  CMX2XL U660 ( .A0(bvalid[6]), .A1(bvalidin[6]), .S(n977), .Z(n490) );
  CMX2XL U661 ( .A0(xgmii_tx_hold[12]), .A1(pkt_data[12]), .S(n995), .Z(n468)
         );
  CIVDX3 U662 ( .A(n779), .Z0(n718), .Z1(n986) );
  CMX2XL U663 ( .A0(pkt_ctrl_d[7]), .A1(pkt_ctrl[7]), .S(n548), .Z(n481) );
  CMX2XL U664 ( .A0(xgmii_tx_hold[16]), .A1(pkt_data[16]), .S(n995), .Z(n464)
         );
  CMX2XL U665 ( .A0(xgmii_tx_hold[11]), .A1(pkt_data[11]), .S(n995), .Z(n469)
         );
  CMX2XL U666 ( .A0(xgmii_tx_hold[4]), .A1(pkt_data[4]), .S(n548), .Z(n476) );
  CANR3X1 U667 ( .A(n1024), .B(xgmii_txc_d[3]), .C(n1023), .D(n1022), .Z(n1025) );
  CMX2XL U668 ( .A0(xgmii_tx_hold[45]), .A1(pkt_data[45]), .S(n994), .Z(n435)
         );
  CMX2XL U669 ( .A0(xgmii_tx_hold[10]), .A1(pkt_data[10]), .S(n995), .Z(n470)
         );
  CMX2XL U670 ( .A0(xgmii_tx_hold[17]), .A1(pkt_data[17]), .S(n995), .Z(n463)
         );
  CMX2XL U671 ( .A0(xgmii_tx_hold[9]), .A1(pkt_data[9]), .S(n548), .Z(n471) );
  CMX2XL U672 ( .A0(xgmii_tx_hold[13]), .A1(pkt_data[13]), .S(n995), .Z(n467)
         );
  CNIVX2 U673 ( .A(n728), .Z(n941) );
  CND4XL U674 ( .A(n824), .B(n823), .C(n998), .D(n822), .Z(n825) );
  CMX2XL U675 ( .A0(crc_tx_d[23]), .A1(pkt_crc[23]), .S(pop_crc), .Z(n359) );
  CMX2XL U676 ( .A0(crc_tx_d[22]), .A1(pkt_crc[22]), .S(pop_crc), .Z(n360) );
  CMX2XL U677 ( .A0(crc_tx_d[21]), .A1(pkt_crc[21]), .S(pop_crc), .Z(n361) );
  CMX2XL U678 ( .A0(crc_tx_d[17]), .A1(pkt_crc[17]), .S(pop_crc), .Z(n365) );
  CMX2XL U679 ( .A0(crc_tx_d[19]), .A1(pkt_crc[19]), .S(pop_crc), .Z(n363) );
  CMX2XL U680 ( .A0(crc_tx_d[24]), .A1(pkt_crc[24]), .S(pop_crc), .Z(n358) );
  CMX2XL U681 ( .A0(crc_tx_d[16]), .A1(pkt_crc[16]), .S(pop_crc), .Z(n366) );
  CMX2XL U682 ( .A0(crc_tx_d[25]), .A1(pkt_crc[25]), .S(pop_crc), .Z(n357) );
  CAOR2X1 U683 ( .A(cnt128_d[1]), .B(n764), .C(cnt128_d[0]), .D(n765), .Z(n540) );
  CMX2XL U684 ( .A0(crc_tx_d[20]), .A1(pkt_crc[20]), .S(pop_crc), .Z(n362) );
  CMX2XL U685 ( .A0(crc_tx_d[15]), .A1(pkt_crc[15]), .S(pop_crc), .Z(n367) );
  CMX2XL U686 ( .A0(crc_tx_d[26]), .A1(pkt_crc[26]), .S(pop_crc), .Z(n356) );
  CMX2XL U687 ( .A0(crc_tx_d[18]), .A1(pkt_crc[18]), .S(pop_crc), .Z(n364) );
  CMX2XL U688 ( .A0(crc_tx_d[14]), .A1(pkt_crc[14]), .S(pop_crc), .Z(n368) );
  CMX2XL U689 ( .A0(crc_tx_d[13]), .A1(pkt_crc[13]), .S(pop_crc), .Z(n369) );
  CMX2XL U690 ( .A0(crc_tx_d[12]), .A1(pkt_crc[12]), .S(pop_crc), .Z(n370) );
  CMX2XL U691 ( .A0(crc_tx_d[27]), .A1(pkt_crc[27]), .S(pop_crc), .Z(n355) );
  CMX2XL U692 ( .A0(crc_tx_d[11]), .A1(pkt_crc[11]), .S(pop_crc), .Z(n371) );
  CMX2XL U693 ( .A0(crc_tx_d[10]), .A1(pkt_crc[10]), .S(pop_crc), .Z(n372) );
  CMX2XL U694 ( .A0(crc_tx_d[28]), .A1(pkt_crc[28]), .S(pop_crc), .Z(n354) );
  CMX2XL U695 ( .A0(crc_tx_d[9]), .A1(pkt_crc[9]), .S(pop_crc), .Z(n373) );
  CMX2XL U696 ( .A0(crc_tx_d[5]), .A1(pkt_crc[5]), .S(pop_crc), .Z(n377) );
  CIVX1 U697 ( .A(n1022), .Z(n763) );
  CMX2XL U698 ( .A0(crc_tx_d[8]), .A1(pkt_crc[8]), .S(pop_crc), .Z(n374) );
  CMX2XL U699 ( .A0(crc_tx_d[4]), .A1(pkt_crc[4]), .S(pop_crc), .Z(n378) );
  CMX2XL U700 ( .A0(crc_tx_d[29]), .A1(pkt_crc[29]), .S(pop_crc), .Z(n353) );
  CMX2XL U701 ( .A0(crc_tx_d[2]), .A1(pkt_crc[2]), .S(pop_crc), .Z(n380) );
  CMX2XL U702 ( .A0(crc_tx_d[31]), .A1(pkt_crc[31]), .S(pop_crc), .Z(n383) );
  CMX2XL U703 ( .A0(crc_tx_d[7]), .A1(pkt_crc[7]), .S(pop_crc), .Z(n375) );
  CMX2XL U704 ( .A0(crc_tx_d[30]), .A1(pkt_crc[30]), .S(pop_crc), .Z(n352) );
  CMX2XL U705 ( .A0(crc_tx_d[0]), .A1(pkt_crc[0]), .S(pop_crc), .Z(n382) );
  CMX2XL U706 ( .A0(crc_tx_d[6]), .A1(pkt_crc[6]), .S(pop_crc), .Z(n376) );
  CMX2XL U707 ( .A0(crc_tx_d[3]), .A1(pkt_crc[3]), .S(pop_crc), .Z(n379) );
  CMX2XL U708 ( .A0(crc_tx_d[1]), .A1(pkt_crc[1]), .S(pop_crc), .Z(n381) );
  CMXI2XL U709 ( .A0(n742), .A1(n741), .S(cnt128_d[4]), .Z(n537) );
  CIVX1 U710 ( .A(n821), .Z(n696) );
  CND2XL U711 ( .A(n749), .B(n739), .Z(n555) );
  CND2XL U712 ( .A(n749), .B(n752), .Z(n550) );
  CND2XL U713 ( .A(IDC_cnt_d[0]), .B(n1026), .Z(n1027) );
  CIVX1 U714 ( .A(n751), .Z(n759) );
  CIVX1 U715 ( .A(n1014), .Z(n1015) );
  CIVX1 U716 ( .A(n630), .Z(n631) );
  CIVX1 U717 ( .A(n576), .Z(n602) );
  CIVX1 U718 ( .A(n659), .Z(n660) );
  CIVX1 U719 ( .A(n614), .Z(n615) );
  CIVX1 U720 ( .A(n563), .Z(n568) );
  CIVX1 U721 ( .A(n592), .Z(n593) );
  CIVX1 U722 ( .A(wakeuptimer_d[9]), .Z(n596) );
  CIVXL U723 ( .A(xgmii_tx_hold[9]), .Z(n883) );
  CIVX1 U724 ( .A(clk125mhz), .Z(n546) );
  CIVXL U725 ( .A(crc_left_d[0]), .Z(n901) );
  CIVX1 U726 ( .A(wakeuptimer_d[11]), .Z(n611) );
  CIVXL U727 ( .A(xgmii_tx_hold[12]), .Z(n851) );
  CIVXL U728 ( .A(crc_tx_d[25]), .Z(n878) );
  CIVXL U729 ( .A(xgmii_tx_hold[8]), .Z(n908) );
  CIVXL U730 ( .A(xgmii_tx_hold[17]), .Z(n875) );
  CIVXL U731 ( .A(xgmii_tx_hold[16]), .Z(n840) );
  CIVXL U732 ( .A(xgmii_tx_hold[13]), .Z(n899) );
  CIVX1 U733 ( .A(wakeuptimer_d[8]), .Z(n598) );
  CIVX1 U734 ( .A(bvalid[1]), .Z(n726) );
  CIVX1 U735 ( .A(wakeuptimer_d[13]), .Z(n586) );
  CIVX1 U736 ( .A(crc_left_d[4]), .Z(n964) );
  CIVX1 U737 ( .A(wakeuptimer_d[15]), .Z(n622) );
  CIVX1 U738 ( .A(wakeuptimer_d[7]), .Z(n604) );
  CIVXL U739 ( .A(xgmii_tx_hold[18]), .Z(n834) );
  CIVXL U740 ( .A(xgmii_tx_hold[14]), .Z(n846) );
  CIVX1 U741 ( .A(wakeuptimer_d[4]), .Z(n561) );
  CIVX1 U742 ( .A(crc_left_d[5]), .Z(n952) );
  CIVXL U743 ( .A(xgmii_tx_hold[22]), .Z(n990) );
  CIVX1 U744 ( .A(wakeuptimer_d[6]), .Z(n606) );
  CIVX1 U745 ( .A(wakeuptimer_d[2]), .Z(n567) );
  CIVX1 U746 ( .A(wakeuptimer_d[22]), .Z(n681) );
  CIVX1 U747 ( .A(wakeuptimer_d[31]), .Z(n684) );
  CIVX1 U748 ( .A(wakeuptimer_d[23]), .Z(n675) );
  CIVX1 U749 ( .A(wakeuptimer_d[25]), .Z(n651) );
  CIVX1 U750 ( .A(wakeuptimer_d[5]), .Z(n558) );
  CIVX1 U751 ( .A(crc_left_d[3]), .Z(n972) );
  CIVX1 U752 ( .A(wakeuptimer_d[1]), .Z(n570) );
  CIVXL U753 ( .A(xgmii_tx_hold[10]), .Z(n857) );
  CIVXL U754 ( .A(xgmii_tx_hold[21]), .Z(n956) );
  CIVX1 U755 ( .A(wakeuptimer_d[17]), .Z(n579) );
  CIVXL U756 ( .A(xgmii_tx_hold[20]), .Z(n968) );
  CIVX1 U757 ( .A(wakeuptimer_d[20]), .Z(n633) );
  CIVX1 U758 ( .A(wakeuptimer_d[26]), .Z(n662) );
  CND2XL U759 ( .A(cnt128_d[1]), .B(cnt128_d[0]), .Z(n768) );
  CIVXL U760 ( .A(wakeuptimer_d[21]), .Z(n655) );
  CIVXL U761 ( .A(xgmii_tx_hold[19]), .Z(n976) );
  CIVXL U762 ( .A(xgmii_tx_hold[11]), .Z(n888) );
  CIVXL U763 ( .A(xgmii_tx_hold[23]), .Z(n962) );
  CIVXL U764 ( .A(crc_left_d[10]), .Z(n859) );
  CIVX1 U765 ( .A(crc_left_d[6]), .Z(n982) );
  CIVX1 U766 ( .A(wakeuptimer_d[18]), .Z(n618) );
  CIVX1 U767 ( .A(crc_left_d[7]), .Z(n958) );
  CIVX1 U768 ( .A(wakeuptimer_d[19]), .Z(n637) );
  CIVX1 U769 ( .A(wakeuptimer_d[3]), .Z(n565) );
  CIVXL U770 ( .A(xgmii_tx_hold[15]), .Z(n893) );
  CAN2X1 U771 ( .A(n760), .B(n678), .Z(n549) );
  CNR2IX1 U772 ( .B(n710), .A(n720), .Z(n775) );
  CND3XL U773 ( .A(n809), .B(n732), .C(n731), .Z(n810) );
  CNR3XL U774 ( .A(crc_bvalid_d[0]), .B(n772), .C(n1039), .Z(n773) );
  CNR2X1 U775 ( .A(n802), .B(n941), .Z(n734) );
  CNIVX1 U776 ( .A(n548), .Z(n977) );
  CND2IX1 U777 ( .B(n705), .A(n744), .Z(n774) );
  CND3XL U778 ( .A(n828), .B(n827), .C(n826), .Z(\xgmii_tx.TXD [1]) );
  CND3X1 U779 ( .A(cnt128_d[1]), .B(cnt128_d[0]), .C(cnt128_d[2]), .Z(n740) );
  CIVX2 U780 ( .A(cnt128_d[3]), .Z(n739) );
  CNR2X1 U781 ( .A(n740), .B(n739), .Z(n738) );
  CND2X1 U782 ( .A(n738), .B(cnt128_d[4]), .Z(n753) );
  CIVX2 U783 ( .A(cur_state_clk[1]), .Z(n1020) );
  CANR1XL U784 ( .A(lpi), .B(n753), .C(n751), .Z(n551) );
  CIVX2 U785 ( .A(cnt128_d[5]), .Z(n752) );
  CIVX2 U786 ( .A(lpi), .Z(n1002) );
  CNR2X1 U787 ( .A(n1002), .B(n751), .Z(n749) );
  COND2X1 U788 ( .A(n551), .B(n752), .C(n753), .D(n550), .Z(n536) );
  CIVX2 U789 ( .A(pkt_ctrl_d[0]), .Z(n554) );
  CIVX2 U790 ( .A(pkt_ctrl_d[3]), .Z(n553) );
  CIVX2 U791 ( .A(pkt_ctrl_d[2]), .Z(n552) );
  CNR8X1 U792 ( .A(n554), .B(pkt_ctrl_d[6]), .C(pkt_ctrl_d[5]), .D(
        pkt_ctrl_d[4]), .E(n553), .F(n552), .G(pkt_ctrl_d[1]), .H(
        pkt_ctrl_d[7]), .Z(n705) );
  CIVX2 U793 ( .A(cur_state[3]), .Z(n997) );
  CAN4X2 U794 ( .A(cur_state[0]), .B(cur_state[1]), .C(cur_state[2]), .D(n997), 
        .Z(n744) );
  CIVX2 U795 ( .A(cnt2_d), .Z(n769) );
  CIVX2 U796 ( .A(cur_state[0]), .Z(n699) );
  CNR3X2 U797 ( .A(n699), .B(cur_state[3]), .C(cur_state[2]), .Z(n1028) );
  CIVX2 U798 ( .A(n1028), .Z(n1008) );
  CNR2X1 U799 ( .A(cur_state[1]), .B(n1008), .Z(n639) );
  COND1X2 U800 ( .A(n774), .B(n769), .C(n910), .Z(pop_pkt) );
  CANR1XL U801 ( .A(lpi), .B(n740), .C(n751), .Z(n556) );
  COND2X1 U802 ( .A(n556), .B(n739), .C(n740), .D(n555), .Z(n538) );
  CND2X1 U803 ( .A(wakeuptimer_d[2]), .B(wakeuptimer_d[3]), .Z(n557) );
  CND2X1 U804 ( .A(wakeuptimer_d[1]), .B(wakeuptimer_d[0]), .Z(n563) );
  CNR2X1 U805 ( .A(n557), .B(n563), .Z(n576) );
  CNR2X1 U806 ( .A(n602), .B(n561), .Z(n559) );
  CENX1 U807 ( .A(n559), .B(n558), .Z(n560) );
  CNR2X2 U808 ( .A(n1020), .B(cur_state_clk[0]), .Z(n1014) );
  CAOR2XL U809 ( .A(wakeuptimer_d[5]), .B(n1020), .C(n560), .D(n1014), .Z(n529) );
  CEOX1 U810 ( .A(n561), .B(n602), .Z(n562) );
  CAOR2XL U811 ( .A(wakeuptimer_d[4]), .B(n1020), .C(n562), .D(n1014), .Z(n530) );
  CND2X1 U812 ( .A(n568), .B(wakeuptimer_d[2]), .Z(n564) );
  CEOX1 U813 ( .A(n565), .B(n564), .Z(n566) );
  CAOR2XL U814 ( .A(wakeuptimer_d[3]), .B(n1020), .C(n566), .D(n1014), .Z(n531) );
  CENX1 U815 ( .A(n568), .B(n567), .Z(n569) );
  CAOR2XL U816 ( .A(wakeuptimer_d[2]), .B(n1020), .C(n569), .D(n1014), .Z(n532) );
  CENX1 U817 ( .A(n570), .B(wakeuptimer_d[0]), .Z(n571) );
  CAOR2XL U818 ( .A(wakeuptimer_d[1]), .B(n1020), .C(n571), .D(n1014), .Z(n533) );
  CND2X1 U819 ( .A(wakeuptimer_d[8]), .B(wakeuptimer_d[9]), .Z(n592) );
  CND2X1 U820 ( .A(wakeuptimer_d[10]), .B(wakeuptimer_d[11]), .Z(n572) );
  CNR2X1 U821 ( .A(n592), .B(n572), .Z(n585) );
  CND2X1 U822 ( .A(wakeuptimer_d[12]), .B(wakeuptimer_d[13]), .Z(n614) );
  CND2X1 U823 ( .A(wakeuptimer_d[14]), .B(wakeuptimer_d[15]), .Z(n573) );
  CNR2X1 U824 ( .A(n614), .B(n573), .Z(n574) );
  CND2X1 U825 ( .A(n585), .B(n574), .Z(n578) );
  CND2X1 U826 ( .A(wakeuptimer_d[4]), .B(wakeuptimer_d[5]), .Z(n601) );
  CND2X1 U827 ( .A(wakeuptimer_d[6]), .B(wakeuptimer_d[7]), .Z(n575) );
  CNR2X1 U828 ( .A(n601), .B(n575), .Z(n577) );
  CND2X1 U829 ( .A(n577), .B(n576), .Z(n584) );
  CNR2X1 U830 ( .A(n578), .B(n584), .Z(n644) );
  CIVX2 U831 ( .A(n644), .Z(n632) );
  CIVX2 U832 ( .A(wakeuptimer_d[16]), .Z(n582) );
  CNR2X1 U833 ( .A(n632), .B(n582), .Z(n580) );
  CENX1 U834 ( .A(n580), .B(n579), .Z(n581) );
  CAOR2XL U835 ( .A(wakeuptimer_d[17]), .B(n1020), .C(n581), .D(n1014), .Z(
        n517) );
  CEOX1 U836 ( .A(n582), .B(n632), .Z(n583) );
  CAOR2XL U837 ( .A(wakeuptimer_d[16]), .B(n1020), .C(n583), .D(n1014), .Z(
        n518) );
  CIVX2 U838 ( .A(n584), .Z(n599) );
  CND2X1 U839 ( .A(n599), .B(n585), .Z(n589) );
  CIVX2 U840 ( .A(wakeuptimer_d[12]), .Z(n590) );
  CNR2X1 U841 ( .A(n589), .B(n590), .Z(n587) );
  CENX1 U842 ( .A(n587), .B(n586), .Z(n588) );
  CAOR2XL U843 ( .A(wakeuptimer_d[13]), .B(n1020), .C(n588), .D(n1014), .Z(
        n521) );
  CIVX2 U844 ( .A(n589), .Z(n616) );
  CENX1 U845 ( .A(n616), .B(n590), .Z(n591) );
  CAOR2XL U846 ( .A(wakeuptimer_d[12]), .B(n1020), .C(n591), .D(n1014), .Z(
        n522) );
  CIVX2 U847 ( .A(wakeuptimer_d[10]), .Z(n609) );
  CND2X1 U848 ( .A(n599), .B(n593), .Z(n610) );
  CEOX1 U849 ( .A(n609), .B(n610), .Z(n594) );
  CAOR2XL U850 ( .A(wakeuptimer_d[10]), .B(n1020), .C(n594), .D(n1014), .Z(
        n524) );
  CND2X1 U851 ( .A(n599), .B(wakeuptimer_d[8]), .Z(n595) );
  CEOX1 U852 ( .A(n596), .B(n595), .Z(n597) );
  CAOR2XL U853 ( .A(wakeuptimer_d[9]), .B(n1020), .C(n597), .D(n1014), .Z(n525) );
  CENX1 U854 ( .A(n599), .B(n598), .Z(n600) );
  CAOR2XL U855 ( .A(wakeuptimer_d[8]), .B(n1020), .C(n600), .D(n1014), .Z(n526) );
  CNR2X1 U856 ( .A(n602), .B(n601), .Z(n607) );
  CND2X1 U857 ( .A(n607), .B(wakeuptimer_d[6]), .Z(n603) );
  CEOX1 U858 ( .A(n604), .B(n603), .Z(n605) );
  CAOR2XL U859 ( .A(wakeuptimer_d[7]), .B(n1020), .C(n605), .D(n1014), .Z(n527) );
  CENX1 U860 ( .A(n607), .B(n606), .Z(n608) );
  CAOR2XL U861 ( .A(wakeuptimer_d[6]), .B(n1020), .C(n608), .D(n1014), .Z(n528) );
  CNR2X1 U862 ( .A(n610), .B(n609), .Z(n612) );
  CENX1 U863 ( .A(n612), .B(n611), .Z(n613) );
  CAOR2XL U864 ( .A(wakeuptimer_d[11]), .B(n1020), .C(n613), .D(n1014), .Z(
        n523) );
  CIVX2 U865 ( .A(wakeuptimer_d[14]), .Z(n620) );
  CND2X1 U866 ( .A(n616), .B(n615), .Z(n621) );
  CEOX1 U867 ( .A(n620), .B(n621), .Z(n617) );
  CAOR2XL U868 ( .A(wakeuptimer_d[14]), .B(n1020), .C(n617), .D(n1014), .Z(
        n520) );
  CND2X1 U869 ( .A(wakeuptimer_d[16]), .B(wakeuptimer_d[17]), .Z(n626) );
  CNR2X1 U870 ( .A(n632), .B(n626), .Z(n635) );
  CENX1 U871 ( .A(n635), .B(n618), .Z(n619) );
  CAOR2XL U872 ( .A(wakeuptimer_d[18]), .B(n1020), .C(n619), .D(n1014), .Z(
        n516) );
  CNR2X1 U873 ( .A(n621), .B(n620), .Z(n623) );
  CENX1 U874 ( .A(n623), .B(n622), .Z(n624) );
  CAOR2XL U875 ( .A(wakeuptimer_d[15]), .B(n1020), .C(n624), .D(n1014), .Z(
        n519) );
  CIVX2 U876 ( .A(wakeuptimer_d[24]), .Z(n641) );
  CND2X1 U877 ( .A(wakeuptimer_d[18]), .B(wakeuptimer_d[19]), .Z(n625) );
  CNR2X1 U878 ( .A(n626), .B(n625), .Z(n630) );
  CND2X1 U879 ( .A(wakeuptimer_d[20]), .B(wakeuptimer_d[21]), .Z(n667) );
  CND2X1 U880 ( .A(wakeuptimer_d[22]), .B(wakeuptimer_d[23]), .Z(n627) );
  CNR2X1 U881 ( .A(n667), .B(n627), .Z(n628) );
  CND2X1 U882 ( .A(n630), .B(n628), .Z(n643) );
  CNR2X1 U883 ( .A(n632), .B(n643), .Z(n649) );
  CIVX2 U884 ( .A(n649), .Z(n661) );
  CEOX1 U885 ( .A(n641), .B(n661), .Z(n629) );
  CAOR2XL U886 ( .A(wakeuptimer_d[24]), .B(n1020), .C(n629), .D(n1014), .Z(
        n510) );
  CNR2X1 U887 ( .A(n632), .B(n631), .Z(n653) );
  CIVX2 U888 ( .A(n653), .Z(n668) );
  CEOX1 U889 ( .A(n633), .B(n668), .Z(n634) );
  CAOR2XL U890 ( .A(wakeuptimer_d[20]), .B(n1020), .C(n634), .D(n1014), .Z(
        n514) );
  CND2X1 U891 ( .A(n635), .B(wakeuptimer_d[18]), .Z(n636) );
  CEOX1 U892 ( .A(n637), .B(n636), .Z(n638) );
  CAOR2XL U893 ( .A(wakeuptimer_d[19]), .B(n1020), .C(n638), .D(n1014), .Z(
        n515) );
  CIVDX2 U894 ( .A(n639), .Z0(n910), .Z1(pop_crc) );
  CMX2X1 U895 ( .A0(bvalid[1]), .A1(bvalidin[1]), .S(n548), .Z(n495) );
  CIVXL U896 ( .A(cur_state_clk[0]), .Z(n640) );
  CNR2X1 U897 ( .A(n640), .B(n1020), .Z(gclk_en) );
  CNR2X1 U898 ( .A(n641), .B(n651), .Z(n659) );
  CND2X1 U899 ( .A(n659), .B(wakeuptimer_d[26]), .Z(n642) );
  CNR2X1 U900 ( .A(n643), .B(n642), .Z(n645) );
  CAN2X1 U901 ( .A(n645), .B(n644), .Z(n647) );
  CAOR2XL U902 ( .A(wakeuptimer_d[27]), .B(n1020), .C(n646), .D(n1014), .Z(
        n507) );
  CHA1X1 U903 ( .A(wakeuptimer_d[27]), .B(n647), .CO(n657), .S(n646) );
  CAOR2XL U904 ( .A(wakeuptimer_d[28]), .B(n1020), .C(n648), .D(n1014), .Z(
        n506) );
  CND2X1 U905 ( .A(n649), .B(wakeuptimer_d[24]), .Z(n650) );
  CEOX1 U906 ( .A(n651), .B(n650), .Z(n652) );
  CAOR2XL U907 ( .A(wakeuptimer_d[25]), .B(n1020), .C(n652), .D(n1014), .Z(
        n509) );
  CND2X1 U908 ( .A(n653), .B(wakeuptimer_d[20]), .Z(n654) );
  CEOX1 U909 ( .A(n655), .B(n654), .Z(n656) );
  CAOR2XL U910 ( .A(wakeuptimer_d[21]), .B(n1020), .C(n656), .D(n1014), .Z(
        n513) );
  CHA1X1 U911 ( .A(wakeuptimer_d[28]), .B(n657), .CO(n665), .S(n648) );
  CAOR2XL U912 ( .A(wakeuptimer_d[29]), .B(n1020), .C(n658), .D(n1014), .Z(
        n505) );
  CNR2X1 U913 ( .A(n661), .B(n660), .Z(n663) );
  CENX1 U914 ( .A(n663), .B(n662), .Z(n664) );
  CAOR2XL U915 ( .A(wakeuptimer_d[26]), .B(n1020), .C(n664), .D(n1014), .Z(
        n508) );
  CHA1X1 U916 ( .A(wakeuptimer_d[29]), .B(n665), .CO(n670), .S(n658) );
  CAOR2XL U917 ( .A(wakeuptimer_d[30]), .B(n1020), .C(n666), .D(n1014), .Z(
        n504) );
  CNR2X1 U918 ( .A(n668), .B(n667), .Z(n673) );
  CENX1 U919 ( .A(n673), .B(n681), .Z(n669) );
  CAOR2XL U920 ( .A(wakeuptimer_d[22]), .B(n1020), .C(n669), .D(n1014), .Z(
        n512) );
  CHA1X1 U921 ( .A(wakeuptimer_d[30]), .B(n670), .CO(n671), .S(n666) );
  CEOX1 U922 ( .A(wakeuptimer_d[31]), .B(n671), .Z(n672) );
  CAOR2XL U923 ( .A(wakeuptimer_d[31]), .B(n1020), .C(n672), .D(n1014), .Z(
        n503) );
  CND2X1 U924 ( .A(n673), .B(wakeuptimer_d[22]), .Z(n674) );
  CEOX1 U925 ( .A(n675), .B(n674), .Z(n676) );
  CAOR2XL U926 ( .A(wakeuptimer_d[23]), .B(n1020), .C(n676), .D(n1014), .Z(
        n511) );
  CND2X1 U927 ( .A(n750), .B(cnt128_d[6]), .Z(n1017) );
  CNR2X1 U928 ( .A(lpi), .B(n751), .Z(n760) );
  COR4X1 U929 ( .A(cnt128_d[2]), .B(cnt128_d[3]), .C(cnt128_d[4]), .D(
        cnt128_d[5]), .Z(n677) );
  COR4X1 U930 ( .A(cnt128_d[1]), .B(cnt128_d[0]), .C(cnt128_d[6]), .D(n677), 
        .Z(n678) );
  CNR4X1 U931 ( .A(wakeuptimer_d[13]), .B(wakeuptimer_d[15]), .C(
        wakeuptimer_d[17]), .D(wakeuptimer_d[19]), .Z(n680) );
  CNR2X1 U932 ( .A(wakeuptimer_d[9]), .B(wakeuptimer_d[11]), .Z(n679) );
  CND4X1 U933 ( .A(n680), .B(wakeuptimer_d[2]), .C(wakeuptimer_d[0]), .D(n679), 
        .Z(n694) );
  CNR4X1 U934 ( .A(wakeuptimer_d[30]), .B(wakeuptimer_d[29]), .C(
        wakeuptimer_d[8]), .D(wakeuptimer_d[28]), .Z(n683) );
  CNR2X1 U935 ( .A(wakeuptimer_d[18]), .B(wakeuptimer_d[20]), .Z(n682) );
  CND4X1 U936 ( .A(n683), .B(n682), .C(wakeuptimer_d[6]), .D(n681), .Z(n693)
         );
  CAN4X1 U937 ( .A(n684), .B(wakeuptimer_d[7]), .C(wakeuptimer_d[5]), .D(
        wakeuptimer_d[3]), .Z(n686) );
  CNR2X1 U938 ( .A(wakeuptimer_d[25]), .B(wakeuptimer_d[27]), .Z(n685) );
  CND4X1 U939 ( .A(n686), .B(wakeuptimer_d[4]), .C(wakeuptimer_d[1]), .D(n685), 
        .Z(n692) );
  CNR2X1 U940 ( .A(wakeuptimer_d[23]), .B(wakeuptimer_d[21]), .Z(n690) );
  CNR2X1 U941 ( .A(wakeuptimer_d[10]), .B(wakeuptimer_d[12]), .Z(n689) );
  CNR2X1 U942 ( .A(wakeuptimer_d[14]), .B(wakeuptimer_d[16]), .Z(n688) );
  CNR2X1 U943 ( .A(wakeuptimer_d[24]), .B(wakeuptimer_d[26]), .Z(n687) );
  CND4X1 U944 ( .A(n690), .B(n689), .C(n688), .D(n687), .Z(n691) );
  CNR4X1 U945 ( .A(n694), .B(n693), .C(n692), .D(n691), .Z(n1021) );
  CND2X1 U946 ( .A(cur_state[2]), .B(n997), .Z(n695) );
  CNR3X2 U947 ( .A(cur_state[1]), .B(cur_state[0]), .C(n695), .Z(n821) );
  CANR3X2 U948 ( .A(n1017), .B(n549), .C(n1021), .D(n696), .Z(n702) );
  CIVX2 U949 ( .A(idlernd_cnt_d[1]), .Z(n748) );
  CND3X1 U950 ( .A(cur_state[3]), .B(cur_state[2]), .C(n699), .Z(n911) );
  CNR2XL U951 ( .A(n911), .B(cur_state[1]), .Z(n746) );
  CIVX2 U952 ( .A(n746), .Z(n822) );
  CNR2X1 U953 ( .A(cur_state[1]), .B(cur_state[0]), .Z(n697) );
  CND2IX1 U954 ( .B(cur_state[2]), .A(n697), .Z(n998) );
  CNR2X1 U955 ( .A(n997), .B(n998), .Z(n743) );
  CND2IX1 U956 ( .B(\clks.rst ), .A(n743), .Z(n698) );
  COND4CX1 U957 ( .A(idlernd_cnt_d[0]), .B(n748), .C(n822), .D(n698), .Z(n700)
         );
  CND3X2 U958 ( .A(cur_state[1]), .B(cur_state[3]), .C(cur_state[2]), .Z(n1000) );
  CNR2X2 U959 ( .A(n699), .B(n1000), .Z(n771) );
  CIVX2 U960 ( .A(n771), .Z(n1039) );
  CND2X1 U961 ( .A(n998), .B(n911), .Z(n864) );
  CNR2X2 U962 ( .A(n821), .B(n864), .Z(n1031) );
  CND2X2 U963 ( .A(n1031), .B(n1008), .Z(n1022) );
  CIVX2 U964 ( .A(n744), .Z(n1033) );
  CND2X2 U965 ( .A(n719), .B(n1033), .Z(n1030) );
  CIVX2 U966 ( .A(n1030), .Z(n1024) );
  COR2X1 U967 ( .A(n700), .B(n1024), .Z(n701) );
  CNR2X2 U968 ( .A(n702), .B(n701), .Z(n999) );
  CAN4X1 U969 ( .A(bvalid[5]), .B(bvalid[3]), .C(bvalid[4]), .D(bvalid[6]), 
        .Z(n703) );
  CND2IX1 U970 ( .B(bvalid[0]), .A(n703), .Z(n729) );
  CIVX2 U971 ( .A(n729), .Z(n711) );
  COND1X1 U972 ( .A(bvalid[2]), .B(n726), .C(n711), .Z(n710) );
  CAN4X1 U973 ( .A(bvalid[2]), .B(bvalid[1]), .C(bvalid[0]), .D(n703), .Z(n720) );
  COR4X1 U974 ( .A(bvalid[2]), .B(bvalid[1]), .C(bvalid[3]), .D(bvalid[0]), 
        .Z(n704) );
  CIVX2 U975 ( .A(bvalid[6]), .Z(n731) );
  COR2X1 U976 ( .A(n704), .B(n731), .Z(n725) );
  CNR3X1 U977 ( .A(bvalid[5]), .B(bvalid[4]), .C(n704), .Z(n732) );
  CNR2X1 U978 ( .A(n721), .B(n732), .Z(n709) );
  COND1XL U979 ( .A(n769), .B(n775), .C(n709), .Z(n706) );
  CND2X2 U980 ( .A(n705), .B(n744), .Z(n715) );
  CIVX4 U981 ( .A(n776), .Z(n809) );
  CND2XL U982 ( .A(n706), .B(n809), .Z(n707) );
  COND3XL U983 ( .A(n999), .B(n997), .C(n1000), .D(n707), .Z(nxt_state[3]) );
  CND2X1 U984 ( .A(xgmii_txc_d[2]), .B(n1024), .Z(n708) );
  CNR2X1 U985 ( .A(crc_bvalid_d[1]), .B(n1039), .Z(n1023) );
  CIVX2 U986 ( .A(n1023), .Z(n788) );
  CND3XL U987 ( .A(n708), .B(n763), .C(n788), .Z(\xgmii_tx.TXC [2]) );
  CND2X1 U988 ( .A(n775), .B(n709), .Z(n716) );
  CND2IX1 U989 ( .B(n710), .A(n769), .Z(n717) );
  CND2XL U990 ( .A(n716), .B(n717), .Z(n757) );
  CANR3XL U991 ( .A(crc_bvalid_d[1]), .B(n757), .C(n720), .D(n721), .Z(n714)
         );
  CND2X1 U992 ( .A(bvalid[2]), .B(n711), .Z(n712) );
  CNR2X1 U993 ( .A(n769), .B(n712), .Z(n803) );
  CND2X1 U994 ( .A(bvalid[1]), .B(n803), .Z(n723) );
  CND2XL U995 ( .A(n776), .B(crc_bvalid_d[1]), .Z(n713) );
  COND4CXL U996 ( .A(n714), .B(n723), .C(n776), .D(n713), .Z(n500) );
  COND4CX1 U997 ( .A(bvalid[7]), .B(n716), .C(n715), .D(n1030), .Z(n779) );
  CND2X2 U998 ( .A(n809), .B(n720), .Z(n770) );
  CND2X2 U999 ( .A(n809), .B(n721), .Z(n807) );
  CND2IX1 U1000 ( .B(n807), .A(bvalid[4]), .Z(n778) );
  CND2X2 U1001 ( .A(n770), .B(n778), .Z(n756) );
  CAOR2X2 U1002 ( .A(crc_left_d[31]), .B(n547), .C(crc_tx_d[31]), .D(n756), 
        .Z(n384) );
  CAOR2X2 U1003 ( .A(crc_left_d[25]), .B(n547), .C(crc_tx_d[25]), .D(n756), 
        .Z(n390) );
  CAOR2X2 U1004 ( .A(crc_left_d[26]), .B(n993), .C(crc_tx_d[26]), .D(n756), 
        .Z(n389) );
  CAOR2X2 U1005 ( .A(crc_left_d[28]), .B(n993), .C(crc_tx_d[28]), .D(n756), 
        .Z(n387) );
  CAOR2X2 U1006 ( .A(crc_left_d[24]), .B(n547), .C(crc_tx_d[24]), .D(n756), 
        .Z(n391) );
  CAOR2X2 U1007 ( .A(crc_left_d[30]), .B(n547), .C(crc_tx_d[30]), .D(n756), 
        .Z(n385) );
  CAOR2X2 U1008 ( .A(crc_left_d[27]), .B(n547), .C(crc_tx_d[27]), .D(n756), 
        .Z(n388) );
  CAOR2X2 U1009 ( .A(crc_left_d[29]), .B(n547), .C(crc_tx_d[29]), .D(n756), 
        .Z(n386) );
  CNR2X1 U1010 ( .A(n776), .B(n723), .Z(n841) );
  CIVX2 U1011 ( .A(n841), .Z(n724) );
  COND1X2 U1012 ( .A(bvalid[4]), .B(n807), .C(n724), .Z(n942) );
  COR2X2 U1013 ( .A(n942), .B(n756), .Z(n802) );
  CNR3X1 U1014 ( .A(bvalid[5]), .B(bvalid[4]), .C(n725), .Z(n808) );
  CNR2X1 U1015 ( .A(n776), .B(n727), .Z(n728) );
  CIVX2 U1016 ( .A(n734), .Z(n992) );
  CAOR2X2 U1017 ( .A(crc_left_d[15]), .B(n547), .C(crc_tx_d[15]), .D(n992), 
        .Z(n400) );
  CAOR2X2 U1018 ( .A(crc_left_d[14]), .B(n547), .C(crc_tx_d[14]), .D(n992), 
        .Z(n401) );
  CAOR2X2 U1019 ( .A(crc_left_d[12]), .B(n547), .C(crc_tx_d[12]), .D(n992), 
        .Z(n403) );
  CAOR2X2 U1020 ( .A(crc_left_d[13]), .B(n547), .C(crc_tx_d[13]), .D(n992), 
        .Z(n402) );
  CNR3XL U1021 ( .A(bvalid[2]), .B(bvalid[1]), .C(n729), .Z(n730) );
  CND3X1 U1022 ( .A(n809), .B(n730), .C(cnt2_d), .Z(n805) );
  CND2X1 U1023 ( .A(n805), .B(n810), .Z(n733) );
  CNIVX4 U1024 ( .A(n733), .Z(n985) );
  CIVX2 U1025 ( .A(n985), .Z(n871) );
  CND2X2 U1026 ( .A(n871), .B(n734), .Z(n735) );
  CAOR2XL U1027 ( .A(n547), .B(crc_left_d[0]), .C(n735), .D(crc_tx_d[0]), .Z(
        n415) );
  CNR2X1 U1028 ( .A(gclk_en_d), .B(n546), .Z(\xgmii_tx.TXCLK ) );
  CND2IXL U1029 ( .B(IDC_cnt_d[0]), .A(crc_bvalid_d[0]), .Z(n1034) );
  CND2XL U1030 ( .A(crc_bvalid_d[1]), .B(n1034), .Z(n736) );
  COND3XL U1031 ( .A(crc_bvalid_d[1]), .B(n1034), .C(n771), .D(n736), .Z(n737)
         );
  CENX1 U1032 ( .A(IDC_cnt_d[1]), .B(n737), .Z(n498) );
  CAOR1X1 U1033 ( .A(n1024), .B(xgmii_txc_d[0]), .C(n1022), .Z(
        \xgmii_tx.TXC [0]) );
  CND2XL U1034 ( .A(n738), .B(n749), .Z(n742) );
  CANR4CXL U1035 ( .A(n740), .B(n739), .C(lpi), .D(n751), .Z(n741) );
  CIVX2 U1036 ( .A(n749), .Z(n767) );
  CMXI2X1 U1037 ( .A0(n767), .A1(n759), .S(cnt128_d[0]), .Z(n541) );
  CIVXL U1038 ( .A(cur_state[1]), .Z(n1010) );
  COND1XL U1039 ( .A(n1010), .B(n911), .C(n1008), .Z(n924) );
  COR4X1 U1040 ( .A(n744), .B(n821), .C(n743), .D(n924), .Z(n745) );
  CNR2X1 U1041 ( .A(n1024), .B(n745), .Z(n1035) );
  CND2X1 U1042 ( .A(n746), .B(idlernd_cnt_d[0]), .Z(n1004) );
  CNR2X1 U1043 ( .A(idlernd_cnt_d[0]), .B(n822), .Z(n1036) );
  CANR1XL U1044 ( .A(n1036), .B(n748), .C(n771), .Z(n747) );
  COND4CX1 U1045 ( .A(n1035), .B(n1004), .C(n748), .D(n747), .Z(n416) );
  CND2XL U1046 ( .A(n750), .B(n749), .Z(n755) );
  CANR4CXL U1047 ( .A(n753), .B(n752), .C(lpi), .D(n751), .Z(n754) );
  CMXI2X1 U1048 ( .A0(n755), .A1(n754), .S(cnt128_d[6]), .Z(n535) );
  CANR4CXL U1049 ( .A(n776), .B(n757), .C(crc_bvalid_d[0]), .D(n756), .Z(n758)
         );
  CIVX2 U1050 ( .A(n941), .Z(n877) );
  CND2X1 U1051 ( .A(n758), .B(n877), .Z(n501) );
  COND1XL U1052 ( .A(cnt128_d[0]), .B(n1002), .C(n759), .Z(n764) );
  CNR2X1 U1053 ( .A(cnt128_d[1]), .B(n767), .Z(n765) );
  CAOR1XL U1054 ( .A(n1021), .B(cur_state_clk[1]), .C(cur_state_clk[0]), .Z(
        n761) );
  CANR1XL U1055 ( .A(lpi), .B(gclk_en), .C(n760), .Z(n762) );
  COND4CX1 U1056 ( .A(\clks.rst ), .B(n1020), .C(n761), .D(n762), .Z(n1016) );
  COND1XL U1057 ( .A(n1016), .B(gclk_en), .C(n762), .Z(n542) );
  CMX2X1 U1058 ( .A0(xgmii_tx_hold[63]), .A1(pkt_data[63]), .S(n548), .Z(n496)
         );
  CMX2X1 U1059 ( .A0(bvalid[4]), .A1(bvalidin[4]), .S(n548), .Z(n492) );
  CMX2X1 U1060 ( .A0(bvalid[0]), .A1(bvalidin[0]), .S(n548), .Z(n502) );
  CMX2X1 U1061 ( .A0(bvalid[2]), .A1(bvalidin[2]), .S(n548), .Z(n494) );
  CNR2X1 U1062 ( .A(n788), .B(crc_bvalid_d[0]), .Z(n950) );
  CIVX2 U1063 ( .A(n950), .Z(n980) );
  CND2X1 U1064 ( .A(n763), .B(n980), .Z(n880) );
  CAOR1X1 U1065 ( .A(n1024), .B(xgmii_txc_d[1]), .C(n880), .Z(
        \xgmii_tx.TXC [1]) );
  COND1XL U1066 ( .A(n765), .B(n764), .C(cnt128_d[2]), .Z(n766) );
  COND11X1 U1067 ( .A(cnt128_d[2]), .B(n768), .C(n767), .D(n766), .Z(n539) );
  CAOR2X2 U1068 ( .A(n547), .B(crc_left_d[18]), .C(n802), .D(crc_tx_d[18]), 
        .Z(n397) );
  CAOR2X2 U1069 ( .A(n547), .B(crc_left_d[22]), .C(n802), .D(crc_tx_d[22]), 
        .Z(n393) );
  CAOR2X2 U1070 ( .A(n547), .B(crc_left_d[20]), .C(n802), .D(crc_tx_d[20]), 
        .Z(n395) );
  CAOR2X2 U1071 ( .A(n547), .B(crc_left_d[21]), .C(n802), .D(crc_tx_d[21]), 
        .Z(n394) );
  CAOR2X2 U1072 ( .A(n547), .B(crc_left_d[17]), .C(n802), .D(crc_tx_d[17]), 
        .Z(n398) );
  CAOR2X2 U1073 ( .A(n547), .B(crc_left_d[19]), .C(n802), .D(crc_tx_d[19]), 
        .Z(n396) );
  CANR2XL U1074 ( .A(crc_tx_d[28]), .B(n942), .C(n941), .D(crc_tx_d[20]), .Z(
        n783) );
  CANR1X2 U1075 ( .A(n770), .B(n774), .C(n769), .Z(n943) );
  CIVX2 U1076 ( .A(crc_bvalid_d[1]), .Z(n772) );
  CND2X1 U1077 ( .A(n771), .B(crc_bvalid_d[0]), .Z(n1026) );
  CNR2X1 U1078 ( .A(n772), .B(n1026), .Z(n789) );
  CIVX2 U1079 ( .A(n1009), .Z(n969) );
  CANR2XL U1080 ( .A(n943), .B(xgmii_tx_hold[4]), .C(n969), .D(crc_left_d[4]), 
        .Z(n782) );
  CANR1XL U1081 ( .A(crc_tx_d[12]), .B(n985), .C(n979), .Z(n781) );
  CANR4CX1 U1082 ( .A(n776), .B(n775), .C(n774), .D(cnt2_d), .Z(n777) );
  CIVX2 U1083 ( .A(n777), .Z(n806) );
  CND2X1 U1084 ( .A(n806), .B(n778), .Z(n945) );
  CANR2X1 U1085 ( .A(xgmii_tx_hold[36]), .B(n945), .C(xgmii_txd_d[28]), .D(
        n986), .Z(n780) );
  CND4X1 U1086 ( .A(n783), .B(n782), .C(n781), .D(n780), .Z(\xgmii_tx.TXD [28]) );
  CANR2XL U1087 ( .A(crc_tx_d[30]), .B(n942), .C(n941), .D(crc_tx_d[22]), .Z(
        n787) );
  CANR2XL U1088 ( .A(n943), .B(xgmii_tx_hold[6]), .C(n969), .D(crc_left_d[6]), 
        .Z(n786) );
  CANR1XL U1089 ( .A(crc_tx_d[14]), .B(n985), .C(n979), .Z(n785) );
  CANR2X1 U1090 ( .A(xgmii_tx_hold[38]), .B(n945), .C(xgmii_txd_d[30]), .D(
        n986), .Z(n784) );
  CND4X1 U1091 ( .A(n787), .B(n786), .C(n785), .D(n784), .Z(\xgmii_tx.TXD [30]) );
  CANR2XL U1092 ( .A(crc_tx_d[24]), .B(n942), .C(n941), .D(crc_tx_d[16]), .Z(
        n793) );
  CIVXL U1093 ( .A(n864), .Z(n837) );
  CND2X1 U1094 ( .A(n837), .B(n788), .Z(n903) );
  CANR3X1 U1095 ( .A(n943), .B(xgmii_tx_hold[0]), .C(n979), .D(n903), .Z(n792)
         );
  CIVDX1 U1096 ( .A(n789), .Z0(n1009), .Z1(n904) );
  CANR2X1 U1097 ( .A(n904), .B(crc_left_d[0]), .C(crc_tx_d[8]), .D(n985), .Z(
        n791) );
  CANR2X1 U1098 ( .A(xgmii_tx_hold[32]), .B(n945), .C(xgmii_txd_d[24]), .D(
        n986), .Z(n790) );
  CND4X1 U1099 ( .A(n793), .B(n792), .C(n791), .D(n790), .Z(\xgmii_tx.TXD [24]) );
  CNR2X1 U1100 ( .A(n821), .B(n903), .Z(n853) );
  CANR2XL U1101 ( .A(crc_tx_d[26]), .B(n942), .C(n941), .D(crc_tx_d[18]), .Z(
        n797) );
  CAOR2X2 U1102 ( .A(n943), .B(xgmii_tx_hold[2]), .C(crc_tx_d[10]), .D(n985), 
        .Z(n794) );
  CANR3X1 U1103 ( .A(n904), .B(crc_left_d[2]), .C(n979), .D(n794), .Z(n796) );
  CANR2X1 U1104 ( .A(xgmii_tx_hold[34]), .B(n945), .C(xgmii_txd_d[26]), .D(
        n986), .Z(n795) );
  CND4X1 U1105 ( .A(n853), .B(n797), .C(n796), .D(n795), .Z(\xgmii_tx.TXD [26]) );
  CANR2XL U1106 ( .A(crc_tx_d[25]), .B(n942), .C(n941), .D(crc_tx_d[17]), .Z(
        n801) );
  CANR2XL U1107 ( .A(n943), .B(xgmii_tx_hold[1]), .C(crc_tx_d[9]), .D(n985), 
        .Z(n800) );
  CNR2X2 U1108 ( .A(crc_bvalid_d[1]), .B(n1026), .Z(n925) );
  CANR3X1 U1109 ( .A(n904), .B(crc_left_d[1]), .C(n925), .D(n880), .Z(n799) );
  CANR2X1 U1110 ( .A(xgmii_tx_hold[33]), .B(n945), .C(xgmii_txd_d[25]), .D(
        n986), .Z(n798) );
  CND4X1 U1111 ( .A(n801), .B(n800), .C(n799), .D(n798), .Z(\xgmii_tx.TXD [25]) );
  CAOR2X2 U1112 ( .A(n993), .B(crc_left_d[16]), .C(n802), .D(crc_tx_d[16]), 
        .Z(n399) );
  CAOR2X2 U1113 ( .A(n547), .B(crc_left_d[23]), .C(n802), .D(crc_tx_d[23]), 
        .Z(n392) );
  CANR1X1 U1114 ( .A(n809), .B(n803), .C(n943), .Z(n804) );
  CNIVX2 U1115 ( .A(n804), .Z(n991) );
  CND2X2 U1116 ( .A(n991), .B(n805), .Z(n923) );
  CANR2X1 U1117 ( .A(xgmii_txd_d[3]), .B(n986), .C(xgmii_tx_hold[27]), .D(n923), .Z(n815) );
  CND2X2 U1118 ( .A(n807), .B(n806), .Z(n905) );
  CANR1X1 U1119 ( .A(n809), .B(n808), .C(n905), .Z(n831) );
  CND2X1 U1120 ( .A(n831), .B(n810), .Z(n929) );
  CANR1XL U1121 ( .A(n925), .B(crc_left_d[11]), .C(n924), .Z(n812) );
  CANR2X1 U1122 ( .A(n979), .B(crc_left_d[19]), .C(n904), .D(crc_left_d[27]), 
        .Z(n811) );
  COND3X1 U1123 ( .A(n980), .B(n972), .C(n812), .D(n811), .Z(n813) );
  CANR1XL U1124 ( .A(n929), .B(xgmii_tx_hold[59]), .C(n813), .Z(n814) );
  CND2X1 U1125 ( .A(n815), .B(n814), .Z(\xgmii_tx.TXD [3]) );
  CANR2X1 U1126 ( .A(xgmii_txd_d[5]), .B(n986), .C(xgmii_tx_hold[29]), .D(n923), .Z(n820) );
  CANR1XL U1127 ( .A(n925), .B(crc_left_d[13]), .C(n924), .Z(n817) );
  CANR2X1 U1128 ( .A(n979), .B(crc_left_d[21]), .C(n904), .D(crc_left_d[29]), 
        .Z(n816) );
  COND3X1 U1129 ( .A(n980), .B(n952), .C(n817), .D(n816), .Z(n818) );
  CANR1XL U1130 ( .A(n929), .B(xgmii_tx_hold[61]), .C(n818), .Z(n819) );
  CND2X1 U1131 ( .A(n820), .B(n819), .Z(\xgmii_tx.TXD [5]) );
  CND2X1 U1132 ( .A(xgmii_tx_hold[57]), .B(n929), .Z(n828) );
  CANR2X1 U1133 ( .A(xgmii_txd_d[1]), .B(n986), .C(xgmii_tx_hold[25]), .D(n923), .Z(n827) );
  CANR3XL U1134 ( .A(n904), .B(crc_left_d[25]), .C(n1028), .D(n821), .Z(n824)
         );
  CANR2X1 U1135 ( .A(n979), .B(crc_left_d[17]), .C(n925), .D(crc_left_d[9]), 
        .Z(n823) );
  CANR1XL U1136 ( .A(n950), .B(crc_left_d[1]), .C(n825), .Z(n826) );
  CANR2X1 U1137 ( .A(n904), .B(crc_left_d[18]), .C(n925), .D(crc_left_d[2]), 
        .Z(n830) );
  CANR2X1 U1138 ( .A(n979), .B(crc_left_d[10]), .C(crc_tx_d[26]), .D(n985), 
        .Z(n829) );
  CAN4X1 U1139 ( .A(n1031), .B(n830), .C(n829), .D(n980), .Z(n833) );
  CIVX2 U1140 ( .A(n831), .Z(n987) );
  CANR2X1 U1141 ( .A(xgmii_tx_hold[50]), .B(n987), .C(xgmii_txd_d[10]), .D(
        n986), .Z(n832) );
  COND3X1 U1142 ( .A(n991), .B(n834), .C(n833), .D(n832), .Z(
        \xgmii_tx.TXD [10]) );
  CANR2X1 U1143 ( .A(crc_left_d[16]), .B(n904), .C(crc_left_d[0]), .D(n925), 
        .Z(n836) );
  CANR2X1 U1144 ( .A(n979), .B(crc_left_d[8]), .C(crc_tx_d[24]), .D(n985), .Z(
        n835) );
  CAN4X1 U1145 ( .A(n837), .B(n836), .C(n835), .D(n980), .Z(n839) );
  CANR2X1 U1146 ( .A(xgmii_tx_hold[48]), .B(n987), .C(xgmii_txd_d[8]), .D(n986), .Z(n838) );
  COND3X1 U1147 ( .A(n991), .B(n840), .C(n839), .D(n838), .Z(\xgmii_tx.TXD [8]) );
  CNR2X1 U1148 ( .A(n943), .B(n841), .Z(n909) );
  CIVX2 U1149 ( .A(n979), .Z(n932) );
  CANR2X1 U1150 ( .A(n904), .B(crc_left_d[14]), .C(crc_tx_d[22]), .D(n985), 
        .Z(n842) );
  CIVX2 U1151 ( .A(n925), .Z(n983) );
  COND3X1 U1152 ( .A(n932), .B(n982), .C(n842), .D(n983), .Z(n843) );
  CANR1XL U1153 ( .A(crc_tx_d[30]), .B(n941), .C(n843), .Z(n845) );
  CANR2X1 U1154 ( .A(xgmii_tx_hold[46]), .B(n905), .C(xgmii_txd_d[22]), .D(
        n986), .Z(n844) );
  COND3X1 U1155 ( .A(n909), .B(n846), .C(n845), .D(n844), .Z(
        \xgmii_tx.TXD [22]) );
  CANR2X1 U1156 ( .A(n904), .B(crc_left_d[12]), .C(crc_tx_d[20]), .D(n985), 
        .Z(n847) );
  COND3X1 U1157 ( .A(n932), .B(n964), .C(n847), .D(n983), .Z(n848) );
  CANR1XL U1158 ( .A(crc_tx_d[28]), .B(n941), .C(n848), .Z(n850) );
  CANR2X1 U1159 ( .A(xgmii_tx_hold[44]), .B(n905), .C(xgmii_txd_d[20]), .D(
        n986), .Z(n849) );
  COND3X1 U1160 ( .A(n909), .B(n851), .C(n850), .D(n849), .Z(
        \xgmii_tx.TXD [20]) );
  CANR2X1 U1161 ( .A(n941), .B(crc_tx_d[26]), .C(crc_tx_d[18]), .D(n985), .Z(
        n852) );
  COND3X1 U1162 ( .A(n1009), .B(n859), .C(n853), .D(n852), .Z(n854) );
  CANR1XL U1163 ( .A(n979), .B(crc_left_d[2]), .C(n854), .Z(n856) );
  CANR2X1 U1164 ( .A(xgmii_tx_hold[42]), .B(n905), .C(xgmii_txd_d[18]), .D(
        n986), .Z(n855) );
  COND3X1 U1165 ( .A(n909), .B(n857), .C(n856), .D(n855), .Z(
        \xgmii_tx.TXD [18]) );
  CND2X1 U1166 ( .A(xgmii_tx_hold[58]), .B(n929), .Z(n863) );
  CANR2X1 U1167 ( .A(xgmii_txd_d[2]), .B(n986), .C(xgmii_tx_hold[26]), .D(n923), .Z(n862) );
  CANR2XL U1168 ( .A(n904), .B(crc_left_d[26]), .C(n950), .D(crc_left_d[2]), 
        .Z(n858) );
  COND3XL U1169 ( .A(n859), .B(n983), .C(n1031), .D(n858), .Z(n860) );
  CANR1XL U1170 ( .A(n979), .B(crc_left_d[18]), .C(n860), .Z(n861) );
  CANR2X1 U1171 ( .A(xgmii_tx_hold[56]), .B(n929), .C(xgmii_txd_d[0]), .D(n986), .Z(n869) );
  CANR3XL U1172 ( .A(crc_left_d[8]), .B(n925), .C(pop_crc), .D(n864), .Z(n866)
         );
  CANR2X1 U1173 ( .A(crc_left_d[16]), .B(n979), .C(crc_left_d[24]), .D(n904), 
        .Z(n865) );
  COND3X1 U1174 ( .A(n901), .B(n980), .C(n866), .D(n865), .Z(n867) );
  CANR1XL U1175 ( .A(n923), .B(xgmii_tx_hold[24]), .C(n867), .Z(n868) );
  CND2X1 U1176 ( .A(n869), .B(n868), .Z(\xgmii_tx.TXD [0]) );
  CANR2X1 U1177 ( .A(n979), .B(crc_left_d[9]), .C(n969), .D(crc_left_d[17]), 
        .Z(n870) );
  COND1XL U1178 ( .A(n871), .B(n878), .C(n870), .Z(n872) );
  CANR3X1 U1179 ( .A(crc_left_d[1]), .B(n925), .C(n1022), .D(n872), .Z(n874)
         );
  CANR2X1 U1180 ( .A(xgmii_tx_hold[49]), .B(n987), .C(xgmii_txd_d[9]), .D(n986), .Z(n873) );
  COND3X1 U1181 ( .A(n991), .B(n875), .C(n874), .D(n873), .Z(\xgmii_tx.TXD [9]) );
  CANR2X1 U1182 ( .A(n979), .B(crc_left_d[1]), .C(crc_tx_d[17]), .D(n985), .Z(
        n876) );
  COND1XL U1183 ( .A(n878), .B(n877), .C(n876), .Z(n879) );
  CANR3X1 U1184 ( .A(n904), .B(crc_left_d[9]), .C(n880), .D(n879), .Z(n882) );
  CANR2X1 U1185 ( .A(xgmii_tx_hold[41]), .B(n905), .C(xgmii_txd_d[17]), .D(
        n986), .Z(n881) );
  COND3X1 U1186 ( .A(n909), .B(n883), .C(n882), .D(n881), .Z(
        \xgmii_tx.TXD [17]) );
  CND2X1 U1187 ( .A(n1008), .B(n983), .Z(n896) );
  CANR2X1 U1188 ( .A(n941), .B(crc_tx_d[27]), .C(crc_tx_d[19]), .D(n985), .Z(
        n884) );
  COND1XL U1189 ( .A(n932), .B(n972), .C(n884), .Z(n885) );
  CANR3X1 U1190 ( .A(n904), .B(crc_left_d[11]), .C(n896), .D(n885), .Z(n887)
         );
  CANR2X1 U1191 ( .A(xgmii_tx_hold[43]), .B(n905), .C(xgmii_txd_d[19]), .D(
        n986), .Z(n886) );
  COND3X1 U1192 ( .A(n909), .B(n888), .C(n887), .D(n886), .Z(
        \xgmii_tx.TXD [19]) );
  CANR2X1 U1193 ( .A(n941), .B(crc_tx_d[31]), .C(crc_tx_d[23]), .D(n985), .Z(
        n889) );
  COND1XL U1194 ( .A(n932), .B(n958), .C(n889), .Z(n890) );
  CANR3X1 U1195 ( .A(n904), .B(crc_left_d[15]), .C(n896), .D(n890), .Z(n892)
         );
  CANR2X1 U1196 ( .A(xgmii_tx_hold[47]), .B(n905), .C(xgmii_txd_d[23]), .D(
        n986), .Z(n891) );
  COND3X1 U1197 ( .A(n909), .B(n893), .C(n892), .D(n891), .Z(
        \xgmii_tx.TXD [23]) );
  CANR2X1 U1198 ( .A(n941), .B(crc_tx_d[29]), .C(crc_tx_d[21]), .D(n985), .Z(
        n894) );
  COND1XL U1199 ( .A(n932), .B(n952), .C(n894), .Z(n895) );
  CANR3X1 U1200 ( .A(n904), .B(crc_left_d[13]), .C(n896), .D(n895), .Z(n898)
         );
  CANR2X1 U1201 ( .A(xgmii_tx_hold[45]), .B(n905), .C(xgmii_txd_d[21]), .D(
        n986), .Z(n897) );
  COND3X1 U1202 ( .A(n909), .B(n899), .C(n898), .D(n897), .Z(
        \xgmii_tx.TXD [21]) );
  CANR2X1 U1203 ( .A(crc_tx_d[24]), .B(n941), .C(crc_tx_d[16]), .D(n985), .Z(
        n900) );
  COND1XL U1204 ( .A(n932), .B(n901), .C(n900), .Z(n902) );
  CANR3X1 U1205 ( .A(n904), .B(crc_left_d[8]), .C(n903), .D(n902), .Z(n907) );
  CANR2X1 U1206 ( .A(xgmii_tx_hold[40]), .B(n905), .C(xgmii_txd_d[16]), .D(
        n986), .Z(n906) );
  COND3X1 U1207 ( .A(n909), .B(n908), .C(n907), .D(n906), .Z(
        \xgmii_tx.TXD [16]) );
  CANR2X1 U1208 ( .A(xgmii_txd_d[6]), .B(n986), .C(xgmii_tx_hold[30]), .D(n923), .Z(n916) );
  COND1XL U1209 ( .A(n911), .B(n1010), .C(n910), .Z(n917) );
  CANR1XL U1210 ( .A(n925), .B(crc_left_d[14]), .C(n917), .Z(n913) );
  CANR2X1 U1211 ( .A(n979), .B(crc_left_d[22]), .C(n969), .D(crc_left_d[30]), 
        .Z(n912) );
  COND3X1 U1212 ( .A(n980), .B(n982), .C(n913), .D(n912), .Z(n914) );
  CANR1XL U1213 ( .A(n929), .B(xgmii_tx_hold[62]), .C(n914), .Z(n915) );
  CND2X1 U1214 ( .A(n916), .B(n915), .Z(\xgmii_tx.TXD [6]) );
  CANR2X1 U1215 ( .A(xgmii_txd_d[4]), .B(n986), .C(xgmii_tx_hold[28]), .D(n923), .Z(n922) );
  CANR1XL U1216 ( .A(n925), .B(crc_left_d[12]), .C(n917), .Z(n919) );
  CANR2X1 U1217 ( .A(n979), .B(crc_left_d[20]), .C(n969), .D(crc_left_d[28]), 
        .Z(n918) );
  COND3X1 U1218 ( .A(n980), .B(n964), .C(n919), .D(n918), .Z(n920) );
  CANR1XL U1219 ( .A(n929), .B(xgmii_tx_hold[60]), .C(n920), .Z(n921) );
  CND2X1 U1220 ( .A(n922), .B(n921), .Z(\xgmii_tx.TXD [4]) );
  CANR2X1 U1221 ( .A(xgmii_txd_d[7]), .B(n986), .C(xgmii_tx_hold[31]), .D(n923), .Z(n931) );
  CANR1XL U1222 ( .A(n925), .B(crc_left_d[15]), .C(n924), .Z(n927) );
  CANR2X1 U1223 ( .A(n979), .B(crc_left_d[23]), .C(n969), .D(crc_left_d[31]), 
        .Z(n926) );
  COND3X1 U1224 ( .A(n980), .B(n958), .C(n927), .D(n926), .Z(n928) );
  CANR1XL U1225 ( .A(n929), .B(xgmii_tx_hold[63]), .C(n928), .Z(n930) );
  CND2X1 U1226 ( .A(n931), .B(n930), .Z(\xgmii_tx.TXD [7]) );
  CANR2XL U1227 ( .A(crc_tx_d[31]), .B(n942), .C(n941), .D(crc_tx_d[23]), .Z(
        n936) );
  CANR2XL U1228 ( .A(n943), .B(xgmii_tx_hold[7]), .C(n969), .D(crc_left_d[7]), 
        .Z(n935) );
  CND2X1 U1229 ( .A(n1008), .B(n932), .Z(n944) );
  CANR1XL U1230 ( .A(crc_tx_d[15]), .B(n985), .C(n944), .Z(n934) );
  CANR2X1 U1231 ( .A(xgmii_tx_hold[39]), .B(n945), .C(xgmii_txd_d[31]), .D(
        n986), .Z(n933) );
  CND4X1 U1232 ( .A(n936), .B(n935), .C(n934), .D(n933), .Z(\xgmii_tx.TXD [31]) );
  CANR2XL U1233 ( .A(crc_tx_d[29]), .B(n942), .C(n941), .D(crc_tx_d[21]), .Z(
        n940) );
  CANR2XL U1234 ( .A(n943), .B(xgmii_tx_hold[5]), .C(n969), .D(crc_left_d[5]), 
        .Z(n939) );
  CANR1XL U1235 ( .A(crc_tx_d[13]), .B(n985), .C(n944), .Z(n938) );
  CANR2X1 U1236 ( .A(xgmii_tx_hold[37]), .B(n945), .C(xgmii_txd_d[29]), .D(
        n986), .Z(n937) );
  CND4X1 U1237 ( .A(n940), .B(n939), .C(n938), .D(n937), .Z(\xgmii_tx.TXD [29]) );
  CANR2XL U1238 ( .A(crc_tx_d[27]), .B(n942), .C(n941), .D(crc_tx_d[19]), .Z(
        n949) );
  CANR2XL U1239 ( .A(n943), .B(xgmii_tx_hold[3]), .C(n969), .D(crc_left_d[3]), 
        .Z(n948) );
  CANR1XL U1240 ( .A(crc_tx_d[11]), .B(n985), .C(n944), .Z(n947) );
  CANR2X1 U1241 ( .A(xgmii_tx_hold[35]), .B(n945), .C(xgmii_txd_d[27]), .D(
        n986), .Z(n946) );
  CND4X1 U1242 ( .A(n949), .B(n948), .C(n947), .D(n946), .Z(\xgmii_tx.TXD [27]) );
  CNR2X1 U1243 ( .A(n1028), .B(n950), .Z(n971) );
  CANR2X1 U1244 ( .A(n979), .B(crc_left_d[13]), .C(n969), .D(crc_left_d[21]), 
        .Z(n951) );
  COND3X1 U1245 ( .A(n983), .B(n952), .C(n971), .D(n951), .Z(n953) );
  CANR1XL U1246 ( .A(crc_tx_d[29]), .B(n985), .C(n953), .Z(n955) );
  CANR2X1 U1247 ( .A(xgmii_tx_hold[53]), .B(n987), .C(xgmii_txd_d[13]), .D(
        n986), .Z(n954) );
  COND3X1 U1248 ( .A(n991), .B(n956), .C(n955), .D(n954), .Z(
        \xgmii_tx.TXD [13]) );
  CANR2X1 U1249 ( .A(n979), .B(crc_left_d[15]), .C(n969), .D(crc_left_d[23]), 
        .Z(n957) );
  COND3X1 U1250 ( .A(n983), .B(n958), .C(n971), .D(n957), .Z(n959) );
  CANR1XL U1251 ( .A(crc_tx_d[31]), .B(n985), .C(n959), .Z(n961) );
  CANR2X1 U1252 ( .A(xgmii_tx_hold[55]), .B(n987), .C(xgmii_txd_d[15]), .D(
        n986), .Z(n960) );
  COND3X1 U1253 ( .A(n991), .B(n962), .C(n961), .D(n960), .Z(
        \xgmii_tx.TXD [15]) );
  CANR2X1 U1254 ( .A(n979), .B(crc_left_d[12]), .C(n969), .D(crc_left_d[20]), 
        .Z(n963) );
  COND3X1 U1255 ( .A(n983), .B(n964), .C(n963), .D(n980), .Z(n965) );
  CANR1XL U1256 ( .A(crc_tx_d[28]), .B(n985), .C(n965), .Z(n967) );
  CANR2X1 U1257 ( .A(xgmii_tx_hold[52]), .B(n987), .C(xgmii_txd_d[12]), .D(
        n986), .Z(n966) );
  COND3X1 U1258 ( .A(n991), .B(n968), .C(n967), .D(n966), .Z(
        \xgmii_tx.TXD [12]) );
  CMX2X1 U1259 ( .A0(xgmii_tx_hold[1]), .A1(pkt_data[1]), .S(n548), .Z(n479)
         );
  CMX2X1 U1260 ( .A0(xgmii_tx_hold[6]), .A1(pkt_data[6]), .S(n548), .Z(n474)
         );
  CANR2X1 U1261 ( .A(n979), .B(crc_left_d[11]), .C(n969), .D(crc_left_d[19]), 
        .Z(n970) );
  COND3X1 U1262 ( .A(n983), .B(n972), .C(n971), .D(n970), .Z(n973) );
  CANR1XL U1263 ( .A(crc_tx_d[27]), .B(n985), .C(n973), .Z(n975) );
  CANR2X1 U1264 ( .A(xgmii_tx_hold[51]), .B(n987), .C(xgmii_txd_d[11]), .D(
        n986), .Z(n974) );
  COND3X1 U1265 ( .A(n991), .B(n976), .C(n975), .D(n974), .Z(
        \xgmii_tx.TXD [11]) );
  CMX2X1 U1266 ( .A0(bvalid[3]), .A1(bvalidin[3]), .S(n548), .Z(n493) );
  CMX2X1 U1267 ( .A0(pkt_ctrl_d[5]), .A1(pkt_ctrl[5]), .S(n548), .Z(n483) );
  CMX2X1 U1268 ( .A0(bvalid[5]), .A1(bvalidin[5]), .S(n548), .Z(n491) );
  CMX2X1 U1269 ( .A0(pkt_ctrl_d[0]), .A1(pkt_ctrl[0]), .S(n548), .Z(n488) );
  CMX2X1 U1270 ( .A0(pkt_ctrl_d[1]), .A1(pkt_ctrl[1]), .S(n548), .Z(n487) );
  CMX2X1 U1271 ( .A0(pkt_ctrl_d[2]), .A1(pkt_ctrl[2]), .S(n548), .Z(n486) );
  CMX2X1 U1272 ( .A0(pkt_ctrl_d[3]), .A1(pkt_ctrl[3]), .S(n548), .Z(n485) );
  CMX2X1 U1273 ( .A0(pkt_ctrl_d[4]), .A1(pkt_ctrl[4]), .S(n548), .Z(n484) );
  CMX2X1 U1274 ( .A0(pkt_ctrl_d[6]), .A1(pkt_ctrl[6]), .S(n548), .Z(n482) );
  CANR2X1 U1275 ( .A(n979), .B(crc_left_d[14]), .C(n969), .D(crc_left_d[22]), 
        .Z(n981) );
  COND3X1 U1276 ( .A(n983), .B(n982), .C(n981), .D(n980), .Z(n984) );
  CANR1XL U1277 ( .A(crc_tx_d[30]), .B(n985), .C(n984), .Z(n989) );
  CANR2X1 U1278 ( .A(xgmii_tx_hold[54]), .B(n987), .C(xgmii_txd_d[14]), .D(
        n986), .Z(n988) );
  COND3X1 U1279 ( .A(n991), .B(n990), .C(n989), .D(n988), .Z(
        \xgmii_tx.TXD [14]) );
  CAOR2X2 U1280 ( .A(n993), .B(crc_left_d[10]), .C(n992), .D(crc_tx_d[10]), 
        .Z(n405) );
  CNIVX1 U1281 ( .A(n548), .Z(n994) );
  CNIVX1 U1282 ( .A(n548), .Z(n996) );
  CNIVX1 U1283 ( .A(n548), .Z(n995) );
  CMX2X1 U1284 ( .A0(xgmii_tx_hold[49]), .A1(pkt_data[49]), .S(n548), .Z(n431)
         );
  CMX2X1 U1285 ( .A0(xgmii_tx_hold[50]), .A1(pkt_data[50]), .S(n548), .Z(n430)
         );
  CMX2X1 U1286 ( .A0(xgmii_tx_hold[51]), .A1(pkt_data[51]), .S(n548), .Z(n429)
         );
  CMX2X1 U1287 ( .A0(xgmii_tx_hold[52]), .A1(pkt_data[52]), .S(n548), .Z(n428)
         );
  CMX2X1 U1288 ( .A0(xgmii_tx_hold[53]), .A1(pkt_data[53]), .S(n548), .Z(n427)
         );
  CMX2X1 U1289 ( .A0(xgmii_tx_hold[54]), .A1(pkt_data[54]), .S(n548), .Z(n426)
         );
  CMX2X1 U1290 ( .A0(xgmii_tx_hold[46]), .A1(pkt_data[46]), .S(n548), .Z(n434)
         );
  CMX2X1 U1291 ( .A0(xgmii_tx_hold[48]), .A1(pkt_data[48]), .S(n548), .Z(n432)
         );
  CND2IX1 U1292 ( .B(n998), .A(n997), .Z(n1003) );
  CND2X2 U1293 ( .A(n999), .B(n1033), .Z(n1007) );
  CANR2XL U1294 ( .A(cur_state[1]), .B(n1028), .C(cur_state[2]), .D(n1007), 
        .Z(n1001) );
  COND3X1 U1295 ( .A(n1003), .B(n1002), .C(n1001), .D(n1000), .Z(nxt_state[2])
         );
  COND2X1 U1296 ( .A(idlernd_cnt_d[1]), .B(n1004), .C(lpi), .D(n1003), .Z(
        n1005) );
  CANR2X1 U1297 ( .A(cur_state[0]), .B(n1007), .C(start_transmit), .D(n1005), 
        .Z(n1006) );
  CND2X1 U1298 ( .A(n1006), .B(n1008), .Z(nxt_state[0]) );
  CIVXL U1299 ( .A(n1007), .Z(n1011) );
  COND3X1 U1300 ( .A(n1011), .B(n1010), .C(n1009), .D(n1008), .Z(nxt_state[1])
         );
  COR2X1 U1301 ( .A(nxt_state[1]), .B(nxt_state[3]), .Z(n1012) );
  CNR3X1 U1302 ( .A(nxt_state[2]), .B(n1013), .C(n1012), .Z(nxt_buf) );
  CMX2XL U1303 ( .A0(bvalid[7]), .A1(bvalidin[7]), .S(pop_pkt), .Z(n489) );
  CMXI2XL U1304 ( .A0(n1015), .A1(cur_state_clk[1]), .S(wakeuptimer_d[0]), .Z(
        n543) );
  CNR2X1 U1305 ( .A(n1017), .B(n1016), .Z(n1018) );
  COND1XL U1306 ( .A(cur_state_clk[1]), .B(n1018), .C(cur_state_clk[0]), .Z(
        n1019) );
  COND1XL U1307 ( .A(n1021), .B(n1020), .C(n1019), .Z(n534) );
  COND1XL U1308 ( .A(crc_bvalid_d[0]), .B(n1039), .C(n1025), .Z(
        \xgmii_tx.TXC [3]) );
  COND1XL U1309 ( .A(n1034), .B(n1039), .C(n1027), .Z(n499) );
  CND2XL U1310 ( .A(cur_state[1]), .B(n1028), .Z(n1029) );
  CAN4X1 U1311 ( .A(n1031), .B(n1039), .C(n1030), .D(n1029), .Z(n1032) );
  CMXI2XL U1312 ( .A0(n1033), .A1(n1032), .S(cnt2_d), .Z(n497) );
  CANR5CXL U1313 ( .A(crc_bvalid_d[1]), .B(IDC_cnt_d[1]), .C(n1034), .Z(n1040)
         );
  CANR1XL U1314 ( .A(idlernd_cnt_d[0]), .B(n1037), .C(n1036), .Z(n1038) );
  COND1XL U1315 ( .A(n1040), .B(n1039), .C(n1038), .Z(n417) );
endmodule

