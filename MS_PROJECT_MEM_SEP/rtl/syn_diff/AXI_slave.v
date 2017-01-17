/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sun Nov  6 01:39:55 2016
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
  wire   \w_ach_cur_state[0] , awready_nxt, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, \w_rspch_cur_state[0] ,
         \wchrsp_fifo/n1 , \wchrsp_fifo/n2 , \wchrsp_fifo/n3 ,
         \wchrsp_fifo/n4 , \wchrsp_fifo/n5 , \wchrsp_fifo/n6 ,
         \wchaddr_fifo/n1 , \wchaddr_fifo/n2 , \wchaddr_fifo/n3 ,
         \wchaddr_fifo/n4 , \wchaddr_fifo/n5 , \wchaddr_fifo/n6 , n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         \memif_swchrsp.f0_write ;
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
  assign \memif_swchrsp.f0_wdata  [3] = \w_dch.WID  [3];
  assign \memif_swchrsp.f0_wdata  [2] = \w_dch.WID  [2];
  assign \memif_swchrsp.f0_wdata  [1] = \w_dch.WID  [1];
  assign \memif_swchrsp.f0_wdata  [0] = \w_dch.WID  [0];
  assign \memif_swchdata.f0_waddr  [4] = 1'b0;
  assign \memif_swchdata.f0_waddr  [3] = 1'b0;
  assign \memif_swchdata.f0_waddr  [2] = 1'b0;
  assign \memif_swchdata.f0_waddr  [1] = 1'b0;
  assign \memif_swchdata.f0_waddr  [0] = 1'b0;
  assign \memif_swchdata.f0_write  = 1'b0;
  assign \memif_swchdata.f0_raddr  [4] = 1'b0;
  assign \memif_swchdata.f0_raddr  [3] = 1'b0;
  assign \memif_swchdata.f0_raddr  [2] = 1'b0;
  assign \memif_swchdata.f0_raddr  [1] = 1'b0;
  assign \memif_swchdata.f0_raddr  [0] = 1'b0;
  assign \memif_swchrsp.f0_wdata  [5] = 1'b0;
  assign \memif_swchrsp.f0_wdata  [4] = 1'b0;
  assign wr_en = \memif_swchrsp.f0_write ;

  DFFSR \w_ach_cur_state_reg[0]  ( .D(n215), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(\w_ach_cur_state[0] ) );
  DFFSR \w_rspch_cur_state_reg[0]  ( .D(n214), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\w_rspch_cur_state[0] ) );
  DFFSR awready_d_reg ( .D(awready_nxt), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(\w_ach.AWREADY ) );
  DFFSR \wchaddr_fifo/depth_left_reg[4]  ( .D(n194), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n2 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[0]  ( .D(n193), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n6 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[1]  ( .D(n192), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n5 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[2]  ( .D(n191), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n4 ) );
  DFFSR \wchaddr_fifo/depth_left_reg[3]  ( .D(n190), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchaddr_fifo/n3 ) );
  DFFSR \w_dch_cur_state_reg[0]  ( .D(n211), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(w_dch_cur_state[0]) );
  DFFSR \w_dch_cur_state_reg[1]  ( .D(n212), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(w_dch_cur_state[1]) );
  DFFSR \burst_addr_d_reg[4]  ( .D(burst_addr_nxt[4]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N43) );
  DFFSR \burst_addr_d_reg[5]  ( .D(burst_addr_nxt[5]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N44) );
  DFFSR \burst_addr_d_reg[6]  ( .D(burst_addr_nxt[6]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N45) );
  DFFSR \burst_addr_d_reg[7]  ( .D(burst_addr_nxt[7]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N46) );
  DFFSR \burst_addr_d_reg[8]  ( .D(burst_addr_nxt[8]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N47) );
  DFFSR \burst_addr_d_reg[9]  ( .D(burst_addr_nxt[9]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N48) );
  DFFSR \burst_addr_d_reg[10]  ( .D(burst_addr_nxt[10]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N49) );
  DFFSR \burst_addr_d_reg[11]  ( .D(burst_addr_nxt[11]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N50) );
  DFFSR \burst_addr_d_reg[12]  ( .D(burst_addr_nxt[12]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N51) );
  DFFSR \burst_addr_d_reg[13]  ( .D(burst_addr_nxt[13]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N52) );
  DFFSR \burst_addr_d_reg[14]  ( .D(burst_addr_nxt[14]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N53) );
  DFFSR \burst_addr_d_reg[15]  ( .D(burst_addr_nxt[15]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N54) );
  DFFSR \burst_addr_d_reg[16]  ( .D(burst_addr_nxt[16]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N55) );
  DFFSR \burst_addr_d_reg[17]  ( .D(burst_addr_nxt[17]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N56) );
  DFFSR \burst_addr_d_reg[18]  ( .D(burst_addr_nxt[18]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N57) );
  DFFSR \burst_addr_d_reg[19]  ( .D(burst_addr_nxt[19]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N58) );
  DFFSR \burst_addr_d_reg[20]  ( .D(burst_addr_nxt[20]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N59) );
  DFFSR \burst_addr_d_reg[21]  ( .D(burst_addr_nxt[21]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N60) );
  DFFSR \burst_addr_d_reg[22]  ( .D(burst_addr_nxt[22]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N61) );
  DFFSR \burst_addr_d_reg[23]  ( .D(burst_addr_nxt[23]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N62) );
  DFFSR \burst_addr_d_reg[24]  ( .D(burst_addr_nxt[24]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N63) );
  DFFSR \burst_addr_d_reg[25]  ( .D(burst_addr_nxt[25]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N64) );
  DFFSR \burst_addr_d_reg[26]  ( .D(burst_addr_nxt[26]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N65) );
  DFFSR \burst_addr_d_reg[27]  ( .D(burst_addr_nxt[27]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N66) );
  DFFSR \burst_addr_d_reg[28]  ( .D(burst_addr_nxt[28]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N67) );
  DFFSR \burst_addr_d_reg[29]  ( .D(burst_addr_nxt[29]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N68) );
  DFFSR \burst_addr_d_reg[30]  ( .D(burst_addr_nxt[30]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N69) );
  DFFSR \burst_addr_d_reg[31]  ( .D(burst_addr_nxt[31]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(N70) );
  DFFSR wready_d_reg ( .D(n218), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(\w_dch.WREADY ) );
  DFFSR \wchrsp_fifo/depth_left_reg[0]  ( .D(n209), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n6 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[1]  ( .D(n208), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n5 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[2]  ( .D(n207), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n4 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[3]  ( .D(n206), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n3 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[4]  ( .D(n205), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\wchrsp_fifo/n2 ) );
  DFFSR \wchrsp_fifo/w_ptr_reg[0]  ( .D(n204), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_waddr [0]) );
  DFFSR \wchrsp_fifo/w_ptr_reg[1]  ( .D(n203), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_waddr [1]) );
  DFFSR \wchrsp_fifo/w_ptr_reg[2]  ( .D(n202), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_waddr [2]) );
  DFFSR \wchrsp_fifo/w_ptr_reg[3]  ( .D(n201), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_waddr [3]) );
  DFFSR \wchrsp_fifo/w_ptr_reg[4]  ( .D(n200), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_waddr [4]) );
  DFFSR \wchrsp_fifo/r_ptr_reg[0]  ( .D(n199), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_raddr [0]) );
  DFFSR \wchrsp_fifo/r_ptr_reg[1]  ( .D(n198), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_raddr [1]) );
  DFFSR \wchrsp_fifo/r_ptr_reg[2]  ( .D(n197), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_raddr [2]) );
  DFFSR \wchrsp_fifo/r_ptr_reg[3]  ( .D(n196), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_raddr [3]) );
  DFFSR \wchrsp_fifo/r_ptr_reg[4]  ( .D(n195), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(\memif_swchrsp.f0_raddr [4]) );
  DFFSR \wchaddr_fifo/w_ptr_reg[0]  ( .D(n189), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_waddr [0]) );
  DFFSR \wchaddr_fifo/w_ptr_reg[1]  ( .D(n188), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_waddr [1]) );
  DFFSR \wchaddr_fifo/w_ptr_reg[2]  ( .D(n187), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_waddr [2]) );
  DFFSR \wchaddr_fifo/w_ptr_reg[3]  ( .D(n186), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_waddr [3]) );
  DFFSR \wchaddr_fifo/w_ptr_reg[4]  ( .D(n185), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_waddr [4]) );
  DFFSR \wchaddr_fifo/r_ptr_reg[0]  ( .D(n184), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_raddr [0]) );
  DFFSR \wchaddr_fifo/r_ptr_reg[1]  ( .D(n183), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_raddr [1]) );
  DFFSR \wchaddr_fifo/r_ptr_reg[2]  ( .D(n182), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_raddr [2]) );
  DFFSR \wchaddr_fifo/r_ptr_reg[3]  ( .D(n181), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_raddr [3]) );
  DFFSR \wchaddr_fifo/r_ptr_reg[4]  ( .D(n180), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(\memif_swchaddr.f0_raddr [4]) );
  DFFSR \wchaddr_fifo/depth_left_reg[5]  ( .D(n213), .CLK(\clks.clk ), .R(1'b1), .S(\clks.rst ), .Q(\wchaddr_fifo/n1 ) );
  DFFSR \wchrsp_fifo/depth_left_reg[5]  ( .D(n210), .CLK(\clks.clk ), .R(1'b1), 
        .S(\clks.rst ), .Q(\wchrsp_fifo/n1 ) );
  OR2X1 U264 ( .A(n490), .B(n333), .Y(n331) );
  OR2X1 U265 ( .A(\wchrsp_fifo/n4 ), .B(\wchrsp_fifo/n2 ), .Y(n230) );
  OR2X1 U266 ( .A(\wchrsp_fifo/n1 ), .B(n429), .Y(n430) );
  OR2X1 U267 ( .A(\wchaddr_fifo/n1 ), .B(n410), .Y(n411) );
  AND2X1 U268 ( .A(\w_rspch.BVALID ), .B(\w_rspch.BREADY ), .Y(n476) );
  AND2X1 U269 ( .A(n301), .B(n300), .Y(n327) );
  INVX1 U270 ( .A(n401), .Y(n384) );
  OR2X1 U271 ( .A(n222), .B(n221), .Y(n391) );
  OR2X1 U272 ( .A(\wchaddr_fifo/n2 ), .B(\wchaddr_fifo/n1 ), .Y(n221) );
  AND2X1 U273 ( .A(\w_ach.AWVALID ), .B(\w_ach.AWREADY ), .Y(
        \memif_swchaddr.f0_write ) );
  AND2X1 U274 ( .A(\w_dch.WVALID ), .B(\w_dch.WREADY ), .Y(
        \memif_swchrsp.f0_write ) );
  INVX1 U275 ( .A(\memif_swchaddr.f0_rdata [3]), .Y(n488) );
  INVX1 U276 ( .A(n238), .Y(n183) );
  INVX1 U277 ( .A(n235), .Y(n196) );
  INVX1 U278 ( .A(n236), .Y(n198) );
  INVX1 U279 ( .A(n232), .Y(n201) );
  OR2X1 U280 ( .A(w_dch_cur_state[1]), .B(n420), .Y(n394) );
  AND2X1 U281 ( .A(n365), .B(n364), .Y(burst_addr_nxt[31]) );
  AND2X1 U282 ( .A(n336), .B(n364), .Y(burst_addr_nxt[30]) );
  AND2X1 U283 ( .A(n330), .B(n364), .Y(burst_addr_nxt[29]) );
  AND2X1 U284 ( .A(n302), .B(n364), .Y(burst_addr_nxt[28]) );
  AND2X1 U285 ( .A(n326), .B(n364), .Y(burst_addr_nxt[27]) );
  AND2X1 U286 ( .A(n304), .B(n364), .Y(burst_addr_nxt[26]) );
  AND2X1 U287 ( .A(n328), .B(n364), .Y(burst_addr_nxt[25]) );
  AND2X1 U288 ( .A(n309), .B(n364), .Y(burst_addr_nxt[24]) );
  AND2X1 U289 ( .A(n319), .B(n364), .Y(burst_addr_nxt[23]) );
  AND2X1 U290 ( .A(n297), .B(n364), .Y(burst_addr_nxt[22]) );
  AND2X1 U291 ( .A(n324), .B(n364), .Y(burst_addr_nxt[21]) );
  AND2X1 U292 ( .A(n305), .B(n364), .Y(burst_addr_nxt[20]) );
  AND2X1 U293 ( .A(n314), .B(n364), .Y(burst_addr_nxt[19]) );
  AND2X1 U294 ( .A(n289), .B(n333), .Y(burst_addr_nxt[18]) );
  AND2X1 U295 ( .A(n281), .B(n333), .Y(burst_addr_nxt[17]) );
  AND2X1 U296 ( .A(n276), .B(n333), .Y(burst_addr_nxt[16]) );
  AND2X1 U297 ( .A(n286), .B(n333), .Y(burst_addr_nxt[15]) );
  AND2X1 U298 ( .A(n260), .B(n333), .Y(burst_addr_nxt[14]) );
  AND2X1 U299 ( .A(n268), .B(n333), .Y(burst_addr_nxt[13]) );
  AND2X1 U300 ( .A(n258), .B(n333), .Y(burst_addr_nxt[12]) );
  AND2X1 U301 ( .A(n272), .B(n333), .Y(burst_addr_nxt[11]) );
  AND2X1 U302 ( .A(n252), .B(n333), .Y(burst_addr_nxt[10]) );
  AND2X1 U303 ( .A(n265), .B(n333), .Y(burst_addr_nxt[9]) );
  AND2X1 U304 ( .A(n333), .B(n243), .Y(burst_addr_nxt[8]) );
  AND2X1 U305 ( .A(n333), .B(n247), .Y(burst_addr_nxt[7]) );
  AND2X1 U306 ( .A(n333), .B(n250), .Y(burst_addr_nxt[6]) );
  AND2X1 U307 ( .A(n333), .B(n241), .Y(burst_addr_nxt[5]) );
  INVX2 U308 ( .A(n331), .Y(n484) );
  INVX1 U309 ( .A(n438), .Y(n439) );
  INVX1 U310 ( .A(n409), .Y(n402) );
  INVX1 U311 ( .A(n437), .Y(n450) );
  INVX1 U312 ( .A(n273), .Y(n259) );
  INVX1 U313 ( .A(n277), .Y(n287) );
  INVX1 U314 ( .A(n410), .Y(n368) );
  INVX1 U315 ( .A(n482), .Y(n479) );
  INVX1 U316 ( .A(n391), .Y(n393) );
  INVX1 U317 ( .A(\clks.rst ), .Y(n490) );
  INVX1 U318 ( .A(n227), .Y(n181) );
  INVX1 U319 ( .A(n239), .Y(n186) );
  NAND2X1 U320 ( .A(n448), .B(n440), .Y(n427) );
  NAND2X1 U321 ( .A(n398), .B(n397), .Y(n399) );
  INVX1 U322 ( .A(\memif_swchaddr.f0_raddr [2]), .Y(n511) );
  INVX1 U323 ( .A(\memif_swchaddr.f0_raddr [0]), .Y(n226) );
  NOR2X1 U324 ( .A(\wchaddr_fifo/n3 ), .B(\wchaddr_fifo/n4 ), .Y(n220) );
  NOR2X1 U325 ( .A(\wchaddr_fifo/n5 ), .B(\wchaddr_fifo/n6 ), .Y(n219) );
  NAND2X1 U326 ( .A(n220), .B(n219), .Y(n222) );
  INVX1 U327 ( .A(\memif_swchaddr.f0_write ), .Y(n225) );
  INVX1 U328 ( .A(\wchaddr_fifo/n2 ), .Y(n406) );
  NAND2X1 U329 ( .A(\wchaddr_fifo/n1 ), .B(n406), .Y(n223) );
  NOR2X1 U330 ( .A(n223), .B(n222), .Y(n419) );
  INVX1 U331 ( .A(\memif_swchrsp.f0_write ), .Y(n224) );
  NOR2X1 U332 ( .A(n419), .B(n224), .Y(n367) );
  OAI21X1 U333 ( .A(n391), .B(n225), .C(n367), .Y(n483) );
  NOR2X1 U334 ( .A(n226), .B(n483), .Y(n237) );
  NAND2X1 U335 ( .A(\memif_swchaddr.f0_raddr [1]), .B(n237), .Y(n510) );
  NOR2X1 U336 ( .A(n511), .B(n510), .Y(n509) );
  NAND2X1 U337 ( .A(n509), .B(\memif_swchaddr.f0_raddr [3]), .Y(n512) );
  OAI21X1 U338 ( .A(n509), .B(\memif_swchaddr.f0_raddr [3]), .C(n512), .Y(n227) );
  INVX1 U339 ( .A(\memif_swchrsp.f0_waddr [2]), .Y(n499) );
  INVX1 U340 ( .A(\memif_swchrsp.f0_waddr [0]), .Y(n472) );
  NOR2X1 U341 ( .A(\wchrsp_fifo/n6 ), .B(\wchrsp_fifo/n5 ), .Y(n228) );
  INVX1 U342 ( .A(\wchrsp_fifo/n3 ), .Y(n445) );
  NAND2X1 U343 ( .A(n228), .B(n445), .Y(n229) );
  NOR2X1 U344 ( .A(n230), .B(n229), .Y(n233) );
  INVX1 U345 ( .A(n233), .Y(n231) );
  OAI21X1 U346 ( .A(\wchrsp_fifo/n1 ), .B(n231), .C(\memif_swchrsp.f0_write ), 
        .Y(n473) );
  NOR2X1 U347 ( .A(n472), .B(n473), .Y(n474) );
  NAND2X1 U348 ( .A(\memif_swchrsp.f0_waddr [1]), .B(n474), .Y(n498) );
  NOR2X1 U349 ( .A(n499), .B(n498), .Y(n497) );
  NAND2X1 U350 ( .A(n497), .B(\memif_swchrsp.f0_waddr [3]), .Y(n500) );
  OAI21X1 U351 ( .A(n497), .B(\memif_swchrsp.f0_waddr [3]), .C(n500), .Y(n232)
         );
  INVX1 U352 ( .A(\w_rspch_cur_state[0] ), .Y(n424) );
  AOI21X1 U353 ( .A(\wchrsp_fifo/n1 ), .B(n233), .C(n424), .Y(\w_rspch.BVALID ) );
  INVX1 U354 ( .A(\memif_swchrsp.f0_raddr [2]), .Y(n503) );
  INVX1 U355 ( .A(n476), .Y(n426) );
  NAND2X1 U356 ( .A(n233), .B(\memif_swchrsp.f0_write ), .Y(n475) );
  NAND2X1 U357 ( .A(\memif_swchrsp.f0_raddr [0]), .B(n475), .Y(n234) );
  NOR2X1 U358 ( .A(n426), .B(n234), .Y(n477) );
  NAND2X1 U359 ( .A(\memif_swchrsp.f0_raddr [1]), .B(n477), .Y(n502) );
  NOR2X1 U360 ( .A(n503), .B(n502), .Y(n501) );
  NAND2X1 U361 ( .A(n501), .B(\memif_swchrsp.f0_raddr [3]), .Y(n504) );
  OAI21X1 U362 ( .A(n501), .B(\memif_swchrsp.f0_raddr [3]), .C(n504), .Y(n235)
         );
  OAI21X1 U363 ( .A(\memif_swchrsp.f0_raddr [1]), .B(n477), .C(n502), .Y(n236)
         );
  OAI21X1 U364 ( .A(\memif_swchaddr.f0_raddr [1]), .B(n237), .C(n510), .Y(n238) );
  INVX1 U365 ( .A(\memif_swchaddr.f0_waddr [2]), .Y(n507) );
  NAND3X1 U366 ( .A(\memif_swchaddr.f0_waddr [0]), .B(n391), .C(
        \memif_swchaddr.f0_write ), .Y(n482) );
  NAND2X1 U367 ( .A(\memif_swchaddr.f0_waddr [1]), .B(n479), .Y(n506) );
  NOR2X1 U368 ( .A(n507), .B(n506), .Y(n505) );
  NAND2X1 U369 ( .A(n505), .B(\memif_swchaddr.f0_waddr [3]), .Y(n508) );
  OAI21X1 U370 ( .A(n505), .B(\memif_swchaddr.f0_waddr [3]), .C(n508), .Y(n239) );
  AND2X1 U371 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [1]), .Y(
        \w_rspch.BID [1]) );
  AND2X1 U372 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [3]), .Y(
        \w_rspch.BID [3]) );
  AND2X1 U373 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [2]), .Y(
        \w_rspch.BID [2]) );
  AND2X1 U374 ( .A(\clks.rst ), .B(\memif_swchrsp.f0_rdata [0]), .Y(
        \w_rspch.BID [0]) );
  INVX1 U375 ( .A(w_dch_cur_state[1]), .Y(n495) );
  INVX1 U376 ( .A(w_dch_cur_state[0]), .Y(n496) );
  NAND2X1 U377 ( .A(n496), .B(\w_dch.WVALID ), .Y(n422) );
  OR2X2 U378 ( .A(n495), .B(n422), .Y(n487) );
  INVX4 U379 ( .A(n487), .Y(n333) );
  INVX1 U380 ( .A(N44), .Y(n240) );
  XNOR2X1 U381 ( .A(n240), .B(N43), .Y(n241) );
  NAND2X1 U382 ( .A(N43), .B(N44), .Y(n244) );
  NAND2X1 U383 ( .A(N46), .B(N45), .Y(n242) );
  NOR2X1 U384 ( .A(n244), .B(n242), .Y(n256) );
  INVX1 U385 ( .A(n256), .Y(n261) );
  INVX1 U386 ( .A(N47), .Y(n262) );
  XOR2X1 U387 ( .A(n261), .B(n262), .Y(n243) );
  INVX1 U388 ( .A(n244), .Y(n249) );
  NAND2X1 U389 ( .A(N45), .B(n249), .Y(n246) );
  INVX1 U390 ( .A(N46), .Y(n245) );
  XOR2X1 U391 ( .A(n246), .B(n245), .Y(n247) );
  INVX1 U392 ( .A(N45), .Y(n248) );
  XNOR2X1 U393 ( .A(n249), .B(n248), .Y(n250) );
  NAND2X1 U394 ( .A(N48), .B(N47), .Y(n253) );
  NOR2X1 U395 ( .A(n253), .B(n261), .Y(n269) );
  INVX1 U396 ( .A(N49), .Y(n251) );
  XNOR2X1 U397 ( .A(n269), .B(n251), .Y(n252) );
  NAND2X1 U398 ( .A(N50), .B(N49), .Y(n254) );
  NOR2X1 U399 ( .A(n254), .B(n253), .Y(n255) );
  NAND2X1 U400 ( .A(n256), .B(n255), .Y(n295) );
  INVX1 U401 ( .A(n295), .Y(n275) );
  INVX1 U402 ( .A(N51), .Y(n257) );
  XNOR2X1 U403 ( .A(n275), .B(n257), .Y(n258) );
  NAND2X1 U404 ( .A(N52), .B(N51), .Y(n273) );
  NAND2X1 U405 ( .A(n259), .B(n275), .Y(n282) );
  INVX1 U406 ( .A(N53), .Y(n283) );
  XOR2X1 U407 ( .A(n282), .B(n283), .Y(n260) );
  NOR2X1 U408 ( .A(n262), .B(n261), .Y(n264) );
  INVX1 U409 ( .A(N48), .Y(n263) );
  XNOR2X1 U410 ( .A(n264), .B(n263), .Y(n265) );
  NAND2X1 U411 ( .A(N51), .B(n275), .Y(n267) );
  INVX1 U412 ( .A(N52), .Y(n266) );
  XOR2X1 U413 ( .A(n267), .B(n266), .Y(n268) );
  NAND2X1 U414 ( .A(N49), .B(n269), .Y(n271) );
  INVX1 U415 ( .A(N50), .Y(n270) );
  XOR2X1 U416 ( .A(n271), .B(n270), .Y(n272) );
  NAND2X1 U417 ( .A(N54), .B(N53), .Y(n274) );
  NOR2X1 U418 ( .A(n274), .B(n273), .Y(n292) );
  NAND2X1 U419 ( .A(n292), .B(n275), .Y(n277) );
  INVX1 U420 ( .A(N55), .Y(n278) );
  XNOR2X1 U421 ( .A(n287), .B(n278), .Y(n276) );
  NOR2X1 U422 ( .A(n278), .B(n277), .Y(n280) );
  INVX1 U423 ( .A(N56), .Y(n279) );
  XNOR2X1 U424 ( .A(n280), .B(n279), .Y(n281) );
  NOR2X1 U425 ( .A(n283), .B(n282), .Y(n285) );
  INVX1 U426 ( .A(N54), .Y(n284) );
  XNOR2X1 U427 ( .A(n285), .B(n284), .Y(n286) );
  NAND2X1 U428 ( .A(N56), .B(N55), .Y(n290) );
  INVX1 U429 ( .A(n290), .Y(n288) );
  NAND2X1 U430 ( .A(n288), .B(n287), .Y(n310) );
  INVX1 U431 ( .A(N57), .Y(n311) );
  XOR2X1 U432 ( .A(n310), .B(n311), .Y(n289) );
  NAND2X1 U433 ( .A(N60), .B(N59), .Y(n298) );
  NAND2X1 U434 ( .A(N58), .B(N57), .Y(n291) );
  NOR2X1 U435 ( .A(n291), .B(n290), .Y(n293) );
  NAND2X1 U436 ( .A(n293), .B(n292), .Y(n294) );
  NOR2X1 U437 ( .A(n295), .B(n294), .Y(n301) );
  INVX1 U438 ( .A(n301), .Y(n320) );
  NOR2X1 U439 ( .A(n298), .B(n320), .Y(n296) );
  INVX1 U440 ( .A(N61), .Y(n299) );
  XNOR2X1 U441 ( .A(n296), .B(n299), .Y(n297) );
  INVX1 U442 ( .A(N63), .Y(n307) );
  NOR2X1 U443 ( .A(n299), .B(n298), .Y(n315) );
  NAND2X1 U444 ( .A(N62), .B(n315), .Y(n306) );
  NOR2X1 U445 ( .A(n307), .B(n306), .Y(n300) );
  HAX1 U446 ( .A(N65), .B(n303), .YC(n325), .YS(n304) );
  INVX1 U447 ( .A(N59), .Y(n321) );
  XOR2X1 U448 ( .A(n320), .B(n321), .Y(n305) );
  NOR2X1 U449 ( .A(n306), .B(n320), .Y(n308) );
  XNOR2X1 U450 ( .A(n308), .B(n307), .Y(n309) );
  NOR2X1 U451 ( .A(n311), .B(n310), .Y(n313) );
  INVX1 U452 ( .A(N58), .Y(n312) );
  XNOR2X1 U453 ( .A(n313), .B(n312), .Y(n314) );
  INVX2 U454 ( .A(n487), .Y(n364) );
  INVX1 U455 ( .A(n315), .Y(n316) );
  NOR2X1 U456 ( .A(n316), .B(n320), .Y(n318) );
  INVX1 U457 ( .A(N62), .Y(n317) );
  XNOR2X1 U458 ( .A(n318), .B(n317), .Y(n319) );
  NOR2X1 U459 ( .A(n321), .B(n320), .Y(n323) );
  INVX1 U460 ( .A(N60), .Y(n322) );
  XNOR2X1 U461 ( .A(n323), .B(n322), .Y(n324) );
  HAX1 U462 ( .A(N66), .B(n325), .YC(n329), .YS(n326) );
  HAX1 U463 ( .A(N64), .B(n327), .YC(n303), .YS(n328) );
  HAX1 U464 ( .A(N67), .B(n329), .YC(n335), .YS(n302) );
  AND2X1 U465 ( .A(n484), .B(\memif_swchaddr.f0_rdata [1]), .Y(
        reg_write_addr[1]) );
  AND2X1 U466 ( .A(n484), .B(\memif_swchaddr.f0_rdata [0]), .Y(
        reg_write_addr[0]) );
  AND2X1 U467 ( .A(n484), .B(\memif_swchaddr.f0_rdata [2]), .Y(
        reg_write_addr[2]) );
  AOI22X1 U468 ( .A(n333), .B(N44), .C(\memif_swchaddr.f0_rdata [5]), .D(n484), 
        .Y(n332) );
  INVX1 U469 ( .A(n332), .Y(reg_write_addr[5]) );
  AOI22X1 U470 ( .A(n333), .B(N46), .C(\memif_swchaddr.f0_rdata [7]), .D(n484), 
        .Y(n334) );
  INVX1 U471 ( .A(n334), .Y(reg_write_addr[7]) );
  HAX1 U472 ( .A(N68), .B(n335), .YC(n362), .YS(n330) );
  AOI22X1 U473 ( .A(n364), .B(N65), .C(\memif_swchaddr.f0_rdata [26]), .D(n484), .Y(n337) );
  INVX1 U474 ( .A(n337), .Y(reg_write_addr[26]) );
  AOI22X1 U475 ( .A(n364), .B(N70), .C(\memif_swchaddr.f0_rdata [31]), .D(n484), .Y(n338) );
  INVX1 U476 ( .A(n338), .Y(reg_write_addr[31]) );
  AOI22X1 U477 ( .A(n364), .B(N60), .C(\memif_swchaddr.f0_rdata [21]), .D(n484), .Y(n339) );
  INVX1 U478 ( .A(n339), .Y(reg_write_addr[21]) );
  AOI22X1 U479 ( .A(n364), .B(N66), .C(\memif_swchaddr.f0_rdata [27]), .D(n484), .Y(n340) );
  INVX1 U480 ( .A(n340), .Y(reg_write_addr[27]) );
  AOI22X1 U481 ( .A(n364), .B(N68), .C(\memif_swchaddr.f0_rdata [29]), .D(n484), .Y(n341) );
  INVX1 U482 ( .A(n341), .Y(reg_write_addr[29]) );
  AOI22X1 U483 ( .A(n364), .B(N64), .C(\memif_swchaddr.f0_rdata [25]), .D(n484), .Y(n342) );
  INVX1 U484 ( .A(n342), .Y(reg_write_addr[25]) );
  AOI22X1 U485 ( .A(n364), .B(N67), .C(\memif_swchaddr.f0_rdata [28]), .D(n484), .Y(n343) );
  INVX1 U486 ( .A(n343), .Y(reg_write_addr[28]) );
  AOI22X1 U487 ( .A(n364), .B(N63), .C(\memif_swchaddr.f0_rdata [24]), .D(n484), .Y(n344) );
  INVX1 U488 ( .A(n344), .Y(reg_write_addr[24]) );
  AOI22X1 U489 ( .A(n364), .B(N69), .C(\memif_swchaddr.f0_rdata [30]), .D(n484), .Y(n345) );
  INVX1 U490 ( .A(n345), .Y(reg_write_addr[30]) );
  AOI22X1 U491 ( .A(n364), .B(N61), .C(\memif_swchaddr.f0_rdata [22]), .D(n484), .Y(n346) );
  INVX1 U492 ( .A(n346), .Y(reg_write_addr[22]) );
  AOI22X1 U493 ( .A(n364), .B(N59), .C(\memif_swchaddr.f0_rdata [20]), .D(n484), .Y(n347) );
  INVX1 U494 ( .A(n347), .Y(reg_write_addr[20]) );
  AOI22X1 U495 ( .A(n364), .B(N62), .C(\memif_swchaddr.f0_rdata [23]), .D(n484), .Y(n348) );
  INVX1 U496 ( .A(n348), .Y(reg_write_addr[23]) );
  AOI22X1 U497 ( .A(n364), .B(N54), .C(\memif_swchaddr.f0_rdata [15]), .D(n484), .Y(n349) );
  INVX1 U498 ( .A(n349), .Y(reg_write_addr[15]) );
  AOI22X1 U499 ( .A(n364), .B(N57), .C(\memif_swchaddr.f0_rdata [18]), .D(n484), .Y(n350) );
  INVX1 U500 ( .A(n350), .Y(reg_write_addr[18]) );
  AOI22X1 U501 ( .A(n364), .B(N55), .C(\memif_swchaddr.f0_rdata [16]), .D(n484), .Y(n351) );
  INVX1 U502 ( .A(n351), .Y(reg_write_addr[16]) );
  AOI22X1 U503 ( .A(n364), .B(N58), .C(\memif_swchaddr.f0_rdata [19]), .D(n484), .Y(n352) );
  INVX1 U504 ( .A(n352), .Y(reg_write_addr[19]) );
  AOI22X1 U505 ( .A(n364), .B(N50), .C(\memif_swchaddr.f0_rdata [11]), .D(n484), .Y(n353) );
  INVX1 U506 ( .A(n353), .Y(reg_write_addr[11]) );
  AOI22X1 U507 ( .A(n364), .B(N48), .C(\memif_swchaddr.f0_rdata [9]), .D(n484), 
        .Y(n354) );
  INVX1 U508 ( .A(n354), .Y(reg_write_addr[9]) );
  AOI22X1 U509 ( .A(n364), .B(N52), .C(\memif_swchaddr.f0_rdata [13]), .D(n484), .Y(n355) );
  INVX1 U510 ( .A(n355), .Y(reg_write_addr[13]) );
  AOI22X1 U511 ( .A(n364), .B(N45), .C(\memif_swchaddr.f0_rdata [6]), .D(n484), 
        .Y(n356) );
  INVX1 U512 ( .A(n356), .Y(reg_write_addr[6]) );
  AOI22X1 U513 ( .A(n364), .B(N56), .C(\memif_swchaddr.f0_rdata [17]), .D(n484), .Y(n357) );
  INVX1 U514 ( .A(n357), .Y(reg_write_addr[17]) );
  AOI22X1 U515 ( .A(n364), .B(N47), .C(\memif_swchaddr.f0_rdata [8]), .D(n484), 
        .Y(n358) );
  INVX1 U516 ( .A(n358), .Y(reg_write_addr[8]) );
  AOI22X1 U517 ( .A(n364), .B(N51), .C(\memif_swchaddr.f0_rdata [12]), .D(n484), .Y(n359) );
  INVX1 U518 ( .A(n359), .Y(reg_write_addr[12]) );
  AOI22X1 U519 ( .A(n364), .B(N49), .C(\memif_swchaddr.f0_rdata [10]), .D(n484), .Y(n360) );
  INVX1 U520 ( .A(n360), .Y(reg_write_addr[10]) );
  AOI22X1 U521 ( .A(n364), .B(N53), .C(\memif_swchaddr.f0_rdata [14]), .D(n484), .Y(n361) );
  INVX1 U522 ( .A(n361), .Y(reg_write_addr[14]) );
  HAX1 U523 ( .A(N69), .B(n362), .YC(n363), .YS(n336) );
  XOR2X1 U524 ( .A(n363), .B(N70), .Y(n365) );
  INVX1 U525 ( .A(\w_ach_cur_state[0] ), .Y(n366) );
  NAND2X1 U526 ( .A(n490), .B(n366), .Y(n215) );
  INVX1 U527 ( .A(n367), .Y(n369) );
  NAND2X1 U528 ( .A(n391), .B(\memif_swchaddr.f0_write ), .Y(n481) );
  NOR2X1 U529 ( .A(n481), .B(n367), .Y(n410) );
  OAI21X1 U530 ( .A(\memif_swchaddr.f0_write ), .B(n369), .C(n368), .Y(n418)
         );
  INVX1 U531 ( .A(\wchaddr_fifo/n6 ), .Y(n378) );
  NAND2X1 U532 ( .A(n378), .B(n418), .Y(n370) );
  OAI21X1 U533 ( .A(n418), .B(n378), .C(n370), .Y(n193) );
  INVX1 U534 ( .A(\wchaddr_fifo/n5 ), .Y(n375) );
  NAND2X1 U535 ( .A(\wchaddr_fifo/n5 ), .B(n410), .Y(n376) );
  NOR2X1 U536 ( .A(\wchaddr_fifo/n5 ), .B(n410), .Y(n377) );
  INVX1 U537 ( .A(n377), .Y(n371) );
  NAND2X1 U538 ( .A(n376), .B(n371), .Y(n372) );
  XOR2X1 U539 ( .A(n372), .B(n378), .Y(n373) );
  NAND2X1 U540 ( .A(n418), .B(n373), .Y(n374) );
  OAI21X1 U541 ( .A(n418), .B(n375), .C(n374), .Y(n192) );
  INVX1 U542 ( .A(\wchaddr_fifo/n4 ), .Y(n383) );
  OAI21X1 U543 ( .A(n378), .B(n377), .C(n376), .Y(n401) );
  NAND2X1 U544 ( .A(\wchaddr_fifo/n4 ), .B(n410), .Y(n398) );
  NOR2X1 U545 ( .A(\wchaddr_fifo/n4 ), .B(n410), .Y(n395) );
  INVX1 U546 ( .A(n395), .Y(n379) );
  NAND2X1 U547 ( .A(n398), .B(n379), .Y(n380) );
  XOR2X1 U548 ( .A(n384), .B(n380), .Y(n381) );
  NAND2X1 U549 ( .A(n418), .B(n381), .Y(n382) );
  OAI21X1 U550 ( .A(n418), .B(n383), .C(n382), .Y(n191) );
  INVX1 U551 ( .A(\wchaddr_fifo/n3 ), .Y(n390) );
  OAI21X1 U552 ( .A(n395), .B(n384), .C(n398), .Y(n387) );
  NAND2X1 U553 ( .A(\wchaddr_fifo/n3 ), .B(n410), .Y(n397) );
  NOR2X1 U554 ( .A(\wchaddr_fifo/n3 ), .B(n410), .Y(n396) );
  INVX1 U555 ( .A(n396), .Y(n385) );
  NAND2X1 U556 ( .A(n397), .B(n385), .Y(n386) );
  XNOR2X1 U557 ( .A(n387), .B(n386), .Y(n388) );
  NAND2X1 U558 ( .A(n418), .B(n388), .Y(n389) );
  OAI21X1 U559 ( .A(n418), .B(n390), .C(n389), .Y(n190) );
  NAND2X1 U560 ( .A(\w_ach.AWVALID ), .B(\w_ach_cur_state[0] ), .Y(n392) );
  NOR2X1 U561 ( .A(n393), .B(n392), .Y(awready_nxt) );
  NAND2X1 U562 ( .A(\w_dch.WVALID ), .B(w_dch_cur_state[0]), .Y(n420) );
  OAI21X1 U563 ( .A(n419), .B(n394), .C(n487), .Y(n218) );
  NOR2X1 U564 ( .A(n396), .B(n395), .Y(n400) );
  AOI21X1 U565 ( .A(n401), .B(n400), .C(n399), .Y(n408) );
  NAND2X1 U566 ( .A(\wchaddr_fifo/n2 ), .B(n410), .Y(n407) );
  NOR2X1 U567 ( .A(\wchaddr_fifo/n2 ), .B(n410), .Y(n409) );
  NAND2X1 U568 ( .A(n407), .B(n402), .Y(n403) );
  XOR2X1 U569 ( .A(n408), .B(n403), .Y(n404) );
  NAND2X1 U570 ( .A(n418), .B(n404), .Y(n405) );
  OAI21X1 U571 ( .A(n418), .B(n406), .C(n405), .Y(n194) );
  INVX1 U572 ( .A(\wchaddr_fifo/n1 ), .Y(n417) );
  OAI21X1 U573 ( .A(n409), .B(n408), .C(n407), .Y(n414) );
  NAND2X1 U574 ( .A(\wchaddr_fifo/n1 ), .B(n410), .Y(n412) );
  NAND2X1 U575 ( .A(n412), .B(n411), .Y(n413) );
  XNOR2X1 U576 ( .A(n414), .B(n413), .Y(n415) );
  NAND2X1 U577 ( .A(n418), .B(n415), .Y(n416) );
  OAI21X1 U578 ( .A(n418), .B(n417), .C(n416), .Y(n213) );
  NOR2X1 U579 ( .A(n420), .B(n419), .Y(n421) );
  NAND2X1 U580 ( .A(n421), .B(\memif_swchaddr.f0_rdata [35]), .Y(n489) );
  OAI21X1 U581 ( .A(\w_dch.WLAST ), .B(n422), .C(w_dch_cur_state[1]), .Y(n423)
         );
  OAI21X1 U582 ( .A(n490), .B(n489), .C(n423), .Y(n212) );
  NAND2X1 U583 ( .A(n490), .B(n424), .Y(n214) );
  NOR2X1 U584 ( .A(n476), .B(n473), .Y(n429) );
  INVX1 U585 ( .A(n429), .Y(n425) );
  OAI21X1 U586 ( .A(\memif_swchrsp.f0_write ), .B(n426), .C(n425), .Y(n471) );
  INVX1 U587 ( .A(\wchrsp_fifo/n1 ), .Y(n436) );
  NOR2X1 U588 ( .A(\wchrsp_fifo/n2 ), .B(n429), .Y(n463) );
  INVX1 U589 ( .A(\wchrsp_fifo/n6 ), .Y(n462) );
  NOR2X1 U590 ( .A(\wchrsp_fifo/n5 ), .B(n429), .Y(n454) );
  NAND2X1 U591 ( .A(\wchrsp_fifo/n5 ), .B(n429), .Y(n456) );
  OAI21X1 U592 ( .A(n462), .B(n454), .C(n456), .Y(n437) );
  NOR2X1 U593 ( .A(\wchrsp_fifo/n3 ), .B(n429), .Y(n438) );
  NOR2X1 U594 ( .A(\wchrsp_fifo/n4 ), .B(n429), .Y(n446) );
  NOR2X1 U595 ( .A(n438), .B(n446), .Y(n428) );
  NAND2X1 U596 ( .A(\wchrsp_fifo/n4 ), .B(n429), .Y(n448) );
  NAND2X1 U597 ( .A(\wchrsp_fifo/n3 ), .B(n429), .Y(n440) );
  AOI21X1 U598 ( .A(n437), .B(n428), .C(n427), .Y(n467) );
  NAND2X1 U599 ( .A(\wchrsp_fifo/n2 ), .B(n429), .Y(n465) );
  OAI21X1 U600 ( .A(n463), .B(n467), .C(n465), .Y(n433) );
  NAND2X1 U601 ( .A(\wchrsp_fifo/n1 ), .B(n429), .Y(n431) );
  NAND2X1 U602 ( .A(n431), .B(n430), .Y(n432) );
  XNOR2X1 U603 ( .A(n433), .B(n432), .Y(n434) );
  NAND2X1 U604 ( .A(n471), .B(n434), .Y(n435) );
  OAI21X1 U605 ( .A(n471), .B(n436), .C(n435), .Y(n210) );
  OAI21X1 U606 ( .A(n446), .B(n450), .C(n448), .Y(n442) );
  NAND2X1 U607 ( .A(n440), .B(n439), .Y(n441) );
  XNOR2X1 U608 ( .A(n442), .B(n441), .Y(n443) );
  NAND2X1 U609 ( .A(n471), .B(n443), .Y(n444) );
  OAI21X1 U610 ( .A(n471), .B(n445), .C(n444), .Y(n206) );
  INVX1 U611 ( .A(\wchrsp_fifo/n4 ), .Y(n453) );
  INVX1 U612 ( .A(n446), .Y(n447) );
  NAND2X1 U613 ( .A(n448), .B(n447), .Y(n449) );
  XOR2X1 U614 ( .A(n450), .B(n449), .Y(n451) );
  NAND2X1 U615 ( .A(n471), .B(n451), .Y(n452) );
  OAI21X1 U616 ( .A(n471), .B(n453), .C(n452), .Y(n207) );
  INVX1 U617 ( .A(\wchrsp_fifo/n5 ), .Y(n460) );
  INVX1 U618 ( .A(n454), .Y(n455) );
  NAND2X1 U619 ( .A(n456), .B(n455), .Y(n457) );
  XOR2X1 U620 ( .A(n457), .B(n462), .Y(n458) );
  NAND2X1 U621 ( .A(n471), .B(n458), .Y(n459) );
  OAI21X1 U622 ( .A(n471), .B(n460), .C(n459), .Y(n208) );
  NAND2X1 U623 ( .A(n462), .B(n471), .Y(n461) );
  OAI21X1 U624 ( .A(n471), .B(n462), .C(n461), .Y(n209) );
  INVX1 U625 ( .A(\wchrsp_fifo/n2 ), .Y(n470) );
  INVX1 U626 ( .A(n463), .Y(n464) );
  NAND2X1 U627 ( .A(n465), .B(n464), .Y(n466) );
  XOR2X1 U628 ( .A(n467), .B(n466), .Y(n468) );
  NAND2X1 U629 ( .A(n471), .B(n468), .Y(n469) );
  OAI21X1 U630 ( .A(n471), .B(n470), .C(n469), .Y(n205) );
  AOI21X1 U631 ( .A(n473), .B(n472), .C(n474), .Y(n204) );
  XOR2X1 U632 ( .A(n474), .B(\memif_swchrsp.f0_waddr [1]), .Y(n203) );
  AOI21X1 U633 ( .A(n476), .B(n475), .C(\memif_swchrsp.f0_raddr [0]), .Y(n478)
         );
  NOR2X1 U634 ( .A(n478), .B(n477), .Y(n199) );
  INVX1 U635 ( .A(\memif_swchaddr.f0_waddr [0]), .Y(n480) );
  AOI21X1 U636 ( .A(n481), .B(n480), .C(n479), .Y(n189) );
  XNOR2X1 U637 ( .A(n482), .B(\memif_swchaddr.f0_waddr [1]), .Y(n188) );
  XNOR2X1 U638 ( .A(n483), .B(\memif_swchaddr.f0_raddr [0]), .Y(n184) );
  NOR2X1 U639 ( .A(N43), .B(n487), .Y(burst_addr_nxt[4]) );
  INVX1 U640 ( .A(N43), .Y(n486) );
  NAND2X1 U641 ( .A(n484), .B(\memif_swchaddr.f0_rdata [4]), .Y(n485) );
  OAI21X1 U642 ( .A(n487), .B(n486), .C(n485), .Y(reg_write_addr[4]) );
  OAI21X1 U645 ( .A(n490), .B(n488), .C(n487), .Y(reg_write_addr[3]) );
  AOI21X1 U646 ( .A(n490), .B(n496), .C(w_dch_cur_state[1]), .Y(n493) );
  NOR2X1 U647 ( .A(n490), .B(n489), .Y(n491) );
  OAI22X1 U648 ( .A(w_dch_cur_state[1]), .B(n491), .C(w_dch_cur_state[0]), .D(
        \w_dch.WLAST ), .Y(n492) );
  OAI21X1 U649 ( .A(n493), .B(n364), .C(n492), .Y(n494) );
  OAI21X1 U650 ( .A(n496), .B(n495), .C(n494), .Y(n211) );
  AOI21X1 U651 ( .A(n499), .B(n498), .C(n497), .Y(n202) );
  XNOR2X1 U652 ( .A(\memif_swchrsp.f0_waddr [4]), .B(n500), .Y(n200) );
  AOI21X1 U653 ( .A(n503), .B(n502), .C(n501), .Y(n197) );
  XNOR2X1 U654 ( .A(\memif_swchrsp.f0_raddr [4]), .B(n504), .Y(n195) );
  AOI21X1 U655 ( .A(n507), .B(n506), .C(n505), .Y(n187) );
  XNOR2X1 U656 ( .A(\memif_swchaddr.f0_waddr [4]), .B(n508), .Y(n185) );
  AOI21X1 U657 ( .A(n511), .B(n510), .C(n509), .Y(n182) );
  XNOR2X1 U658 ( .A(\memif_swchaddr.f0_raddr [4]), .B(n512), .Y(n180) );
endmodule

