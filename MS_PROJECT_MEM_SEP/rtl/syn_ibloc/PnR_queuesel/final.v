/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 19:48:54 2016
/////////////////////////////////////////////////////////////
module queue_selection (
	\clks.clk , 
	\clks.rst , 
	arb_nxt, 
	pfifo_datain0, 
	pfifo_datain1, 
	pfifo_datain2, 
	crcfifo0_dataout, 
	crcfifo1_dataout, 
	crcfifo2_dataout, 
	pfifo_datain_ctrl_0, 
	pfifo_datain_ctrl_1, 
	pfifo_datain_ctrl_2, 
	crcfifo0_empty, 
	crcfifo1_empty, 
	crcfifo2_empty, 
	pfifo_pop, 
	crcfifo_pop, 
	crcfifo0_pull, 
	crcfifo1_pull, 
	crcfifo2_pull, 
	pfifo_pop_0, 
	pfifo_pop_1, 
	pfifo_pop_2, 
	pcfifo_pop_0, 
	pcfifo_pop_1, 
	pcfifo_pop_2, 
	pfifo_datain, 
	pfifo_datain_ctrl, 
	crcfifo_dataout, 
	start_transmit);
   input \clks.clk ;
   input \clks.rst ;
   input arb_nxt;
   input [63:0] pfifo_datain0;
   input [63:0] pfifo_datain1;
   input [63:0] pfifo_datain2;
   input [31:0] crcfifo0_dataout;
   input [31:0] crcfifo1_dataout;
   input [31:0] crcfifo2_dataout;
   input [15:0] pfifo_datain_ctrl_0;
   input [15:0] pfifo_datain_ctrl_1;
   input [15:0] pfifo_datain_ctrl_2;
   input crcfifo0_empty;
   input crcfifo1_empty;
   input crcfifo2_empty;
   input pfifo_pop;
   input crcfifo_pop;
   output crcfifo0_pull;
   output crcfifo1_pull;
   output crcfifo2_pull;
   output pfifo_pop_0;
   output pfifo_pop_1;
   output pfifo_pop_2;
   output pcfifo_pop_0;
   output pcfifo_pop_1;
   output pcfifo_pop_2;
   output [63:0] pfifo_datain;
   output [15:0] pfifo_datain_ctrl;
   output [31:0] crcfifo_dataout;
   output start_transmit;

   // Internal wires
   wire FECTS_clks_clk___L2_N3;
   wire FECTS_clks_clk___L2_N2;
   wire FECTS_clks_clk___L2_N1;
   wire FECTS_clks_clk___L2_N0;
   wire FECTS_clks_clk___L1_N0;
   wire FE_OFN3_n1075;
   wire FE_OFN2_n1074;
   wire FE_OFN1_n1048;
   wire FE_OFN0_n1073;
   wire \qos/N33 ;
   wire \qos/N32 ;
   wire \qos/N31 ;
   wire \qos/N30 ;
   wire \qos/N29 ;
   wire \qos/N28 ;
   wire \qos/N27 ;
   wire \qos/N26 ;
   wire \qos/N25 ;
   wire \qos/N24 ;
   wire \qos/N23 ;
   wire \qos/N22 ;
   wire \qos/N21 ;
   wire \qos/N20 ;
   wire \qos/N19 ;
   wire \qos/N18 ;
   wire \qos/N17 ;
   wire \qos/N16 ;
   wire \qos/N15 ;
   wire \qos/N14 ;
   wire \qos/N13 ;
   wire \qos/N12 ;
   wire \qos/N11 ;
   wire \qos/N10 ;
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
   wire n535;
   wire n536;
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
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n576;
   wire n577;
   wire n578;
   wire n579;
   wire n580;
   wire n581;
   wire n582;
   wire n583;
   wire n584;
   wire n585;
   wire n586;
   wire n587;
   wire n588;
   wire n589;
   wire n590;
   wire n591;
   wire n592;
   wire n593;
   wire n594;
   wire n595;
   wire n596;
   wire n597;
   wire n598;
   wire n599;
   wire n600;
   wire n601;
   wire n602;
   wire n603;
   wire n604;
   wire n605;
   wire n606;
   wire n607;
   wire n608;
   wire n609;
   wire n610;
   wire n611;
   wire n612;
   wire n613;
   wire n614;
   wire n615;
   wire n616;
   wire n617;
   wire n618;
   wire n619;
   wire n620;
   wire n621;
   wire n622;
   wire n623;
   wire n624;
   wire n625;
   wire n626;
   wire n627;
   wire n628;
   wire n629;
   wire n630;
   wire n631;
   wire n632;
   wire n633;
   wire n634;
   wire n635;
   wire n636;
   wire n637;
   wire n638;
   wire n639;
   wire n640;
   wire n641;
   wire n642;
   wire n643;
   wire n644;
   wire n645;
   wire n646;
   wire n647;
   wire n648;
   wire n649;
   wire n650;
   wire n651;
   wire n652;
   wire n653;
   wire n654;
   wire n655;
   wire n656;
   wire n657;
   wire n658;
   wire n659;
   wire n660;
   wire n661;
   wire n662;
   wire n663;
   wire n664;
   wire n665;
   wire n666;
   wire n667;
   wire n668;
   wire n669;
   wire n670;
   wire n671;
   wire n672;
   wire n673;
   wire n674;
   wire n675;
   wire n676;
   wire n677;
   wire n678;
   wire n679;
   wire n680;
   wire n681;
   wire n682;
   wire n683;
   wire n684;
   wire n685;
   wire n686;
   wire n687;
   wire n688;
   wire n689;
   wire n690;
   wire n691;
   wire n692;
   wire n693;
   wire n694;
   wire n695;
   wire n696;
   wire n697;
   wire n698;
   wire n699;
   wire n700;
   wire n701;
   wire n702;
   wire n703;
   wire n704;
   wire n705;
   wire n706;
   wire n707;
   wire n708;
   wire n709;
   wire n710;
   wire n711;
   wire n712;
   wire n713;
   wire n714;
   wire n715;
   wire n716;
   wire n717;
   wire n718;
   wire n719;
   wire n720;
   wire n721;
   wire n722;
   wire n723;
   wire n724;
   wire n725;
   wire n726;
   wire n727;
   wire n728;
   wire n729;
   wire n730;
   wire n731;
   wire n732;
   wire n733;
   wire n734;
   wire n735;
   wire n736;
   wire n737;
   wire n738;
   wire n739;
   wire n740;
   wire n741;
   wire n742;
   wire n743;
   wire n744;
   wire n745;
   wire n746;
   wire n747;
   wire n748;
   wire n749;
   wire n750;
   wire n751;
   wire n752;
   wire n753;
   wire n754;
   wire n755;
   wire n756;
   wire n757;
   wire n758;
   wire n759;
   wire n760;
   wire n761;
   wire n762;
   wire n763;
   wire n764;
   wire n765;
   wire n766;
   wire n767;
   wire n768;
   wire n769;
   wire n770;
   wire n771;
   wire n772;
   wire n773;
   wire n774;
   wire n775;
   wire n776;
   wire n777;
   wire n778;
   wire n779;
   wire n780;
   wire n781;
   wire n782;
   wire n783;
   wire n784;
   wire n785;
   wire n786;
   wire n787;
   wire n788;
   wire n789;
   wire n790;
   wire n791;
   wire n792;
   wire n793;
   wire n794;
   wire n795;
   wire n796;
   wire n797;
   wire n798;
   wire n799;
   wire n800;
   wire n801;
   wire n802;
   wire n803;
   wire n804;
   wire n805;
   wire n806;
   wire n807;
   wire n808;
   wire n809;
   wire n810;
   wire n811;
   wire n812;
   wire n813;
   wire n814;
   wire n815;
   wire n816;
   wire n817;
   wire n818;
   wire n819;
   wire n820;
   wire n821;
   wire n822;
   wire n823;
   wire n824;
   wire n825;
   wire n826;
   wire n827;
   wire n828;
   wire n829;
   wire n830;
   wire n831;
   wire n832;
   wire n833;
   wire n834;
   wire n835;
   wire n836;
   wire n837;
   wire n838;
   wire n839;
   wire n840;
   wire n841;
   wire n842;
   wire n843;
   wire n844;
   wire n845;
   wire n846;
   wire n847;
   wire n848;
   wire n849;
   wire n850;
   wire n851;
   wire n852;
   wire n853;
   wire n854;
   wire n855;
   wire n856;
   wire n857;
   wire n858;
   wire n859;
   wire n860;
   wire n861;
   wire n862;
   wire n863;
   wire n864;
   wire n865;
   wire n866;
   wire n867;
   wire n868;
   wire n869;
   wire n870;
   wire n871;
   wire n872;
   wire n873;
   wire n874;
   wire n875;
   wire n876;
   wire n877;
   wire n878;
   wire n879;
   wire n880;
   wire n881;
   wire n882;
   wire n883;
   wire n884;
   wire n885;
   wire n886;
   wire n887;
   wire n888;
   wire n889;
   wire n890;
   wire n891;
   wire n892;
   wire n893;
   wire n894;
   wire n895;
   wire n896;
   wire n897;
   wire n898;
   wire n899;
   wire n900;
   wire n901;
   wire n902;
   wire n903;
   wire n904;
   wire n905;
   wire n906;
   wire n907;
   wire n908;
   wire n909;
   wire n910;
   wire n911;
   wire n912;
   wire n913;
   wire n914;
   wire n915;
   wire n916;
   wire n917;
   wire n918;
   wire n919;
   wire n920;
   wire n921;
   wire n922;
   wire n923;
   wire n924;
   wire n925;
   wire n926;
   wire n927;
   wire n928;
   wire n929;
   wire n930;
   wire n931;
   wire n932;
   wire n933;
   wire n934;
   wire n935;
   wire n936;
   wire n937;
   wire n938;
   wire n939;
   wire n940;
   wire n941;
   wire n942;
   wire n943;
   wire n944;
   wire n945;
   wire n946;
   wire n947;
   wire n948;
   wire n949;
   wire n950;
   wire n951;
   wire n952;
   wire n953;
   wire n954;
   wire n955;
   wire n956;
   wire n957;
   wire n958;
   wire n959;
   wire n960;
   wire n961;
   wire n962;
   wire n963;
   wire n964;
   wire n965;
   wire n966;
   wire n967;
   wire n968;
   wire n969;
   wire n970;
   wire n971;
   wire n972;
   wire n973;
   wire n974;
   wire n975;
   wire n976;
   wire n977;
   wire n978;
   wire n979;
   wire n980;
   wire n981;
   wire n982;
   wire n983;
   wire n984;
   wire n985;
   wire n986;
   wire n987;
   wire n988;
   wire n989;
   wire n990;
   wire n991;
   wire n992;
   wire n993;
   wire n994;
   wire n995;
   wire n996;
   wire n997;
   wire n998;
   wire n999;
   wire n1000;
   wire n1001;
   wire n1002;
   wire n1003;
   wire n1004;
   wire n1005;
   wire n1006;
   wire n1007;
   wire n1008;
   wire n1009;
   wire n1010;
   wire n1011;
   wire n1012;
   wire n1013;
   wire n1014;
   wire n1015;
   wire n1016;
   wire n1017;
   wire n1018;
   wire n1019;
   wire n1020;
   wire n1021;
   wire n1022;
   wire n1023;
   wire n1024;
   wire n1025;
   wire n1026;
   wire n1027;
   wire n1028;
   wire n1029;
   wire n1030;
   wire n1031;
   wire n1032;
   wire n1033;
   wire n1034;
   wire n1035;
   wire n1036;
   wire n1037;
   wire n1038;
   wire n1039;
   wire n1040;
   wire n1041;
   wire n1042;
   wire n1043;
   wire n1044;
   wire n1045;
   wire n1046;
   wire n1047;
   wire n1048;
   wire n1049;
   wire n1050;
   wire n1051;
   wire n1052;
   wire n1053;
   wire n1054;
   wire n1055;
   wire n1056;
   wire n1057;
   wire n1058;
   wire n1059;
   wire n1060;
   wire n1061;
   wire n1062;
   wire n1063;
   wire n1064;
   wire n1065;
   wire n1066;
   wire n1067;
   wire n1068;
   wire n1069;
   wire n1070;
   wire n1071;
   wire n1072;
   wire n1073;
   wire n1074;
   wire n1075;
   wire n1076;
   wire n1077;
   wire [2:0] buffer_sel;
   wire [2:0] \qos/queue_gnt_q ;
   wire [7:0] \qos/srv_cnt2_d ;
   wire [7:0] \qos/srv_cnt1_d ;
   wire [7:0] \qos/srv_cnt0_d ;

   assign pcfifo_pop_0 = pfifo_pop_0 ;
   assign pcfifo_pop_1 = pfifo_pop_1 ;
   assign pcfifo_pop_2 = pfifo_pop_2 ;

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
   BUFX2 FE_OFC3_n1075 (.Y(FE_OFN3_n1075), 
	.A(n1075));
   BUFX2 FE_OFC2_n1074 (.Y(FE_OFN2_n1074), 
	.A(n1074));
   BUFX2 FE_OFC1_n1048 (.Y(FE_OFN1_n1048), 
	.A(n1048));
   BUFX2 FE_OFC0_n1073 (.Y(FE_OFN0_n1073), 
	.A(n1073));
   DFFSR \qos/queue_gnt_d_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(buffer_sel[2]), 
	.D(\qos/queue_gnt_q [2]), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [0]), 
	.D(\qos/N26 ), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [1]), 
	.D(\qos/N27 ), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [2]), 
	.D(\qos/N28 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt2_d_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [3]), 
	.D(\qos/N29 ), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [4]), 
	.D(\qos/N30 ), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[5]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [5]), 
	.D(\qos/N31 ), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt2_d_reg[6]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [6]), 
	.D(\qos/N32 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt2_d_reg[7]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt2_d [7]), 
	.D(\qos/N33 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/queue_gnt_d_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(buffer_sel[1]), 
	.D(\qos/queue_gnt_q [1]), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt1_d_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [0]), 
	.D(\qos/N18 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt1_d_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [1]), 
	.D(\qos/N19 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt1_d_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [2]), 
	.D(\qos/N20 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt1_d_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [3]), 
	.D(\qos/N21 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt1_d_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [4]), 
	.D(\qos/N22 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt1_d_reg[5]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [5]), 
	.D(\qos/N23 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt1_d_reg[6]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [6]), 
	.D(\qos/N24 ), 
	.CLK(FECTS_clks_clk___L2_N0));
   DFFSR \qos/srv_cnt1_d_reg[7]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt1_d [7]), 
	.D(\qos/N25 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/queue_gnt_d_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(buffer_sel[0]), 
	.D(\qos/queue_gnt_q [0]), 
	.CLK(FECTS_clks_clk___L2_N2));
   DFFSR \qos/srv_cnt0_d_reg[0]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [0]), 
	.D(\qos/N10 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt0_d_reg[1]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [1]), 
	.D(\qos/N11 ), 
	.CLK(FECTS_clks_clk___L2_N3));
   DFFSR \qos/srv_cnt0_d_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [2]), 
	.D(\qos/N12 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \qos/srv_cnt0_d_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [3]), 
	.D(\qos/N13 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \qos/srv_cnt0_d_reg[4]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [4]), 
	.D(\qos/N14 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \qos/srv_cnt0_d_reg[5]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [5]), 
	.D(\qos/N15 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \qos/srv_cnt0_d_reg[6]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [6]), 
	.D(\qos/N16 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   DFFSR \qos/srv_cnt0_d_reg[7]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(\qos/srv_cnt0_d [7]), 
	.D(\qos/N17 ), 
	.CLK(FECTS_clks_clk___L2_N1));
   OR2X1 U469 (.Y(n786), 
	.B(n566), 
	.A(n788));
   OR2X1 U470 (.Y(n756), 
	.B(n745), 
	.A(n586));
   AND2X1 U471 (.Y(n790), 
	.B(n410), 
	.A(n590));
   INVX2 U472 (.Y(n1074), 
	.A(n432));
   BUFX4 U473 (.Y(n728), 
	.A(FE_OFN3_n1075));
   INVX4 U474 (.Y(n822), 
	.A(n411));
   AND2X2 U475 (.Y(n565), 
	.B(\qos/queue_gnt_q [0]), 
	.A(arb_nxt));
   AND2X2 U476 (.Y(n779), 
	.B(n415), 
	.A(n589));
   INVX2 U477 (.Y(n843), 
	.A(n782));
   OR2X1 U478 (.Y(n765), 
	.B(n766), 
	.A(n423));
   OR2X1 U479 (.Y(n797), 
	.B(n578), 
	.A(n559));
   AND2X1 U480 (.Y(n738), 
	.B(crcfifo1_empty), 
	.A(n710));
   INVX1 U481 (.Y(n835), 
	.A(n778));
   INVX1 U482 (.Y(n827), 
	.A(n780));
   INVX1 U483 (.Y(n413), 
	.A(n820));
   INVX1 U484 (.Y(n412), 
	.A(n821));
   AND2X1 U485 (.Y(\qos/N17 ), 
	.B(n822), 
	.A(n846));
   AND2X1 U486 (.Y(\qos/N16 ), 
	.B(n822), 
	.A(n845));
   AND2X1 U487 (.Y(\qos/N15 ), 
	.B(n822), 
	.A(n419));
   AND2X1 U488 (.Y(\qos/N14 ), 
	.B(n822), 
	.A(n843));
   AND2X1 U489 (.Y(\qos/N13 ), 
	.B(n822), 
	.A(n575));
   AND2X1 U490 (.Y(\qos/N12 ), 
	.B(n822), 
	.A(n841));
   AND2X1 U491 (.Y(\qos/N11 ), 
	.B(n822), 
	.A(n568));
   AND2X1 U492 (.Y(\qos/N10 ), 
	.B(n822), 
	.A(n717));
   AND2X1 U493 (.Y(n747), 
	.B(n757), 
	.A(n573));
   AND2X1 U494 (.Y(\qos/N25 ), 
	.B(n822), 
	.A(n838));
   AND2X1 U495 (.Y(\qos/N24 ), 
	.B(n822), 
	.A(n837));
   AND2X1 U496 (.Y(\qos/N23 ), 
	.B(n822), 
	.A(n716));
   AND2X1 U497 (.Y(\qos/N22 ), 
	.B(n822), 
	.A(n835));
   AND2X1 U498 (.Y(\qos/N21 ), 
	.B(n822), 
	.A(n715));
   AND2X1 U499 (.Y(\qos/N20 ), 
	.B(n822), 
	.A(n596));
   AND2X1 U500 (.Y(\qos/N19 ), 
	.B(n822), 
	.A(n832));
   AND2X1 U501 (.Y(\qos/N18 ), 
	.B(n822), 
	.A(n831));
   AND2X1 U502 (.Y(\qos/N33 ), 
	.B(n822), 
	.A(n830));
   AND2X1 U503 (.Y(\qos/N32 ), 
	.B(n822), 
	.A(n829));
   AND2X1 U504 (.Y(\qos/N31 ), 
	.B(n822), 
	.A(n592));
   AND2X1 U505 (.Y(\qos/N30 ), 
	.B(n822), 
	.A(n827));
   AND2X1 U506 (.Y(\qos/N29 ), 
	.B(n822), 
	.A(n593));
   AND2X1 U507 (.Y(\qos/N28 ), 
	.B(n822), 
	.A(n825));
   AND2X1 U508 (.Y(\qos/N27 ), 
	.B(n822), 
	.A(n824));
   AND2X1 U509 (.Y(\qos/N26 ), 
	.B(n822), 
	.A(n574));
   OR2X1 U510 (.Y(n799), 
	.B(n579), 
	.A(n556));
   OR2X1 U511 (.Y(n792), 
	.B(n577), 
	.A(n554));
   AND2X1 U512 (.Y(n781), 
	.B(n581), 
	.A(n712));
   AND2X1 U513 (.Y(n784), 
	.B(n760), 
	.A(n553));
   AND2X1 U514 (.Y(n760), 
	.B(n767), 
	.A(n721));
   OR2X1 U515 (.Y(n783), 
	.B(n572), 
	.A(n785));
   OR2X1 U516 (.Y(n789), 
	.B(n576), 
	.A(n791));
   AND2X1 U517 (.Y(n767), 
	.B(n416), 
	.A(n711));
   AND2X1 U518 (.Y(n787), 
	.B(n774), 
	.A(n714));
   AND2X1 U519 (.Y(n774), 
	.B(n763), 
	.A(n718));
   INVX1 U520 (.Y(n586), 
	.A(n739));
   INVX1 U521 (.Y(n848), 
	.A(arb_nxt));
   INVX1 U522 (.Y(n713), 
	.A(n797));
   INVX1 U523 (.Y(n595), 
	.A(n799));
   INVX1 U524 (.Y(n581), 
	.A(n789));
   AND2X1 U525 (.Y(n410), 
	.B(n420), 
	.A(n428));
   INVX1 U526 (.Y(n414), 
	.A(n819));
   NOR3X1 U527 (.Y(n411), 
	.C(n414), 
	.B(n413), 
	.A(n412));
   INVX1 U528 (.Y(n415), 
	.A(n786));
   BUFX2 U529 (.Y(n416), 
	.A(n564));
   BUFX2 U530 (.Y(n417), 
	.A(n740));
   BUFX2 U531 (.Y(n418), 
	.A(n849));
   BUFX2 U532 (.Y(n419), 
	.A(n844));
   INVX1 U533 (.Y(n420), 
	.A(n765));
   BUFX2 U534 (.Y(n421), 
	.A(n744));
   INVX1 U535 (.Y(n422), 
	.A(n747));
   INVX1 U536 (.Y(n423), 
	.A(n565));
   INVX1 U537 (.Y(n424), 
	.A(n738));
   BUFX2 U538 (.Y(n425), 
	.A(n748));
   BUFX2 U539 (.Y(n426), 
	.A(n741));
   BUFX2 U540 (.Y(n427), 
	.A(n749));
   AND2X1 U541 (.Y(n847), 
	.B(n757), 
	.A(n569));
   BUFX2 U542 (.Y(n428), 
	.A(\qos/srv_cnt0_d [1]));
   BUFX2 U543 (.Y(n429), 
	.A(\qos/srv_cnt0_d [0]));
   BUFX2 U544 (.Y(n430), 
	.A(\qos/srv_cnt1_d [3]));
   BUFX2 U545 (.Y(n431), 
	.A(\qos/srv_cnt2_d [3]));
   BUFX2 U546 (.Y(n432), 
	.A(n726));
   AND2X1 U547 (.Y(n724), 
	.B(n808), 
	.A(n807));
   INVX1 U548 (.Y(n433), 
	.A(n850));
   AND2X1 U549 (.Y(n850), 
	.B(pfifo_datain_ctrl_0[0]), 
	.A(n728));
   INVX1 U550 (.Y(n434), 
	.A(n852));
   AND2X1 U551 (.Y(n852), 
	.B(pfifo_datain_ctrl_0[1]), 
	.A(n728));
   INVX1 U552 (.Y(n435), 
	.A(n854));
   AND2X1 U553 (.Y(n854), 
	.B(pfifo_datain_ctrl_0[2]), 
	.A(n728));
   INVX1 U554 (.Y(n436), 
	.A(n856));
   AND2X1 U555 (.Y(n856), 
	.B(pfifo_datain_ctrl_0[3]), 
	.A(n728));
   INVX1 U556 (.Y(n437), 
	.A(n858));
   AND2X1 U557 (.Y(n858), 
	.B(pfifo_datain_ctrl_0[4]), 
	.A(n728));
   INVX1 U558 (.Y(n438), 
	.A(n860));
   AND2X1 U559 (.Y(n860), 
	.B(pfifo_datain_ctrl_0[5]), 
	.A(n728));
   INVX1 U560 (.Y(n439), 
	.A(n862));
   AND2X1 U561 (.Y(n862), 
	.B(pfifo_datain_ctrl_0[6]), 
	.A(n728));
   INVX1 U562 (.Y(n440), 
	.A(n864));
   AND2X1 U563 (.Y(n864), 
	.B(pfifo_datain_ctrl_0[7]), 
	.A(n728));
   INVX1 U564 (.Y(n441), 
	.A(n866));
   AND2X1 U565 (.Y(n866), 
	.B(pfifo_datain_ctrl_0[8]), 
	.A(n728));
   INVX1 U566 (.Y(n442), 
	.A(n868));
   AND2X1 U567 (.Y(n868), 
	.B(pfifo_datain_ctrl_0[9]), 
	.A(n728));
   INVX1 U568 (.Y(n443), 
	.A(n870));
   AND2X1 U569 (.Y(n870), 
	.B(pfifo_datain_ctrl_0[10]), 
	.A(n728));
   INVX1 U570 (.Y(n444), 
	.A(n872));
   AND2X1 U571 (.Y(n872), 
	.B(pfifo_datain_ctrl_0[11]), 
	.A(n728));
   INVX1 U572 (.Y(n445), 
	.A(n874));
   AND2X1 U573 (.Y(n874), 
	.B(pfifo_datain_ctrl_0[12]), 
	.A(n728));
   INVX1 U574 (.Y(n446), 
	.A(n876));
   AND2X1 U575 (.Y(n876), 
	.B(pfifo_datain_ctrl_0[13]), 
	.A(n728));
   INVX1 U576 (.Y(n447), 
	.A(n878));
   AND2X1 U577 (.Y(n878), 
	.B(pfifo_datain_ctrl_0[14]), 
	.A(n728));
   INVX1 U578 (.Y(n448), 
	.A(n880));
   AND2X1 U579 (.Y(n880), 
	.B(pfifo_datain_ctrl_0[15]), 
	.A(n728));
   INVX1 U580 (.Y(n449), 
	.A(n882));
   AND2X1 U581 (.Y(n882), 
	.B(crcfifo0_dataout[0]), 
	.A(n728));
   INVX1 U582 (.Y(n450), 
	.A(n884));
   AND2X1 U583 (.Y(n884), 
	.B(crcfifo0_dataout[1]), 
	.A(n728));
   INVX1 U584 (.Y(n451), 
	.A(n886));
   AND2X1 U585 (.Y(n886), 
	.B(crcfifo0_dataout[2]), 
	.A(n728));
   INVX1 U586 (.Y(n452), 
	.A(n888));
   AND2X1 U587 (.Y(n888), 
	.B(crcfifo0_dataout[3]), 
	.A(n728));
   INVX1 U588 (.Y(n453), 
	.A(n890));
   AND2X1 U589 (.Y(n890), 
	.B(crcfifo0_dataout[4]), 
	.A(n728));
   INVX1 U590 (.Y(n454), 
	.A(n892));
   AND2X1 U591 (.Y(n892), 
	.B(crcfifo0_dataout[5]), 
	.A(n728));
   INVX1 U592 (.Y(n455), 
	.A(n894));
   AND2X1 U593 (.Y(n894), 
	.B(crcfifo0_dataout[6]), 
	.A(n728));
   INVX1 U594 (.Y(n456), 
	.A(n896));
   AND2X1 U595 (.Y(n896), 
	.B(crcfifo0_dataout[7]), 
	.A(n728));
   INVX1 U596 (.Y(n457), 
	.A(n898));
   AND2X1 U597 (.Y(n898), 
	.B(crcfifo0_dataout[8]), 
	.A(n728));
   AND2X1 U598 (.Y(n900), 
	.B(crcfifo0_dataout[9]), 
	.A(FE_OFN3_n1075));
   INVX1 U599 (.Y(n458), 
	.A(n900));
   AND2X1 U600 (.Y(n902), 
	.B(crcfifo0_dataout[10]), 
	.A(FE_OFN3_n1075));
   INVX1 U601 (.Y(n459), 
	.A(n902));
   AND2X2 U602 (.Y(n904), 
	.B(crcfifo0_dataout[11]), 
	.A(FE_OFN3_n1075));
   INVX1 U603 (.Y(n460), 
	.A(n904));
   AND2X1 U604 (.Y(n906), 
	.B(crcfifo0_dataout[12]), 
	.A(FE_OFN3_n1075));
   INVX1 U605 (.Y(n461), 
	.A(n906));
   AND2X2 U606 (.Y(n908), 
	.B(crcfifo0_dataout[13]), 
	.A(FE_OFN3_n1075));
   INVX1 U607 (.Y(n462), 
	.A(n908));
   AND2X1 U608 (.Y(n910), 
	.B(crcfifo0_dataout[14]), 
	.A(FE_OFN3_n1075));
   INVX1 U609 (.Y(n463), 
	.A(n910));
   AND2X1 U610 (.Y(n912), 
	.B(crcfifo0_dataout[15]), 
	.A(FE_OFN3_n1075));
   INVX1 U611 (.Y(n464), 
	.A(n912));
   AND2X2 U612 (.Y(n914), 
	.B(crcfifo0_dataout[16]), 
	.A(FE_OFN3_n1075));
   INVX1 U613 (.Y(n465), 
	.A(n914));
   AND2X1 U614 (.Y(n916), 
	.B(crcfifo0_dataout[17]), 
	.A(FE_OFN3_n1075));
   INVX1 U615 (.Y(n466), 
	.A(n916));
   AND2X1 U616 (.Y(n918), 
	.B(crcfifo0_dataout[18]), 
	.A(FE_OFN3_n1075));
   INVX1 U617 (.Y(n467), 
	.A(n918));
   AND2X2 U618 (.Y(n920), 
	.B(crcfifo0_dataout[19]), 
	.A(FE_OFN3_n1075));
   INVX1 U619 (.Y(n468), 
	.A(n920));
   INVX1 U620 (.Y(n469), 
	.A(n922));
   AND2X1 U621 (.Y(n922), 
	.B(crcfifo0_dataout[20]), 
	.A(n728));
   INVX1 U622 (.Y(n470), 
	.A(n924));
   AND2X1 U623 (.Y(n924), 
	.B(crcfifo0_dataout[21]), 
	.A(n728));
   INVX1 U624 (.Y(n471), 
	.A(n926));
   AND2X1 U625 (.Y(n926), 
	.B(crcfifo0_dataout[22]), 
	.A(n728));
   AND2X1 U626 (.Y(n928), 
	.B(crcfifo0_dataout[23]), 
	.A(FE_OFN3_n1075));
   INVX1 U627 (.Y(n472), 
	.A(n928));
   AND2X2 U628 (.Y(n930), 
	.B(crcfifo0_dataout[24]), 
	.A(FE_OFN3_n1075));
   INVX1 U629 (.Y(n473), 
	.A(n930));
   AND2X1 U630 (.Y(n932), 
	.B(crcfifo0_dataout[25]), 
	.A(FE_OFN3_n1075));
   INVX1 U631 (.Y(n474), 
	.A(n932));
   AND2X1 U632 (.Y(n934), 
	.B(crcfifo0_dataout[26]), 
	.A(FE_OFN3_n1075));
   INVX1 U633 (.Y(n475), 
	.A(n934));
   AND2X2 U634 (.Y(n936), 
	.B(crcfifo0_dataout[27]), 
	.A(FE_OFN3_n1075));
   INVX1 U635 (.Y(n476), 
	.A(n936));
   AND2X1 U636 (.Y(n938), 
	.B(crcfifo0_dataout[28]), 
	.A(FE_OFN3_n1075));
   INVX1 U637 (.Y(n477), 
	.A(n938));
   AND2X1 U638 (.Y(n940), 
	.B(crcfifo0_dataout[29]), 
	.A(FE_OFN3_n1075));
   INVX1 U639 (.Y(n478), 
	.A(n940));
   AND2X2 U640 (.Y(n942), 
	.B(crcfifo0_dataout[30]), 
	.A(FE_OFN3_n1075));
   INVX1 U641 (.Y(n479), 
	.A(n942));
   AND2X1 U642 (.Y(n944), 
	.B(crcfifo0_dataout[31]), 
	.A(FE_OFN3_n1075));
   INVX1 U643 (.Y(n480), 
	.A(n944));
   AND2X1 U644 (.Y(n946), 
	.B(pfifo_datain0[0]), 
	.A(FE_OFN3_n1075));
   INVX1 U645 (.Y(n481), 
	.A(n946));
   AND2X2 U646 (.Y(n948), 
	.B(pfifo_datain0[1]), 
	.A(FE_OFN3_n1075));
   INVX1 U647 (.Y(n482), 
	.A(n948));
   AND2X1 U648 (.Y(n950), 
	.B(pfifo_datain0[2]), 
	.A(FE_OFN3_n1075));
   INVX1 U649 (.Y(n483), 
	.A(n950));
   AND2X2 U650 (.Y(n952), 
	.B(pfifo_datain0[3]), 
	.A(FE_OFN3_n1075));
   INVX1 U651 (.Y(n484), 
	.A(n952));
   INVX1 U652 (.Y(n485), 
	.A(n954));
   AND2X1 U653 (.Y(n954), 
	.B(pfifo_datain0[4]), 
	.A(n728));
   INVX1 U654 (.Y(n486), 
	.A(n956));
   AND2X1 U655 (.Y(n956), 
	.B(pfifo_datain0[5]), 
	.A(n728));
   INVX1 U656 (.Y(n487), 
	.A(n958));
   AND2X1 U657 (.Y(n958), 
	.B(pfifo_datain0[6]), 
	.A(n728));
   INVX1 U658 (.Y(n488), 
	.A(n960));
   AND2X1 U659 (.Y(n960), 
	.B(pfifo_datain0[7]), 
	.A(n728));
   INVX1 U660 (.Y(n489), 
	.A(n962));
   AND2X1 U661 (.Y(n962), 
	.B(pfifo_datain0[8]), 
	.A(n728));
   INVX1 U662 (.Y(n490), 
	.A(n964));
   AND2X1 U663 (.Y(n964), 
	.B(pfifo_datain0[9]), 
	.A(n728));
   INVX1 U664 (.Y(n491), 
	.A(n966));
   AND2X1 U665 (.Y(n966), 
	.B(pfifo_datain0[10]), 
	.A(n728));
   INVX1 U666 (.Y(n492), 
	.A(n968));
   AND2X1 U667 (.Y(n968), 
	.B(pfifo_datain0[11]), 
	.A(n728));
   INVX1 U668 (.Y(n493), 
	.A(n970));
   AND2X1 U669 (.Y(n970), 
	.B(pfifo_datain0[12]), 
	.A(n728));
   INVX1 U670 (.Y(n494), 
	.A(n972));
   AND2X1 U671 (.Y(n972), 
	.B(pfifo_datain0[13]), 
	.A(n728));
   INVX1 U672 (.Y(n495), 
	.A(n974));
   AND2X1 U673 (.Y(n974), 
	.B(pfifo_datain0[14]), 
	.A(n728));
   INVX1 U674 (.Y(n496), 
	.A(n976));
   AND2X1 U675 (.Y(n976), 
	.B(pfifo_datain0[15]), 
	.A(n728));
   INVX1 U676 (.Y(n497), 
	.A(n978));
   AND2X1 U677 (.Y(n978), 
	.B(pfifo_datain0[16]), 
	.A(n728));
   INVX1 U678 (.Y(n498), 
	.A(n980));
   AND2X1 U679 (.Y(n980), 
	.B(pfifo_datain0[17]), 
	.A(n728));
   INVX1 U680 (.Y(n499), 
	.A(n982));
   AND2X1 U681 (.Y(n982), 
	.B(pfifo_datain0[18]), 
	.A(n728));
   AND2X1 U682 (.Y(n984), 
	.B(pfifo_datain0[19]), 
	.A(FE_OFN3_n1075));
   INVX1 U683 (.Y(n500), 
	.A(n984));
   AND2X1 U684 (.Y(n986), 
	.B(pfifo_datain0[20]), 
	.A(FE_OFN3_n1075));
   INVX1 U685 (.Y(n501), 
	.A(n986));
   AND2X2 U686 (.Y(n988), 
	.B(pfifo_datain0[21]), 
	.A(FE_OFN3_n1075));
   INVX1 U687 (.Y(n502), 
	.A(n988));
   AND2X1 U688 (.Y(n990), 
	.B(pfifo_datain0[22]), 
	.A(FE_OFN3_n1075));
   INVX1 U689 (.Y(n503), 
	.A(n990));
   AND2X1 U690 (.Y(n992), 
	.B(pfifo_datain0[23]), 
	.A(FE_OFN3_n1075));
   INVX1 U691 (.Y(n504), 
	.A(n992));
   AND2X2 U692 (.Y(n994), 
	.B(pfifo_datain0[24]), 
	.A(FE_OFN3_n1075));
   INVX1 U693 (.Y(n505), 
	.A(n994));
   AND2X1 U694 (.Y(n996), 
	.B(pfifo_datain0[25]), 
	.A(FE_OFN3_n1075));
   INVX1 U695 (.Y(n506), 
	.A(n996));
   AND2X1 U696 (.Y(n998), 
	.B(pfifo_datain0[26]), 
	.A(FE_OFN3_n1075));
   INVX1 U697 (.Y(n507), 
	.A(n998));
   AND2X2 U698 (.Y(n1000), 
	.B(pfifo_datain0[27]), 
	.A(FE_OFN3_n1075));
   INVX1 U699 (.Y(n508), 
	.A(n1000));
   AND2X1 U700 (.Y(n1002), 
	.B(pfifo_datain0[28]), 
	.A(FE_OFN3_n1075));
   INVX1 U701 (.Y(n509), 
	.A(n1002));
   AND2X2 U702 (.Y(n1004), 
	.B(pfifo_datain0[29]), 
	.A(FE_OFN3_n1075));
   INVX1 U703 (.Y(n510), 
	.A(n1004));
   AND2X1 U704 (.Y(n1006), 
	.B(pfifo_datain0[30]), 
	.A(FE_OFN3_n1075));
   INVX1 U705 (.Y(n511), 
	.A(n1006));
   AND2X1 U706 (.Y(n1008), 
	.B(pfifo_datain0[31]), 
	.A(FE_OFN3_n1075));
   INVX1 U707 (.Y(n512), 
	.A(n1008));
   AND2X2 U708 (.Y(n1010), 
	.B(pfifo_datain0[32]), 
	.A(FE_OFN3_n1075));
   INVX1 U709 (.Y(n513), 
	.A(n1010));
   AND2X1 U710 (.Y(n1012), 
	.B(pfifo_datain0[33]), 
	.A(FE_OFN3_n1075));
   INVX1 U711 (.Y(n514), 
	.A(n1012));
   AND2X1 U712 (.Y(n1014), 
	.B(pfifo_datain0[34]), 
	.A(FE_OFN3_n1075));
   INVX1 U713 (.Y(n515), 
	.A(n1014));
   AND2X2 U714 (.Y(n1016), 
	.B(pfifo_datain0[35]), 
	.A(FE_OFN3_n1075));
   INVX1 U715 (.Y(n516), 
	.A(n1016));
   AND2X1 U716 (.Y(n1018), 
	.B(pfifo_datain0[36]), 
	.A(FE_OFN3_n1075));
   INVX1 U717 (.Y(n517), 
	.A(n1018));
   INVX1 U718 (.Y(n518), 
	.A(n1020));
   AND2X1 U719 (.Y(n1020), 
	.B(pfifo_datain0[37]), 
	.A(n728));
   INVX1 U720 (.Y(n519), 
	.A(n1022));
   AND2X1 U721 (.Y(n1022), 
	.B(pfifo_datain0[38]), 
	.A(n728));
   INVX1 U722 (.Y(n520), 
	.A(n1024));
   AND2X1 U723 (.Y(n1024), 
	.B(pfifo_datain0[39]), 
	.A(n728));
   INVX1 U724 (.Y(n521), 
	.A(n1026));
   AND2X1 U725 (.Y(n1026), 
	.B(pfifo_datain0[40]), 
	.A(n728));
   INVX1 U726 (.Y(n522), 
	.A(n1028));
   AND2X1 U727 (.Y(n1028), 
	.B(pfifo_datain0[41]), 
	.A(n728));
   INVX1 U728 (.Y(n523), 
	.A(n1030));
   AND2X1 U729 (.Y(n1030), 
	.B(pfifo_datain0[42]), 
	.A(n728));
   INVX1 U730 (.Y(n524), 
	.A(n1032));
   AND2X1 U731 (.Y(n1032), 
	.B(pfifo_datain0[43]), 
	.A(n728));
   INVX1 U732 (.Y(n525), 
	.A(n1034));
   AND2X1 U733 (.Y(n1034), 
	.B(pfifo_datain0[44]), 
	.A(n728));
   INVX1 U734 (.Y(n526), 
	.A(n1036));
   AND2X1 U735 (.Y(n1036), 
	.B(pfifo_datain0[45]), 
	.A(n728));
   INVX1 U736 (.Y(n527), 
	.A(n1038));
   AND2X1 U737 (.Y(n1038), 
	.B(pfifo_datain0[46]), 
	.A(n728));
   INVX1 U738 (.Y(n528), 
	.A(n1040));
   AND2X1 U739 (.Y(n1040), 
	.B(pfifo_datain0[47]), 
	.A(n728));
   INVX1 U740 (.Y(n529), 
	.A(n1042));
   AND2X1 U741 (.Y(n1042), 
	.B(pfifo_datain0[48]), 
	.A(n728));
   INVX1 U742 (.Y(n530), 
	.A(n1044));
   AND2X1 U743 (.Y(n1044), 
	.B(pfifo_datain0[49]), 
	.A(n728));
   INVX1 U744 (.Y(n531), 
	.A(n1046));
   AND2X1 U745 (.Y(n1046), 
	.B(pfifo_datain0[50]), 
	.A(n728));
   INVX1 U746 (.Y(n532), 
	.A(n1049));
   AND2X1 U747 (.Y(n1049), 
	.B(pfifo_datain0[51]), 
	.A(n728));
   INVX1 U748 (.Y(n533), 
	.A(n1051));
   AND2X1 U749 (.Y(n1051), 
	.B(pfifo_datain0[52]), 
	.A(n728));
   INVX1 U750 (.Y(n534), 
	.A(n1053));
   AND2X1 U751 (.Y(n1053), 
	.B(pfifo_datain0[53]), 
	.A(n728));
   INVX1 U752 (.Y(n535), 
	.A(n1055));
   AND2X1 U753 (.Y(n1055), 
	.B(pfifo_datain0[54]), 
	.A(n728));
   INVX1 U754 (.Y(n536), 
	.A(n1057));
   AND2X1 U755 (.Y(n1057), 
	.B(pfifo_datain0[55]), 
	.A(n728));
   INVX1 U756 (.Y(n537), 
	.A(n1059));
   AND2X1 U757 (.Y(n1059), 
	.B(pfifo_datain0[56]), 
	.A(n728));
   INVX1 U758 (.Y(n538), 
	.A(n1061));
   AND2X1 U759 (.Y(n1061), 
	.B(pfifo_datain0[57]), 
	.A(n728));
   INVX1 U760 (.Y(n539), 
	.A(n1063));
   AND2X1 U761 (.Y(n1063), 
	.B(pfifo_datain0[58]), 
	.A(n728));
   INVX1 U762 (.Y(n540), 
	.A(n1065));
   AND2X1 U763 (.Y(n1065), 
	.B(pfifo_datain0[59]), 
	.A(n728));
   INVX1 U764 (.Y(n541), 
	.A(n1067));
   AND2X1 U765 (.Y(n1067), 
	.B(pfifo_datain0[60]), 
	.A(n728));
   AND2X2 U766 (.Y(n1069), 
	.B(pfifo_datain0[61]), 
	.A(FE_OFN3_n1075));
   INVX1 U767 (.Y(n542), 
	.A(n1069));
   AND2X1 U768 (.Y(n1071), 
	.B(pfifo_datain0[62]), 
	.A(FE_OFN3_n1075));
   INVX1 U769 (.Y(n543), 
	.A(n1071));
   AND2X1 U770 (.Y(n1076), 
	.B(pfifo_datain0[63]), 
	.A(FE_OFN3_n1075));
   INVX1 U771 (.Y(n544), 
	.A(n1076));
   INVX1 U772 (.Y(n545), 
	.A(n750));
   AND2X1 U773 (.Y(n750), 
	.B(\qos/queue_gnt_q [2]), 
	.A(arb_nxt));
   BUFX2 U774 (.Y(n546), 
	.A(n730));
   BUFX2 U775 (.Y(n547), 
	.A(n735));
   INVX1 U776 (.Y(n548), 
	.A(n816));
   AND2X1 U777 (.Y(n816), 
	.B(n814), 
	.A(n815));
   INVX1 U778 (.Y(n549), 
	.A(n793));
   AND2X1 U779 (.Y(n793), 
	.B(n594), 
	.A(n720));
   INVX1 U780 (.Y(n550), 
	.A(n798));
   AND2X1 U781 (.Y(n798), 
	.B(n713), 
	.A(n571));
   INVX1 U782 (.Y(n551), 
	.A(n800));
   AND2X1 U783 (.Y(n800), 
	.B(n595), 
	.A(n719));
   INVX1 U784 (.Y(n552), 
	.A(n767));
   BUFX2 U785 (.Y(n553), 
	.A(\qos/srv_cnt1_d [2]));
   INVX1 U786 (.Y(n554), 
	.A(n555));
   BUFX2 U787 (.Y(n555), 
	.A(\qos/srv_cnt1_d [5]));
   INVX1 U788 (.Y(n556), 
	.A(n557));
   BUFX2 U789 (.Y(n557), 
	.A(\qos/srv_cnt0_d [5]));
   BUFX2 U790 (.Y(n558), 
	.A(\qos/srv_cnt0_d [3]));
   INVX1 U791 (.Y(n559), 
	.A(n560));
   BUFX2 U792 (.Y(n560), 
	.A(\qos/srv_cnt2_d [5]));
   BUFX2 U793 (.Y(n561), 
	.A(\qos/srv_cnt2_d [0]));
   INVX1 U794 (.Y(n562), 
	.A(n760));
   INVX1 U795 (.Y(n563), 
	.A(n774));
   AOI21X1 U796 (.Y(n564), 
	.C(n848), 
	.B(n709), 
	.A(n418));
   INVX1 U797 (.Y(n566), 
	.A(n787));
   INVX1 U798 (.Y(n567), 
	.A(n752));
   AND2X1 U799 (.Y(n752), 
	.B(crcfifo2_empty), 
	.A(crcfifo1_empty));
   BUFX2 U800 (.Y(n568), 
	.A(n840));
   BUFX2 U801 (.Y(n569), 
	.A(buffer_sel[1]));
   INVX1 U802 (.Y(n570), 
	.A(n571));
   BUFX2 U803 (.Y(n571), 
	.A(\qos/srv_cnt2_d [6]));
   INVX1 U804 (.Y(n572), 
	.A(n784));
   BUFX2 U805 (.Y(n573), 
	.A(buffer_sel[0]));
   BUFX2 U806 (.Y(n574), 
	.A(n823));
   BUFX2 U807 (.Y(n575), 
	.A(n842));
   INVX1 U808 (.Y(n576), 
	.A(n790));
   AND2X1 U809 (.Y(n777), 
	.B(n580), 
	.A(n591));
   INVX1 U810 (.Y(n577), 
	.A(n777));
   INVX1 U811 (.Y(n578), 
	.A(n779));
   INVX1 U812 (.Y(n579), 
	.A(n781));
   INVX1 U813 (.Y(n580), 
	.A(n783));
   INVX1 U814 (.Y(n582), 
	.A(n583));
   BUFX2 U815 (.Y(n583), 
	.A(\qos/srv_cnt1_d [7]));
   INVX1 U816 (.Y(n584), 
	.A(n585));
   BUFX2 U817 (.Y(n585), 
	.A(\qos/srv_cnt2_d [7]));
   OR2X1 U818 (.Y(n739), 
	.B(n737), 
	.A(n743));
   INVX1 U819 (.Y(n587), 
	.A(n588));
   BUFX2 U820 (.Y(n588), 
	.A(\qos/srv_cnt0_d [7]));
   BUFX2 U821 (.Y(n589), 
	.A(\qos/srv_cnt2_d [4]));
   BUFX2 U822 (.Y(n590), 
	.A(\qos/srv_cnt0_d [2]));
   BUFX2 U823 (.Y(n591), 
	.A(\qos/srv_cnt1_d [4]));
   BUFX2 U824 (.Y(n592), 
	.A(n828));
   BUFX2 U825 (.Y(n593), 
	.A(n826));
   INVX1 U826 (.Y(n594), 
	.A(n792));
   BUFX2 U827 (.Y(n596), 
	.A(n833));
   BUFX2 U828 (.Y(n597), 
	.A(n1077));
   BUFX2 U829 (.Y(n598), 
	.A(n1072));
   BUFX2 U830 (.Y(n599), 
	.A(n1070));
   BUFX2 U831 (.Y(n600), 
	.A(n1068));
   BUFX2 U832 (.Y(n601), 
	.A(n1066));
   BUFX2 U833 (.Y(n602), 
	.A(n1064));
   BUFX2 U834 (.Y(n603), 
	.A(n1062));
   BUFX2 U835 (.Y(n604), 
	.A(n1060));
   BUFX2 U836 (.Y(n605), 
	.A(n1058));
   BUFX2 U837 (.Y(n606), 
	.A(n1056));
   BUFX2 U838 (.Y(n607), 
	.A(n1054));
   BUFX2 U839 (.Y(n608), 
	.A(n1052));
   BUFX2 U840 (.Y(n609), 
	.A(n1050));
   BUFX2 U841 (.Y(n610), 
	.A(n1047));
   BUFX2 U842 (.Y(n611), 
	.A(n1045));
   BUFX2 U843 (.Y(n612), 
	.A(n1043));
   BUFX2 U844 (.Y(n613), 
	.A(n1041));
   BUFX2 U845 (.Y(n614), 
	.A(n1039));
   BUFX2 U846 (.Y(n615), 
	.A(n1037));
   BUFX2 U847 (.Y(n616), 
	.A(n1035));
   BUFX2 U848 (.Y(n617), 
	.A(n1033));
   BUFX2 U849 (.Y(n618), 
	.A(n1031));
   BUFX2 U850 (.Y(n619), 
	.A(n1029));
   BUFX2 U851 (.Y(n620), 
	.A(n1027));
   BUFX2 U852 (.Y(n621), 
	.A(n1025));
   BUFX2 U853 (.Y(n622), 
	.A(n1023));
   BUFX2 U854 (.Y(n623), 
	.A(n1021));
   BUFX2 U855 (.Y(n624), 
	.A(n1019));
   BUFX2 U856 (.Y(n625), 
	.A(n1017));
   BUFX2 U857 (.Y(n626), 
	.A(n1015));
   BUFX2 U858 (.Y(n627), 
	.A(n1013));
   BUFX2 U859 (.Y(n628), 
	.A(n1011));
   BUFX2 U860 (.Y(n629), 
	.A(n1009));
   BUFX2 U861 (.Y(n630), 
	.A(n1007));
   BUFX2 U862 (.Y(n631), 
	.A(n1005));
   BUFX2 U863 (.Y(n632), 
	.A(n1003));
   BUFX2 U864 (.Y(n633), 
	.A(n1001));
   BUFX2 U865 (.Y(n634), 
	.A(n999));
   BUFX2 U866 (.Y(n635), 
	.A(n997));
   BUFX2 U867 (.Y(n636), 
	.A(n995));
   BUFX2 U868 (.Y(n637), 
	.A(n993));
   BUFX2 U869 (.Y(n638), 
	.A(n991));
   BUFX2 U870 (.Y(n639), 
	.A(n989));
   BUFX2 U871 (.Y(n640), 
	.A(n987));
   BUFX2 U872 (.Y(n641), 
	.A(n985));
   BUFX2 U873 (.Y(n642), 
	.A(n983));
   BUFX2 U874 (.Y(n643), 
	.A(n981));
   BUFX2 U875 (.Y(n644), 
	.A(n979));
   BUFX2 U876 (.Y(n645), 
	.A(n977));
   BUFX2 U877 (.Y(n646), 
	.A(n975));
   BUFX2 U878 (.Y(n647), 
	.A(n973));
   BUFX2 U879 (.Y(n648), 
	.A(n971));
   BUFX2 U880 (.Y(n649), 
	.A(n969));
   BUFX2 U881 (.Y(n650), 
	.A(n967));
   BUFX2 U882 (.Y(n651), 
	.A(n965));
   BUFX2 U883 (.Y(n652), 
	.A(n963));
   BUFX2 U884 (.Y(n653), 
	.A(n961));
   BUFX2 U885 (.Y(n654), 
	.A(n959));
   BUFX2 U886 (.Y(n655), 
	.A(n957));
   BUFX2 U887 (.Y(n656), 
	.A(n955));
   BUFX2 U888 (.Y(n657), 
	.A(n953));
   BUFX2 U889 (.Y(n658), 
	.A(n951));
   BUFX2 U890 (.Y(n659), 
	.A(n949));
   BUFX2 U891 (.Y(n660), 
	.A(n947));
   BUFX2 U892 (.Y(n661), 
	.A(n881));
   BUFX2 U893 (.Y(n662), 
	.A(n879));
   BUFX2 U894 (.Y(n663), 
	.A(n877));
   BUFX2 U895 (.Y(n664), 
	.A(n875));
   BUFX2 U896 (.Y(n665), 
	.A(n873));
   BUFX2 U897 (.Y(n666), 
	.A(n871));
   BUFX2 U898 (.Y(n667), 
	.A(n869));
   BUFX2 U899 (.Y(n668), 
	.A(n867));
   BUFX2 U900 (.Y(n669), 
	.A(n865));
   BUFX2 U901 (.Y(n670), 
	.A(n863));
   BUFX2 U902 (.Y(n671), 
	.A(n861));
   BUFX2 U903 (.Y(n672), 
	.A(n859));
   BUFX2 U904 (.Y(n673), 
	.A(n857));
   BUFX2 U905 (.Y(n674), 
	.A(n855));
   BUFX2 U906 (.Y(n675), 
	.A(n853));
   BUFX2 U907 (.Y(n676), 
	.A(n851));
   BUFX2 U908 (.Y(n677), 
	.A(n945));
   BUFX2 U909 (.Y(n678), 
	.A(n943));
   BUFX2 U910 (.Y(n679), 
	.A(n941));
   BUFX2 U911 (.Y(n680), 
	.A(n939));
   BUFX2 U912 (.Y(n681), 
	.A(n937));
   BUFX2 U913 (.Y(n682), 
	.A(n935));
   BUFX2 U914 (.Y(n683), 
	.A(n933));
   BUFX2 U915 (.Y(n684), 
	.A(n931));
   BUFX2 U916 (.Y(n685), 
	.A(n929));
   BUFX2 U917 (.Y(n686), 
	.A(n927));
   BUFX2 U918 (.Y(n687), 
	.A(n925));
   BUFX2 U919 (.Y(n688), 
	.A(n923));
   BUFX2 U920 (.Y(n689), 
	.A(n921));
   BUFX2 U921 (.Y(n690), 
	.A(n919));
   BUFX2 U922 (.Y(n691), 
	.A(n917));
   BUFX2 U923 (.Y(n692), 
	.A(n915));
   BUFX2 U924 (.Y(n693), 
	.A(n913));
   BUFX2 U925 (.Y(n694), 
	.A(n911));
   BUFX2 U926 (.Y(n695), 
	.A(n909));
   BUFX2 U927 (.Y(n696), 
	.A(n907));
   BUFX2 U928 (.Y(n697), 
	.A(n905));
   BUFX2 U929 (.Y(n698), 
	.A(n903));
   BUFX2 U930 (.Y(n699), 
	.A(n901));
   BUFX2 U931 (.Y(n700), 
	.A(n899));
   BUFX2 U932 (.Y(n701), 
	.A(n897));
   BUFX2 U933 (.Y(n702), 
	.A(n895));
   BUFX2 U934 (.Y(n703), 
	.A(n893));
   BUFX2 U935 (.Y(n704), 
	.A(n891));
   BUFX2 U936 (.Y(n705), 
	.A(n889));
   BUFX2 U937 (.Y(n706), 
	.A(n887));
   BUFX2 U938 (.Y(n707), 
	.A(n885));
   BUFX2 U939 (.Y(n708), 
	.A(n883));
   INVX1 U940 (.Y(n709), 
	.A(n847));
   INVX1 U941 (.Y(n710), 
	.A(n756));
   BUFX2 U942 (.Y(n711), 
	.A(\qos/srv_cnt1_d [0]));
   BUFX2 U943 (.Y(n712), 
	.A(\qos/srv_cnt0_d [4]));
   BUFX2 U944 (.Y(n714), 
	.A(\qos/srv_cnt2_d [2]));
   BUFX2 U945 (.Y(n715), 
	.A(n834));
   BUFX2 U946 (.Y(n716), 
	.A(n836));
   BUFX2 U947 (.Y(n717), 
	.A(n839));
   BUFX2 U948 (.Y(n718), 
	.A(\qos/srv_cnt2_d [1]));
   BUFX2 U949 (.Y(n719), 
	.A(\qos/srv_cnt0_d [6]));
   BUFX2 U950 (.Y(n720), 
	.A(\qos/srv_cnt1_d [6]));
   BUFX2 U951 (.Y(n721), 
	.A(\qos/srv_cnt1_d [1]));
   BUFX2 U952 (.Y(n722), 
	.A(n753));
   BUFX2 U953 (.Y(n723), 
	.A(buffer_sel[2]));
   XOR2X1 U954 (.Y(n812), 
	.B(n808), 
	.A(n807));
   INVX1 U955 (.Y(n725), 
	.A(n569));
   NOR3X1 U956 (.Y(n1048), 
	.C(n725), 
	.B(n723), 
	.A(n573));
   AND2X1 U957 (.Y(crcfifo1_pull), 
	.B(crcfifo_pop), 
	.A(FE_OFN1_n1048));
   AND2X1 U958 (.Y(pfifo_pop_1), 
	.B(pfifo_pop), 
	.A(FE_OFN1_n1048));
   INVX1 U959 (.Y(n727), 
	.A(n573));
   NAND3X1 U960 (.Y(n726), 
	.C(n723), 
	.B(n725), 
	.A(n727));
   AND2X1 U961 (.Y(crcfifo2_pull), 
	.B(crcfifo_pop), 
	.A(n1074));
   AND2X1 U962 (.Y(pfifo_pop_2), 
	.B(pfifo_pop), 
	.A(n1074));
   NOR3X1 U963 (.Y(n1075), 
	.C(n727), 
	.B(n569), 
	.A(n723));
   AND2X1 U964 (.Y(crcfifo0_pull), 
	.B(crcfifo_pop), 
	.A(n728));
   AND2X1 U965 (.Y(pfifo_pop_0), 
	.B(pfifo_pop), 
	.A(n728));
   INVX1 U966 (.Y(n742), 
	.A(crcfifo0_empty));
   OR2X1 U967 (.Y(start_transmit), 
	.B(n567), 
	.A(n742));
   NOR3X1 U968 (.Y(n729), 
	.C(n591), 
	.B(n720), 
	.A(n555));
   INVX1 U969 (.Y(n761), 
	.A(n553));
   INVX1 U970 (.Y(n785), 
	.A(n430));
   NAND3X1 U971 (.Y(n730), 
	.C(n785), 
	.B(n761), 
	.A(n729));
   NOR3X1 U972 (.Y(n743), 
	.C(n546), 
	.B(n721), 
	.A(n583));
   NOR3X1 U973 (.Y(n732), 
	.C(n588), 
	.B(n558), 
	.A(n712));
   NOR3X1 U974 (.Y(n731), 
	.C(n590), 
	.B(n557), 
	.A(n719));
   AND2X1 U975 (.Y(n737), 
	.B(n731), 
	.A(n732));
   NOR3X1 U976 (.Y(n734), 
	.C(n714), 
	.B(n561), 
	.A(n585));
   INVX1 U977 (.Y(n733), 
	.A(n718));
   NAND3X1 U978 (.Y(n735), 
	.C(n733), 
	.B(n734), 
	.A(n586));
   NOR3X1 U979 (.Y(n736), 
	.C(n547), 
	.B(n560), 
	.A(n589));
   INVX1 U980 (.Y(n788), 
	.A(n431));
   NAND3X1 U981 (.Y(n753), 
	.C(n570), 
	.B(n788), 
	.A(n736));
   AND2X1 U982 (.Y(n745), 
	.B(n737), 
	.A(n742));
   AOI21X1 U983 (.Y(n741), 
	.C(crcfifo2_empty), 
	.B(n424), 
	.A(n722));
   AOI21X1 U984 (.Y(n740), 
	.C(n848), 
	.B(n586), 
	.A(n722));
   INVX1 U985 (.Y(n757), 
	.A(n417));
   AOI22X1 U986 (.Y(n749), 
	.D(n757), 
	.C(n723), 
	.B(n426), 
	.A(arb_nxt));
   INVX1 U987 (.Y(\qos/queue_gnt_q [2]), 
	.A(n427));
   NAND3X1 U988 (.Y(n744), 
	.C(crcfifo1_empty), 
	.B(n742), 
	.A(n743));
   OAI21X1 U989 (.Y(n746), 
	.C(n421), 
	.B(n722), 
	.A(crcfifo1_empty));
   AOI21X1 U990 (.Y(n748), 
	.C(n745), 
	.B(crcfifo2_empty), 
	.A(n746));
   OAI21X1 U991 (.Y(\qos/queue_gnt_q [0]), 
	.C(n422), 
	.B(n848), 
	.A(n425));
   INVX1 U992 (.Y(n751), 
	.A(n561));
   NOR3X1 U993 (.Y(n763), 
	.C(n427), 
	.B(n848), 
	.A(n751));
   AOI21X1 U994 (.Y(n823), 
	.C(n763), 
	.B(n545), 
	.A(n751));
   INVX1 U995 (.Y(n755), 
	.A(crcfifo1_empty));
   NOR3X1 U996 (.Y(n754), 
	.C(n567), 
	.B(n722), 
	.A(crcfifo0_empty));
   AOI21X1 U997 (.Y(n849), 
	.C(n754), 
	.B(n755), 
	.A(n710));
   OAI21X1 U998 (.Y(n758), 
	.C(n562), 
	.B(n767), 
	.A(n721));
   INVX1 U999 (.Y(n832), 
	.A(n758));
   INVX1 U1000 (.Y(n759), 
	.A(n428));
   INVX1 U1001 (.Y(n766), 
	.A(n429));
   AOI21X1 U1002 (.Y(n840), 
	.C(n410), 
	.B(n765), 
	.A(n759));
   AOI21X1 U1003 (.Y(n833), 
	.C(n784), 
	.B(n562), 
	.A(n761));
   MUX2X1 U1004 (.Y(n825), 
	.S(n714), 
	.B(n563), 
	.A(n774));
   OAI21X1 U1005 (.Y(n762), 
	.C(n576), 
	.B(n410), 
	.A(n590));
   INVX1 U1006 (.Y(n841), 
	.A(n762));
   OAI21X1 U1007 (.Y(n764), 
	.C(n563), 
	.B(n763), 
	.A(n718));
   INVX1 U1008 (.Y(n824), 
	.A(n764));
   HAX1 U1009 (.YS(n773), 
	.YC(n771), 
	.B(n568), 
	.A(n832));
   AOI21X1 U1010 (.Y(n839), 
	.C(n420), 
	.B(n423), 
	.A(n766));
   OAI21X1 U1011 (.Y(n768), 
	.C(n552), 
	.B(n711), 
	.A(n416));
   INVX1 U1012 (.Y(n831), 
	.A(n768));
   FAX1 U1013 (.YS(n821), 
	.C(n769), 
	.B(n770), 
	.A(n771));
   FAX1 U1014 (.YS(n820), 
	.YC(n769), 
	.C(n772), 
	.B(n773), 
	.A(n824));
   AOI21X1 U1015 (.Y(n836), 
	.C(n594), 
	.B(n577), 
	.A(n554));
   AOI21X1 U1016 (.Y(n828), 
	.C(n713), 
	.B(n578), 
	.A(n559));
   INVX1 U1017 (.Y(n791), 
	.A(n558));
   AOI21X1 U1018 (.Y(n844), 
	.C(n595), 
	.B(n579), 
	.A(n556));
   INVX1 U1019 (.Y(n775), 
	.A(n720));
   MUX2X1 U1020 (.Y(n837), 
	.S(n594), 
	.B(n775), 
	.A(n720));
   MUX2X1 U1021 (.Y(n829), 
	.S(n713), 
	.B(n570), 
	.A(n571));
   INVX1 U1022 (.Y(n776), 
	.A(n719));
   MUX2X1 U1023 (.Y(n845), 
	.S(n595), 
	.B(n776), 
	.A(n719));
   OAI21X1 U1024 (.Y(n778), 
	.C(n577), 
	.B(n580), 
	.A(n591));
   OAI21X1 U1025 (.Y(n780), 
	.C(n578), 
	.B(n415), 
	.A(n589));
   OAI21X1 U1026 (.Y(n782), 
	.C(n579), 
	.B(n581), 
	.A(n712));
   FAX1 U1027 (.YS(n805), 
	.YC(n796), 
	.C(n419), 
	.B(n592), 
	.A(n716));
   AOI21X1 U1028 (.Y(n834), 
	.C(n580), 
	.B(n572), 
	.A(n785));
   AOI21X1 U1029 (.Y(n826), 
	.C(n415), 
	.B(n566), 
	.A(n788));
   AOI21X1 U1030 (.Y(n842), 
	.C(n581), 
	.B(n576), 
	.A(n791));
   FAX1 U1031 (.YS(n809), 
	.YC(n806), 
	.C(n827), 
	.B(n843), 
	.A(n835));
   FAX1 U1032 (.YS(n770), 
	.YC(n808), 
	.C(n841), 
	.B(n825), 
	.A(n596));
   FAX1 U1033 (.YS(n807), 
	.YC(n810), 
	.C(n575), 
	.B(n593), 
	.A(n715));
   MUX2X1 U1034 (.Y(n838), 
	.S(n549), 
	.B(n583), 
	.A(n582));
   FAX1 U1035 (.YS(n818), 
	.YC(n803), 
	.C(n794), 
	.B(n795), 
	.A(n796));
   FAX1 U1036 (.YS(n795), 
	.YC(n801), 
	.C(n845), 
	.B(n829), 
	.A(n837));
   MUX2X1 U1037 (.Y(n830), 
	.S(n550), 
	.B(n585), 
	.A(n584));
   MUX2X1 U1038 (.Y(n846), 
	.S(n551), 
	.B(n588), 
	.A(n587));
   FAX1 U1039 (.YS(n802), 
	.C(n846), 
	.B(n830), 
	.A(n801));
   FAX1 U1040 (.YS(n817), 
	.C(n802), 
	.B(n803), 
	.A(n838));
   FAX1 U1041 (.YS(n815), 
	.YC(n772), 
	.C(n574), 
	.B(n831), 
	.A(n717));
   FAX1 U1042 (.YS(n813), 
	.YC(n794), 
	.C(n804), 
	.B(n805), 
	.A(n806));
   FAX1 U1043 (.YS(n811), 
	.YC(n804), 
	.C(n724), 
	.B(n809), 
	.A(n810));
   NOR3X1 U1044 (.Y(n814), 
	.C(n811), 
	.B(n812), 
	.A(n813));
   NOR3X1 U1045 (.Y(n819), 
	.C(n548), 
	.B(n817), 
	.A(n818));
   OAI21X1 U1046 (.Y(\qos/queue_gnt_q [1]), 
	.C(n709), 
	.B(n848), 
	.A(n418));
   BUFX2 U1047 (.Y(n1073), 
	.A(FE_OFN1_n1048));
   AOI22X1 U1048 (.Y(n851), 
	.D(pfifo_datain_ctrl_1[0]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[0]), 
	.A(n1074));
   NAND2X1 U1049 (.Y(pfifo_datain_ctrl[0]), 
	.B(n433), 
	.A(n676));
   AOI22X1 U1050 (.Y(n853), 
	.D(pfifo_datain_ctrl_1[1]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[1]), 
	.A(n1074));
   NAND2X1 U1051 (.Y(pfifo_datain_ctrl[1]), 
	.B(n434), 
	.A(n675));
   AOI22X1 U1052 (.Y(n855), 
	.D(pfifo_datain_ctrl_1[2]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[2]), 
	.A(n1074));
   NAND2X1 U1053 (.Y(pfifo_datain_ctrl[2]), 
	.B(n435), 
	.A(n674));
   AOI22X1 U1054 (.Y(n857), 
	.D(pfifo_datain_ctrl_1[3]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain_ctrl_2[3]), 
	.A(n1074));
   NAND2X1 U1055 (.Y(pfifo_datain_ctrl[3]), 
	.B(n436), 
	.A(n673));
   AOI22X1 U1056 (.Y(n859), 
	.D(pfifo_datain_ctrl_1[4]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[4]), 
	.A(n1074));
   NAND2X1 U1057 (.Y(pfifo_datain_ctrl[4]), 
	.B(n437), 
	.A(n672));
   AOI22X1 U1058 (.Y(n861), 
	.D(pfifo_datain_ctrl_1[5]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[5]), 
	.A(n1074));
   NAND2X1 U1059 (.Y(pfifo_datain_ctrl[5]), 
	.B(n438), 
	.A(n671));
   AOI22X1 U1060 (.Y(n863), 
	.D(pfifo_datain_ctrl_1[6]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[6]), 
	.A(n1074));
   NAND2X1 U1061 (.Y(pfifo_datain_ctrl[6]), 
	.B(n439), 
	.A(n670));
   AOI22X1 U1062 (.Y(n865), 
	.D(pfifo_datain_ctrl_1[7]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[7]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1063 (.Y(pfifo_datain_ctrl[7]), 
	.B(n440), 
	.A(n669));
   AOI22X1 U1064 (.Y(n867), 
	.D(pfifo_datain_ctrl_1[8]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[8]), 
	.A(n1074));
   NAND2X1 U1065 (.Y(pfifo_datain_ctrl[8]), 
	.B(n441), 
	.A(n668));
   AOI22X1 U1066 (.Y(n869), 
	.D(pfifo_datain_ctrl_1[9]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain_ctrl_2[9]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1067 (.Y(pfifo_datain_ctrl[9]), 
	.B(n442), 
	.A(n667));
   AOI22X1 U1068 (.Y(n871), 
	.D(pfifo_datain_ctrl_1[10]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[10]), 
	.A(n1074));
   NAND2X1 U1069 (.Y(pfifo_datain_ctrl[10]), 
	.B(n443), 
	.A(n666));
   AOI22X1 U1070 (.Y(n873), 
	.D(pfifo_datain_ctrl_1[11]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain_ctrl_2[11]), 
	.A(n1074));
   NAND2X1 U1071 (.Y(pfifo_datain_ctrl[11]), 
	.B(n444), 
	.A(n665));
   AOI22X1 U1072 (.Y(n875), 
	.D(pfifo_datain_ctrl_1[12]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain_ctrl_2[12]), 
	.A(n1074));
   NAND2X1 U1073 (.Y(pfifo_datain_ctrl[12]), 
	.B(n445), 
	.A(n664));
   AOI22X1 U1074 (.Y(n877), 
	.D(pfifo_datain_ctrl_1[13]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[13]), 
	.A(n1074));
   NAND2X1 U1075 (.Y(pfifo_datain_ctrl[13]), 
	.B(n446), 
	.A(n663));
   AOI22X1 U1076 (.Y(n879), 
	.D(pfifo_datain_ctrl_1[14]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain_ctrl_2[14]), 
	.A(n1074));
   NAND2X1 U1077 (.Y(pfifo_datain_ctrl[14]), 
	.B(n447), 
	.A(n662));
   AOI22X1 U1078 (.Y(n881), 
	.D(pfifo_datain_ctrl_1[15]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain_ctrl_2[15]), 
	.A(n1074));
   NAND2X1 U1079 (.Y(pfifo_datain_ctrl[15]), 
	.B(n448), 
	.A(n661));
   AOI22X1 U1080 (.Y(n883), 
	.D(crcfifo1_dataout[0]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[0]), 
	.A(n1074));
   NAND2X1 U1081 (.Y(crcfifo_dataout[0]), 
	.B(n449), 
	.A(n708));
   AOI22X1 U1082 (.Y(n885), 
	.D(crcfifo1_dataout[1]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[1]), 
	.A(n1074));
   NAND2X1 U1083 (.Y(crcfifo_dataout[1]), 
	.B(n450), 
	.A(n707));
   AOI22X1 U1084 (.Y(n887), 
	.D(crcfifo1_dataout[2]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[2]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1085 (.Y(crcfifo_dataout[2]), 
	.B(n451), 
	.A(n706));
   AOI22X1 U1086 (.Y(n889), 
	.D(crcfifo1_dataout[3]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[3]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1087 (.Y(crcfifo_dataout[3]), 
	.B(n452), 
	.A(n705));
   AOI22X1 U1088 (.Y(n891), 
	.D(crcfifo1_dataout[4]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[4]), 
	.A(n1074));
   NAND2X1 U1089 (.Y(crcfifo_dataout[4]), 
	.B(n453), 
	.A(n704));
   AOI22X1 U1090 (.Y(n893), 
	.D(crcfifo1_dataout[5]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[5]), 
	.A(n1074));
   NAND2X1 U1091 (.Y(crcfifo_dataout[5]), 
	.B(n454), 
	.A(n703));
   AOI22X1 U1092 (.Y(n895), 
	.D(crcfifo1_dataout[6]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[6]), 
	.A(n1074));
   NAND2X1 U1093 (.Y(crcfifo_dataout[6]), 
	.B(n455), 
	.A(n702));
   AOI22X1 U1094 (.Y(n897), 
	.D(crcfifo1_dataout[7]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[7]), 
	.A(n1074));
   NAND2X1 U1095 (.Y(crcfifo_dataout[7]), 
	.B(n456), 
	.A(n701));
   AOI22X1 U1096 (.Y(n899), 
	.D(crcfifo1_dataout[8]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[8]), 
	.A(n1074));
   NAND2X1 U1097 (.Y(crcfifo_dataout[8]), 
	.B(n457), 
	.A(n700));
   AOI22X1 U1098 (.Y(n901), 
	.D(crcfifo1_dataout[9]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[9]), 
	.A(n1074));
   NAND2X1 U1099 (.Y(crcfifo_dataout[9]), 
	.B(n458), 
	.A(n699));
   AOI22X1 U1100 (.Y(n903), 
	.D(crcfifo1_dataout[10]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[10]), 
	.A(n1074));
   NAND2X1 U1101 (.Y(crcfifo_dataout[10]), 
	.B(n459), 
	.A(n698));
   AOI22X1 U1102 (.Y(n905), 
	.D(crcfifo1_dataout[11]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[11]), 
	.A(n1074));
   NAND2X1 U1103 (.Y(crcfifo_dataout[11]), 
	.B(n460), 
	.A(n697));
   AOI22X1 U1104 (.Y(n907), 
	.D(crcfifo1_dataout[12]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[12]), 
	.A(n1074));
   NAND2X1 U1105 (.Y(crcfifo_dataout[12]), 
	.B(n461), 
	.A(n696));
   AOI22X1 U1106 (.Y(n909), 
	.D(crcfifo1_dataout[13]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[13]), 
	.A(n1074));
   NAND2X1 U1107 (.Y(crcfifo_dataout[13]), 
	.B(n462), 
	.A(n695));
   AOI22X1 U1108 (.Y(n911), 
	.D(crcfifo1_dataout[14]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[14]), 
	.A(n1074));
   NAND2X1 U1109 (.Y(crcfifo_dataout[14]), 
	.B(n463), 
	.A(n694));
   AOI22X1 U1110 (.Y(n913), 
	.D(crcfifo1_dataout[15]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[15]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1111 (.Y(crcfifo_dataout[15]), 
	.B(n464), 
	.A(n693));
   AOI22X1 U1112 (.Y(n915), 
	.D(crcfifo1_dataout[16]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[16]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1113 (.Y(crcfifo_dataout[16]), 
	.B(n465), 
	.A(n692));
   AOI22X1 U1114 (.Y(n917), 
	.D(crcfifo1_dataout[17]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[17]), 
	.A(n1074));
   NAND2X1 U1115 (.Y(crcfifo_dataout[17]), 
	.B(n466), 
	.A(n691));
   AOI22X1 U1116 (.Y(n919), 
	.D(crcfifo1_dataout[18]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[18]), 
	.A(n1074));
   NAND2X1 U1117 (.Y(crcfifo_dataout[18]), 
	.B(n467), 
	.A(n690));
   AOI22X1 U1118 (.Y(n921), 
	.D(crcfifo1_dataout[19]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[19]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1119 (.Y(crcfifo_dataout[19]), 
	.B(n468), 
	.A(n689));
   AOI22X1 U1120 (.Y(n923), 
	.D(crcfifo1_dataout[20]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[20]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1121 (.Y(crcfifo_dataout[20]), 
	.B(n469), 
	.A(n688));
   AOI22X1 U1122 (.Y(n925), 
	.D(crcfifo1_dataout[21]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[21]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1123 (.Y(crcfifo_dataout[21]), 
	.B(n470), 
	.A(n687));
   AOI22X1 U1124 (.Y(n927), 
	.D(crcfifo1_dataout[22]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[22]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1125 (.Y(crcfifo_dataout[22]), 
	.B(n471), 
	.A(n686));
   AOI22X1 U1126 (.Y(n929), 
	.D(crcfifo1_dataout[23]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[23]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1127 (.Y(crcfifo_dataout[23]), 
	.B(n472), 
	.A(n685));
   AOI22X1 U1128 (.Y(n931), 
	.D(crcfifo1_dataout[24]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[24]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1129 (.Y(crcfifo_dataout[24]), 
	.B(n473), 
	.A(n684));
   AOI22X1 U1130 (.Y(n933), 
	.D(crcfifo1_dataout[25]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[25]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1131 (.Y(crcfifo_dataout[25]), 
	.B(n474), 
	.A(n683));
   AOI22X1 U1132 (.Y(n935), 
	.D(crcfifo1_dataout[26]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[26]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1133 (.Y(crcfifo_dataout[26]), 
	.B(n475), 
	.A(n682));
   AOI22X1 U1134 (.Y(n937), 
	.D(crcfifo1_dataout[27]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[27]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1135 (.Y(crcfifo_dataout[27]), 
	.B(n476), 
	.A(n681));
   AOI22X1 U1136 (.Y(n939), 
	.D(crcfifo1_dataout[28]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[28]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1137 (.Y(crcfifo_dataout[28]), 
	.B(n477), 
	.A(n680));
   AOI22X1 U1138 (.Y(n941), 
	.D(crcfifo1_dataout[29]), 
	.C(FE_OFN1_n1048), 
	.B(crcfifo2_dataout[29]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1139 (.Y(crcfifo_dataout[29]), 
	.B(n478), 
	.A(n679));
   AOI22X1 U1140 (.Y(n943), 
	.D(crcfifo1_dataout[30]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[30]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1141 (.Y(crcfifo_dataout[30]), 
	.B(n479), 
	.A(n678));
   AOI22X1 U1142 (.Y(n945), 
	.D(crcfifo1_dataout[31]), 
	.C(FE_OFN0_n1073), 
	.B(crcfifo2_dataout[31]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1143 (.Y(crcfifo_dataout[31]), 
	.B(n480), 
	.A(n677));
   AOI22X1 U1144 (.Y(n947), 
	.D(pfifo_datain1[0]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[0]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1145 (.Y(pfifo_datain[0]), 
	.B(n481), 
	.A(n660));
   AOI22X1 U1146 (.Y(n949), 
	.D(pfifo_datain1[1]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[1]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1147 (.Y(pfifo_datain[1]), 
	.B(n482), 
	.A(n659));
   AOI22X1 U1148 (.Y(n951), 
	.D(pfifo_datain1[2]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[2]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1149 (.Y(pfifo_datain[2]), 
	.B(n483), 
	.A(n658));
   AOI22X1 U1150 (.Y(n953), 
	.D(pfifo_datain1[3]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[3]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1151 (.Y(pfifo_datain[3]), 
	.B(n484), 
	.A(n657));
   AOI22X1 U1152 (.Y(n955), 
	.D(pfifo_datain1[4]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[4]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1153 (.Y(pfifo_datain[4]), 
	.B(n485), 
	.A(n656));
   AOI22X1 U1154 (.Y(n957), 
	.D(pfifo_datain1[5]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[5]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1155 (.Y(pfifo_datain[5]), 
	.B(n486), 
	.A(n655));
   AOI22X1 U1156 (.Y(n959), 
	.D(pfifo_datain1[6]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[6]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1157 (.Y(pfifo_datain[6]), 
	.B(n487), 
	.A(n654));
   AOI22X1 U1158 (.Y(n961), 
	.D(pfifo_datain1[7]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[7]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1159 (.Y(pfifo_datain[7]), 
	.B(n488), 
	.A(n653));
   AOI22X1 U1160 (.Y(n963), 
	.D(pfifo_datain1[8]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[8]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1161 (.Y(pfifo_datain[8]), 
	.B(n489), 
	.A(n652));
   AOI22X1 U1162 (.Y(n965), 
	.D(pfifo_datain1[9]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[9]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1163 (.Y(pfifo_datain[9]), 
	.B(n490), 
	.A(n651));
   AOI22X1 U1164 (.Y(n967), 
	.D(pfifo_datain1[10]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[10]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1165 (.Y(pfifo_datain[10]), 
	.B(n491), 
	.A(n650));
   AOI22X1 U1166 (.Y(n969), 
	.D(pfifo_datain1[11]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[11]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1167 (.Y(pfifo_datain[11]), 
	.B(n492), 
	.A(n649));
   AOI22X1 U1168 (.Y(n971), 
	.D(pfifo_datain1[12]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[12]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1169 (.Y(pfifo_datain[12]), 
	.B(n493), 
	.A(n648));
   AOI22X1 U1170 (.Y(n973), 
	.D(pfifo_datain1[13]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[13]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1171 (.Y(pfifo_datain[13]), 
	.B(n494), 
	.A(n647));
   AOI22X1 U1172 (.Y(n975), 
	.D(pfifo_datain1[14]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[14]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1173 (.Y(pfifo_datain[14]), 
	.B(n495), 
	.A(n646));
   AOI22X1 U1174 (.Y(n977), 
	.D(pfifo_datain1[15]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[15]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1175 (.Y(pfifo_datain[15]), 
	.B(n496), 
	.A(n645));
   AOI22X1 U1176 (.Y(n979), 
	.D(pfifo_datain1[16]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[16]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1177 (.Y(pfifo_datain[16]), 
	.B(n497), 
	.A(n644));
   AOI22X1 U1178 (.Y(n981), 
	.D(pfifo_datain1[17]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[17]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1179 (.Y(pfifo_datain[17]), 
	.B(n498), 
	.A(n643));
   AOI22X1 U1180 (.Y(n983), 
	.D(pfifo_datain1[18]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[18]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1181 (.Y(pfifo_datain[18]), 
	.B(n499), 
	.A(n642));
   AOI22X1 U1182 (.Y(n985), 
	.D(pfifo_datain1[19]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[19]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1183 (.Y(pfifo_datain[19]), 
	.B(n500), 
	.A(n641));
   AOI22X1 U1184 (.Y(n987), 
	.D(pfifo_datain1[20]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[20]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1185 (.Y(pfifo_datain[20]), 
	.B(n501), 
	.A(n640));
   AOI22X1 U1186 (.Y(n989), 
	.D(pfifo_datain1[21]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[21]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1187 (.Y(pfifo_datain[21]), 
	.B(n502), 
	.A(n639));
   AOI22X1 U1188 (.Y(n991), 
	.D(pfifo_datain1[22]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[22]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1189 (.Y(pfifo_datain[22]), 
	.B(n503), 
	.A(n638));
   AOI22X1 U1190 (.Y(n993), 
	.D(pfifo_datain1[23]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[23]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1191 (.Y(pfifo_datain[23]), 
	.B(n504), 
	.A(n637));
   AOI22X1 U1192 (.Y(n995), 
	.D(pfifo_datain1[24]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[24]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1193 (.Y(pfifo_datain[24]), 
	.B(n505), 
	.A(n636));
   AOI22X1 U1194 (.Y(n997), 
	.D(pfifo_datain1[25]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[25]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1195 (.Y(pfifo_datain[25]), 
	.B(n506), 
	.A(n635));
   AOI22X1 U1196 (.Y(n999), 
	.D(pfifo_datain1[26]), 
	.C(n1073), 
	.B(pfifo_datain2[26]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1197 (.Y(pfifo_datain[26]), 
	.B(n507), 
	.A(n634));
   AOI22X1 U1198 (.Y(n1001), 
	.D(pfifo_datain1[27]), 
	.C(n1073), 
	.B(pfifo_datain2[27]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1199 (.Y(pfifo_datain[27]), 
	.B(n508), 
	.A(n633));
   AOI22X1 U1200 (.Y(n1003), 
	.D(pfifo_datain1[28]), 
	.C(n1073), 
	.B(pfifo_datain2[28]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1201 (.Y(pfifo_datain[28]), 
	.B(n509), 
	.A(n632));
   AOI22X1 U1202 (.Y(n1005), 
	.D(pfifo_datain1[29]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[29]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1203 (.Y(pfifo_datain[29]), 
	.B(n510), 
	.A(n631));
   AOI22X1 U1204 (.Y(n1007), 
	.D(pfifo_datain1[30]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[30]), 
	.A(n1074));
   NAND2X1 U1205 (.Y(pfifo_datain[30]), 
	.B(n511), 
	.A(n630));
   AOI22X1 U1206 (.Y(n1009), 
	.D(pfifo_datain1[31]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[31]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1207 (.Y(pfifo_datain[31]), 
	.B(n512), 
	.A(n629));
   AOI22X1 U1208 (.Y(n1011), 
	.D(pfifo_datain1[32]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[32]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1209 (.Y(pfifo_datain[32]), 
	.B(n513), 
	.A(n628));
   AOI22X1 U1210 (.Y(n1013), 
	.D(pfifo_datain1[33]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[33]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1211 (.Y(pfifo_datain[33]), 
	.B(n514), 
	.A(n627));
   AOI22X1 U1212 (.Y(n1015), 
	.D(pfifo_datain1[34]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[34]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1213 (.Y(pfifo_datain[34]), 
	.B(n515), 
	.A(n626));
   AOI22X1 U1214 (.Y(n1017), 
	.D(pfifo_datain1[35]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[35]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1215 (.Y(pfifo_datain[35]), 
	.B(n516), 
	.A(n625));
   AOI22X1 U1216 (.Y(n1019), 
	.D(pfifo_datain1[36]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[36]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1217 (.Y(pfifo_datain[36]), 
	.B(n517), 
	.A(n624));
   AOI22X1 U1218 (.Y(n1021), 
	.D(pfifo_datain1[37]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[37]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1219 (.Y(pfifo_datain[37]), 
	.B(n518), 
	.A(n623));
   AOI22X1 U1220 (.Y(n1023), 
	.D(pfifo_datain1[38]), 
	.C(n1073), 
	.B(pfifo_datain2[38]), 
	.A(n1074));
   NAND2X1 U1221 (.Y(pfifo_datain[38]), 
	.B(n519), 
	.A(n622));
   AOI22X1 U1222 (.Y(n1025), 
	.D(pfifo_datain1[39]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[39]), 
	.A(n1074));
   NAND2X1 U1223 (.Y(pfifo_datain[39]), 
	.B(n520), 
	.A(n621));
   AOI22X1 U1224 (.Y(n1027), 
	.D(pfifo_datain1[40]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[40]), 
	.A(n1074));
   NAND2X1 U1225 (.Y(pfifo_datain[40]), 
	.B(n521), 
	.A(n620));
   AOI22X1 U1226 (.Y(n1029), 
	.D(pfifo_datain1[41]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[41]), 
	.A(n1074));
   NAND2X1 U1227 (.Y(pfifo_datain[41]), 
	.B(n522), 
	.A(n619));
   AOI22X1 U1228 (.Y(n1031), 
	.D(pfifo_datain1[42]), 
	.C(n1073), 
	.B(pfifo_datain2[42]), 
	.A(n1074));
   NAND2X1 U1229 (.Y(pfifo_datain[42]), 
	.B(n523), 
	.A(n618));
   AOI22X1 U1230 (.Y(n1033), 
	.D(pfifo_datain1[43]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[43]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1231 (.Y(pfifo_datain[43]), 
	.B(n524), 
	.A(n617));
   AOI22X1 U1232 (.Y(n1035), 
	.D(pfifo_datain1[44]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[44]), 
	.A(n1074));
   NAND2X1 U1233 (.Y(pfifo_datain[44]), 
	.B(n525), 
	.A(n616));
   AOI22X1 U1234 (.Y(n1037), 
	.D(pfifo_datain1[45]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[45]), 
	.A(n1074));
   NAND2X1 U1235 (.Y(pfifo_datain[45]), 
	.B(n526), 
	.A(n615));
   AOI22X1 U1236 (.Y(n1039), 
	.D(pfifo_datain1[46]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[46]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1237 (.Y(pfifo_datain[46]), 
	.B(n527), 
	.A(n614));
   AOI22X1 U1238 (.Y(n1041), 
	.D(pfifo_datain1[47]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[47]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1239 (.Y(pfifo_datain[47]), 
	.B(n528), 
	.A(n613));
   AOI22X1 U1240 (.Y(n1043), 
	.D(pfifo_datain1[48]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[48]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1241 (.Y(pfifo_datain[48]), 
	.B(n529), 
	.A(n612));
   AOI22X1 U1242 (.Y(n1045), 
	.D(pfifo_datain1[49]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[49]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1243 (.Y(pfifo_datain[49]), 
	.B(n530), 
	.A(n611));
   AOI22X1 U1244 (.Y(n1047), 
	.D(pfifo_datain1[50]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[50]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1245 (.Y(pfifo_datain[50]), 
	.B(n531), 
	.A(n610));
   AOI22X1 U1246 (.Y(n1050), 
	.D(pfifo_datain1[51]), 
	.C(FE_OFN1_n1048), 
	.B(pfifo_datain2[51]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1247 (.Y(pfifo_datain[51]), 
	.B(n532), 
	.A(n609));
   AOI22X1 U1248 (.Y(n1052), 
	.D(pfifo_datain1[52]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[52]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1249 (.Y(pfifo_datain[52]), 
	.B(n533), 
	.A(n608));
   AOI22X1 U1250 (.Y(n1054), 
	.D(pfifo_datain1[53]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[53]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1251 (.Y(pfifo_datain[53]), 
	.B(n534), 
	.A(n607));
   AOI22X1 U1252 (.Y(n1056), 
	.D(pfifo_datain1[54]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[54]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1253 (.Y(pfifo_datain[54]), 
	.B(n535), 
	.A(n606));
   AOI22X1 U1254 (.Y(n1058), 
	.D(pfifo_datain1[55]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[55]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1255 (.Y(pfifo_datain[55]), 
	.B(n536), 
	.A(n605));
   AOI22X1 U1256 (.Y(n1060), 
	.D(pfifo_datain1[56]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[56]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1257 (.Y(pfifo_datain[56]), 
	.B(n537), 
	.A(n604));
   AOI22X1 U1258 (.Y(n1062), 
	.D(pfifo_datain1[57]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[57]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1259 (.Y(pfifo_datain[57]), 
	.B(n538), 
	.A(n603));
   AOI22X1 U1260 (.Y(n1064), 
	.D(pfifo_datain1[58]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[58]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1261 (.Y(pfifo_datain[58]), 
	.B(n539), 
	.A(n602));
   AOI22X1 U1262 (.Y(n1066), 
	.D(pfifo_datain1[59]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[59]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1263 (.Y(pfifo_datain[59]), 
	.B(n540), 
	.A(n601));
   AOI22X1 U1264 (.Y(n1068), 
	.D(pfifo_datain1[60]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[60]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1265 (.Y(pfifo_datain[60]), 
	.B(n541), 
	.A(n600));
   AOI22X1 U1266 (.Y(n1070), 
	.D(pfifo_datain1[61]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[61]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1267 (.Y(pfifo_datain[61]), 
	.B(n542), 
	.A(n599));
   AOI22X1 U1268 (.Y(n1072), 
	.D(pfifo_datain1[62]), 
	.C(n1073), 
	.B(pfifo_datain2[62]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1269 (.Y(pfifo_datain[62]), 
	.B(n543), 
	.A(n598));
   AOI22X1 U1270 (.Y(n1077), 
	.D(pfifo_datain1[63]), 
	.C(FE_OFN0_n1073), 
	.B(pfifo_datain2[63]), 
	.A(FE_OFN2_n1074));
   NAND2X1 U1271 (.Y(pfifo_datain[63]), 
	.B(n544), 
	.A(n597));
endmodule

