/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 22:43:32 2016
/////////////////////////////////////////////////////////////


module AXI_slave ( \clks.clk , \clks.rst , \w_ach.AWID , \w_ach.AWADDR , 
        \w_ach.AWLEN , \w_ach.AWSIZE , \w_ach.AWBURST , \w_ach.AWLOCK , 
        \w_ach.AWCACHE , \w_ach.AWPROT , \w_ach.AWVALID , \w_ach.AWREADY , 
        \w_dch.WID , \w_dch.WDATA , \w_dch.WLAST , \w_dch.WVALID , 
        \w_dch.WREADY , \w_rspch.BID , \w_rspch.BRESP , \w_rspch.BUSER , 
        \w_rspch.BVALID , \w_rspch.BREADY , reg_write_data, reg_write_addr, 
        wr_en, \memif_swchaddr.f0_waddr , \memif_swchaddr.f0_wdata , 
        \memif_swchaddr.f0_write , \memif_swchaddr.f0_raddr , 
        \memif_swchaddr.f0_rdata , \memif_swchdata.f0_waddr , 
        \memif_swchdata.f0_wdata , \memif_swchdata.f0_write , 
        \memif_swchdata.f0_raddr , \memif_swchdata.f0_rdata , 
        \memif_swchrsp.f0_waddr , \memif_swchrsp.f0_wdata , 
        \memif_swchrsp.f0_write , \memif_swchrsp.f0_raddr , 
        \memif_swchrsp.f0_rdata  );
  input [3:0] \w_ach.AWID ;
  input [31:0] \w_ach.AWADDR ;
  input [3:0] \w_ach.AWLEN ;
  input [2:0] \w_ach.AWSIZE ;
  input [1:0] \w_ach.AWBURST ;
  input [1:0] \w_ach.AWLOCK ;
  input [1:0] \w_ach.AWCACHE ;
  input [2:0] \w_ach.AWPROT ;
  input [3:0] \w_dch.WID ;
  input [63:0] \w_dch.WDATA ;
  output [3:0] \w_rspch.BID ;
  output [1:0] \w_rspch.BRESP ;
  output [63:0] reg_write_data;
  output [31:0] reg_write_addr;
  output [4:0] \memif_swchaddr.f0_waddr ;
  output [35:0] \memif_swchaddr.f0_wdata ;
  output [4:0] \memif_swchaddr.f0_raddr ;
  input [35:0] \memif_swchaddr.f0_rdata ;
  output [4:0] \memif_swchdata.f0_waddr ;
  output [31:0] \memif_swchdata.f0_wdata ;
  output [4:0] \memif_swchdata.f0_raddr ;
  input [31:0] \memif_swchdata.f0_rdata ;
  output [4:0] \memif_swchrsp.f0_waddr ;
  output [5:0] \memif_swchrsp.f0_wdata ;
  output [4:0] \memif_swchrsp.f0_raddr ;
  input [5:0] \memif_swchrsp.f0_rdata ;
  input \clks.clk , \clks.rst , \w_ach.AWVALID , \w_dch.WLAST , \w_dch.WVALID ,
         \w_rspch.BREADY ;
  output \w_ach.AWREADY , \w_dch.WREADY , \w_rspch.BUSER , \w_rspch.BVALID ,
         wr_en, \memif_swchaddr.f0_write , \memif_swchdata.f0_write ,
         \memif_swchrsp.f0_write ;
  wire   n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         \w_ach_cur_state[0] , awready_nxt, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, \w_rspch_cur_state[0] ,
         \wchrsp_fifo/N36 , \wchrsp_fifo/N35 , \wchrsp_fifo/N34 ,
         \wchrsp_fifo/N33 , \wchrsp_fifo/N18 , \wchrsp_fifo/n1 ,
         \wchrsp_fifo/n2 , \wchrsp_fifo/n3 , \wchrsp_fifo/n4 ,
         \wchrsp_fifo/n5 , \wchrsp_fifo/n6 , \wchaddr_fifo/N36 ,
         \wchaddr_fifo/N35 , \wchaddr_fifo/N34 , \wchaddr_fifo/N33 ,
         \wchaddr_fifo/N18 , \wchaddr_fifo/n1 , \wchaddr_fifo/n2 ,
         \wchaddr_fifo/n3 , \wchaddr_fifo/n4 , \wchaddr_fifo/n5 ,
         \wchaddr_fifo/n6 , n147, n148, n149, n150, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n185, \intadd_0/n4 , \intadd_0/n3 ,
         \intadd_0/n2 , \intadd_0/n1 , \intadd_1/n4 , \intadd_1/n3 ,
         \intadd_1/n2 , \intadd_1/n1 , n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n263, n264, n265, n266, n269, n270, n271,
         n272, n273, n274, n276, n277, n278, n279, n281, n283, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n315, n317, n318, n327, n328, n329, n330,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, \memif_swchrsp.f0_write ;
  wire   [1:0] w_dch_cur_state;
  wire   [31:0] burst_addr_nxt;
  assign reg_write_data[63] = \w_dch.WDATA  [63];
  assign reg_write_data[62] = \w_dch.WDATA  [62];
  assign reg_write_data[61] = \w_dch.WDATA  [61];
  assign reg_write_data[60] = \w_dch.WDATA  [60];
  assign reg_write_data[59] = \w_dch.WDATA  [59];
  assign reg_write_data[58] = \w_dch.WDATA  [58];
  assign reg_write_data[57] = \w_dch.WDATA  [57];
  assign reg_write_data[56] = \w_dch.WDATA  [56];
  assign reg_write_data[55] = \w_dch.WDATA  [55];
  assign reg_write_data[54] = \w_dch.WDATA  [54];
  assign reg_write_data[53] = \w_dch.WDATA  [53];
  assign reg_write_data[52] = \w_dch.WDATA  [52];
  assign reg_write_data[51] = \w_dch.WDATA  [51];
  assign reg_write_data[50] = \w_dch.WDATA  [50];
  assign reg_write_data[49] = \w_dch.WDATA  [49];
  assign reg_write_data[48] = \w_dch.WDATA  [48];
  assign reg_write_data[47] = \w_dch.WDATA  [47];
  assign reg_write_data[46] = \w_dch.WDATA  [46];
  assign reg_write_data[45] = \w_dch.WDATA  [45];
  assign reg_write_data[44] = \w_dch.WDATA  [44];
  assign reg_write_data[43] = \w_dch.WDATA  [43];
  assign reg_write_data[42] = \w_dch.WDATA  [42];
  assign reg_write_data[41] = \w_dch.WDATA  [41];
  assign reg_write_data[40] = \w_dch.WDATA  [40];
  assign reg_write_data[39] = \w_dch.WDATA  [39];
  assign reg_write_data[38] = \w_dch.WDATA  [38];
  assign reg_write_data[37] = \w_dch.WDATA  [37];
  assign reg_write_data[36] = \w_dch.WDATA  [36];
  assign reg_write_data[35] = \w_dch.WDATA  [35];
  assign reg_write_data[34] = \w_dch.WDATA  [34];
  assign reg_write_data[33] = \w_dch.WDATA  [33];
  assign reg_write_data[32] = \w_dch.WDATA  [32];
  assign \memif_swchaddr.f0_wdata  [35] = \w_ach.AWLEN  [3];
  assign \memif_swchaddr.f0_wdata  [34] = \w_ach.AWLEN  [2];
  assign \memif_swchaddr.f0_wdata  [33] = \w_ach.AWLEN  [1];
  assign \memif_swchaddr.f0_wdata  [32] = \w_ach.AWLEN  [0];
  assign \memif_swchaddr.f0_wdata  [31] = \w_ach.AWADDR  [31];
  assign \memif_swchaddr.f0_wdata  [30] = \w_ach.AWADDR  [30];
  assign \memif_swchaddr.f0_wdata  [29] = \w_ach.AWADDR  [29];
  assign \memif_swchaddr.f0_wdata  [28] = \w_ach.AWADDR  [28];
  assign \memif_swchaddr.f0_wdata  [27] = \w_ach.AWADDR  [27];
  assign \memif_swchaddr.f0_wdata  [26] = \w_ach.AWADDR  [26];
  assign \memif_swchaddr.f0_wdata  [25] = \w_ach.AWADDR  [25];
  assign \memif_swchaddr.f0_wdata  [24] = \w_ach.AWADDR  [24];
  assign \memif_swchaddr.f0_wdata  [23] = \w_ach.AWADDR  [23];
  assign \memif_swchaddr.f0_wdata  [22] = \w_ach.AWADDR  [22];
  assign \memif_swchaddr.f0_wdata  [21] = \w_ach.AWADDR  [21];
  assign \memif_swchaddr.f0_wdata  [20] = \w_ach.AWADDR  [20];
  assign \memif_swchaddr.f0_wdata  [19] = \w_ach.AWADDR  [19];
  assign \memif_swchaddr.f0_wdata  [18] = \w_ach.AWADDR  [18];
  assign \memif_swchaddr.f0_wdata  [17] = \w_ach.AWADDR  [17];
  assign \memif_swchaddr.f0_wdata  [16] = \w_ach.AWADDR  [16];
  assign \memif_swchaddr.f0_wdata  [15] = \w_ach.AWADDR  [15];
  assign \memif_swchaddr.f0_wdata  [14] = \w_ach.AWADDR  [14];
  assign \memif_swchaddr.f0_wdata  [13] = \w_ach.AWADDR  [13];
  assign \memif_swchaddr.f0_wdata  [12] = \w_ach.AWADDR  [12];
  assign \memif_swchaddr.f0_wdata  [11] = \w_ach.AWADDR  [11];
  assign \memif_swchaddr.f0_wdata  [10] = \w_ach.AWADDR  [10];
  assign \memif_swchaddr.f0_wdata  [9] = \w_ach.AWADDR  [9];
  assign \memif_swchaddr.f0_wdata  [8] = \w_ach.AWADDR  [8];
  assign \memif_swchaddr.f0_wdata  [7] = \w_ach.AWADDR  [7];
  assign \memif_swchaddr.f0_wdata  [6] = \w_ach.AWADDR  [6];
  assign \memif_swchaddr.f0_wdata  [5] = \w_ach.AWADDR  [5];
  assign \memif_swchaddr.f0_wdata  [4] = \w_ach.AWADDR  [4];
  assign \memif_swchaddr.f0_wdata  [3] = \w_ach.AWADDR  [3];
  assign \memif_swchaddr.f0_wdata  [2] = \w_ach.AWADDR  [2];
  assign \memif_swchaddr.f0_wdata  [1] = \w_ach.AWADDR  [1];
  assign \memif_swchaddr.f0_wdata  [0] = \w_ach.AWADDR  [0];
  assign reg_write_data[31] = \memif_swchdata.f0_wdata  [31];
  assign \memif_swchdata.f0_wdata  [31] = \w_dch.WDATA  [31];
  assign reg_write_data[30] = \memif_swchdata.f0_wdata  [30];
  assign \memif_swchdata.f0_wdata  [30] = \w_dch.WDATA  [30];
  assign reg_write_data[29] = \memif_swchdata.f0_wdata  [29];
  assign \memif_swchdata.f0_wdata  [29] = \w_dch.WDATA  [29];
  assign reg_write_data[28] = \memif_swchdata.f0_wdata  [28];
  assign \memif_swchdata.f0_wdata  [28] = \w_dch.WDATA  [28];
  assign reg_write_data[27] = \memif_swchdata.f0_wdata  [27];
  assign \memif_swchdata.f0_wdata  [27] = \w_dch.WDATA  [27];
  assign reg_write_data[26] = \memif_swchdata.f0_wdata  [26];
  assign \memif_swchdata.f0_wdata  [26] = \w_dch.WDATA  [26];
  assign reg_write_data[25] = \memif_swchdata.f0_wdata  [25];
  assign \memif_swchdata.f0_wdata  [25] = \w_dch.WDATA  [25];
  assign reg_write_data[24] = \memif_swchdata.f0_wdata  [24];
  assign \memif_swchdata.f0_wdata  [24] = \w_dch.WDATA  [24];
  assign reg_write_data[23] = \memif_swchdata.f0_wdata  [23];
  assign \memif_swchdata.f0_wdata  [23] = \w_dch.WDATA  [23];
  assign reg_write_data[22] = \memif_swchdata.f0_wdata  [22];
  assign \memif_swchdata.f0_wdata  [22] = \w_dch.WDATA  [22];
  assign reg_write_data[21] = \memif_swchdata.f0_wdata  [21];
  assign \memif_swchdata.f0_wdata  [21] = \w_dch.WDATA  [21];
  assign reg_write_data[20] = \memif_swchdata.f0_wdata  [20];
  assign \memif_swchdata.f0_wdata  [20] = \w_dch.WDATA  [20];
  assign reg_write_data[19] = \memif_swchdata.f0_wdata  [19];
  assign \memif_swchdata.f0_wdata  [19] = \w_dch.WDATA  [19];
  assign reg_write_data[18] = \memif_swchdata.f0_wdata  [18];
  assign \memif_swchdata.f0_wdata  [18] = \w_dch.WDATA  [18];
  assign reg_write_data[17] = \memif_swchdata.f0_wdata  [17];
  assign \memif_swchdata.f0_wdata  [17] = \w_dch.WDATA  [17];
  assign reg_write_data[16] = \memif_swchdata.f0_wdata  [16];
  assign \memif_swchdata.f0_wdata  [16] = \w_dch.WDATA  [16];
  assign reg_write_data[15] = \memif_swchdata.f0_wdata  [15];
  assign \memif_swchdata.f0_wdata  [15] = \w_dch.WDATA  [15];
  assign reg_write_data[14] = \memif_swchdata.f0_wdata  [14];
  assign \memif_swchdata.f0_wdata  [14] = \w_dch.WDATA  [14];
  assign reg_write_data[13] = \memif_swchdata.f0_wdata  [13];
  assign \memif_swchdata.f0_wdata  [13] = \w_dch.WDATA  [13];
  assign reg_write_data[12] = \memif_swchdata.f0_wdata  [12];
  assign \memif_swchdata.f0_wdata  [12] = \w_dch.WDATA  [12];
  assign reg_write_data[11] = \memif_swchdata.f0_wdata  [11];
  assign \memif_swchdata.f0_wdata  [11] = \w_dch.WDATA  [11];
  assign reg_write_data[10] = \memif_swchdata.f0_wdata  [10];
  assign \memif_swchdata.f0_wdata  [10] = \w_dch.WDATA  [10];
  assign reg_write_data[9] = \memif_swchdata.f0_wdata  [9];
  assign \memif_swchdata.f0_wdata  [9] = \w_dch.WDATA  [9];
  assign reg_write_data[8] = \memif_swchdata.f0_wdata  [8];
  assign \memif_swchdata.f0_wdata  [8] = \w_dch.WDATA  [8];
  assign reg_write_data[7] = \memif_swchdata.f0_wdata  [7];
  assign \memif_swchdata.f0_wdata  [7] = \w_dch.WDATA  [7];
  assign reg_write_data[6] = \memif_swchdata.f0_wdata  [6];
  assign \memif_swchdata.f0_wdata  [6] = \w_dch.WDATA  [6];
  assign reg_write_data[5] = \memif_swchdata.f0_wdata  [5];
  assign \memif_swchdata.f0_wdata  [5] = \w_dch.WDATA  [5];
  assign reg_write_data[4] = \memif_swchdata.f0_wdata  [4];
  assign \memif_swchdata.f0_wdata  [4] = \w_dch.WDATA  [4];
  assign reg_write_data[3] = \memif_swchdata.f0_wdata  [3];
  assign \memif_swchdata.f0_wdata  [3] = \w_dch.WDATA  [3];
  assign reg_write_data[2] = \memif_swchdata.f0_wdata  [2];
  assign \memif_swchdata.f0_wdata  [2] = \w_dch.WDATA  [2];
  assign reg_write_data[1] = \memif_swchdata.f0_wdata  [1];
  assign \memif_swchdata.f0_wdata  [1] = \w_dch.WDATA  [1];
  assign reg_write_data[0] = \memif_swchdata.f0_wdata  [0];
  assign \memif_swchdata.f0_wdata  [0] = \w_dch.WDATA  [0];
  assign \memif_swchrsp.f0_wdata  [4] = 1'b0;
  assign \memif_swchrsp.f0_wdata  [5] = 1'b0;
  assign \memif_swchdata.f0_raddr  [0] = 1'b0;
  assign \memif_swchdata.f0_raddr  [1] = 1'b0;
  assign \memif_swchdata.f0_raddr  [2] = 1'b0;
  assign \memif_swchdata.f0_raddr  [3] = 1'b0;
  assign \memif_swchdata.f0_raddr  [4] = 1'b0;
  assign \memif_swchdata.f0_write  = 1'b0;
  assign \memif_swchdata.f0_waddr  [0] = 1'b0;
  assign \memif_swchdata.f0_waddr  [1] = 1'b0;
  assign \memif_swchdata.f0_waddr  [2] = 1'b0;
  assign \memif_swchdata.f0_waddr  [3] = 1'b0;
  assign \memif_swchdata.f0_waddr  [4] = 1'b0;
  assign \memif_swchrsp.f0_wdata  [3] = \w_dch.WID  [3];
  assign \memif_swchrsp.f0_wdata  [2] = \w_dch.WID  [2];
  assign \memif_swchrsp.f0_wdata  [1] = \w_dch.WID  [1];
  assign \memif_swchrsp.f0_wdata  [0] = \w_dch.WID  [0];
  assign wr_en = \memif_swchrsp.f0_write ;

  DFFSR \w_ach_cur_state_reg[0]  ( .D(n182), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(\w_ach_cur_state[0] ) );
  DFFSR \w_rspch_cur_state_reg[0]  ( .D(n310), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\w_rspch_cur_state[0] ) );
  DFFSR awready_d_reg ( .D(n227), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(n537) );
  DFFSR \wchaddr_fifo/depth_left_reg[4]  ( .D(n161), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n2 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[0]  ( .D(n160), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n6 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[1]  ( .D(n159), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n5 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[2]  ( .D(n158), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n4 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[3]  ( .D(n157), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n3 ) );
  DFFSR \w_dch_cur_state_reg[0]  ( .D(n178), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(w_dch_cur_state[0]) );
  DFFSR \w_dch_cur_state_reg[1]  ( .D(n179), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(w_dch_cur_state[1]) );
  DFFSR \burst_addr_d_reg[4]  ( .D(burst_addr_nxt[4]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N43) );
  DFFSR \burst_addr_d_reg[5]  ( .D(n220), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N44) );
  DFFSR \burst_addr_d_reg[6]  ( .D(n222), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N45) );
  DFFSR \burst_addr_d_reg[7]  ( .D(n223), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N46) );
  DFFSR \burst_addr_d_reg[8]  ( .D(n229), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N47) );
  DFFSR \burst_addr_d_reg[9]  ( .D(n230), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N48) );
  DFFSR \burst_addr_d_reg[10]  ( .D(n231), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N49) );
  DFFSR \burst_addr_d_reg[11]  ( .D(n232), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N50) );
  DFFSR \burst_addr_d_reg[12]  ( .D(n233), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N51) );
  DFFSR \burst_addr_d_reg[13]  ( .D(n234), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N52) );
  DFFSR \burst_addr_d_reg[14]  ( .D(n235), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N53) );
  DFFSR \burst_addr_d_reg[15]  ( .D(n236), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N54) );
  DFFSR \burst_addr_d_reg[16]  ( .D(n237), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N55) );
  DFFSR \burst_addr_d_reg[17]  ( .D(n238), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N56) );
  DFFSR \burst_addr_d_reg[18]  ( .D(n239), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N57) );
  DFFSR \burst_addr_d_reg[19]  ( .D(n240), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N58) );
  DFFSR \burst_addr_d_reg[20]  ( .D(n241), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N59) );
  DFFSR \burst_addr_d_reg[21]  ( .D(n242), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N60) );
  DFFSR \burst_addr_d_reg[22]  ( .D(n243), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N61) );
  DFFSR \burst_addr_d_reg[23]  ( .D(n244), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N62) );
  DFFSR \burst_addr_d_reg[24]  ( .D(n245), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N63) );
  DFFSR \burst_addr_d_reg[25]  ( .D(n246), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N64) );
  DFFSR \burst_addr_d_reg[26]  ( .D(n247), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N65) );
  DFFSR \burst_addr_d_reg[27]  ( .D(n248), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N66) );
  DFFSR \burst_addr_d_reg[28]  ( .D(n249), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N67) );
  DFFSR \burst_addr_d_reg[29]  ( .D(n250), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N68) );
  DFFSR \burst_addr_d_reg[30]  ( .D(n251), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N69) );
  DFFSR \burst_addr_d_reg[31]  ( .D(n224), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(N70) );
  DFFSR wready_d_reg ( .D(n185), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(n538) );
  DFFSR \wchrsp_fifo/depth_left_reg[0]  ( .D(n176), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n6 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[1]  ( .D(n175), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n5 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[2]  ( .D(n174), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n4 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[3]  ( .D(n173), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n3 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[4]  ( .D(n172), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n2 ) );
  DFFSR \wchrsp_fifo/w_ptr_reg[0]  ( .D(n171), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n553) );
  DFFSR \wchrsp_fifo/w_ptr_reg[1]  ( .D(n221), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n552) );
  DFFSR \wchrsp_fifo/w_ptr_reg[2]  ( .D(n169), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n551) );
  DFFSR \wchrsp_fifo/w_ptr_reg[3]  ( .D(n168), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n550) );
  DFFSR \wchrsp_fifo/w_ptr_reg[4]  ( .D(n167), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n549) );
  DFFSR \wchrsp_fifo/r_ptr_reg[0]  ( .D(n166), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n558) );
  DFFSR \wchrsp_fifo/r_ptr_reg[1]  ( .D(n225), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n557) );
  DFFSR \wchrsp_fifo/r_ptr_reg[2]  ( .D(n164), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n556) );
  DFFSR \wchrsp_fifo/r_ptr_reg[3]  ( .D(n163), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n555) );
  DFFSR \wchrsp_fifo/r_ptr_reg[4]  ( .D(n162), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(n554) );
  DFFSR \wchaddr_fifo/w_ptr_reg[0]  ( .D(n156), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n543) );
  DFFSR \wchaddr_fifo/w_ptr_reg[1]  ( .D(n228), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n542) );
  DFFSR \wchaddr_fifo/w_ptr_reg[2]  ( .D(n154), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n541) );
  DFFSR \wchaddr_fifo/w_ptr_reg[3]  ( .D(n153), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n540) );
  DFFSR \wchaddr_fifo/w_ptr_reg[4]  ( .D(n152), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n539) );
  DFFSR \wchaddr_fifo/r_ptr_reg[0]  ( .D(n533), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n548) );
  DFFSR \wchaddr_fifo/r_ptr_reg[1]  ( .D(n226), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n547) );
  DFFSR \wchaddr_fifo/r_ptr_reg[2]  ( .D(n149), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n546) );
  DFFSR \wchaddr_fifo/r_ptr_reg[3]  ( .D(n148), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n545) );
  DFFSR \wchaddr_fifo/r_ptr_reg[4]  ( .D(n147), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(n544) );
  DFFSR \wchaddr_fifo/depth_left_reg[5]  ( .D(n180), .CLK(\clks.clk ), .R(1'b1), .S(\clks.rst ), .Q(\wchaddr_fifo/n1 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[5]  ( .D(n177), .CLK(\clks.clk ), .R(1'b1), 
        .S(\clks.rst ), .Q(\wchrsp_fifo/n1 ) );
  FAX1 \intadd_0/U5  ( .A(n293), .B(n305), .C(n367), .YC(\intadd_0/n4 ), .YS(
        \wchrsp_fifo/N33 ) );
  FAX1 \intadd_0/U4  ( .A(n367), .B(n302), .C(\intadd_0/n4 ), .YC(
        \intadd_0/n3 ), .YS(\wchrsp_fifo/N34 ) );
  FAX1 \intadd_0/U3  ( .A(n367), .B(n300), .C(\intadd_0/n3 ), .YC(
        \intadd_0/n2 ), .YS(\wchrsp_fifo/N35 ) );
  FAX1 \intadd_0/U2  ( .A(n367), .B(n301), .C(\intadd_0/n2 ), .YC(
        \intadd_0/n1 ), .YS(\wchrsp_fifo/N36 ) );
  FAX1 \intadd_1/U5  ( .A(n304), .B(n362), .C(\wchaddr_fifo/N18 ), .YC(
        \intadd_1/n4 ), .YS(\wchaddr_fifo/N33 ) );
  FAX1 \intadd_1/U4  ( .A(\wchaddr_fifo/N18 ), .B(n299), .C(\intadd_1/n4 ), 
        .YC(\intadd_1/n3 ), .YS(\wchaddr_fifo/N34 ) );
  FAX1 \intadd_1/U3  ( .A(\wchaddr_fifo/N18 ), .B(n361), .C(\intadd_1/n3 ), 
        .YC(\intadd_1/n2 ), .YS(\wchaddr_fifo/N35 ) );
  FAX1 \intadd_1/U2  ( .A(\wchaddr_fifo/N18 ), .B(n364), .C(\intadd_1/n2 ), 
        .YC(\intadd_1/n1 ), .YS(\wchaddr_fifo/N36 ) );
  AND2X1 U231 ( .A(n287), .B(n334), .Y(n455) );
  AND2X1 U232 ( .A(n214), .B(n258), .Y(n371) );
  AND2X1 U233 ( .A(n399), .B(n217), .Y(n374) );
  OR2X1 U234 ( .A(n408), .B(n303), .Y(\wchrsp_fifo/N18 ) );
  AND2X1 U235 ( .A(\memif_swchaddr.f0_waddr [0]), .B(
        \memif_swchaddr.f0_waddr [1]), .Y(n412) );
  AND2X1 U236 ( .A(n495), .B(n355), .Y(n497) );
  AND2X1 U237 ( .A(n493), .B(n354), .Y(n495) );
  AND2X1 U238 ( .A(n491), .B(n353), .Y(n493) );
  AND2X1 U239 ( .A(n489), .B(n352), .Y(n491) );
  AND2X1 U240 ( .A(n487), .B(n351), .Y(n489) );
  AND2X1 U241 ( .A(n485), .B(n350), .Y(n487) );
  AND2X1 U242 ( .A(n483), .B(n349), .Y(n485) );
  AND2X1 U243 ( .A(n481), .B(n348), .Y(n483) );
  AND2X1 U244 ( .A(n479), .B(n347), .Y(n481) );
  AND2X1 U245 ( .A(n477), .B(n346), .Y(n479) );
  AND2X1 U246 ( .A(n475), .B(n345), .Y(n477) );
  AND2X1 U247 ( .A(n473), .B(n344), .Y(n475) );
  AND2X1 U248 ( .A(n471), .B(n343), .Y(n473) );
  AND2X1 U249 ( .A(n469), .B(n342), .Y(n471) );
  AND2X1 U250 ( .A(n467), .B(n341), .Y(n469) );
  AND2X1 U251 ( .A(n465), .B(n340), .Y(n467) );
  AND2X1 U252 ( .A(n463), .B(n339), .Y(n465) );
  AND2X1 U253 ( .A(n461), .B(n338), .Y(n463) );
  AND2X1 U254 ( .A(n459), .B(n337), .Y(n461) );
  AND2X1 U255 ( .A(n457), .B(n336), .Y(n459) );
  AND2X1 U256 ( .A(n455), .B(n335), .Y(n457) );
  OR2X1 U257 ( .A(n277), .B(n452), .Y(n453) );
  INVX1 U258 ( .A(n365), .Y(n509) );
  AND2X1 U259 ( .A(\w_ach.AWVALID ), .B(\w_ach.AWREADY ), .Y(
        \memif_swchaddr.f0_write ) );
  AND2X1 U260 ( .A(n329), .B(n218), .Y(n378) );
  OR2X1 U261 ( .A(n518), .B(n278), .Y(n519) );
  AND2X1 U262 ( .A(\memif_swchrsp.f0_raddr [2]), .B(n288), .Y(n521) );
  AND2X1 U263 ( .A(n269), .B(n219), .Y(n502) );
  AND2X1 U264 ( .A(n213), .B(n371), .Y(n380) );
  AND2X1 U265 ( .A(n215), .B(n371), .Y(n375) );
  AND2X1 U266 ( .A(n269), .B(\memif_swchrsp.f0_write ), .Y(n382) );
  AND2X1 U267 ( .A(n216), .B(\memif_swchrsp.f0_write ), .Y(n404) );
  AND2X1 U268 ( .A(n312), .B(n328), .Y(n533) );
  OR2X1 U269 ( .A(\clks.rst ), .B(n318), .Y(n182) );
  OR2X1 U270 ( .A(n365), .B(n287), .Y(n450) );
  AND2X1 U271 ( .A(n497), .B(n356), .Y(n500) );
  OR2X1 U272 ( .A(n504), .B(n509), .Y(n415) );
  INVX1 U273 ( .A(n415), .Y(n186) );
  BUFX2 U274 ( .A(n418), .Y(n187) );
  BUFX2 U275 ( .A(n421), .Y(n188) );
  BUFX2 U276 ( .A(n422), .Y(n189) );
  BUFX2 U277 ( .A(n423), .Y(n190) );
  BUFX2 U278 ( .A(n424), .Y(n191) );
  BUFX2 U279 ( .A(n425), .Y(n192) );
  BUFX2 U280 ( .A(n426), .Y(n193) );
  BUFX2 U281 ( .A(n427), .Y(n194) );
  BUFX2 U282 ( .A(n428), .Y(n195) );
  BUFX2 U283 ( .A(n429), .Y(n196) );
  BUFX2 U284 ( .A(n430), .Y(n197) );
  BUFX2 U285 ( .A(n431), .Y(n198) );
  BUFX2 U286 ( .A(n432), .Y(n199) );
  BUFX2 U287 ( .A(n433), .Y(n200) );
  BUFX2 U288 ( .A(n434), .Y(n201) );
  BUFX2 U289 ( .A(n435), .Y(n202) );
  BUFX2 U290 ( .A(n436), .Y(n203) );
  BUFX2 U291 ( .A(n437), .Y(n204) );
  BUFX2 U292 ( .A(n438), .Y(n205) );
  BUFX2 U293 ( .A(n439), .Y(n206) );
  BUFX2 U294 ( .A(n440), .Y(n207) );
  BUFX2 U295 ( .A(n441), .Y(n208) );
  BUFX2 U296 ( .A(n442), .Y(n209) );
  BUFX2 U297 ( .A(n443), .Y(n210) );
  BUFX2 U298 ( .A(n444), .Y(n211) );
  BUFX2 U299 ( .A(\w_rspch_cur_state[0] ), .Y(n212) );
  OR2X1 U300 ( .A(n329), .B(n330), .Y(n328) );
  OR2X1 U301 ( .A(n286), .B(n377), .Y(n330) );
  OR2X1 U302 ( .A(n292), .B(n366), .Y(n365) );
  OR2X1 U303 ( .A(n298), .B(n365), .Y(n447) );
  OR2X1 U304 ( .A(n296), .B(n501), .Y(n366) );
  INVX1 U305 ( .A(n370), .Y(n213) );
  OR2X1 U306 ( .A(n364), .B(n294), .Y(n370) );
  INVX1 U307 ( .A(n369), .Y(n214) );
  OR2X1 U308 ( .A(n361), .B(n304), .Y(n369) );
  INVX1 U309 ( .A(n372), .Y(n215) );
  OR2X1 U310 ( .A(n364), .B(n295), .Y(n372) );
  INVX1 U311 ( .A(n393), .Y(n216) );
  AND2X1 U312 ( .A(n401), .B(n410), .Y(n393) );
  INVX1 U313 ( .A(n373), .Y(n217) );
  OR2X1 U314 ( .A(n300), .B(n301), .Y(n373) );
  AND2X1 U315 ( .A(n270), .B(n382), .Y(n376) );
  INVX1 U316 ( .A(n376), .Y(n218) );
  OR2X1 U317 ( .A(n501), .B(n511), .Y(n379) );
  INVX1 U318 ( .A(n379), .Y(n219) );
  BUFX2 U319 ( .A(burst_addr_nxt[5]), .Y(n220) );
  BUFX2 U320 ( .A(n170), .Y(n221) );
  BUFX2 U321 ( .A(burst_addr_nxt[6]), .Y(n222) );
  BUFX2 U322 ( .A(burst_addr_nxt[7]), .Y(n223) );
  BUFX2 U323 ( .A(burst_addr_nxt[31]), .Y(n224) );
  BUFX2 U324 ( .A(n165), .Y(n225) );
  BUFX2 U325 ( .A(n150), .Y(n226) );
  INVX1 U326 ( .A(awready_nxt), .Y(n227) );
  OR2X1 U327 ( .A(n375), .B(n259), .Y(awready_nxt) );
  INVX1 U328 ( .A(n155), .Y(n228) );
  OR2X1 U329 ( .A(n257), .B(n414), .Y(n155) );
  INVX1 U330 ( .A(burst_addr_nxt[8]), .Y(n229) );
  OR2X1 U331 ( .A(n455), .B(n454), .Y(burst_addr_nxt[8]) );
  INVX1 U332 ( .A(burst_addr_nxt[9]), .Y(n230) );
  OR2X1 U333 ( .A(n457), .B(n456), .Y(burst_addr_nxt[9]) );
  INVX1 U334 ( .A(burst_addr_nxt[10]), .Y(n231) );
  OR2X1 U335 ( .A(n459), .B(n458), .Y(burst_addr_nxt[10]) );
  INVX1 U336 ( .A(burst_addr_nxt[11]), .Y(n232) );
  OR2X1 U337 ( .A(n461), .B(n460), .Y(burst_addr_nxt[11]) );
  INVX1 U338 ( .A(burst_addr_nxt[12]), .Y(n233) );
  OR2X1 U339 ( .A(n463), .B(n462), .Y(burst_addr_nxt[12]) );
  INVX1 U340 ( .A(burst_addr_nxt[13]), .Y(n234) );
  OR2X1 U341 ( .A(n465), .B(n464), .Y(burst_addr_nxt[13]) );
  INVX1 U342 ( .A(burst_addr_nxt[14]), .Y(n235) );
  OR2X1 U343 ( .A(n467), .B(n466), .Y(burst_addr_nxt[14]) );
  INVX1 U344 ( .A(burst_addr_nxt[15]), .Y(n236) );
  OR2X1 U345 ( .A(n469), .B(n468), .Y(burst_addr_nxt[15]) );
  INVX1 U346 ( .A(burst_addr_nxt[16]), .Y(n237) );
  OR2X1 U347 ( .A(n471), .B(n470), .Y(burst_addr_nxt[16]) );
  INVX1 U348 ( .A(burst_addr_nxt[17]), .Y(n238) );
  OR2X1 U349 ( .A(n473), .B(n472), .Y(burst_addr_nxt[17]) );
  INVX1 U350 ( .A(burst_addr_nxt[18]), .Y(n239) );
  OR2X1 U351 ( .A(n475), .B(n474), .Y(burst_addr_nxt[18]) );
  INVX1 U352 ( .A(burst_addr_nxt[19]), .Y(n240) );
  OR2X1 U353 ( .A(n477), .B(n476), .Y(burst_addr_nxt[19]) );
  INVX1 U354 ( .A(burst_addr_nxt[20]), .Y(n241) );
  OR2X1 U355 ( .A(n479), .B(n478), .Y(burst_addr_nxt[20]) );
  INVX1 U356 ( .A(burst_addr_nxt[21]), .Y(n242) );
  OR2X1 U357 ( .A(n481), .B(n480), .Y(burst_addr_nxt[21]) );
  INVX1 U358 ( .A(burst_addr_nxt[22]), .Y(n243) );
  OR2X1 U359 ( .A(n483), .B(n482), .Y(burst_addr_nxt[22]) );
  INVX1 U360 ( .A(burst_addr_nxt[23]), .Y(n244) );
  OR2X1 U361 ( .A(n485), .B(n484), .Y(burst_addr_nxt[23]) );
  INVX1 U362 ( .A(burst_addr_nxt[24]), .Y(n245) );
  OR2X1 U363 ( .A(n487), .B(n486), .Y(burst_addr_nxt[24]) );
  INVX1 U364 ( .A(burst_addr_nxt[25]), .Y(n246) );
  OR2X1 U365 ( .A(n489), .B(n488), .Y(burst_addr_nxt[25]) );
  INVX1 U366 ( .A(burst_addr_nxt[26]), .Y(n247) );
  OR2X1 U367 ( .A(n491), .B(n490), .Y(burst_addr_nxt[26]) );
  INVX1 U368 ( .A(burst_addr_nxt[27]), .Y(n248) );
  OR2X1 U369 ( .A(n493), .B(n492), .Y(burst_addr_nxt[27]) );
  INVX1 U370 ( .A(burst_addr_nxt[28]), .Y(n249) );
  OR2X1 U371 ( .A(n495), .B(n494), .Y(burst_addr_nxt[28]) );
  INVX1 U372 ( .A(burst_addr_nxt[29]), .Y(n250) );
  OR2X1 U373 ( .A(n497), .B(n496), .Y(burst_addr_nxt[29]) );
  INVX1 U374 ( .A(burst_addr_nxt[30]), .Y(n251) );
  OR2X1 U375 ( .A(n500), .B(n498), .Y(burst_addr_nxt[30]) );
  INVX1 U376 ( .A(n386), .Y(n252) );
  AND2X1 U377 ( .A(n390), .B(\wchaddr_fifo/N36 ), .Y(n386) );
  INVX1 U378 ( .A(n398), .Y(n253) );
  AND2X1 U379 ( .A(n306), .B(\wchrsp_fifo/N33 ), .Y(n398) );
  INVX1 U380 ( .A(n420), .Y(n254) );
  AND2X1 U381 ( .A(\memif_swchaddr.f0_rdata [7]), .B(n186), .Y(n420) );
  INVX1 U382 ( .A(n506), .Y(n255) );
  AND2X1 U383 ( .A(n296), .B(n317), .Y(n506) );
  INVX1 U384 ( .A(n416), .Y(n256) );
  AND2X1 U385 ( .A(n186), .B(\memif_swchaddr.f0_rdata [3]), .Y(n416) );
  BUFX2 U386 ( .A(n413), .Y(n257) );
  OR2X1 U387 ( .A(n299), .B(n362), .Y(n368) );
  INVX1 U388 ( .A(n368), .Y(n258) );
  INVX1 U389 ( .A(n388), .Y(n259) );
  AND2X1 U390 ( .A(\w_ach.AWVALID ), .B(n318), .Y(n388) );
  INVX1 U391 ( .A(n406), .Y(n260) );
  AND2X1 U392 ( .A(\memif_swchrsp.f0_waddr [0]), .B(n404), .Y(n406) );
  BUFX2 U393 ( .A(n508), .Y(n261) );
  BUFX2 U394 ( .A(n547), .Y(\memif_swchaddr.f0_raddr [1]) );
  AND2X1 U395 ( .A(n513), .B(\memif_swchrsp.f0_waddr [3]), .Y(n514) );
  INVX1 U396 ( .A(n514), .Y(n263) );
  INVX1 U397 ( .A(n522), .Y(n264) );
  AND2X1 U398 ( .A(n521), .B(\memif_swchrsp.f0_raddr [3]), .Y(n522) );
  AND2X1 U399 ( .A(n524), .B(\memif_swchaddr.f0_waddr [3]), .Y(n525) );
  INVX1 U400 ( .A(n525), .Y(n265) );
  INVX1 U401 ( .A(n531), .Y(n266) );
  AND2X1 U402 ( .A(n530), .B(\memif_swchaddr.f0_raddr [3]), .Y(n531) );
  BUFX2 U403 ( .A(n538), .Y(\w_dch.WREADY ) );
  BUFX2 U404 ( .A(n534), .Y(\w_rspch.BVALID ) );
  INVX1 U405 ( .A(n380), .Y(n269) );
  AND2X1 U406 ( .A(n375), .B(\memif_swchaddr.f0_write ), .Y(n377) );
  INVX1 U407 ( .A(n377), .Y(n270) );
  INVX1 U408 ( .A(n375), .Y(n271) );
  INVX1 U409 ( .A(n513), .Y(n272) );
  AND2X1 U410 ( .A(\memif_swchrsp.f0_waddr [2]), .B(n512), .Y(n513) );
  INVX1 U411 ( .A(n524), .Y(n273) );
  AND2X1 U412 ( .A(\memif_swchaddr.f0_waddr [2]), .B(n414), .Y(n524) );
  INVX1 U413 ( .A(n502), .Y(n274) );
  BUFX2 U414 ( .A(n548), .Y(\memif_swchaddr.f0_raddr [0]) );
  INVX1 U415 ( .A(n446), .Y(n276) );
  AND2X1 U416 ( .A(n509), .B(n298), .Y(n446) );
  BUFX2 U417 ( .A(n451), .Y(n277) );
  INVX1 U418 ( .A(n517), .Y(n278) );
  AND2X1 U419 ( .A(\memif_swchrsp.f0_raddr [0]), .B(n283), .Y(n517) );
  INVX1 U420 ( .A(n449), .Y(n279) );
  AND2X1 U421 ( .A(n363), .B(n298), .Y(n449) );
  BUFX2 U422 ( .A(n542), .Y(\memif_swchaddr.f0_waddr [1]) );
  INVX1 U423 ( .A(n414), .Y(n281) );
  AND2X1 U424 ( .A(n412), .B(n411), .Y(n414) );
  BUFX2 U425 ( .A(n556), .Y(\memif_swchrsp.f0_raddr [2]) );
  BUFX2 U426 ( .A(n516), .Y(n283) );
  BUFX2 U427 ( .A(n555), .Y(\memif_swchrsp.f0_raddr [3]) );
  INVX1 U428 ( .A(n530), .Y(n285) );
  AND2X1 U429 ( .A(\memif_swchaddr.f0_raddr [2]), .B(n289), .Y(n530) );
  INVX1 U430 ( .A(n382), .Y(n286) );
  INVX1 U431 ( .A(n453), .Y(n287) );
  INVX1 U432 ( .A(n519), .Y(n288) );
  OR2X1 U433 ( .A(n527), .B(n328), .Y(n528) );
  INVX1 U434 ( .A(n528), .Y(n289) );
  INVX1 U435 ( .A(n291), .Y(n290) );
  BUFX2 U436 ( .A(N45), .Y(n291) );
  BUFX2 U437 ( .A(w_dch_cur_state[0]), .Y(n292) );
  BUFX2 U438 ( .A(\wchrsp_fifo/n5 ), .Y(n293) );
  INVX1 U439 ( .A(n295), .Y(n294) );
  BUFX2 U440 ( .A(\wchaddr_fifo/n1 ), .Y(n295) );
  INVX1 U441 ( .A(n297), .Y(n296) );
  BUFX2 U442 ( .A(w_dch_cur_state[1]), .Y(n297) );
  BUFX2 U443 ( .A(N43), .Y(n298) );
  BUFX2 U444 ( .A(\wchaddr_fifo/n4 ), .Y(n299) );
  BUFX2 U445 ( .A(\wchrsp_fifo/n3 ), .Y(n300) );
  BUFX2 U446 ( .A(\wchrsp_fifo/n2 ), .Y(n301) );
  BUFX2 U447 ( .A(\wchrsp_fifo/n4 ), .Y(n302) );
  INVX1 U448 ( .A(n404), .Y(n303) );
  BUFX2 U449 ( .A(\wchaddr_fifo/n5 ), .Y(n304) );
  BUFX2 U450 ( .A(\wchrsp_fifo/n6 ), .Y(n305) );
  INVX1 U451 ( .A(n307), .Y(n306) );
  BUFX2 U452 ( .A(n403), .Y(n307) );
  BUFX2 U453 ( .A(n419), .Y(n308) );
  BUFX2 U454 ( .A(N46), .Y(n309) );
  AND2X1 U455 ( .A(n504), .B(n392), .Y(n181) );
  INVX1 U456 ( .A(n181), .Y(n310) );
  AND2X1 U457 ( .A(n186), .B(\memif_swchaddr.f0_rdata [4]), .Y(n417) );
  INVX1 U458 ( .A(n417), .Y(n311) );
  INVX1 U459 ( .A(n378), .Y(n312) );
  BUFX2 U460 ( .A(n552), .Y(\memif_swchrsp.f0_waddr [1]) );
  BUFX2 U461 ( .A(n557), .Y(\memif_swchrsp.f0_raddr [1]) );
  INVX1 U462 ( .A(n374), .Y(n315) );
  BUFX2 U463 ( .A(n537), .Y(\w_ach.AWREADY ) );
  BUFX2 U464 ( .A(n505), .Y(n317) );
  BUFX2 U465 ( .A(\w_ach_cur_state[0] ), .Y(n318) );
  BUFX2 U466 ( .A(n549), .Y(\memif_swchrsp.f0_waddr [4]) );
  BUFX2 U467 ( .A(n554), .Y(\memif_swchrsp.f0_raddr [4]) );
  BUFX2 U468 ( .A(n539), .Y(\memif_swchaddr.f0_waddr [4]) );
  BUFX2 U469 ( .A(n544), .Y(\memif_swchaddr.f0_raddr [4]) );
  BUFX2 U470 ( .A(n546), .Y(\memif_swchaddr.f0_raddr [2]) );
  BUFX2 U471 ( .A(n550), .Y(\memif_swchrsp.f0_waddr [3]) );
  BUFX2 U472 ( .A(n540), .Y(\memif_swchaddr.f0_waddr [3]) );
  BUFX2 U473 ( .A(n545), .Y(\memif_swchaddr.f0_raddr [3]) );
  INVX1 U474 ( .A(n521), .Y(n327) );
  INVX1 U475 ( .A(\memif_swchaddr.f0_raddr [0]), .Y(n329) );
  BUFX2 U476 ( .A(n541), .Y(\memif_swchaddr.f0_waddr [2]) );
  BUFX2 U477 ( .A(n551), .Y(\memif_swchrsp.f0_waddr [2]) );
  BUFX2 U478 ( .A(n558), .Y(\memif_swchrsp.f0_raddr [0]) );
  BUFX2 U479 ( .A(N47), .Y(n334) );
  BUFX2 U480 ( .A(N48), .Y(n335) );
  BUFX2 U481 ( .A(N49), .Y(n336) );
  BUFX2 U482 ( .A(N50), .Y(n337) );
  BUFX2 U483 ( .A(N51), .Y(n338) );
  BUFX2 U484 ( .A(N52), .Y(n339) );
  BUFX2 U485 ( .A(N53), .Y(n340) );
  BUFX2 U486 ( .A(N54), .Y(n341) );
  BUFX2 U487 ( .A(N55), .Y(n342) );
  BUFX2 U488 ( .A(N56), .Y(n343) );
  BUFX2 U489 ( .A(N57), .Y(n344) );
  BUFX2 U490 ( .A(N58), .Y(n345) );
  BUFX2 U491 ( .A(N59), .Y(n346) );
  BUFX2 U492 ( .A(N60), .Y(n347) );
  BUFX2 U493 ( .A(N61), .Y(n348) );
  BUFX2 U494 ( .A(N62), .Y(n349) );
  BUFX2 U495 ( .A(N63), .Y(n350) );
  BUFX2 U496 ( .A(N64), .Y(n351) );
  BUFX2 U497 ( .A(N65), .Y(n352) );
  BUFX2 U498 ( .A(N66), .Y(n353) );
  BUFX2 U499 ( .A(N67), .Y(n354) );
  BUFX2 U500 ( .A(N68), .Y(n355) );
  BUFX2 U501 ( .A(N69), .Y(n356) );
  BUFX2 U502 ( .A(N70), .Y(n357) );
  BUFX2 U503 ( .A(\wchrsp_fifo/n1 ), .Y(n358) );
  BUFX2 U504 ( .A(n553), .Y(\memif_swchrsp.f0_waddr [0]) );
  BUFX2 U505 ( .A(n543), .Y(\memif_swchaddr.f0_waddr [0]) );
  BUFX2 U506 ( .A(\wchaddr_fifo/n3 ), .Y(n361) );
  BUFX2 U507 ( .A(\wchaddr_fifo/n6 ), .Y(n362) );
  BUFX2 U508 ( .A(N44), .Y(n363) );
  BUFX2 U509 ( .A(\wchaddr_fifo/n2 ), .Y(n364) );
  INVX1 U510 ( .A(\wchrsp_fifo/N18 ), .Y(n367) );
  AND2X1 U511 ( .A(\w_dch.WVALID ), .B(\w_dch.WREADY ), .Y(
        \memif_swchrsp.f0_write ) );
  AND2X1 U512 ( .A(\memif_swchaddr.f0_write ), .B(n271), .Y(n411) );
  AND2X1 U513 ( .A(n286), .B(n411), .Y(\wchaddr_fifo/N18 ) );
  INVX1 U514 ( .A(n293), .Y(n399) );
  NOR3X1 U515 ( .A(n302), .B(n305), .C(n315), .Y(n410) );
  INVX1 U516 ( .A(n212), .Y(n392) );
  AOI21X1 U517 ( .A(n358), .B(n410), .C(n392), .Y(n534) );
  INVX1 U518 ( .A(\w_dch.WVALID ), .Y(n501) );
  INVX1 U519 ( .A(n292), .Y(n511) );
  OAI21X1 U520 ( .A(n297), .B(n274), .C(n365), .Y(n185) );
  INVX1 U521 ( .A(\wchaddr_fifo/N18 ), .Y(n381) );
  OAI21X1 U522 ( .A(\memif_swchaddr.f0_write ), .B(n286), .C(n381), .Y(n390)
         );
  MUX2X1 U523 ( .B(n361), .A(\wchaddr_fifo/N35 ), .S(n390), .Y(n383) );
  INVX1 U524 ( .A(n383), .Y(n157) );
  MUX2X1 U525 ( .B(n299), .A(\wchaddr_fifo/N34 ), .S(n390), .Y(n384) );
  INVX1 U526 ( .A(n384), .Y(n158) );
  XOR2X1 U527 ( .A(n390), .B(n362), .Y(n160) );
  MUX2X1 U528 ( .B(n304), .A(\wchaddr_fifo/N33 ), .S(n390), .Y(n385) );
  INVX1 U529 ( .A(n385), .Y(n159) );
  INVX1 U530 ( .A(n364), .Y(n387) );
  OAI21X1 U531 ( .A(n390), .B(n387), .C(n252), .Y(n161) );
  XOR2X1 U532 ( .A(\intadd_1/n1 ), .B(n295), .Y(n389) );
  XNOR2X1 U533 ( .A(n389), .B(\wchaddr_fifo/N18 ), .Y(n391) );
  MUX2X1 U534 ( .B(n294), .A(n391), .S(n390), .Y(n180) );
  INVX1 U535 ( .A(\clks.rst ), .Y(n504) );
  AND2X1 U536 ( .A(\w_rspch.BREADY ), .B(\w_rspch.BVALID ), .Y(n408) );
  INVX1 U537 ( .A(n358), .Y(n401) );
  INVX1 U538 ( .A(\memif_swchrsp.f0_write ), .Y(n394) );
  AOI21X1 U539 ( .A(n408), .B(n394), .C(n367), .Y(n403) );
  MUX2X1 U540 ( .B(\wchrsp_fifo/N36 ), .A(n301), .S(n307), .Y(n395) );
  INVX1 U541 ( .A(n395), .Y(n172) );
  MUX2X1 U542 ( .B(\wchrsp_fifo/N35 ), .A(n300), .S(n307), .Y(n396) );
  INVX1 U543 ( .A(n396), .Y(n173) );
  MUX2X1 U544 ( .B(\wchrsp_fifo/N34 ), .A(n302), .S(n307), .Y(n397) );
  INVX1 U545 ( .A(n397), .Y(n174) );
  OAI21X1 U546 ( .A(n306), .B(n399), .C(n253), .Y(n175) );
  XOR2X1 U547 ( .A(\intadd_0/n1 ), .B(n358), .Y(n400) );
  XNOR2X1 U548 ( .A(n400), .B(n367), .Y(n402) );
  MUX2X1 U549 ( .B(n402), .A(n401), .S(n307), .Y(n177) );
  XNOR2X1 U550 ( .A(n307), .B(n305), .Y(n176) );
  XNOR2X1 U551 ( .A(n303), .B(\memif_swchrsp.f0_waddr [0]), .Y(n171) );
  INVX1 U552 ( .A(\memif_swchrsp.f0_waddr [1]), .Y(n407) );
  INVX1 U553 ( .A(\memif_swchrsp.f0_waddr [0]), .Y(n405) );
  NOR3X1 U554 ( .A(n405), .B(n407), .C(n303), .Y(n512) );
  AOI21X1 U555 ( .A(n407), .B(n260), .C(n512), .Y(n170) );
  XOR2X1 U556 ( .A(n512), .B(\memif_swchrsp.f0_waddr [2]), .Y(n169) );
  INVX1 U557 ( .A(n408), .Y(n409) );
  AOI21X1 U558 ( .A(n410), .B(\memif_swchrsp.f0_write ), .C(n409), .Y(n516) );
  XOR2X1 U559 ( .A(n283), .B(\memif_swchrsp.f0_raddr [0]), .Y(n166) );
  XOR2X1 U560 ( .A(n411), .B(\memif_swchaddr.f0_waddr [0]), .Y(n156) );
  AOI21X1 U561 ( .A(\memif_swchaddr.f0_waddr [0]), .B(n411), .C(
        \memif_swchaddr.f0_waddr [1]), .Y(n413) );
  XNOR2X1 U562 ( .A(n281), .B(\memif_swchaddr.f0_waddr [2]), .Y(n154) );
  NAND2X1 U564 ( .A(n365), .B(n256), .Y(reg_write_addr[3]) );
  AND2X1 U565 ( .A(n186), .B(\memif_swchaddr.f0_rdata [0]), .Y(
        reg_write_addr[0]) );
  AND2X1 U566 ( .A(n186), .B(\memif_swchaddr.f0_rdata [1]), .Y(
        reg_write_addr[1]) );
  AND2X1 U567 ( .A(n186), .B(\memif_swchaddr.f0_rdata [2]), .Y(
        reg_write_addr[2]) );
  NAND2X1 U568 ( .A(n276), .B(n311), .Y(reg_write_addr[4]) );
  AOI22X1 U569 ( .A(n509), .B(n363), .C(n186), .D(\memif_swchaddr.f0_rdata [5]), .Y(n418) );
  INVX1 U570 ( .A(n187), .Y(reg_write_addr[5]) );
  AOI22X1 U571 ( .A(n509), .B(n291), .C(n186), .D(\memif_swchaddr.f0_rdata [6]), .Y(n419) );
  INVX1 U572 ( .A(n308), .Y(reg_write_addr[6]) );
  INVX1 U573 ( .A(n309), .Y(n452) );
  OAI21X1 U574 ( .A(n452), .B(n365), .C(n254), .Y(reg_write_addr[7]) );
  AOI22X1 U575 ( .A(n509), .B(n334), .C(n186), .D(\memif_swchaddr.f0_rdata [8]), .Y(n421) );
  INVX1 U576 ( .A(n188), .Y(reg_write_addr[8]) );
  AOI22X1 U577 ( .A(n509), .B(n335), .C(n186), .D(\memif_swchaddr.f0_rdata [9]), .Y(n422) );
  INVX1 U578 ( .A(n189), .Y(reg_write_addr[9]) );
  AOI22X1 U579 ( .A(n509), .B(n336), .C(n186), .D(
        \memif_swchaddr.f0_rdata [10]), .Y(n423) );
  INVX1 U580 ( .A(n190), .Y(reg_write_addr[10]) );
  AOI22X1 U581 ( .A(n509), .B(n337), .C(n186), .D(
        \memif_swchaddr.f0_rdata [11]), .Y(n424) );
  INVX1 U582 ( .A(n191), .Y(reg_write_addr[11]) );
  AOI22X1 U583 ( .A(n509), .B(n338), .C(n186), .D(
        \memif_swchaddr.f0_rdata [12]), .Y(n425) );
  INVX1 U584 ( .A(n192), .Y(reg_write_addr[12]) );
  AOI22X1 U585 ( .A(n509), .B(n339), .C(n186), .D(
        \memif_swchaddr.f0_rdata [13]), .Y(n426) );
  INVX1 U586 ( .A(n193), .Y(reg_write_addr[13]) );
  AOI22X1 U587 ( .A(n509), .B(n340), .C(n186), .D(
        \memif_swchaddr.f0_rdata [14]), .Y(n427) );
  INVX1 U588 ( .A(n194), .Y(reg_write_addr[14]) );
  AOI22X1 U589 ( .A(n509), .B(n341), .C(n186), .D(
        \memif_swchaddr.f0_rdata [15]), .Y(n428) );
  INVX1 U590 ( .A(n195), .Y(reg_write_addr[15]) );
  AOI22X1 U591 ( .A(n509), .B(n342), .C(n186), .D(
        \memif_swchaddr.f0_rdata [16]), .Y(n429) );
  INVX1 U592 ( .A(n196), .Y(reg_write_addr[16]) );
  AOI22X1 U593 ( .A(n509), .B(n343), .C(n186), .D(
        \memif_swchaddr.f0_rdata [17]), .Y(n430) );
  INVX1 U594 ( .A(n197), .Y(reg_write_addr[17]) );
  AOI22X1 U595 ( .A(n509), .B(n344), .C(n186), .D(
        \memif_swchaddr.f0_rdata [18]), .Y(n431) );
  INVX1 U596 ( .A(n198), .Y(reg_write_addr[18]) );
  AOI22X1 U597 ( .A(n509), .B(n345), .C(n186), .D(
        \memif_swchaddr.f0_rdata [19]), .Y(n432) );
  INVX1 U598 ( .A(n199), .Y(reg_write_addr[19]) );
  AOI22X1 U599 ( .A(n509), .B(n346), .C(n186), .D(
        \memif_swchaddr.f0_rdata [20]), .Y(n433) );
  INVX1 U600 ( .A(n200), .Y(reg_write_addr[20]) );
  AOI22X1 U601 ( .A(n509), .B(n347), .C(n186), .D(
        \memif_swchaddr.f0_rdata [21]), .Y(n434) );
  INVX1 U602 ( .A(n201), .Y(reg_write_addr[21]) );
  AOI22X1 U603 ( .A(n509), .B(n348), .C(n186), .D(
        \memif_swchaddr.f0_rdata [22]), .Y(n435) );
  INVX1 U604 ( .A(n202), .Y(reg_write_addr[22]) );
  AOI22X1 U605 ( .A(n509), .B(n349), .C(n186), .D(
        \memif_swchaddr.f0_rdata [23]), .Y(n436) );
  INVX1 U606 ( .A(n203), .Y(reg_write_addr[23]) );
  AOI22X1 U607 ( .A(n509), .B(n350), .C(n186), .D(
        \memif_swchaddr.f0_rdata [24]), .Y(n437) );
  INVX1 U608 ( .A(n204), .Y(reg_write_addr[24]) );
  AOI22X1 U609 ( .A(n509), .B(n351), .C(n186), .D(
        \memif_swchaddr.f0_rdata [25]), .Y(n438) );
  INVX1 U610 ( .A(n205), .Y(reg_write_addr[25]) );
  AOI22X1 U611 ( .A(n509), .B(n352), .C(n186), .D(
        \memif_swchaddr.f0_rdata [26]), .Y(n439) );
  INVX1 U612 ( .A(n206), .Y(reg_write_addr[26]) );
  AOI22X1 U613 ( .A(n509), .B(n353), .C(n186), .D(
        \memif_swchaddr.f0_rdata [27]), .Y(n440) );
  INVX1 U614 ( .A(n207), .Y(reg_write_addr[27]) );
  AOI22X1 U615 ( .A(n509), .B(n354), .C(n186), .D(
        \memif_swchaddr.f0_rdata [28]), .Y(n441) );
  INVX1 U616 ( .A(n208), .Y(reg_write_addr[28]) );
  AOI22X1 U617 ( .A(n509), .B(n355), .C(n186), .D(
        \memif_swchaddr.f0_rdata [29]), .Y(n442) );
  INVX1 U618 ( .A(n209), .Y(reg_write_addr[29]) );
  AOI22X1 U619 ( .A(n509), .B(n356), .C(n186), .D(
        \memif_swchaddr.f0_rdata [30]), .Y(n443) );
  INVX1 U620 ( .A(n210), .Y(reg_write_addr[30]) );
  AOI22X1 U621 ( .A(n509), .B(n357), .C(n186), .D(
        \memif_swchaddr.f0_rdata [31]), .Y(n444) );
  INVX1 U622 ( .A(n211), .Y(reg_write_addr[31]) );
  INVX1 U623 ( .A(n447), .Y(burst_addr_nxt[4]) );
  INVX1 U624 ( .A(n363), .Y(n445) );
  AOI22X1 U625 ( .A(n363), .B(n447), .C(n276), .D(n445), .Y(burst_addr_nxt[5])
         );
  OAI21X1 U626 ( .A(n290), .B(n279), .C(n509), .Y(n448) );
  AOI21X1 U627 ( .A(n290), .B(n279), .C(n448), .Y(burst_addr_nxt[6]) );
  NAND3X1 U628 ( .A(n298), .B(n363), .C(n291), .Y(n451) );
  AOI21X1 U629 ( .A(n452), .B(n277), .C(n450), .Y(burst_addr_nxt[7]) );
  OAI21X1 U630 ( .A(n287), .B(n334), .C(n509), .Y(n454) );
  OAI21X1 U631 ( .A(n455), .B(n335), .C(n509), .Y(n456) );
  OAI21X1 U632 ( .A(n457), .B(n336), .C(n509), .Y(n458) );
  OAI21X1 U633 ( .A(n459), .B(n337), .C(n509), .Y(n460) );
  OAI21X1 U634 ( .A(n461), .B(n338), .C(n509), .Y(n462) );
  OAI21X1 U635 ( .A(n463), .B(n339), .C(n509), .Y(n464) );
  OAI21X1 U636 ( .A(n465), .B(n340), .C(n509), .Y(n466) );
  OAI21X1 U637 ( .A(n467), .B(n341), .C(n509), .Y(n468) );
  OAI21X1 U638 ( .A(n469), .B(n342), .C(n509), .Y(n470) );
  OAI21X1 U639 ( .A(n471), .B(n343), .C(n509), .Y(n472) );
  OAI21X1 U640 ( .A(n473), .B(n344), .C(n509), .Y(n474) );
  OAI21X1 U641 ( .A(n475), .B(n345), .C(n509), .Y(n476) );
  OAI21X1 U642 ( .A(n477), .B(n346), .C(n509), .Y(n478) );
  OAI21X1 U643 ( .A(n479), .B(n347), .C(n509), .Y(n480) );
  OAI21X1 U644 ( .A(n481), .B(n348), .C(n509), .Y(n482) );
  OAI21X1 U645 ( .A(n483), .B(n349), .C(n509), .Y(n484) );
  OAI21X1 U646 ( .A(n485), .B(n350), .C(n509), .Y(n486) );
  OAI21X1 U647 ( .A(n487), .B(n351), .C(n509), .Y(n488) );
  OAI21X1 U648 ( .A(n489), .B(n352), .C(n509), .Y(n490) );
  OAI21X1 U649 ( .A(n491), .B(n353), .C(n509), .Y(n492) );
  OAI21X1 U650 ( .A(n493), .B(n354), .C(n509), .Y(n494) );
  OAI21X1 U651 ( .A(n495), .B(n355), .C(n509), .Y(n496) );
  OAI21X1 U652 ( .A(n497), .B(n356), .C(n509), .Y(n498) );
  OAI21X1 U653 ( .A(n357), .B(n500), .C(n509), .Y(n499) );
  AOI21X1 U654 ( .A(n357), .B(n500), .C(n499), .Y(burst_addr_nxt[31]) );
  AND2X1 U655 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [0]), .Y(
        \w_rspch.BID [0]) );
  AND2X1 U656 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [1]), .Y(
        \w_rspch.BID [1]) );
  AND2X1 U657 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [2]), .Y(
        \w_rspch.BID [2]) );
  AND2X1 U658 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [3]), .Y(
        \w_rspch.BID [3]) );
  NOR3X1 U660 ( .A(n292), .B(\w_dch.WLAST ), .C(n501), .Y(n503) );
  NAND3X1 U661 ( .A(\clks.rst ), .B(\memif_swchaddr.f0_rdata [35]), .C(n502), 
        .Y(n505) );
  OAI21X1 U662 ( .A(n503), .B(n296), .C(n317), .Y(n179) );
  AOI21X1 U663 ( .A(n511), .B(n504), .C(n297), .Y(n508) );
  OAI21X1 U664 ( .A(n292), .B(\w_dch.WLAST ), .C(n255), .Y(n507) );
  OAI21X1 U665 ( .A(n509), .B(n261), .C(n507), .Y(n510) );
  OAI21X1 U666 ( .A(n511), .B(n296), .C(n510), .Y(n178) );
  MUX2X1 U667 ( .B(n272), .A(n513), .S(\memif_swchrsp.f0_waddr [3]), .Y(n168)
         );
  INVX1 U668 ( .A(\memif_swchrsp.f0_waddr [4]), .Y(n515) );
  MUX2X1 U669 ( .B(\memif_swchrsp.f0_waddr [4]), .A(n515), .S(n263), .Y(n167)
         );
  INVX1 U670 ( .A(\memif_swchrsp.f0_raddr [1]), .Y(n518) );
  AOI21X1 U671 ( .A(n518), .B(n278), .C(n288), .Y(n165) );
  OAI21X1 U672 ( .A(\memif_swchrsp.f0_raddr [2]), .B(n288), .C(n327), .Y(n520)
         );
  INVX1 U673 ( .A(n520), .Y(n164) );
  MUX2X1 U674 ( .B(n327), .A(n521), .S(\memif_swchrsp.f0_raddr [3]), .Y(n163)
         );
  INVX1 U675 ( .A(\memif_swchrsp.f0_raddr [4]), .Y(n523) );
  MUX2X1 U676 ( .B(\memif_swchrsp.f0_raddr [4]), .A(n523), .S(n264), .Y(n162)
         );
  MUX2X1 U677 ( .B(n273), .A(n524), .S(\memif_swchaddr.f0_waddr [3]), .Y(n153)
         );
  INVX1 U678 ( .A(\memif_swchaddr.f0_waddr [4]), .Y(n526) );
  MUX2X1 U679 ( .B(\memif_swchaddr.f0_waddr [4]), .A(n526), .S(n265), .Y(n152)
         );
  INVX1 U680 ( .A(\memif_swchaddr.f0_raddr [1]), .Y(n527) );
  AOI21X1 U681 ( .A(n527), .B(n328), .C(n289), .Y(n150) );
  OAI21X1 U682 ( .A(\memif_swchaddr.f0_raddr [2]), .B(n289), .C(n285), .Y(n529) );
  INVX1 U683 ( .A(n529), .Y(n149) );
  MUX2X1 U684 ( .B(n285), .A(n530), .S(\memif_swchaddr.f0_raddr [3]), .Y(n148)
         );
  INVX1 U685 ( .A(\memif_swchaddr.f0_raddr [4]), .Y(n532) );
  MUX2X1 U686 ( .B(\memif_swchaddr.f0_raddr [4]), .A(n532), .S(n266), .Y(n147)
         );
endmodule

