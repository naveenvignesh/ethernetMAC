/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 19:45:13 2016
/////////////////////////////////////////////////////////////
module AXI_slave (
	\clks.clk , 
	\clks.rst , 
	\w_ach.AWID , 
	\w_ach.AWADDR , 
	\w_ach.AWLEN , 
	\w_ach.AWSIZE , 
	\w_ach.AWBURST , 
	\w_ach.AWLOCK , 
	\w_ach.AWCACHE , 
	\w_ach.AWPROT , 
	\w_ach.AWVALID , 
	\w_ach.AWREADY , 
	\w_dch.WID , 
	\w_dch.WDATA , 
	\w_dch.WLAST , 
	\w_dch.WVALID , 
	\w_dch.WREADY , 
	\w_rspch.BID , 
	\w_rspch.BRESP , 
	\w_rspch.BUSER , 
	\w_rspch.BVALID , 
	\w_rspch.BREADY , 
	reg_write_data, 
	reg_write_addr, 
	wr_en, 
	\memif_swchaddr.f0_waddr , 
	\memif_swchaddr.f0_wdata , 
	\memif_swchaddr.f0_write , 
	\memif_swchaddr.f0_raddr , 
	\memif_swchaddr.f0_rdata , 
	\memif_swchdata.f0_waddr , 
	\memif_swchdata.f0_wdata , 
	\memif_swchdata.f0_write , 
	\memif_swchdata.f0_raddr , 
	\memif_swchdata.f0_rdata , 
	\memif_swchrsp.f0_waddr , 
	\memif_swchrsp.f0_wdata , 
	\memif_swchrsp.f0_write , 
	\memif_swchrsp.f0_raddr , 
	\memif_swchrsp.f0_rdata );
   input \clks.clk ;
   input \clks.rst ;
   input [3:0] \w_ach.AWID ;
   input [31:0] \w_ach.AWADDR ;
   input [3:0] \w_ach.AWLEN ;
   input [2:0] \w_ach.AWSIZE ;
   input [1:0] \w_ach.AWBURST ;
   input [1:0] \w_ach.AWLOCK ;
   input [1:0] \w_ach.AWCACHE ;
   input [2:0] \w_ach.AWPROT ;
   input \w_ach.AWVALID ;
   output \w_ach.AWREADY ;
   input [3:0] \w_dch.WID ;
   input [63:0] \w_dch.WDATA ;
   input \w_dch.WLAST ;
   input \w_dch.WVALID ;
   output \w_dch.WREADY ;
   output [3:0] \w_rspch.BID ;
   output [1:0] \w_rspch.BRESP ;
   output \w_rspch.BUSER ;
   output \w_rspch.BVALID ;
   input \w_rspch.BREADY ;
   output [63:0] reg_write_data;
   output [31:0] reg_write_addr;
   output wr_en;
   output [4:0] \memif_swchaddr.f0_waddr ;
   output [35:0] \memif_swchaddr.f0_wdata ;
   output \memif_swchaddr.f0_write ;
   output [4:0] \memif_swchaddr.f0_raddr ;
   input [35:0] \memif_swchaddr.f0_rdata ;
   output [4:0] \memif_swchdata.f0_waddr ;
   output [31:0] \memif_swchdata.f0_wdata ;
   output \memif_swchdata.f0_write ;
   output [4:0] \memif_swchdata.f0_raddr ;
   input [31:0] \memif_swchdata.f0_rdata ;
   output [4:0] \memif_swchrsp.f0_waddr ;
   output [5:0] \memif_swchrsp.f0_wdata ;
   output \memif_swchrsp.f0_write ;
   output [4:0] \memif_swchrsp.f0_raddr ;
   input [5:0] \memif_swchrsp.f0_rdata ;

   // Internal wires
   wire FE_OFCN105_n418;
   wire FE_OFCN104_n419;
   wire FE_OFCN103_n421;
   wire FE_OFCN102_n422;
   wire FE_OFCN101_n423;
   wire FE_OFCN100_n424;
   wire FE_OFCN99_n425;
   wire FE_OFCN98_n426;
   wire FE_OFCN97_n427;
   wire FE_OFCN96_n428;
   wire FE_OFCN95_n429;
   wire FE_OFCN94_n430;
   wire FE_OFCN93_n431;
   wire FE_OFCN92_n432;
   wire FE_OFCN91_n433;
   wire FE_OFCN90_n434;
   wire FE_OFCN89_n435;
   wire FE_OFCN88_n436;
   wire FE_OFCN87_n437;
   wire FE_OFCN86_n438;
   wire FE_OFCN85_n439;
   wire FE_OFCN84_n440;
   wire FE_OFCN83_n441;
   wire FE_OFCN82_n442;
   wire FE_OFCN81_n443;
   wire FE_OFCN80_n444;
   wire FE_OFCN79_n505;
   wire FE_OFCN78_n403;
   wire FE_OFCN77_n165;
   wire FE_OFCN76_n516;
   wire FE_OFCN75_n150;
   wire FE_OFCN74_n170;
   wire FE_OFCN73_burst_addr_nxt_5_;
   wire FE_OFCN72_burst_addr_nxt_6_;
   wire FE_OFCN71_burst_addr_nxt_31_;
   wire FE_OFCN70_burst_addr_nxt_7_;
   wire FE_OFCN69_n413;
   wire FE_OFCN68_n508;
   wire FE_OFCN67_n534;
   wire FE_OFCN66_n451;
   wire FE_OFCN65_wchrsp_fifo_n1;
   wire FE_OFCN64_wchaddr_fifo_n1;
   wire FE_OFCN63_n544;
   wire FE_OFCN62_n545;
   wire FE_OFCN61_n546;
   wire FE_OFCN60_n547;
   wire FE_OFCN59_n548;
   wire FE_OFCN58_n539;
   wire FE_OFCN57_n540;
   wire FE_OFCN56_n541;
   wire FE_OFCN55_n542;
   wire FE_OFCN54_n543;
   wire FE_OFCN53_n554;
   wire FE_OFCN52_n555;
   wire FE_OFCN51_n556;
   wire FE_OFCN50_n557;
   wire FE_OFCN49_n558;
   wire FE_OFCN48_n549;
   wire FE_OFCN47_n550;
   wire FE_OFCN46_n551;
   wire FE_OFCN45_n552;
   wire FE_OFCN44_n553;
   wire FE_OFCN43_wchrsp_fifo_n2;
   wire FE_OFCN42_wchrsp_fifo_n3;
   wire FE_OFCN41_wchrsp_fifo_n4;
   wire FE_OFCN40_wchrsp_fifo_n5;
   wire FE_OFCN39_wchrsp_fifo_n6;
   wire FE_OFCN38_n538;
   wire FE_OFCN37_N70;
   wire FE_OFCN36_N69;
   wire FE_OFCN35_N68;
   wire FE_OFCN34_N67;
   wire FE_OFCN33_N66;
   wire FE_OFCN32_N65;
   wire FE_OFCN31_N64;
   wire FE_OFCN30_N63;
   wire FE_OFCN29_N62;
   wire FE_OFCN28_N61;
   wire FE_OFCN27_N60;
   wire FE_OFCN26_N59;
   wire FE_OFCN25_N58;
   wire FE_OFCN24_N57;
   wire FE_OFCN23_N56;
   wire FE_OFCN22_N55;
   wire FE_OFCN21_N54;
   wire FE_OFCN20_N53;
   wire FE_OFCN19_N52;
   wire FE_OFCN18_N51;
   wire FE_OFCN17_N50;
   wire FE_OFCN16_N49;
   wire FE_OFCN15_N48;
   wire FE_OFCN14_N47;
   wire FE_OFCN13_N46;
   wire FE_OFCN12_N45;
   wire FE_OFCN11_N44;
   wire FE_OFCN10_N43;
   wire FE_OFCN9_w_dch_cur_state_1_;
   wire FE_OFCN8_w_dch_cur_state_0_;
   wire FE_OFCN7_wchaddr_fifo_n3;
   wire FE_OFCN6_wchaddr_fifo_n4;
   wire FE_OFCN5_wchaddr_fifo_n5;
   wire FE_OFCN4_wchaddr_fifo_n6;
   wire FE_OFCN3_wchaddr_fifo_n2;
   wire FE_OFCN2_n537;
   wire FE_OFCN1_w_rspch_cur_state_0_;
   wire FE_OFCN0_w_ach_cur_state_0_;
   wire FECTS_clks_clk___L2_N7;
   wire FECTS_clks_clk___L2_N6;
   wire FECTS_clks_clk___L2_N5;
   wire FECTS_clks_clk___L2_N4;
   wire FECTS_clks_clk___L2_N3;
   wire FECTS_clks_clk___L2_N2;
   wire FECTS_clks_clk___L2_N1;
   wire FECTS_clks_clk___L2_N0;
   wire FECTS_clks_clk___L1_N0;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n544;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire \w_ach_cur_state[0] ;
   wire awready_nxt;
   wire N43;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire \w_rspch_cur_state[0] ;
   wire \wchrsp_fifo/N36 ;
   wire \wchrsp_fifo/N35 ;
   wire \wchrsp_fifo/N34 ;
   wire \wchrsp_fifo/N33 ;
   wire \wchrsp_fifo/N18 ;
   wire \wchrsp_fifo/n1 ;
   wire \wchrsp_fifo/n2 ;
   wire \wchrsp_fifo/n3 ;
   wire \wchrsp_fifo/n4 ;
   wire \wchrsp_fifo/n5 ;
   wire \wchrsp_fifo/n6 ;
   wire \wchaddr_fifo/N36 ;
   wire \wchaddr_fifo/N35 ;
   wire \wchaddr_fifo/N34 ;
   wire \wchaddr_fifo/N33 ;
   wire \wchaddr_fifo/N18 ;
   wire \wchaddr_fifo/n1 ;
   wire \wchaddr_fifo/n2 ;
   wire \wchaddr_fifo/n3 ;
   wire \wchaddr_fifo/n4 ;
   wire \wchaddr_fifo/n5 ;
   wire \wchaddr_fifo/n6 ;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n185;
   wire \intadd_0/n4 ;
   wire \intadd_0/n3 ;
   wire \intadd_0/n2 ;
   wire \intadd_0/n1 ;
   wire \intadd_1/n4 ;
   wire \intadd_1/n3 ;
   wire \intadd_1/n2 ;
   wire \intadd_1/n1 ;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n281;
   wire n283;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n315;
   wire n317;
   wire n318;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n414;
   wire n415;
   wire n416;
   wire n417;
   wire n418;
   wire n419;
   wire n420;
   wire n421;
   wire n422;
   wire n423;
   wire n424;
   wire n425;
   wire n426;
   wire n427;
   wire n428;
   wire n429;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n468;
   wire n469;
   wire n470;
   wire n471;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire [1:0] w_dch_cur_state;
   wire [31:0] burst_addr_nxt;

   assign reg_write_data[63] = \w_dch.WDATA [63] ;
   assign reg_write_data[62] = \w_dch.WDATA [62] ;
   assign reg_write_data[61] = \w_dch.WDATA [61] ;
   assign reg_write_data[60] = \w_dch.WDATA [60] ;
   assign reg_write_data[59] = \w_dch.WDATA [59] ;
   assign reg_write_data[58] = \w_dch.WDATA [58] ;
   assign reg_write_data[57] = \w_dch.WDATA [57] ;
   assign reg_write_data[56] = \w_dch.WDATA [56] ;
   assign reg_write_data[55] = \w_dch.WDATA [55] ;
   assign reg_write_data[54] = \w_dch.WDATA [54] ;
   assign reg_write_data[53] = \w_dch.WDATA [53] ;
   assign reg_write_data[52] = \w_dch.WDATA [52] ;
   assign reg_write_data[51] = \w_dch.WDATA [51] ;
   assign reg_write_data[50] = \w_dch.WDATA [50] ;
   assign reg_write_data[49] = \w_dch.WDATA [49] ;
   assign reg_write_data[48] = \w_dch.WDATA [48] ;
   assign reg_write_data[47] = \w_dch.WDATA [47] ;
   assign reg_write_data[46] = \w_dch.WDATA [46] ;
   assign reg_write_data[45] = \w_dch.WDATA [45] ;
   assign reg_write_data[44] = \w_dch.WDATA [44] ;
   assign reg_write_data[43] = \w_dch.WDATA [43] ;
   assign reg_write_data[42] = \w_dch.WDATA [42] ;
   assign reg_write_data[41] = \w_dch.WDATA [41] ;
   assign reg_write_data[40] = \w_dch.WDATA [40] ;
   assign reg_write_data[39] = \w_dch.WDATA [39] ;
   assign reg_write_data[38] = \w_dch.WDATA [38] ;
   assign reg_write_data[37] = \w_dch.WDATA [37] ;
   assign reg_write_data[36] = \w_dch.WDATA [36] ;
   assign reg_write_data[35] = \w_dch.WDATA [35] ;
   assign reg_write_data[34] = \w_dch.WDATA [34] ;
   assign reg_write_data[33] = \w_dch.WDATA [33] ;
   assign reg_write_data[32] = \w_dch.WDATA [32] ;
   assign \memif_swchaddr.f0_wdata [35] = \w_ach.AWLEN [3] ;
   assign \memif_swchaddr.f0_wdata [34] = \w_ach.AWLEN [2] ;
   assign \memif_swchaddr.f0_wdata [33] = \w_ach.AWLEN [1] ;
   assign \memif_swchaddr.f0_wdata [32] = \w_ach.AWLEN [0] ;
   assign \memif_swchaddr.f0_wdata [31] = \w_ach.AWADDR [31] ;
   assign \memif_swchaddr.f0_wdata [30] = \w_ach.AWADDR [30] ;
   assign \memif_swchaddr.f0_wdata [29] = \w_ach.AWADDR [29] ;
   assign \memif_swchaddr.f0_wdata [28] = \w_ach.AWADDR [28] ;
   assign \memif_swchaddr.f0_wdata [27] = \w_ach.AWADDR [27] ;
   assign \memif_swchaddr.f0_wdata [26] = \w_ach.AWADDR [26] ;
   assign \memif_swchaddr.f0_wdata [25] = \w_ach.AWADDR [25] ;
   assign \memif_swchaddr.f0_wdata [24] = \w_ach.AWADDR [24] ;
   assign \memif_swchaddr.f0_wdata [23] = \w_ach.AWADDR [23] ;
   assign \memif_swchaddr.f0_wdata [22] = \w_ach.AWADDR [22] ;
   assign \memif_swchaddr.f0_wdata [21] = \w_ach.AWADDR [21] ;
   assign \memif_swchaddr.f0_wdata [20] = \w_ach.AWADDR [20] ;
   assign \memif_swchaddr.f0_wdata [19] = \w_ach.AWADDR [19] ;
   assign \memif_swchaddr.f0_wdata [18] = \w_ach.AWADDR [18] ;
   assign \memif_swchaddr.f0_wdata [17] = \w_ach.AWADDR [17] ;
   assign \memif_swchaddr.f0_wdata [16] = \w_ach.AWADDR [16] ;
   assign \memif_swchaddr.f0_wdata [15] = \w_ach.AWADDR [15] ;
   assign \memif_swchaddr.f0_wdata [14] = \w_ach.AWADDR [14] ;
   assign \memif_swchaddr.f0_wdata [13] = \w_ach.AWADDR [13] ;
   assign \memif_swchaddr.f0_wdata [12] = \w_ach.AWADDR [12] ;
   assign \memif_swchaddr.f0_wdata [11] = \w_ach.AWADDR [11] ;
   assign \memif_swchaddr.f0_wdata [10] = \w_ach.AWADDR [10] ;
   assign \memif_swchaddr.f0_wdata [9] = \w_ach.AWADDR [9] ;
   assign \memif_swchaddr.f0_wdata [8] = \w_ach.AWADDR [8] ;
   assign \memif_swchaddr.f0_wdata [7] = \w_ach.AWADDR [7] ;
   assign \memif_swchaddr.f0_wdata [6] = \w_ach.AWADDR [6] ;
   assign \memif_swchaddr.f0_wdata [5] = \w_ach.AWADDR [5] ;
   assign \memif_swchaddr.f0_wdata [4] = \w_ach.AWADDR [4] ;
   assign \memif_swchaddr.f0_wdata [3] = \w_ach.AWADDR [3] ;
   assign \memif_swchaddr.f0_wdata [2] = \w_ach.AWADDR [2] ;
   assign \memif_swchaddr.f0_wdata [1] = \w_ach.AWADDR [1] ;
   assign \memif_swchaddr.f0_wdata [0] = \w_ach.AWADDR [0] ;
   assign reg_write_data[31] = \memif_swchdata.f0_wdata [31] ;
   assign \memif_swchdata.f0_wdata [31] = \w_dch.WDATA [31] ;
   assign reg_write_data[30] = \memif_swchdata.f0_wdata [30] ;
   assign \memif_swchdata.f0_wdata [30] = \w_dch.WDATA [30] ;
   assign reg_write_data[29] = \memif_swchdata.f0_wdata [29] ;
   assign \memif_swchdata.f0_wdata [29] = \w_dch.WDATA [29] ;
   assign reg_write_data[28] = \memif_swchdata.f0_wdata [28] ;
   assign \memif_swchdata.f0_wdata [28] = \w_dch.WDATA [28] ;
   assign reg_write_data[27] = \memif_swchdata.f0_wdata [27] ;
   assign \memif_swchdata.f0_wdata [27] = \w_dch.WDATA [27] ;
   assign reg_write_data[26] = \memif_swchdata.f0_wdata [26] ;
   assign \memif_swchdata.f0_wdata [26] = \w_dch.WDATA [26] ;
   assign reg_write_data[25] = \memif_swchdata.f0_wdata [25] ;
   assign \memif_swchdata.f0_wdata [25] = \w_dch.WDATA [25] ;
   assign reg_write_data[24] = \memif_swchdata.f0_wdata [24] ;
   assign \memif_swchdata.f0_wdata [24] = \w_dch.WDATA [24] ;
   assign reg_write_data[23] = \memif_swchdata.f0_wdata [23] ;
   assign \memif_swchdata.f0_wdata [23] = \w_dch.WDATA [23] ;
   assign reg_write_data[22] = \memif_swchdata.f0_wdata [22] ;
   assign \memif_swchdata.f0_wdata [22] = \w_dch.WDATA [22] ;
   assign reg_write_data[21] = \memif_swchdata.f0_wdata [21] ;
   assign \memif_swchdata.f0_wdata [21] = \w_dch.WDATA [21] ;
   assign reg_write_data[20] = \memif_swchdata.f0_wdata [20] ;
   assign \memif_swchdata.f0_wdata [20] = \w_dch.WDATA [20] ;
   assign reg_write_data[19] = \memif_swchdata.f0_wdata [19] ;
   assign \memif_swchdata.f0_wdata [19] = \w_dch.WDATA [19] ;
   assign reg_write_data[18] = \memif_swchdata.f0_wdata [18] ;
   assign \memif_swchdata.f0_wdata [18] = \w_dch.WDATA [18] ;
   assign reg_write_data[17] = \memif_swchdata.f0_wdata [17] ;
   assign \memif_swchdata.f0_wdata [17] = \w_dch.WDATA [17] ;
   assign reg_write_data[16] = \memif_swchdata.f0_wdata [16] ;
   assign \memif_swchdata.f0_wdata [16] = \w_dch.WDATA [16] ;
   assign reg_write_data[15] = \memif_swchdata.f0_wdata [15] ;
   assign \memif_swchdata.f0_wdata [15] = \w_dch.WDATA [15] ;
   assign reg_write_data[14] = \memif_swchdata.f0_wdata [14] ;
   assign \memif_swchdata.f0_wdata [14] = \w_dch.WDATA [14] ;
   assign reg_write_data[13] = \memif_swchdata.f0_wdata [13] ;
   assign \memif_swchdata.f0_wdata [13] = \w_dch.WDATA [13] ;
   assign reg_write_data[12] = \memif_swchdata.f0_wdata [12] ;
   assign \memif_swchdata.f0_wdata [12] = \w_dch.WDATA [12] ;
   assign reg_write_data[11] = \memif_swchdata.f0_wdata [11] ;
   assign \memif_swchdata.f0_wdata [11] = \w_dch.WDATA [11] ;
   assign reg_write_data[10] = \memif_swchdata.f0_wdata [10] ;
   assign \memif_swchdata.f0_wdata [10] = \w_dch.WDATA [10] ;
   assign reg_write_data[9] = \memif_swchdata.f0_wdata [9] ;
   assign \memif_swchdata.f0_wdata [9] = \w_dch.WDATA [9] ;
   assign reg_write_data[8] = \memif_swchdata.f0_wdata [8] ;
   assign \memif_swchdata.f0_wdata [8] = \w_dch.WDATA [8] ;
   assign reg_write_data[7] = \memif_swchdata.f0_wdata [7] ;
   assign \memif_swchdata.f0_wdata [7] = \w_dch.WDATA [7] ;
   assign reg_write_data[6] = \memif_swchdata.f0_wdata [6] ;
   assign \memif_swchdata.f0_wdata [6] = \w_dch.WDATA [6] ;
   assign reg_write_data[5] = \memif_swchdata.f0_wdata [5] ;
   assign \memif_swchdata.f0_wdata [5] = \w_dch.WDATA [5] ;
   assign reg_write_data[4] = \memif_swchdata.f0_wdata [4] ;
   assign \memif_swchdata.f0_wdata [4] = \w_dch.WDATA [4] ;
   assign reg_write_data[3] = \memif_swchdata.f0_wdata [3] ;
   assign \memif_swchdata.f0_wdata [3] = \w_dch.WDATA [3] ;
   assign reg_write_data[2] = \memif_swchdata.f0_wdata [2] ;
   assign \memif_swchdata.f0_wdata [2] = \w_dch.WDATA [2] ;
   assign reg_write_data[1] = \memif_swchdata.f0_wdata [1] ;
   assign \memif_swchdata.f0_wdata [1] = \w_dch.WDATA [1] ;
   assign reg_write_data[0] = \memif_swchdata.f0_wdata [0] ;
   assign \memif_swchdata.f0_wdata [0] = \w_dch.WDATA [0] ;
   assign \memif_swchrsp.f0_wdata [4] = 1'b0 ;
   assign \memif_swchrsp.f0_wdata [5] = 1'b0 ;
   assign \memif_swchdata.f0_raddr [0] = 1'b0 ;
   assign \memif_swchdata.f0_raddr [1] = 1'b0 ;
   assign \memif_swchdata.f0_raddr [2] = 1'b0 ;
   assign \memif_swchdata.f0_raddr [3] = 1'b0 ;
   assign \memif_swchdata.f0_raddr [4] = 1'b0 ;
   assign \memif_swchdata.f0_write  = 1'b0 ;
   assign \memif_swchdata.f0_waddr [0] = 1'b0 ;
   assign \memif_swchdata.f0_waddr [1] = 1'b0 ;
   assign \memif_swchdata.f0_waddr [2] = 1'b0 ;
   assign \memif_swchdata.f0_waddr [3] = 1'b0 ;
   assign \memif_swchdata.f0_waddr [4] = 1'b0 ;
   assign \memif_swchrsp.f0_wdata [3] = \w_dch.WID [3] ;
   assign \memif_swchrsp.f0_wdata [2] = \w_dch.WID [2] ;
   assign \memif_swchrsp.f0_wdata [1] = \w_dch.WID [1] ;
   assign \memif_swchrsp.f0_wdata [0] = \w_dch.WID [0] ;
   assign wr_en = \memif_swchrsp.f0_write  ;

   BUFX2 FE_OFCC105_n418 (.Y(FE_OFCN105_n418), 
	.A(n418));
   BUFX2 FE_OFCC104_n419 (.Y(FE_OFCN104_n419), 
	.A(n419));
   BUFX2 FE_OFCC103_n421 (.Y(FE_OFCN103_n421), 
	.A(n421));
   BUFX2 FE_OFCC102_n422 (.Y(FE_OFCN102_n422), 
	.A(n422));
   BUFX2 FE_OFCC101_n423 (.Y(FE_OFCN101_n423), 
	.A(n423));
   BUFX2 FE_OFCC100_n424 (.Y(FE_OFCN100_n424), 
	.A(n424));
   BUFX2 FE_OFCC99_n425 (.Y(FE_OFCN99_n425), 
	.A(n425));
   BUFX2 FE_OFCC98_n426 (.Y(FE_OFCN98_n426), 
	.A(n426));
   BUFX2 FE_OFCC97_n427 (.Y(FE_OFCN97_n427), 
	.A(n427));
   BUFX2 FE_OFCC96_n428 (.Y(FE_OFCN96_n428), 
	.A(n428));
   BUFX2 FE_OFCC95_n429 (.Y(FE_OFCN95_n429), 
	.A(n429));
   BUFX2 FE_OFCC94_n430 (.Y(FE_OFCN94_n430), 
	.A(n430));
   BUFX2 FE_OFCC93_n431 (.Y(FE_OFCN93_n431), 
	.A(n431));
   BUFX2 FE_OFCC92_n432 (.Y(FE_OFCN92_n432), 
	.A(n432));
   BUFX2 FE_OFCC91_n433 (.Y(FE_OFCN91_n433), 
	.A(n433));
   BUFX2 FE_OFCC90_n434 (.Y(FE_OFCN90_n434), 
	.A(n434));
   BUFX2 FE_OFCC89_n435 (.Y(FE_OFCN89_n435), 
	.A(n435));
   BUFX2 FE_OFCC88_n436 (.Y(FE_OFCN88_n436), 
	.A(n436));
   BUFX2 FE_OFCC87_n437 (.Y(FE_OFCN87_n437), 
	.A(n437));
   BUFX2 FE_OFCC86_n438 (.Y(FE_OFCN86_n438), 
	.A(n438));
   BUFX2 FE_OFCC85_n439 (.Y(FE_OFCN85_n439), 
	.A(n439));
   BUFX2 FE_OFCC84_n440 (.Y(FE_OFCN84_n440), 
	.A(n440));
   BUFX2 FE_OFCC83_n441 (.Y(FE_OFCN83_n441), 
	.A(n441));
   BUFX2 FE_OFCC82_n442 (.Y(FE_OFCN82_n442), 
	.A(n442));
   BUFX2 FE_OFCC81_n443 (.Y(FE_OFCN81_n443), 
	.A(n443));
   BUFX2 FE_OFCC80_n444 (.Y(FE_OFCN80_n444), 
	.A(n444));
   BUFX2 FE_OFCC79_n505 (.Y(FE_OFCN79_n505), 
	.A(n505));
   BUFX2 FE_OFCC78_n403 (.Y(FE_OFCN78_n403), 
	.A(n403));
   BUFX2 FE_OFCC77_n165 (.Y(FE_OFCN77_n165), 
	.A(n165));
   BUFX2 FE_OFCC76_n516 (.Y(FE_OFCN76_n516), 
	.A(n516));
   BUFX2 FE_OFCC75_n150 (.Y(FE_OFCN75_n150), 
	.A(n150));
   BUFX2 FE_OFCC74_n170 (.Y(FE_OFCN74_n170), 
	.A(n170));
   BUFX2 FE_OFCC73_burst_addr_nxt_5_ (.Y(FE_OFCN73_burst_addr_nxt_5_), 
	.A(burst_addr_nxt[5]));
   BUFX4 FE_OFCC72_burst_addr_nxt_6_ (.Y(FE_OFCN72_burst_addr_nxt_6_), 
	.A(burst_addr_nxt[6]));
   BUFX2 FE_OFCC71_burst_addr_nxt_31_ (.Y(FE_OFCN71_burst_addr_nxt_31_), 
	.A(burst_addr_nxt[31]));
   BUFX2 FE_OFCC70_burst_addr_nxt_7_ (.Y(FE_OFCN70_burst_addr_nxt_7_), 
	.A(burst_addr_nxt[7]));
   BUFX4 FE_OFCC69_n413 (.Y(FE_OFCN69_n413), 
	.A(n413));
   BUFX4 FE_OFCC68_n508 (.Y(FE_OFCN68_n508), 
	.A(n508));
   BUFX4 FE_OFCC67_n534 (.Y(FE_OFCN67_n534), 
	.A(n534));
   BUFX2 FE_OFCC66_n451 (.Y(FE_OFCN66_n451), 
	.A(n451));
   BUFX2 FE_OFCC65_wchrsp_fifo_n1 (.Y(FE_OFCN65_wchrsp_fifo_n1), 
	.A(\wchrsp_fifo/n1 ));
   BUFX2 FE_OFCC64_wchaddr_fifo_n1 (.Y(FE_OFCN64_wchaddr_fifo_n1), 
	.A(\wchaddr_fifo/n1 ));
   BUFX2 FE_OFCC63_n544 (.Y(FE_OFCN63_n544), 
	.A(n544));
   BUFX2 FE_OFCC62_n545 (.Y(FE_OFCN62_n545), 
	.A(n545));
   BUFX2 FE_OFCC61_n546 (.Y(FE_OFCN61_n546), 
	.A(n546));
   BUFX2 FE_OFCC60_n547 (.Y(FE_OFCN60_n547), 
	.A(n547));
   BUFX2 FE_OFCC59_n548 (.Y(FE_OFCN59_n548), 
	.A(n548));
   BUFX2 FE_OFCC58_n539 (.Y(FE_OFCN58_n539), 
	.A(n539));
   BUFX2 FE_OFCC57_n540 (.Y(FE_OFCN57_n540), 
	.A(n540));
   BUFX2 FE_OFCC56_n541 (.Y(FE_OFCN56_n541), 
	.A(n541));
   BUFX2 FE_OFCC55_n542 (.Y(FE_OFCN55_n542), 
	.A(n542));
   BUFX2 FE_OFCC54_n543 (.Y(FE_OFCN54_n543), 
	.A(n543));
   BUFX2 FE_OFCC53_n554 (.Y(FE_OFCN53_n554), 
	.A(n554));
   BUFX2 FE_OFCC52_n555 (.Y(FE_OFCN52_n555), 
	.A(n555));
   BUFX2 FE_OFCC51_n556 (.Y(FE_OFCN51_n556), 
	.A(n556));
   BUFX2 FE_OFCC50_n557 (.Y(FE_OFCN50_n557), 
	.A(n557));
   BUFX2 FE_OFCC49_n558 (.Y(FE_OFCN49_n558), 
	.A(n558));
   BUFX2 FE_OFCC48_n549 (.Y(FE_OFCN48_n549), 
	.A(n549));
   BUFX2 FE_OFCC47_n550 (.Y(FE_OFCN47_n550), 
	.A(n550));
   BUFX2 FE_OFCC46_n551 (.Y(FE_OFCN46_n551), 
	.A(n551));
   BUFX2 FE_OFCC45_n552 (.Y(FE_OFCN45_n552), 
	.A(n552));
   BUFX2 FE_OFCC44_n553 (.Y(FE_OFCN44_n553), 
	.A(n553));
   BUFX2 FE_OFCC43_wchrsp_fifo_n2 (.Y(FE_OFCN43_wchrsp_fifo_n2), 
	.A(\wchrsp_fifo/n2 ));
   BUFX2 FE_OFCC42_wchrsp_fifo_n3 (.Y(FE_OFCN42_wchrsp_fifo_n3), 
	.A(\wchrsp_fifo/n3 ));
   BUFX2 FE_OFCC41_wchrsp_fifo_n4 (.Y(FE_OFCN41_wchrsp_fifo_n4), 
	.A(\wchrsp_fifo/n4 ));
   BUFX2 FE_OFCC40_wchrsp_fifo_n5 (.Y(FE_OFCN40_wchrsp_fifo_n5), 
	.A(\wchrsp_fifo/n5 ));
   BUFX2 FE_OFCC39_wchrsp_fifo_n6 (.Y(FE_OFCN39_wchrsp_fifo_n6), 
	.A(\wchrsp_fifo/n6 ));
   BUFX2 FE_OFCC38_n538 (.Y(FE_OFCN38_n538), 
	.A(n538));
   BUFX2 FE_OFCC37_N70 (.Y(FE_OFCN37_N70), 
	.A(N70));
   BUFX2 FE_OFCC36_N69 (.Y(FE_OFCN36_N69), 
	.A(N69));
   BUFX2 FE_OFCC35_N68 (.Y(FE_OFCN35_N68), 
	.A(N68));
   BUFX2 FE_OFCC34_N67 (.Y(FE_OFCN34_N67), 
	.A(N67));
   BUFX2 FE_OFCC33_N66 (.Y(FE_OFCN33_N66), 
	.A(N66));
   BUFX2 FE_OFCC32_N65 (.Y(FE_OFCN32_N65), 
	.A(N65));
   BUFX2 FE_OFCC31_N64 (.Y(FE_OFCN31_N64), 
	.A(N64));
   BUFX2 FE_OFCC30_N63 (.Y(FE_OFCN30_N63), 
	.A(N63));
   BUFX2 FE_OFCC29_N62 (.Y(FE_OFCN29_N62), 
	.A(N62));
   BUFX2 FE_OFCC28_N61 (.Y(FE_OFCN28_N61), 
	.A(N61));
   BUFX2 FE_OFCC27_N60 (.Y(FE_OFCN27_N60), 
	.A(N60));
   BUFX2 FE_OFCC26_N59 (.Y(FE_OFCN26_N59), 
	.A(N59));
   BUFX2 FE_OFCC25_N58 (.Y(FE_OFCN25_N58), 
	.A(N58));
   BUFX2 FE_OFCC24_N57 (.Y(FE_OFCN24_N57), 
	.A(N57));
   BUFX2 FE_OFCC23_N56 (.Y(FE_OFCN23_N56), 
	.A(N56));
   BUFX2 FE_OFCC22_N55 (.Y(FE_OFCN22_N55), 
	.A(N55));
   BUFX2 FE_OFCC21_N54 (.Y(FE_OFCN21_N54), 
	.A(N54));
   BUFX2 FE_OFCC20_N53 (.Y(FE_OFCN20_N53), 
	.A(N53));
   BUFX2 FE_OFCC19_N52 (.Y(FE_OFCN19_N52), 
	.A(N52));
   BUFX2 FE_OFCC18_N51 (.Y(FE_OFCN18_N51), 
	.A(N51));
   BUFX2 FE_OFCC17_N50 (.Y(FE_OFCN17_N50), 
	.A(N50));
   BUFX2 FE_OFCC16_N49 (.Y(FE_OFCN16_N49), 
	.A(N49));
   BUFX2 FE_OFCC15_N48 (.Y(FE_OFCN15_N48), 
	.A(N48));
   BUFX2 FE_OFCC14_N47 (.Y(FE_OFCN14_N47), 
	.A(N47));
   BUFX2 FE_OFCC13_N46 (.Y(FE_OFCN13_N46), 
	.A(N46));
   BUFX2 FE_OFCC12_N45 (.Y(FE_OFCN12_N45), 
	.A(N45));
   BUFX2 FE_OFCC11_N44 (.Y(FE_OFCN11_N44), 
	.A(N44));
   BUFX2 FE_OFCC10_N43 (.Y(FE_OFCN10_N43), 
	.A(N43));
   BUFX2 FE_OFCC9_w_dch_cur_state_1_ (.Y(FE_OFCN9_w_dch_cur_state_1_), 
	.A(w_dch_cur_state[1]));
   BUFX2 FE_OFCC8_w_dch_cur_state_0_ (.Y(FE_OFCN8_w_dch_cur_state_0_), 
	.A(w_dch_cur_state[0]));
   BUFX2 FE_OFCC7_wchaddr_fifo_n3 (.Y(FE_OFCN7_wchaddr_fifo_n3), 
	.A(\wchaddr_fifo/n3 ));
   BUFX2 FE_OFCC6_wchaddr_fifo_n4 (.Y(FE_OFCN6_wchaddr_fifo_n4), 
	.A(\wchaddr_fifo/n4 ));
   BUFX2 FE_OFCC5_wchaddr_fifo_n5 (.Y(FE_OFCN5_wchaddr_fifo_n5), 
	.A(\wchaddr_fifo/n5 ));
   BUFX2 FE_OFCC4_wchaddr_fifo_n6 (.Y(FE_OFCN4_wchaddr_fifo_n6), 
	.A(\wchaddr_fifo/n6 ));
   BUFX2 FE_OFCC3_wchaddr_fifo_n2 (.Y(FE_OFCN3_wchaddr_fifo_n2), 
	.A(\wchaddr_fifo/n2 ));
   BUFX2 FE_OFCC2_n537 (.Y(FE_OFCN2_n537), 
	.A(n537));
   BUFX2 FE_OFCC1_w_rspch_cur_state_0_ (.Y(FE_OFCN1_w_rspch_cur_state_0_), 
	.A(\w_rspch_cur_state[0] ));
   BUFX2 FE_OFCC0_w_ach_cur_state_0_ (.Y(FE_OFCN0_w_ach_cur_state_0_), 
	.A(\w_ach_cur_state[0] ));
   INVX4 FECTS_clks_clk___L2_I7 (.Y(FECTS_clks_clk___L2_N7), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I6 (.Y(FECTS_clks_clk___L2_N6), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I5 (.Y(FECTS_clks_clk___L2_N5), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I4 (.Y(FECTS_clks_clk___L2_N4), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I3 (.Y(FECTS_clks_clk___L2_N3), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I2 (.Y(FECTS_clks_clk___L2_N2), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I1 (.Y(FECTS_clks_clk___L2_N1), 
	.A(FECTS_clks_clk___L1_N0));
   INVX4 FECTS_clks_clk___L2_I0 (.Y(FECTS_clks_clk___L2_N0), 
	.A(FECTS_clks_clk___L1_N0));
   INVX8 FECTS_clks_clk___L1_I0 (.Y(FECTS_clks_clk___L1_N0), 
	.A(\clks.clk ));
   DFFSR \w_ach_cur_state_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\w_ach_cur_state[0] ), 
	.D(n182), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \w_rspch_cur_state_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\w_rspch_cur_state[0] ), 
	.D(n310), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR awready_d_reg (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n537), 
	.D(n227), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \wchaddr_fifo/depth_left_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchaddr_fifo/n2 ), 
	.D(n161), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \wchaddr_fifo/depth_left_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchaddr_fifo/n6 ), 
	.D(n160), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchaddr_fifo/depth_left_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchaddr_fifo/n5 ), 
	.D(n159), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchaddr_fifo/depth_left_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchaddr_fifo/n4 ), 
	.D(n158), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchaddr_fifo/depth_left_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchaddr_fifo/n3 ), 
	.D(n157), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \w_dch_cur_state_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(w_dch_cur_state[0]), 
	.D(n178), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \w_dch_cur_state_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(w_dch_cur_state[1]), 
	.D(n179), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \burst_addr_d_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N43), 
	.D(burst_addr_nxt[4]), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \burst_addr_d_reg[5]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N44), 
	.D(n220), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \burst_addr_d_reg[6]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N45), 
	.D(n222), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \burst_addr_d_reg[7]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N46), 
	.D(n223), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \burst_addr_d_reg[8]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N47), 
	.D(n229), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[9]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N48), 
	.D(n230), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[10]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N49), 
	.D(n231), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[11]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N50), 
	.D(n232), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[12]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N51), 
	.D(n233), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[13]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N52), 
	.D(n234), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[14]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N53), 
	.D(n235), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[15]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N54), 
	.D(n236), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[16]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N55), 
	.D(n237), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[17]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N56), 
	.D(n238), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[18]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N57), 
	.D(n239), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[19]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N58), 
	.D(n240), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[20]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N59), 
	.D(n241), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[21]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N60), 
	.D(n242), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[22]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N61), 
	.D(n243), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[23]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N62), 
	.D(n244), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[24]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N63), 
	.D(n245), 
	.CLK(FECTS_clks_clk___L2_N7));
   DFFSR \burst_addr_d_reg[25]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N64), 
	.D(n246), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[26]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N65), 
	.D(n247), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[27]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N66), 
	.D(n248), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \burst_addr_d_reg[28]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N67), 
	.D(n249), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[29]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N68), 
	.D(n250), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \burst_addr_d_reg[30]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N69), 
	.D(n251), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \burst_addr_d_reg[31]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(N70), 
	.D(n224), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR wready_d_reg (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n538), 
	.D(n185), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/depth_left_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchrsp_fifo/n6 ), 
	.D(n176), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchrsp_fifo/depth_left_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchrsp_fifo/n5 ), 
	.D(n175), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchrsp_fifo/depth_left_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchrsp_fifo/n4 ), 
	.D(n174), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchrsp_fifo/depth_left_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchrsp_fifo/n3 ), 
	.D(n173), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchrsp_fifo/depth_left_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\wchrsp_fifo/n2 ), 
	.D(n172), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \wchrsp_fifo/w_ptr_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n553), 
	.D(n171), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \wchrsp_fifo/w_ptr_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n552), 
	.D(n221), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/w_ptr_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n551), 
	.D(n169), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \wchrsp_fifo/w_ptr_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n550), 
	.D(n168), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/w_ptr_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n549), 
	.D(n167), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/r_ptr_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n558), 
	.D(n166), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/r_ptr_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n557), 
	.D(n225), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchrsp_fifo/r_ptr_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n556), 
	.D(n164), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchrsp_fifo/r_ptr_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n555), 
	.D(n163), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchrsp_fifo/r_ptr_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n554), 
	.D(n162), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchaddr_fifo/w_ptr_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n543), 
	.D(n156), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \wchaddr_fifo/w_ptr_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n542), 
	.D(n228), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \wchaddr_fifo/w_ptr_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n541), 
	.D(n154), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchaddr_fifo/w_ptr_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n540), 
	.D(n153), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchaddr_fifo/w_ptr_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n539), 
	.D(n152), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchaddr_fifo/r_ptr_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n548), 
	.D(n533), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchaddr_fifo/r_ptr_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n547), 
	.D(n226), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchaddr_fifo/r_ptr_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n546), 
	.D(n149), 
	.CLK(FECTS_clks_clk___L2_N4));
   DFFSR \wchaddr_fifo/r_ptr_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n545), 
	.D(n148), 
	.CLK(FECTS_clks_clk___L2_N6));
   DFFSR \wchaddr_fifo/r_ptr_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(n544), 
	.D(n147), 
	.CLK(FECTS_clks_clk___L2_N5));
   DFFSR \wchaddr_fifo/depth_left_reg[5]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(\wchaddr_fifo/n1 ), 
	.D(n180), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \wchrsp_fifo/depth_left_reg[5]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(\wchrsp_fifo/n1 ), 
	.D(n177), 
	.CLK(FECTS_clks_clk___L2_N2));
   FAX1 \intadd_0/U5  (.YS(\wchrsp_fifo/N33 ), 
	.YC(\intadd_0/n4 ), 
	.C(n367), 
	.B(n305), 
	.A(n293));
   FAX1 \intadd_0/U4  (.YS(\wchrsp_fifo/N34 ), 
	.YC(\intadd_0/n3 ), 
	.C(\intadd_0/n4 ), 
	.B(n302), 
	.A(n367));
   FAX1 \intadd_0/U3  (.YS(\wchrsp_fifo/N35 ), 
	.YC(\intadd_0/n2 ), 
	.C(\intadd_0/n3 ), 
	.B(n300), 
	.A(n367));
   FAX1 \intadd_0/U2  (.YS(\wchrsp_fifo/N36 ), 
	.YC(\intadd_0/n1 ), 
	.C(\intadd_0/n2 ), 
	.B(n301), 
	.A(n367));
   FAX1 \intadd_1/U5  (.YS(\wchaddr_fifo/N33 ), 
	.YC(\intadd_1/n4 ), 
	.C(\wchaddr_fifo/N18 ), 
	.B(n362), 
	.A(n304));
   FAX1 \intadd_1/U4  (.YS(\wchaddr_fifo/N34 ), 
	.YC(\intadd_1/n3 ), 
	.C(\intadd_1/n4 ), 
	.B(n299), 
	.A(\wchaddr_fifo/N18 ));
   FAX1 \intadd_1/U3  (.YS(\wchaddr_fifo/N35 ), 
	.YC(\intadd_1/n2 ), 
	.C(\intadd_1/n3 ), 
	.B(n361), 
	.A(\wchaddr_fifo/N18 ));
   FAX1 \intadd_1/U2  (.YS(\wchaddr_fifo/N36 ), 
	.YC(\intadd_1/n1 ), 
	.C(\intadd_1/n2 ), 
	.B(n364), 
	.A(\wchaddr_fifo/N18 ));
   AND2X2 U231 (.Y(n455), 
	.B(n334), 
	.A(n287));
   AND2X2 U232 (.Y(n371), 
	.B(n258), 
	.A(n214));
   AND2X2 U233 (.Y(n374), 
	.B(n217), 
	.A(n399));
   OR2X2 U234 (.Y(\wchrsp_fifo/N18 ), 
	.B(n303), 
	.A(n408));
   AND2X2 U235 (.Y(n412), 
	.B(\memif_swchaddr.f0_waddr [1]), 
	.A(\memif_swchaddr.f0_waddr [0]));
   AND2X2 U236 (.Y(n497), 
	.B(n355), 
	.A(n495));
   AND2X2 U237 (.Y(n495), 
	.B(n354), 
	.A(n493));
   AND2X2 U238 (.Y(n493), 
	.B(n353), 
	.A(n491));
   AND2X2 U239 (.Y(n491), 
	.B(n352), 
	.A(n489));
   AND2X2 U240 (.Y(n489), 
	.B(n351), 
	.A(n487));
   AND2X2 U241 (.Y(n487), 
	.B(n350), 
	.A(n485));
   AND2X2 U242 (.Y(n485), 
	.B(n349), 
	.A(n483));
   AND2X2 U243 (.Y(n483), 
	.B(n348), 
	.A(n481));
   AND2X2 U244 (.Y(n481), 
	.B(n347), 
	.A(n479));
   AND2X2 U245 (.Y(n479), 
	.B(n346), 
	.A(n477));
   AND2X2 U246 (.Y(n477), 
	.B(n345), 
	.A(n475));
   AND2X2 U247 (.Y(n475), 
	.B(n344), 
	.A(n473));
   AND2X2 U248 (.Y(n473), 
	.B(n343), 
	.A(n471));
   AND2X2 U249 (.Y(n471), 
	.B(n342), 
	.A(n469));
   AND2X2 U250 (.Y(n469), 
	.B(n341), 
	.A(n467));
   AND2X2 U251 (.Y(n467), 
	.B(n340), 
	.A(n465));
   AND2X2 U252 (.Y(n465), 
	.B(n339), 
	.A(n463));
   AND2X2 U253 (.Y(n463), 
	.B(n338), 
	.A(n461));
   AND2X2 U254 (.Y(n461), 
	.B(n337), 
	.A(n459));
   AND2X2 U255 (.Y(n459), 
	.B(n336), 
	.A(n457));
   AND2X2 U256 (.Y(n457), 
	.B(n335), 
	.A(n455));
   OR2X2 U257 (.Y(n453), 
	.B(n452), 
	.A(n277));
   INVX4 U258 (.Y(n509), 
	.A(n365));
   AND2X2 U259 (.Y(\memif_swchaddr.f0_write ), 
	.B(\w_ach.AWREADY ), 
	.A(\w_ach.AWVALID ));
   AND2X2 U260 (.Y(n378), 
	.B(n218), 
	.A(n329));
   OR2X2 U261 (.Y(n519), 
	.B(n278), 
	.A(n518));
   AND2X2 U262 (.Y(n521), 
	.B(n288), 
	.A(\memif_swchrsp.f0_raddr [2]));
   AND2X2 U263 (.Y(n502), 
	.B(n219), 
	.A(n269));
   AND2X2 U264 (.Y(n380), 
	.B(n371), 
	.A(n213));
   AND2X2 U265 (.Y(n375), 
	.B(n371), 
	.A(n215));
   AND2X2 U266 (.Y(n382), 
	.B(\memif_swchrsp.f0_write ), 
	.A(n269));
   AND2X2 U267 (.Y(n404), 
	.B(\memif_swchrsp.f0_write ), 
	.A(n216));
   AND2X2 U268 (.Y(n533), 
	.B(n328), 
	.A(n312));
   OR2X2 U269 (.Y(n182), 
	.B(n318), 
	.A(\clks.rst ));
   OR2X2 U270 (.Y(n450), 
	.B(n287), 
	.A(n365));
   AND2X2 U271 (.Y(n500), 
	.B(n356), 
	.A(n497));
   OR2X2 U272 (.Y(n415), 
	.B(n509), 
	.A(n504));
   INVX2 U273 (.Y(n186), 
	.A(n415));
   BUFX2 U274 (.Y(n187), 
	.A(FE_OFCN105_n418));
   BUFX2 U275 (.Y(n188), 
	.A(FE_OFCN103_n421));
   BUFX2 U276 (.Y(n189), 
	.A(FE_OFCN102_n422));
   BUFX2 U277 (.Y(n190), 
	.A(FE_OFCN101_n423));
   BUFX2 U278 (.Y(n191), 
	.A(FE_OFCN100_n424));
   BUFX2 U279 (.Y(n192), 
	.A(FE_OFCN99_n425));
   BUFX2 U280 (.Y(n193), 
	.A(FE_OFCN98_n426));
   BUFX2 U281 (.Y(n194), 
	.A(FE_OFCN97_n427));
   BUFX2 U282 (.Y(n195), 
	.A(FE_OFCN96_n428));
   BUFX2 U283 (.Y(n196), 
	.A(FE_OFCN95_n429));
   BUFX2 U284 (.Y(n197), 
	.A(FE_OFCN94_n430));
   BUFX2 U285 (.Y(n198), 
	.A(FE_OFCN93_n431));
   BUFX2 U286 (.Y(n199), 
	.A(FE_OFCN92_n432));
   BUFX2 U287 (.Y(n200), 
	.A(FE_OFCN91_n433));
   BUFX2 U288 (.Y(n201), 
	.A(FE_OFCN90_n434));
   BUFX2 U289 (.Y(n202), 
	.A(FE_OFCN89_n435));
   BUFX2 U290 (.Y(n203), 
	.A(FE_OFCN88_n436));
   BUFX2 U291 (.Y(n204), 
	.A(FE_OFCN87_n437));
   BUFX2 U292 (.Y(n205), 
	.A(FE_OFCN86_n438));
   BUFX2 U293 (.Y(n206), 
	.A(FE_OFCN85_n439));
   BUFX2 U294 (.Y(n207), 
	.A(FE_OFCN84_n440));
   BUFX2 U295 (.Y(n208), 
	.A(FE_OFCN83_n441));
   BUFX2 U296 (.Y(n209), 
	.A(FE_OFCN82_n442));
   BUFX2 U297 (.Y(n210), 
	.A(FE_OFCN81_n443));
   BUFX2 U298 (.Y(n211), 
	.A(FE_OFCN80_n444));
   BUFX2 U299 (.Y(n212), 
	.A(FE_OFCN1_w_rspch_cur_state_0_));
   OR2X2 U300 (.Y(n328), 
	.B(n330), 
	.A(n329));
   OR2X2 U301 (.Y(n330), 
	.B(n377), 
	.A(n286));
   OR2X2 U302 (.Y(n365), 
	.B(n366), 
	.A(n292));
   OR2X2 U303 (.Y(n447), 
	.B(n365), 
	.A(n298));
   OR2X2 U304 (.Y(n366), 
	.B(n501), 
	.A(n296));
   INVX1 U305 (.Y(n213), 
	.A(n370));
   OR2X2 U306 (.Y(n370), 
	.B(n294), 
	.A(n364));
   INVX1 U307 (.Y(n214), 
	.A(n369));
   OR2X2 U308 (.Y(n369), 
	.B(n304), 
	.A(n361));
   INVX1 U309 (.Y(n215), 
	.A(n372));
   OR2X2 U310 (.Y(n372), 
	.B(n295), 
	.A(n364));
   INVX1 U311 (.Y(n216), 
	.A(n393));
   AND2X2 U312 (.Y(n393), 
	.B(n410), 
	.A(n401));
   INVX1 U313 (.Y(n217), 
	.A(n373));
   OR2X2 U314 (.Y(n373), 
	.B(n301), 
	.A(n300));
   AND2X2 U315 (.Y(n376), 
	.B(n382), 
	.A(n270));
   INVX1 U316 (.Y(n218), 
	.A(n376));
   OR2X2 U317 (.Y(n379), 
	.B(n511), 
	.A(n501));
   INVX1 U318 (.Y(n219), 
	.A(n379));
   BUFX2 U319 (.Y(n220), 
	.A(FE_OFCN73_burst_addr_nxt_5_));
   BUFX2 U320 (.Y(n221), 
	.A(FE_OFCN74_n170));
   BUFX2 U321 (.Y(n222), 
	.A(FE_OFCN72_burst_addr_nxt_6_));
   BUFX2 U322 (.Y(n223), 
	.A(FE_OFCN70_burst_addr_nxt_7_));
   BUFX2 U323 (.Y(n224), 
	.A(FE_OFCN71_burst_addr_nxt_31_));
   BUFX2 U324 (.Y(n225), 
	.A(FE_OFCN77_n165));
   BUFX2 U325 (.Y(n226), 
	.A(FE_OFCN75_n150));
   INVX1 U326 (.Y(n227), 
	.A(awready_nxt));
   OR2X2 U327 (.Y(awready_nxt), 
	.B(n259), 
	.A(n375));
   INVX1 U328 (.Y(n228), 
	.A(n155));
   OR2X2 U329 (.Y(n155), 
	.B(n414), 
	.A(n257));
   INVX1 U330 (.Y(n229), 
	.A(burst_addr_nxt[8]));
   OR2X2 U331 (.Y(burst_addr_nxt[8]), 
	.B(n454), 
	.A(n455));
   INVX1 U332 (.Y(n230), 
	.A(burst_addr_nxt[9]));
   OR2X2 U333 (.Y(burst_addr_nxt[9]), 
	.B(n456), 
	.A(n457));
   INVX1 U334 (.Y(n231), 
	.A(burst_addr_nxt[10]));
   OR2X2 U335 (.Y(burst_addr_nxt[10]), 
	.B(n458), 
	.A(n459));
   INVX1 U336 (.Y(n232), 
	.A(burst_addr_nxt[11]));
   OR2X2 U337 (.Y(burst_addr_nxt[11]), 
	.B(n460), 
	.A(n461));
   INVX1 U338 (.Y(n233), 
	.A(burst_addr_nxt[12]));
   OR2X2 U339 (.Y(burst_addr_nxt[12]), 
	.B(n462), 
	.A(n463));
   INVX1 U340 (.Y(n234), 
	.A(burst_addr_nxt[13]));
   OR2X2 U341 (.Y(burst_addr_nxt[13]), 
	.B(n464), 
	.A(n465));
   INVX1 U342 (.Y(n235), 
	.A(burst_addr_nxt[14]));
   OR2X2 U343 (.Y(burst_addr_nxt[14]), 
	.B(n466), 
	.A(n467));
   INVX1 U344 (.Y(n236), 
	.A(burst_addr_nxt[15]));
   OR2X2 U345 (.Y(burst_addr_nxt[15]), 
	.B(n468), 
	.A(n469));
   INVX1 U346 (.Y(n237), 
	.A(burst_addr_nxt[16]));
   OR2X2 U347 (.Y(burst_addr_nxt[16]), 
	.B(n470), 
	.A(n471));
   INVX1 U348 (.Y(n238), 
	.A(burst_addr_nxt[17]));
   OR2X2 U349 (.Y(burst_addr_nxt[17]), 
	.B(n472), 
	.A(n473));
   INVX1 U350 (.Y(n239), 
	.A(burst_addr_nxt[18]));
   OR2X2 U351 (.Y(burst_addr_nxt[18]), 
	.B(n474), 
	.A(n475));
   INVX1 U352 (.Y(n240), 
	.A(burst_addr_nxt[19]));
   OR2X2 U353 (.Y(burst_addr_nxt[19]), 
	.B(n476), 
	.A(n477));
   INVX1 U354 (.Y(n241), 
	.A(burst_addr_nxt[20]));
   OR2X2 U355 (.Y(burst_addr_nxt[20]), 
	.B(n478), 
	.A(n479));
   INVX1 U356 (.Y(n242), 
	.A(burst_addr_nxt[21]));
   OR2X2 U357 (.Y(burst_addr_nxt[21]), 
	.B(n480), 
	.A(n481));
   INVX1 U358 (.Y(n243), 
	.A(burst_addr_nxt[22]));
   OR2X2 U359 (.Y(burst_addr_nxt[22]), 
	.B(n482), 
	.A(n483));
   INVX1 U360 (.Y(n244), 
	.A(burst_addr_nxt[23]));
   OR2X2 U361 (.Y(burst_addr_nxt[23]), 
	.B(n484), 
	.A(n485));
   INVX1 U362 (.Y(n245), 
	.A(burst_addr_nxt[24]));
   OR2X2 U363 (.Y(burst_addr_nxt[24]), 
	.B(n486), 
	.A(n487));
   INVX1 U364 (.Y(n246), 
	.A(burst_addr_nxt[25]));
   OR2X2 U365 (.Y(burst_addr_nxt[25]), 
	.B(n488), 
	.A(n489));
   INVX1 U366 (.Y(n247), 
	.A(burst_addr_nxt[26]));
   OR2X2 U367 (.Y(burst_addr_nxt[26]), 
	.B(n490), 
	.A(n491));
   INVX1 U368 (.Y(n248), 
	.A(burst_addr_nxt[27]));
   OR2X2 U369 (.Y(burst_addr_nxt[27]), 
	.B(n492), 
	.A(n493));
   INVX1 U370 (.Y(n249), 
	.A(burst_addr_nxt[28]));
   OR2X2 U371 (.Y(burst_addr_nxt[28]), 
	.B(n494), 
	.A(n495));
   INVX1 U372 (.Y(n250), 
	.A(burst_addr_nxt[29]));
   OR2X2 U373 (.Y(burst_addr_nxt[29]), 
	.B(n496), 
	.A(n497));
   INVX1 U374 (.Y(n251), 
	.A(burst_addr_nxt[30]));
   OR2X2 U375 (.Y(burst_addr_nxt[30]), 
	.B(n498), 
	.A(n500));
   INVX1 U376 (.Y(n252), 
	.A(n386));
   AND2X2 U377 (.Y(n386), 
	.B(\wchaddr_fifo/N36 ), 
	.A(n390));
   INVX1 U378 (.Y(n253), 
	.A(n398));
   AND2X2 U379 (.Y(n398), 
	.B(\wchrsp_fifo/N33 ), 
	.A(n306));
   INVX1 U380 (.Y(n254), 
	.A(n420));
   AND2X2 U381 (.Y(n420), 
	.B(n186), 
	.A(\memif_swchaddr.f0_rdata [7]));
   INVX1 U382 (.Y(n255), 
	.A(n506));
   AND2X2 U383 (.Y(n506), 
	.B(n317), 
	.A(n296));
   INVX1 U384 (.Y(n256), 
	.A(n416));
   AND2X2 U385 (.Y(n416), 
	.B(\memif_swchaddr.f0_rdata [3]), 
	.A(n186));
   BUFX2 U386 (.Y(n257), 
	.A(FE_OFCN69_n413));
   OR2X2 U387 (.Y(n368), 
	.B(n362), 
	.A(n299));
   INVX1 U388 (.Y(n258), 
	.A(n368));
   INVX1 U389 (.Y(n259), 
	.A(n388));
   AND2X2 U390 (.Y(n388), 
	.B(n318), 
	.A(\w_ach.AWVALID ));
   INVX1 U391 (.Y(n260), 
	.A(n406));
   AND2X2 U392 (.Y(n406), 
	.B(n404), 
	.A(\memif_swchrsp.f0_waddr [0]));
   BUFX2 U393 (.Y(n261), 
	.A(FE_OFCN68_n508));
   BUFX2 U394 (.Y(\memif_swchaddr.f0_raddr [1]), 
	.A(FE_OFCN60_n547));
   AND2X2 U395 (.Y(n514), 
	.B(\memif_swchrsp.f0_waddr [3]), 
	.A(n513));
   INVX1 U396 (.Y(n263), 
	.A(n514));
   INVX1 U397 (.Y(n264), 
	.A(n522));
   AND2X2 U398 (.Y(n522), 
	.B(\memif_swchrsp.f0_raddr [3]), 
	.A(n521));
   AND2X2 U399 (.Y(n525), 
	.B(\memif_swchaddr.f0_waddr [3]), 
	.A(n524));
   INVX1 U400 (.Y(n265), 
	.A(n525));
   INVX1 U401 (.Y(n266), 
	.A(n531));
   AND2X2 U402 (.Y(n531), 
	.B(\memif_swchaddr.f0_raddr [3]), 
	.A(n530));
   BUFX2 U403 (.Y(\w_dch.WREADY ), 
	.A(FE_OFCN38_n538));
   BUFX2 U404 (.Y(\w_rspch.BVALID ), 
	.A(FE_OFCN67_n534));
   INVX1 U405 (.Y(n269), 
	.A(n380));
   AND2X2 U406 (.Y(n377), 
	.B(\memif_swchaddr.f0_write ), 
	.A(n375));
   INVX1 U407 (.Y(n270), 
	.A(n377));
   INVX1 U408 (.Y(n271), 
	.A(n375));
   INVX1 U409 (.Y(n272), 
	.A(n513));
   AND2X2 U410 (.Y(n513), 
	.B(n512), 
	.A(\memif_swchrsp.f0_waddr [2]));
   INVX1 U411 (.Y(n273), 
	.A(n524));
   AND2X2 U412 (.Y(n524), 
	.B(n414), 
	.A(\memif_swchaddr.f0_waddr [2]));
   INVX1 U413 (.Y(n274), 
	.A(n502));
   BUFX2 U414 (.Y(\memif_swchaddr.f0_raddr [0]), 
	.A(FE_OFCN59_n548));
   INVX1 U415 (.Y(n276), 
	.A(n446));
   AND2X2 U416 (.Y(n446), 
	.B(n298), 
	.A(n509));
   BUFX2 U417 (.Y(n277), 
	.A(FE_OFCN66_n451));
   INVX1 U418 (.Y(n278), 
	.A(n517));
   AND2X2 U419 (.Y(n517), 
	.B(n283), 
	.A(\memif_swchrsp.f0_raddr [0]));
   INVX1 U420 (.Y(n279), 
	.A(n449));
   AND2X2 U421 (.Y(n449), 
	.B(n298), 
	.A(n363));
   BUFX2 U422 (.Y(\memif_swchaddr.f0_waddr [1]), 
	.A(FE_OFCN55_n542));
   INVX1 U423 (.Y(n281), 
	.A(n414));
   AND2X2 U424 (.Y(n414), 
	.B(n411), 
	.A(n412));
   BUFX2 U425 (.Y(\memif_swchrsp.f0_raddr [2]), 
	.A(FE_OFCN51_n556));
   BUFX2 U426 (.Y(n283), 
	.A(FE_OFCN76_n516));
   BUFX2 U427 (.Y(\memif_swchrsp.f0_raddr [3]), 
	.A(FE_OFCN52_n555));
   INVX1 U428 (.Y(n285), 
	.A(n530));
   AND2X2 U429 (.Y(n530), 
	.B(n289), 
	.A(\memif_swchaddr.f0_raddr [2]));
   INVX1 U430 (.Y(n286), 
	.A(n382));
   INVX1 U431 (.Y(n287), 
	.A(n453));
   INVX1 U432 (.Y(n288), 
	.A(n519));
   OR2X2 U433 (.Y(n528), 
	.B(n328), 
	.A(n527));
   INVX1 U434 (.Y(n289), 
	.A(n528));
   INVX1 U435 (.Y(n290), 
	.A(n291));
   BUFX2 U436 (.Y(n291), 
	.A(FE_OFCN12_N45));
   BUFX2 U437 (.Y(n292), 
	.A(FE_OFCN8_w_dch_cur_state_0_));
   BUFX2 U438 (.Y(n293), 
	.A(FE_OFCN40_wchrsp_fifo_n5));
   INVX1 U439 (.Y(n294), 
	.A(n295));
   BUFX2 U440 (.Y(n295), 
	.A(FE_OFCN64_wchaddr_fifo_n1));
   INVX1 U441 (.Y(n296), 
	.A(n297));
   BUFX2 U442 (.Y(n297), 
	.A(FE_OFCN9_w_dch_cur_state_1_));
   BUFX2 U443 (.Y(n298), 
	.A(FE_OFCN10_N43));
   BUFX2 U444 (.Y(n299), 
	.A(FE_OFCN6_wchaddr_fifo_n4));
   BUFX2 U445 (.Y(n300), 
	.A(FE_OFCN42_wchrsp_fifo_n3));
   BUFX2 U446 (.Y(n301), 
	.A(FE_OFCN43_wchrsp_fifo_n2));
   BUFX2 U447 (.Y(n302), 
	.A(FE_OFCN41_wchrsp_fifo_n4));
   INVX1 U448 (.Y(n303), 
	.A(n404));
   BUFX2 U449 (.Y(n304), 
	.A(FE_OFCN5_wchaddr_fifo_n5));
   BUFX2 U450 (.Y(n305), 
	.A(FE_OFCN39_wchrsp_fifo_n6));
   INVX1 U451 (.Y(n306), 
	.A(n307));
   BUFX2 U452 (.Y(n307), 
	.A(FE_OFCN78_n403));
   BUFX2 U453 (.Y(n308), 
	.A(FE_OFCN104_n419));
   BUFX2 U454 (.Y(n309), 
	.A(FE_OFCN13_N46));
   AND2X2 U455 (.Y(n181), 
	.B(n392), 
	.A(n504));
   INVX1 U456 (.Y(n310), 
	.A(n181));
   AND2X2 U457 (.Y(n417), 
	.B(\memif_swchaddr.f0_rdata [4]), 
	.A(n186));
   INVX1 U458 (.Y(n311), 
	.A(n417));
   INVX1 U459 (.Y(n312), 
	.A(n378));
   BUFX2 U460 (.Y(\memif_swchrsp.f0_waddr [1]), 
	.A(FE_OFCN45_n552));
   BUFX2 U461 (.Y(\memif_swchrsp.f0_raddr [1]), 
	.A(FE_OFCN50_n557));
   INVX1 U462 (.Y(n315), 
	.A(n374));
   BUFX2 U463 (.Y(\w_ach.AWREADY ), 
	.A(FE_OFCN2_n537));
   BUFX2 U464 (.Y(n317), 
	.A(FE_OFCN79_n505));
   BUFX2 U465 (.Y(n318), 
	.A(FE_OFCN0_w_ach_cur_state_0_));
   BUFX2 U466 (.Y(\memif_swchrsp.f0_waddr [4]), 
	.A(FE_OFCN48_n549));
   BUFX2 U467 (.Y(\memif_swchrsp.f0_raddr [4]), 
	.A(FE_OFCN53_n554));
   BUFX2 U468 (.Y(\memif_swchaddr.f0_waddr [4]), 
	.A(FE_OFCN58_n539));
   BUFX2 U469 (.Y(\memif_swchaddr.f0_raddr [4]), 
	.A(FE_OFCN63_n544));
   BUFX2 U470 (.Y(\memif_swchaddr.f0_raddr [2]), 
	.A(FE_OFCN61_n546));
   BUFX2 U471 (.Y(\memif_swchrsp.f0_waddr [3]), 
	.A(FE_OFCN47_n550));
   BUFX2 U472 (.Y(\memif_swchaddr.f0_waddr [3]), 
	.A(FE_OFCN57_n540));
   BUFX2 U473 (.Y(\memif_swchaddr.f0_raddr [3]), 
	.A(FE_OFCN62_n545));
   INVX1 U474 (.Y(n327), 
	.A(n521));
   INVX1 U475 (.Y(n329), 
	.A(\memif_swchaddr.f0_raddr [0]));
   BUFX2 U476 (.Y(\memif_swchaddr.f0_waddr [2]), 
	.A(FE_OFCN56_n541));
   BUFX2 U477 (.Y(\memif_swchrsp.f0_waddr [2]), 
	.A(FE_OFCN46_n551));
   BUFX2 U478 (.Y(\memif_swchrsp.f0_raddr [0]), 
	.A(FE_OFCN49_n558));
   BUFX2 U479 (.Y(n334), 
	.A(FE_OFCN14_N47));
   BUFX2 U480 (.Y(n335), 
	.A(FE_OFCN15_N48));
   BUFX2 U481 (.Y(n336), 
	.A(FE_OFCN16_N49));
   BUFX2 U482 (.Y(n337), 
	.A(FE_OFCN17_N50));
   BUFX2 U483 (.Y(n338), 
	.A(FE_OFCN18_N51));
   BUFX2 U484 (.Y(n339), 
	.A(FE_OFCN19_N52));
   BUFX2 U485 (.Y(n340), 
	.A(FE_OFCN20_N53));
   BUFX2 U486 (.Y(n341), 
	.A(FE_OFCN21_N54));
   BUFX2 U487 (.Y(n342), 
	.A(FE_OFCN22_N55));
   BUFX2 U488 (.Y(n343), 
	.A(FE_OFCN23_N56));
   BUFX2 U489 (.Y(n344), 
	.A(FE_OFCN24_N57));
   BUFX2 U490 (.Y(n345), 
	.A(FE_OFCN25_N58));
   BUFX2 U491 (.Y(n346), 
	.A(FE_OFCN26_N59));
   BUFX2 U492 (.Y(n347), 
	.A(FE_OFCN27_N60));
   BUFX2 U493 (.Y(n348), 
	.A(FE_OFCN28_N61));
   BUFX2 U494 (.Y(n349), 
	.A(FE_OFCN29_N62));
   BUFX2 U495 (.Y(n350), 
	.A(FE_OFCN30_N63));
   BUFX2 U496 (.Y(n351), 
	.A(FE_OFCN31_N64));
   BUFX2 U497 (.Y(n352), 
	.A(FE_OFCN32_N65));
   BUFX2 U498 (.Y(n353), 
	.A(FE_OFCN33_N66));
   BUFX2 U499 (.Y(n354), 
	.A(FE_OFCN34_N67));
   BUFX2 U500 (.Y(n355), 
	.A(FE_OFCN35_N68));
   BUFX2 U501 (.Y(n356), 
	.A(FE_OFCN36_N69));
   BUFX2 U502 (.Y(n357), 
	.A(FE_OFCN37_N70));
   BUFX2 U503 (.Y(n358), 
	.A(FE_OFCN65_wchrsp_fifo_n1));
   BUFX2 U504 (.Y(\memif_swchrsp.f0_waddr [0]), 
	.A(FE_OFCN44_n553));
   BUFX2 U505 (.Y(\memif_swchaddr.f0_waddr [0]), 
	.A(FE_OFCN54_n543));
   BUFX2 U506 (.Y(n361), 
	.A(FE_OFCN7_wchaddr_fifo_n3));
   BUFX2 U507 (.Y(n362), 
	.A(FE_OFCN4_wchaddr_fifo_n6));
   BUFX2 U508 (.Y(n363), 
	.A(FE_OFCN11_N44));
   BUFX2 U509 (.Y(n364), 
	.A(FE_OFCN3_wchaddr_fifo_n2));
   INVX1 U510 (.Y(n367), 
	.A(\wchrsp_fifo/N18 ));
   AND2X2 U511 (.Y(\memif_swchrsp.f0_write ), 
	.B(\w_dch.WREADY ), 
	.A(\w_dch.WVALID ));
   AND2X2 U512 (.Y(n411), 
	.B(n271), 
	.A(\memif_swchaddr.f0_write ));
   AND2X2 U513 (.Y(\wchaddr_fifo/N18 ), 
	.B(n411), 
	.A(n286));
   INVX1 U514 (.Y(n399), 
	.A(n293));
   NOR3X1 U515 (.Y(n410), 
	.C(n315), 
	.B(n305), 
	.A(n302));
   INVX1 U516 (.Y(n392), 
	.A(n212));
   AOI21X1 U517 (.Y(n534), 
	.C(n392), 
	.B(n410), 
	.A(n358));
   INVX1 U518 (.Y(n501), 
	.A(\w_dch.WVALID ));
   INVX1 U519 (.Y(n511), 
	.A(n292));
   OAI21X1 U520 (.Y(n185), 
	.C(n365), 
	.B(n274), 
	.A(n297));
   INVX1 U521 (.Y(n381), 
	.A(\wchaddr_fifo/N18 ));
   OAI21X1 U522 (.Y(n390), 
	.C(n381), 
	.B(n286), 
	.A(\memif_swchaddr.f0_write ));
   MUX2X1 U523 (.Y(n383), 
	.S(n390), 
	.B(n361), 
	.A(\wchaddr_fifo/N35 ));
   INVX1 U524 (.Y(n157), 
	.A(n383));
   MUX2X1 U525 (.Y(n384), 
	.S(n390), 
	.B(n299), 
	.A(\wchaddr_fifo/N34 ));
   INVX1 U526 (.Y(n158), 
	.A(n384));
   XOR2X1 U527 (.Y(n160), 
	.B(n362), 
	.A(n390));
   MUX2X1 U528 (.Y(n385), 
	.S(n390), 
	.B(n304), 
	.A(\wchaddr_fifo/N33 ));
   INVX1 U529 (.Y(n159), 
	.A(n385));
   INVX1 U530 (.Y(n387), 
	.A(n364));
   OAI21X1 U531 (.Y(n161), 
	.C(n252), 
	.B(n387), 
	.A(n390));
   XOR2X1 U532 (.Y(n389), 
	.B(n295), 
	.A(\intadd_1/n1 ));
   XNOR2X1 U533 (.Y(n391), 
	.B(\wchaddr_fifo/N18 ), 
	.A(n389));
   MUX2X1 U534 (.Y(n180), 
	.S(n390), 
	.B(n294), 
	.A(n391));
   INVX1 U535 (.Y(n504), 
	.A(\clks.rst ));
   AND2X2 U536 (.Y(n408), 
	.B(\w_rspch.BVALID ), 
	.A(\w_rspch.BREADY ));
   INVX1 U537 (.Y(n401), 
	.A(n358));
   INVX1 U538 (.Y(n394), 
	.A(\memif_swchrsp.f0_write ));
   AOI21X1 U539 (.Y(n403), 
	.C(n367), 
	.B(n394), 
	.A(n408));
   MUX2X1 U540 (.Y(n395), 
	.S(n307), 
	.B(\wchrsp_fifo/N36 ), 
	.A(n301));
   INVX1 U541 (.Y(n172), 
	.A(n395));
   MUX2X1 U542 (.Y(n396), 
	.S(n307), 
	.B(\wchrsp_fifo/N35 ), 
	.A(n300));
   INVX1 U543 (.Y(n173), 
	.A(n396));
   MUX2X1 U544 (.Y(n397), 
	.S(n307), 
	.B(\wchrsp_fifo/N34 ), 
	.A(n302));
   INVX1 U545 (.Y(n174), 
	.A(n397));
   OAI21X1 U546 (.Y(n175), 
	.C(n253), 
	.B(n399), 
	.A(n306));
   XOR2X1 U547 (.Y(n400), 
	.B(n358), 
	.A(\intadd_0/n1 ));
   XNOR2X1 U548 (.Y(n402), 
	.B(n367), 
	.A(n400));
   MUX2X1 U549 (.Y(n177), 
	.S(n307), 
	.B(n402), 
	.A(n401));
   XNOR2X1 U550 (.Y(n176), 
	.B(n305), 
	.A(n307));
   XNOR2X1 U551 (.Y(n171), 
	.B(\memif_swchrsp.f0_waddr [0]), 
	.A(n303));
   INVX1 U552 (.Y(n407), 
	.A(\memif_swchrsp.f0_waddr [1]));
   INVX1 U553 (.Y(n405), 
	.A(\memif_swchrsp.f0_waddr [0]));
   NOR3X1 U554 (.Y(n512), 
	.C(n303), 
	.B(n407), 
	.A(n405));
   AOI21X1 U555 (.Y(n170), 
	.C(n512), 
	.B(n260), 
	.A(n407));
   XOR2X1 U556 (.Y(n169), 
	.B(\memif_swchrsp.f0_waddr [2]), 
	.A(n512));
   INVX1 U557 (.Y(n409), 
	.A(n408));
   AOI21X1 U558 (.Y(n516), 
	.C(n409), 
	.B(\memif_swchrsp.f0_write ), 
	.A(n410));
   XOR2X1 U559 (.Y(n166), 
	.B(\memif_swchrsp.f0_raddr [0]), 
	.A(n283));
   XOR2X1 U560 (.Y(n156), 
	.B(\memif_swchaddr.f0_waddr [0]), 
	.A(n411));
   AOI21X1 U561 (.Y(n413), 
	.C(\memif_swchaddr.f0_waddr [1]), 
	.B(n411), 
	.A(\memif_swchaddr.f0_waddr [0]));
   XNOR2X1 U562 (.Y(n154), 
	.B(\memif_swchaddr.f0_waddr [2]), 
	.A(n281));
   NAND2X1 U564 (.Y(reg_write_addr[3]), 
	.B(n256), 
	.A(n365));
   AND2X2 U565 (.Y(reg_write_addr[0]), 
	.B(\memif_swchaddr.f0_rdata [0]), 
	.A(n186));
   AND2X2 U566 (.Y(reg_write_addr[1]), 
	.B(\memif_swchaddr.f0_rdata [1]), 
	.A(n186));
   AND2X2 U567 (.Y(reg_write_addr[2]), 
	.B(\memif_swchaddr.f0_rdata [2]), 
	.A(n186));
   NAND2X1 U568 (.Y(reg_write_addr[4]), 
	.B(n311), 
	.A(n276));
   AOI22X1 U569 (.Y(n418), 
	.D(\memif_swchaddr.f0_rdata [5]), 
	.C(n186), 
	.B(n363), 
	.A(n509));
   INVX1 U570 (.Y(reg_write_addr[5]), 
	.A(n187));
   AOI22X1 U571 (.Y(n419), 
	.D(\memif_swchaddr.f0_rdata [6]), 
	.C(n186), 
	.B(n291), 
	.A(n509));
   INVX1 U572 (.Y(reg_write_addr[6]), 
	.A(n308));
   INVX1 U573 (.Y(n452), 
	.A(n309));
   OAI21X1 U574 (.Y(reg_write_addr[7]), 
	.C(n254), 
	.B(n365), 
	.A(n452));
   AOI22X1 U575 (.Y(n421), 
	.D(\memif_swchaddr.f0_rdata [8]), 
	.C(n186), 
	.B(n334), 
	.A(n509));
   INVX1 U576 (.Y(reg_write_addr[8]), 
	.A(n188));
   AOI22X1 U577 (.Y(n422), 
	.D(\memif_swchaddr.f0_rdata [9]), 
	.C(n186), 
	.B(n335), 
	.A(n509));
   INVX1 U578 (.Y(reg_write_addr[9]), 
	.A(n189));
   AOI22X1 U579 (.Y(n423), 
	.D(\memif_swchaddr.f0_rdata [10]), 
	.C(n186), 
	.B(n336), 
	.A(n509));
   INVX1 U580 (.Y(reg_write_addr[10]), 
	.A(n190));
   AOI22X1 U581 (.Y(n424), 
	.D(\memif_swchaddr.f0_rdata [11]), 
	.C(n186), 
	.B(n337), 
	.A(n509));
   INVX1 U582 (.Y(reg_write_addr[11]), 
	.A(n191));
   AOI22X1 U583 (.Y(n425), 
	.D(\memif_swchaddr.f0_rdata [12]), 
	.C(n186), 
	.B(n338), 
	.A(n509));
   INVX1 U584 (.Y(reg_write_addr[12]), 
	.A(n192));
   AOI22X1 U585 (.Y(n426), 
	.D(\memif_swchaddr.f0_rdata [13]), 
	.C(n186), 
	.B(n339), 
	.A(n509));
   INVX1 U586 (.Y(reg_write_addr[13]), 
	.A(n193));
   AOI22X1 U587 (.Y(n427), 
	.D(\memif_swchaddr.f0_rdata [14]), 
	.C(n186), 
	.B(n340), 
	.A(n509));
   INVX1 U588 (.Y(reg_write_addr[14]), 
	.A(n194));
   AOI22X1 U589 (.Y(n428), 
	.D(\memif_swchaddr.f0_rdata [15]), 
	.C(n186), 
	.B(n341), 
	.A(n509));
   INVX1 U590 (.Y(reg_write_addr[15]), 
	.A(n195));
   AOI22X1 U591 (.Y(n429), 
	.D(\memif_swchaddr.f0_rdata [16]), 
	.C(n186), 
	.B(n342), 
	.A(n509));
   INVX1 U592 (.Y(reg_write_addr[16]), 
	.A(n196));
   AOI22X1 U593 (.Y(n430), 
	.D(\memif_swchaddr.f0_rdata [17]), 
	.C(n186), 
	.B(n343), 
	.A(n509));
   INVX1 U594 (.Y(reg_write_addr[17]), 
	.A(n197));
   AOI22X1 U595 (.Y(n431), 
	.D(\memif_swchaddr.f0_rdata [18]), 
	.C(n186), 
	.B(n344), 
	.A(n509));
   INVX1 U596 (.Y(reg_write_addr[18]), 
	.A(n198));
   AOI22X1 U597 (.Y(n432), 
	.D(\memif_swchaddr.f0_rdata [19]), 
	.C(n186), 
	.B(n345), 
	.A(n509));
   INVX1 U598 (.Y(reg_write_addr[19]), 
	.A(n199));
   AOI22X1 U599 (.Y(n433), 
	.D(\memif_swchaddr.f0_rdata [20]), 
	.C(n186), 
	.B(n346), 
	.A(n509));
   INVX1 U600 (.Y(reg_write_addr[20]), 
	.A(n200));
   AOI22X1 U601 (.Y(n434), 
	.D(\memif_swchaddr.f0_rdata [21]), 
	.C(n186), 
	.B(n347), 
	.A(n509));
   INVX1 U602 (.Y(reg_write_addr[21]), 
	.A(n201));
   AOI22X1 U603 (.Y(n435), 
	.D(\memif_swchaddr.f0_rdata [22]), 
	.C(n186), 
	.B(n348), 
	.A(n509));
   INVX1 U604 (.Y(reg_write_addr[22]), 
	.A(n202));
   AOI22X1 U605 (.Y(n436), 
	.D(\memif_swchaddr.f0_rdata [23]), 
	.C(n186), 
	.B(n349), 
	.A(n509));
   INVX1 U606 (.Y(reg_write_addr[23]), 
	.A(n203));
   AOI22X1 U607 (.Y(n437), 
	.D(\memif_swchaddr.f0_rdata [24]), 
	.C(n186), 
	.B(n350), 
	.A(n509));
   INVX1 U608 (.Y(reg_write_addr[24]), 
	.A(n204));
   AOI22X1 U609 (.Y(n438), 
	.D(\memif_swchaddr.f0_rdata [25]), 
	.C(n186), 
	.B(n351), 
	.A(n509));
   INVX1 U610 (.Y(reg_write_addr[25]), 
	.A(n205));
   AOI22X1 U611 (.Y(n439), 
	.D(\memif_swchaddr.f0_rdata [26]), 
	.C(n186), 
	.B(n352), 
	.A(n509));
   INVX1 U612 (.Y(reg_write_addr[26]), 
	.A(n206));
   AOI22X1 U613 (.Y(n440), 
	.D(\memif_swchaddr.f0_rdata [27]), 
	.C(n186), 
	.B(n353), 
	.A(n509));
   INVX1 U614 (.Y(reg_write_addr[27]), 
	.A(n207));
   AOI22X1 U615 (.Y(n441), 
	.D(\memif_swchaddr.f0_rdata [28]), 
	.C(n186), 
	.B(n354), 
	.A(n509));
   INVX1 U616 (.Y(reg_write_addr[28]), 
	.A(n208));
   AOI22X1 U617 (.Y(n442), 
	.D(\memif_swchaddr.f0_rdata [29]), 
	.C(n186), 
	.B(n355), 
	.A(n509));
   INVX1 U618 (.Y(reg_write_addr[29]), 
	.A(n209));
   AOI22X1 U619 (.Y(n443), 
	.D(\memif_swchaddr.f0_rdata [30]), 
	.C(n186), 
	.B(n356), 
	.A(n509));
   INVX1 U620 (.Y(reg_write_addr[30]), 
	.A(n210));
   AOI22X1 U621 (.Y(n444), 
	.D(\memif_swchaddr.f0_rdata [31]), 
	.C(n186), 
	.B(n357), 
	.A(n509));
   INVX1 U622 (.Y(reg_write_addr[31]), 
	.A(n211));
   INVX1 U623 (.Y(burst_addr_nxt[4]), 
	.A(n447));
   INVX1 U624 (.Y(n445), 
	.A(n363));
   AOI22X1 U625 (.Y(burst_addr_nxt[5]), 
	.D(n445), 
	.C(n276), 
	.B(n447), 
	.A(n363));
   OAI21X1 U626 (.Y(n448), 
	.C(n509), 
	.B(n279), 
	.A(n290));
   AOI21X1 U627 (.Y(burst_addr_nxt[6]), 
	.C(n448), 
	.B(n279), 
	.A(n290));
   NAND3X1 U628 (.Y(n451), 
	.C(n291), 
	.B(n363), 
	.A(n298));
   AOI21X1 U629 (.Y(burst_addr_nxt[7]), 
	.C(n450), 
	.B(n277), 
	.A(n452));
   OAI21X1 U630 (.Y(n454), 
	.C(n509), 
	.B(n334), 
	.A(n287));
   OAI21X1 U631 (.Y(n456), 
	.C(n509), 
	.B(n335), 
	.A(n455));
   OAI21X1 U632 (.Y(n458), 
	.C(n509), 
	.B(n336), 
	.A(n457));
   OAI21X1 U633 (.Y(n460), 
	.C(n509), 
	.B(n337), 
	.A(n459));
   OAI21X1 U634 (.Y(n462), 
	.C(n509), 
	.B(n338), 
	.A(n461));
   OAI21X1 U635 (.Y(n464), 
	.C(n509), 
	.B(n339), 
	.A(n463));
   OAI21X1 U636 (.Y(n466), 
	.C(n509), 
	.B(n340), 
	.A(n465));
   OAI21X1 U637 (.Y(n468), 
	.C(n509), 
	.B(n341), 
	.A(n467));
   OAI21X1 U638 (.Y(n470), 
	.C(n509), 
	.B(n342), 
	.A(n469));
   OAI21X1 U639 (.Y(n472), 
	.C(n509), 
	.B(n343), 
	.A(n471));
   OAI21X1 U640 (.Y(n474), 
	.C(n509), 
	.B(n344), 
	.A(n473));
   OAI21X1 U641 (.Y(n476), 
	.C(n509), 
	.B(n345), 
	.A(n475));
   OAI21X1 U642 (.Y(n478), 
	.C(n509), 
	.B(n346), 
	.A(n477));
   OAI21X1 U643 (.Y(n480), 
	.C(n509), 
	.B(n347), 
	.A(n479));
   OAI21X1 U644 (.Y(n482), 
	.C(n509), 
	.B(n348), 
	.A(n481));
   OAI21X1 U645 (.Y(n484), 
	.C(n509), 
	.B(n349), 
	.A(n483));
   OAI21X1 U646 (.Y(n486), 
	.C(n509), 
	.B(n350), 
	.A(n485));
   OAI21X1 U647 (.Y(n488), 
	.C(n509), 
	.B(n351), 
	.A(n487));
   OAI21X1 U648 (.Y(n490), 
	.C(n509), 
	.B(n352), 
	.A(n489));
   OAI21X1 U649 (.Y(n492), 
	.C(n509), 
	.B(n353), 
	.A(n491));
   OAI21X1 U650 (.Y(n494), 
	.C(n509), 
	.B(n354), 
	.A(n493));
   OAI21X1 U651 (.Y(n496), 
	.C(n509), 
	.B(n355), 
	.A(n495));
   OAI21X1 U652 (.Y(n498), 
	.C(n509), 
	.B(n356), 
	.A(n497));
   OAI21X1 U653 (.Y(n499), 
	.C(n509), 
	.B(n500), 
	.A(n357));
   AOI21X1 U654 (.Y(burst_addr_nxt[31]), 
	.C(n499), 
	.B(n500), 
	.A(n357));
   AND2X2 U655 (.Y(\w_rspch.BID [0]), 
	.B(\memif_swchrsp.f0_rdata [0]), 
	.A(\clks.rst ));
   AND2X2 U656 (.Y(\w_rspch.BID [1]), 
	.B(\memif_swchrsp.f0_rdata [1]), 
	.A(\clks.rst ));
   AND2X2 U657 (.Y(\w_rspch.BID [2]), 
	.B(\memif_swchrsp.f0_rdata [2]), 
	.A(\clks.rst ));
   AND2X2 U658 (.Y(\w_rspch.BID [3]), 
	.B(\memif_swchrsp.f0_rdata [3]), 
	.A(\clks.rst ));
   NOR3X1 U660 (.Y(n503), 
	.C(n501), 
	.B(\w_dch.WLAST ), 
	.A(n292));
   NAND3X1 U661 (.Y(n505), 
	.C(n502), 
	.B(\memif_swchaddr.f0_rdata [35]), 
	.A(\clks.rst ));
   OAI21X1 U662 (.Y(n179), 
	.C(n317), 
	.B(n296), 
	.A(n503));
   AOI21X1 U663 (.Y(n508), 
	.C(n297), 
	.B(n504), 
	.A(n511));
   OAI21X1 U664 (.Y(n507), 
	.C(n255), 
	.B(\w_dch.WLAST ), 
	.A(n292));
   OAI21X1 U665 (.Y(n510), 
	.C(n507), 
	.B(n261), 
	.A(n509));
   OAI21X1 U666 (.Y(n178), 
	.C(n510), 
	.B(n296), 
	.A(n511));
   MUX2X1 U667 (.Y(n168), 
	.S(\memif_swchrsp.f0_waddr [3]), 
	.B(n272), 
	.A(n513));
   INVX1 U668 (.Y(n515), 
	.A(\memif_swchrsp.f0_waddr [4]));
   MUX2X1 U669 (.Y(n167), 
	.S(n263), 
	.B(\memif_swchrsp.f0_waddr [4]), 
	.A(n515));
   INVX1 U670 (.Y(n518), 
	.A(\memif_swchrsp.f0_raddr [1]));
   AOI21X1 U671 (.Y(n165), 
	.C(n288), 
	.B(n278), 
	.A(n518));
   OAI21X1 U672 (.Y(n520), 
	.C(n327), 
	.B(n288), 
	.A(\memif_swchrsp.f0_raddr [2]));
   INVX1 U673 (.Y(n164), 
	.A(n520));
   MUX2X1 U674 (.Y(n163), 
	.S(\memif_swchrsp.f0_raddr [3]), 
	.B(n327), 
	.A(n521));
   INVX1 U675 (.Y(n523), 
	.A(\memif_swchrsp.f0_raddr [4]));
   MUX2X1 U676 (.Y(n162), 
	.S(n264), 
	.B(\memif_swchrsp.f0_raddr [4]), 
	.A(n523));
   MUX2X1 U677 (.Y(n153), 
	.S(\memif_swchaddr.f0_waddr [3]), 
	.B(n273), 
	.A(n524));
   INVX1 U678 (.Y(n526), 
	.A(\memif_swchaddr.f0_waddr [4]));
   MUX2X1 U679 (.Y(n152), 
	.S(n265), 
	.B(\memif_swchaddr.f0_waddr [4]), 
	.A(n526));
   INVX1 U680 (.Y(n527), 
	.A(\memif_swchaddr.f0_raddr [1]));
   AOI21X1 U681 (.Y(n150), 
	.C(n289), 
	.B(n328), 
	.A(n527));
   OAI21X1 U682 (.Y(n529), 
	.C(n285), 
	.B(n289), 
	.A(\memif_swchaddr.f0_raddr [2]));
   INVX1 U683 (.Y(n149), 
	.A(n529));
   MUX2X1 U684 (.Y(n148), 
	.S(\memif_swchaddr.f0_raddr [3]), 
	.B(n285), 
	.A(n530));
   INVX1 U685 (.Y(n532), 
	.A(\memif_swchaddr.f0_raddr [4]));
   MUX2X1 U686 (.Y(n147), 
	.S(n266), 
	.B(\memif_swchaddr.f0_raddr [4]), 
	.A(n532));
endmodule

