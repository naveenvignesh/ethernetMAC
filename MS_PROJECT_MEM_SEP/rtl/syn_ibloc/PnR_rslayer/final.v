/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 19:49:17 2016
/////////////////////////////////////////////////////////////
module rs_layer (
	\clks.clk , 
	\clks.rst , 
	\xgmii_tx.TXC , 
	\xgmii_tx.TXD , 
	\xgmii_tx.TXCLK , 
	start_transmit, 
	lpi, 
	pop_pkt, 
	pop_crc, 
	pkt_data, 
	pkt_empty, 
	pkt_ctrl, 
	pkt_crc, 
	nxt_buf, 
	bvalidin);
   input \clks.clk ;
   input \clks.rst ;
   output [3:0] \xgmii_tx.TXC ;
   output [31:0] \xgmii_tx.TXD ;
   output \xgmii_tx.TXCLK ;
   input start_transmit;
   input lpi;
   output pop_pkt;
   output pop_crc;
   input [63:0] pkt_data;
   input pkt_empty;
   input [7:0] pkt_ctrl;
   input [31:0] pkt_crc;
   output nxt_buf;
   input [7:0] bvalidin;

   // Internal wires
   wire FE_OFN8_pop_crc;
   wire FE_OFN7_n2278;
   wire FE_OFN6_n1952;
   wire FECTS_clks_clk___L4_N9;
   wire FECTS_clks_clk___L4_N8;
   wire FECTS_clks_clk___L4_N7;
   wire FECTS_clks_clk___L4_N6;
   wire FECTS_clks_clk___L4_N5;
   wire FECTS_clks_clk___L4_N4;
   wire FECTS_clks_clk___L4_N3;
   wire FECTS_clks_clk___L4_N2;
   wire FECTS_clks_clk___L4_N1;
   wire FECTS_clks_clk___L4_N0;
   wire FECTS_clks_clk___L3_N0;
   wire FECTS_clks_clk___L2_N0;
   wire FECTS_clks_clk___L1_N0;
   wire FE_OFCN5_FE_OFN3_clks_rst;
   wire FE_OFCN4_FE_OFN1_clks_rst;
   wire FE_OFN3_clks_rst;
   wire FE_OFN2_clks_rst;
   wire FE_OFN1_clks_rst;
   wire FE_OFN0_pop_pkt;
   wire n2351;
   wire n2352;
   wire n2353;
   wire n2354;
   wire gclk_en_d;
   wire clk125mhz;
   wire cnt2_d;
   wire gclk_en;
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
   wire n1078;
   wire n1079;
   wire n1080;
   wire n1081;
   wire n1082;
   wire n1083;
   wire n1084;
   wire n1085;
   wire n1086;
   wire n1087;
   wire n1088;
   wire n1089;
   wire n1090;
   wire n1091;
   wire n1092;
   wire n1093;
   wire n1094;
   wire n1095;
   wire n1096;
   wire n1097;
   wire n1098;
   wire n1099;
   wire n1100;
   wire n1101;
   wire n1102;
   wire n1103;
   wire n1104;
   wire n1105;
   wire n1106;
   wire n1107;
   wire n1108;
   wire n1109;
   wire n1110;
   wire n1111;
   wire n1112;
   wire n1113;
   wire n1114;
   wire n1115;
   wire n1116;
   wire n1117;
   wire n1118;
   wire n1119;
   wire n1120;
   wire n1121;
   wire n1122;
   wire n1123;
   wire n1124;
   wire n1125;
   wire n1126;
   wire n1127;
   wire n1128;
   wire n1129;
   wire n1130;
   wire n1131;
   wire n1132;
   wire n1133;
   wire n1134;
   wire n1135;
   wire n1136;
   wire n1137;
   wire n1138;
   wire n1139;
   wire n1140;
   wire n1141;
   wire n1142;
   wire n1143;
   wire n1144;
   wire n1145;
   wire n1146;
   wire n1147;
   wire n1148;
   wire n1149;
   wire n1150;
   wire n1151;
   wire n1152;
   wire n1153;
   wire n1154;
   wire n1155;
   wire n1156;
   wire n1157;
   wire n1158;
   wire n1159;
   wire n1160;
   wire n1161;
   wire n1162;
   wire n1163;
   wire n1164;
   wire n1165;
   wire n1166;
   wire n1167;
   wire n1168;
   wire n1169;
   wire n1170;
   wire n1171;
   wire n1172;
   wire n1173;
   wire n1174;
   wire n1175;
   wire n1176;
   wire n1177;
   wire n1178;
   wire n1179;
   wire n1180;
   wire n1181;
   wire n1182;
   wire n1183;
   wire n1184;
   wire n1185;
   wire n1186;
   wire n1187;
   wire n1188;
   wire n1189;
   wire n1190;
   wire n1191;
   wire n1192;
   wire n1193;
   wire n1194;
   wire n1195;
   wire n1196;
   wire n1197;
   wire n1198;
   wire n1199;
   wire n1200;
   wire n1201;
   wire n1202;
   wire n1203;
   wire n1204;
   wire n1205;
   wire n1206;
   wire n1207;
   wire n1208;
   wire n1209;
   wire n1210;
   wire n1211;
   wire n1214;
   wire n1215;
   wire n1216;
   wire n1218;
   wire n1219;
   wire n1220;
   wire n1222;
   wire n1223;
   wire n1224;
   wire n1226;
   wire n1227;
   wire n1228;
   wire n1230;
   wire n1231;
   wire n1232;
   wire n1234;
   wire n1235;
   wire n1236;
   wire n1238;
   wire n1239;
   wire n1240;
   wire n1242;
   wire n1243;
   wire n1244;
   wire n1246;
   wire n1247;
   wire n1249;
   wire n1250;
   wire n1251;
   wire n1253;
   wire n1254;
   wire n1256;
   wire n1257;
   wire n1258;
   wire n1260;
   wire n1261;
   wire n1262;
   wire n1264;
   wire n1265;
   wire n1266;
   wire n1268;
   wire n1269;
   wire n1271;
   wire n1272;
   wire n1273;
   wire n1274;
   wire n1276;
   wire n1277;
   wire n1278;
   wire n1279;
   wire n1281;
   wire n1282;
   wire n1283;
   wire n1284;
   wire n1286;
   wire n1287;
   wire n1288;
   wire n1289;
   wire n1291;
   wire n1292;
   wire n1293;
   wire n1294;
   wire n1296;
   wire n1297;
   wire n1298;
   wire n1299;
   wire n1301;
   wire n1302;
   wire n1303;
   wire n1304;
   wire n1306;
   wire n1307;
   wire n1308;
   wire n1309;
   wire n1311;
   wire n1312;
   wire n1313;
   wire n1314;
   wire n1316;
   wire n1317;
   wire n1318;
   wire n1320;
   wire n1321;
   wire n1322;
   wire n1323;
   wire n1325;
   wire n1326;
   wire n1327;
   wire n1328;
   wire n1330;
   wire n1331;
   wire n1332;
   wire n1333;
   wire n1335;
   wire n1336;
   wire n1337;
   wire n1338;
   wire n1340;
   wire n1341;
   wire n1342;
   wire n1343;
   wire n1345;
   wire n1346;
   wire n1347;
   wire n1348;
   wire n1351;
   wire n1352;
   wire n1353;
   wire n1354;
   wire n1355;
   wire n1356;
   wire n1357;
   wire n1358;
   wire n1359;
   wire n1360;
   wire n1361;
   wire n1362;
   wire n1363;
   wire n1364;
   wire n1365;
   wire n1366;
   wire n1367;
   wire n1368;
   wire n1369;
   wire n1370;
   wire n1371;
   wire n1372;
   wire n1373;
   wire n1374;
   wire n1375;
   wire n1376;
   wire n1377;
   wire n1378;
   wire n1379;
   wire n1380;
   wire n1381;
   wire n1382;
   wire n1383;
   wire n1384;
   wire n1385;
   wire n1386;
   wire n1387;
   wire n1388;
   wire n1389;
   wire n1390;
   wire n1391;
   wire n1392;
   wire n1393;
   wire n1394;
   wire n1395;
   wire n1396;
   wire n1397;
   wire n1398;
   wire n1399;
   wire n1400;
   wire n1401;
   wire n1402;
   wire n1403;
   wire n1404;
   wire n1405;
   wire n1406;
   wire n1407;
   wire n1408;
   wire n1409;
   wire n1410;
   wire n1411;
   wire n1412;
   wire n1413;
   wire n1414;
   wire n1415;
   wire n1416;
   wire n1417;
   wire n1418;
   wire n1419;
   wire n1420;
   wire n1421;
   wire n1422;
   wire n1423;
   wire n1424;
   wire n1425;
   wire n1426;
   wire n1427;
   wire n1428;
   wire n1429;
   wire n1430;
   wire n1431;
   wire n1432;
   wire n1433;
   wire n1434;
   wire n1435;
   wire n1436;
   wire n1437;
   wire n1438;
   wire n1439;
   wire n1440;
   wire n1441;
   wire n1442;
   wire n1443;
   wire n1444;
   wire n1445;
   wire n1446;
   wire n1447;
   wire n1448;
   wire n1449;
   wire n1450;
   wire n1451;
   wire n1452;
   wire n1453;
   wire n1454;
   wire n1455;
   wire n1456;
   wire n1457;
   wire n1458;
   wire n1459;
   wire n1460;
   wire n1461;
   wire n1462;
   wire n1463;
   wire n1464;
   wire n1465;
   wire n1466;
   wire n1467;
   wire n1468;
   wire n1469;
   wire n1470;
   wire n1471;
   wire n1472;
   wire n1473;
   wire n1474;
   wire n1475;
   wire n1476;
   wire n1477;
   wire n1478;
   wire n1479;
   wire n1480;
   wire n1481;
   wire n1482;
   wire n1483;
   wire n1484;
   wire n1485;
   wire n1486;
   wire n1487;
   wire n1488;
   wire n1489;
   wire n1490;
   wire n1491;
   wire n1492;
   wire n1493;
   wire n1494;
   wire n1495;
   wire n1496;
   wire n1497;
   wire n1498;
   wire n1499;
   wire n1500;
   wire n1501;
   wire n1502;
   wire n1503;
   wire n1504;
   wire n1505;
   wire n1506;
   wire n1507;
   wire n1508;
   wire n1509;
   wire n1510;
   wire n1511;
   wire n1512;
   wire n1513;
   wire n1514;
   wire n1515;
   wire n1516;
   wire n1517;
   wire n1518;
   wire n1519;
   wire n1520;
   wire n1521;
   wire n1522;
   wire n1523;
   wire n1524;
   wire n1525;
   wire n1526;
   wire n1527;
   wire n1528;
   wire n1529;
   wire n1530;
   wire n1531;
   wire n1532;
   wire n1533;
   wire n1534;
   wire n1535;
   wire n1536;
   wire n1537;
   wire n1538;
   wire n1539;
   wire n1540;
   wire n1541;
   wire n1542;
   wire n1543;
   wire n1544;
   wire n1545;
   wire n1546;
   wire n1547;
   wire n1548;
   wire n1549;
   wire n1550;
   wire n1551;
   wire n1552;
   wire n1553;
   wire n1554;
   wire n1555;
   wire n1556;
   wire n1557;
   wire n1558;
   wire n1559;
   wire n1560;
   wire n1561;
   wire n1562;
   wire n1563;
   wire n1564;
   wire n1565;
   wire n1566;
   wire n1567;
   wire n1568;
   wire n1569;
   wire n1570;
   wire n1571;
   wire n1572;
   wire n1573;
   wire n1574;
   wire n1575;
   wire n1576;
   wire n1577;
   wire n1578;
   wire n1579;
   wire n1580;
   wire n1581;
   wire n1582;
   wire n1583;
   wire n1584;
   wire n1586;
   wire n1587;
   wire n1588;
   wire n1590;
   wire n1591;
   wire n1592;
   wire n1593;
   wire n1594;
   wire n1595;
   wire n1596;
   wire n1597;
   wire n1598;
   wire n1599;
   wire n1600;
   wire n1601;
   wire n1602;
   wire n1603;
   wire n1604;
   wire n1605;
   wire n1606;
   wire n1607;
   wire n1608;
   wire n1609;
   wire n1610;
   wire n1611;
   wire n1612;
   wire n1613;
   wire n1614;
   wire n1615;
   wire n1616;
   wire n1617;
   wire n1618;
   wire n1619;
   wire n1620;
   wire n1621;
   wire n1622;
   wire n1623;
   wire n1624;
   wire n1625;
   wire n1626;
   wire n1627;
   wire n1628;
   wire n1629;
   wire n1630;
   wire n1631;
   wire n1632;
   wire n1633;
   wire n1634;
   wire n1635;
   wire n1636;
   wire n1637;
   wire n1638;
   wire n1639;
   wire n1640;
   wire n1641;
   wire n1642;
   wire n1643;
   wire n1644;
   wire n1645;
   wire n1646;
   wire n1647;
   wire n1648;
   wire n1649;
   wire n1650;
   wire n1651;
   wire n1652;
   wire n1653;
   wire n1654;
   wire n1655;
   wire n1656;
   wire n1657;
   wire n1658;
   wire n1659;
   wire n1660;
   wire n1661;
   wire n1662;
   wire n1663;
   wire n1664;
   wire n1665;
   wire n1666;
   wire n1667;
   wire n1668;
   wire n1669;
   wire n1670;
   wire n1671;
   wire n1672;
   wire n1673;
   wire n1674;
   wire n1675;
   wire n1676;
   wire n1677;
   wire n1678;
   wire n1679;
   wire n1680;
   wire n1681;
   wire n1682;
   wire n1683;
   wire n1684;
   wire n1685;
   wire n1686;
   wire n1687;
   wire n1688;
   wire n1689;
   wire n1690;
   wire n1691;
   wire n1692;
   wire n1693;
   wire n1694;
   wire n1695;
   wire n1696;
   wire n1697;
   wire n1698;
   wire n1699;
   wire n1700;
   wire n1701;
   wire n1702;
   wire n1703;
   wire n1704;
   wire n1705;
   wire n1706;
   wire n1707;
   wire n1708;
   wire n1709;
   wire n1710;
   wire n1711;
   wire n1713;
   wire n1714;
   wire n1715;
   wire n1716;
   wire n1717;
   wire n1718;
   wire n1719;
   wire n1720;
   wire n1721;
   wire n1722;
   wire n1723;
   wire n1724;
   wire n1725;
   wire n1726;
   wire n1727;
   wire n1728;
   wire n1729;
   wire n1730;
   wire n1731;
   wire n1732;
   wire n1733;
   wire n1734;
   wire n1735;
   wire n1736;
   wire n1737;
   wire n1738;
   wire n1739;
   wire n1740;
   wire n1741;
   wire n1742;
   wire n1743;
   wire n1744;
   wire n1745;
   wire n1746;
   wire n1747;
   wire n1748;
   wire n1749;
   wire n1750;
   wire n1751;
   wire n1752;
   wire n1753;
   wire n1754;
   wire n1755;
   wire n1756;
   wire n1757;
   wire n1758;
   wire n1759;
   wire n1760;
   wire n1761;
   wire n1762;
   wire n1763;
   wire n1764;
   wire n1765;
   wire n1766;
   wire n1767;
   wire n1768;
   wire n1769;
   wire n1770;
   wire n1771;
   wire n1772;
   wire n1773;
   wire n1774;
   wire n1775;
   wire n1776;
   wire n1777;
   wire n1778;
   wire n1779;
   wire n1780;
   wire n1781;
   wire n1782;
   wire n1783;
   wire n1784;
   wire n1785;
   wire n1786;
   wire n1787;
   wire n1788;
   wire n1789;
   wire n1790;
   wire n1791;
   wire n1792;
   wire n1793;
   wire n1794;
   wire n1795;
   wire n1796;
   wire n1797;
   wire n1798;
   wire n1799;
   wire n1800;
   wire n1801;
   wire n1802;
   wire n1803;
   wire n1804;
   wire n1805;
   wire n1806;
   wire n1807;
   wire n1808;
   wire n1809;
   wire n1810;
   wire n1811;
   wire n1812;
   wire n1813;
   wire n1814;
   wire n1815;
   wire n1816;
   wire n1817;
   wire n1818;
   wire n1819;
   wire n1820;
   wire n1821;
   wire n1822;
   wire n1823;
   wire n1824;
   wire n1825;
   wire n1826;
   wire n1827;
   wire n1828;
   wire n1829;
   wire n1830;
   wire n1831;
   wire n1832;
   wire n1833;
   wire n1834;
   wire n1835;
   wire n1836;
   wire n1837;
   wire n1838;
   wire n1839;
   wire n1840;
   wire n1841;
   wire n1842;
   wire n1843;
   wire n1844;
   wire n1845;
   wire n1846;
   wire n1847;
   wire n1848;
   wire n1849;
   wire n1850;
   wire n1851;
   wire n1852;
   wire n1853;
   wire n1854;
   wire n1855;
   wire n1856;
   wire n1857;
   wire n1858;
   wire n1859;
   wire n1860;
   wire n1861;
   wire n1862;
   wire n1863;
   wire n1864;
   wire n1865;
   wire n1866;
   wire n1867;
   wire n1868;
   wire n1869;
   wire n1870;
   wire n1871;
   wire n1872;
   wire n1873;
   wire n1874;
   wire n1875;
   wire n1876;
   wire n1877;
   wire n1878;
   wire n1879;
   wire n1880;
   wire n1881;
   wire n1882;
   wire n1883;
   wire n1884;
   wire n1885;
   wire n1886;
   wire n1887;
   wire n1888;
   wire n1889;
   wire n1890;
   wire n1891;
   wire n1892;
   wire n1893;
   wire n1894;
   wire n1895;
   wire n1896;
   wire n1897;
   wire n1898;
   wire n1899;
   wire n1900;
   wire n1901;
   wire n1902;
   wire n1903;
   wire n1904;
   wire n1905;
   wire n1906;
   wire n1907;
   wire n1908;
   wire n1909;
   wire n1910;
   wire n1911;
   wire n1912;
   wire n1913;
   wire n1914;
   wire n1915;
   wire n1916;
   wire n1917;
   wire n1918;
   wire n1919;
   wire n1920;
   wire n1921;
   wire n1922;
   wire n1923;
   wire n1924;
   wire n1925;
   wire n1926;
   wire n1927;
   wire n1928;
   wire n1929;
   wire n1930;
   wire n1931;
   wire n1932;
   wire n1933;
   wire n1934;
   wire n1935;
   wire n1936;
   wire n1937;
   wire n1938;
   wire n1939;
   wire n1940;
   wire n1941;
   wire n1942;
   wire n1943;
   wire n1944;
   wire n1945;
   wire n1946;
   wire n1947;
   wire n1948;
   wire n1949;
   wire n1950;
   wire n1951;
   wire n1952;
   wire n1953;
   wire n1954;
   wire n1955;
   wire n1956;
   wire n1957;
   wire n1958;
   wire n1959;
   wire n1960;
   wire n1961;
   wire n1962;
   wire n1963;
   wire n1964;
   wire n1965;
   wire n1966;
   wire n1967;
   wire n1968;
   wire n1969;
   wire n1970;
   wire n1971;
   wire n1972;
   wire n1973;
   wire n1974;
   wire n1975;
   wire n1976;
   wire n1977;
   wire n1978;
   wire n1979;
   wire n1980;
   wire n1981;
   wire n1982;
   wire n1983;
   wire n1984;
   wire n1985;
   wire n1986;
   wire n1987;
   wire n1988;
   wire n1989;
   wire n1990;
   wire n1991;
   wire n1992;
   wire n1993;
   wire n1994;
   wire n1995;
   wire n1996;
   wire n1997;
   wire n1998;
   wire n1999;
   wire n2000;
   wire n2001;
   wire n2002;
   wire n2003;
   wire n2004;
   wire n2005;
   wire n2006;
   wire n2007;
   wire n2008;
   wire n2009;
   wire n2010;
   wire n2011;
   wire n2012;
   wire n2013;
   wire n2014;
   wire n2015;
   wire n2016;
   wire n2017;
   wire n2018;
   wire n2019;
   wire n2020;
   wire n2021;
   wire n2022;
   wire n2023;
   wire n2024;
   wire n2025;
   wire n2026;
   wire n2027;
   wire n2028;
   wire n2029;
   wire n2030;
   wire n2031;
   wire n2032;
   wire n2033;
   wire n2034;
   wire n2035;
   wire n2036;
   wire n2037;
   wire n2038;
   wire n2039;
   wire n2040;
   wire n2041;
   wire n2042;
   wire n2043;
   wire n2044;
   wire n2045;
   wire n2046;
   wire n2047;
   wire n2048;
   wire n2049;
   wire n2050;
   wire n2051;
   wire n2052;
   wire n2053;
   wire n2054;
   wire n2055;
   wire n2056;
   wire n2057;
   wire n2058;
   wire n2059;
   wire n2060;
   wire n2061;
   wire n2062;
   wire n2063;
   wire n2064;
   wire n2065;
   wire n2066;
   wire n2067;
   wire n2068;
   wire n2069;
   wire n2070;
   wire n2071;
   wire n2072;
   wire n2073;
   wire n2074;
   wire n2075;
   wire n2076;
   wire n2077;
   wire n2078;
   wire n2079;
   wire n2080;
   wire n2081;
   wire n2082;
   wire n2083;
   wire n2084;
   wire n2085;
   wire n2086;
   wire n2087;
   wire n2088;
   wire n2089;
   wire n2090;
   wire n2091;
   wire n2092;
   wire n2093;
   wire n2094;
   wire n2095;
   wire n2096;
   wire n2097;
   wire n2098;
   wire n2099;
   wire n2100;
   wire n2101;
   wire n2102;
   wire n2103;
   wire n2104;
   wire n2105;
   wire n2106;
   wire n2107;
   wire n2108;
   wire n2109;
   wire n2110;
   wire n2111;
   wire n2112;
   wire n2113;
   wire n2114;
   wire n2115;
   wire n2116;
   wire n2117;
   wire n2118;
   wire n2119;
   wire n2120;
   wire n2121;
   wire n2122;
   wire n2123;
   wire n2124;
   wire n2125;
   wire n2126;
   wire n2127;
   wire n2128;
   wire n2129;
   wire n2130;
   wire n2131;
   wire n2132;
   wire n2133;
   wire n2134;
   wire n2135;
   wire n2136;
   wire n2137;
   wire n2138;
   wire n2139;
   wire n2140;
   wire n2141;
   wire n2142;
   wire n2143;
   wire n2144;
   wire n2145;
   wire n2146;
   wire n2147;
   wire n2148;
   wire n2149;
   wire n2150;
   wire n2151;
   wire n2152;
   wire n2153;
   wire n2154;
   wire n2155;
   wire n2156;
   wire n2157;
   wire n2158;
   wire n2159;
   wire n2160;
   wire n2161;
   wire n2162;
   wire n2163;
   wire n2164;
   wire n2165;
   wire n2166;
   wire n2167;
   wire n2168;
   wire n2169;
   wire n2170;
   wire n2171;
   wire n2172;
   wire n2173;
   wire n2174;
   wire n2175;
   wire n2176;
   wire n2177;
   wire n2178;
   wire n2179;
   wire n2180;
   wire n2181;
   wire n2182;
   wire n2183;
   wire n2184;
   wire n2185;
   wire n2186;
   wire n2187;
   wire n2188;
   wire n2189;
   wire n2190;
   wire n2191;
   wire n2192;
   wire n2193;
   wire n2194;
   wire n2195;
   wire n2196;
   wire n2197;
   wire n2198;
   wire n2199;
   wire n2200;
   wire n2201;
   wire n2202;
   wire n2203;
   wire n2204;
   wire n2205;
   wire n2206;
   wire n2207;
   wire n2208;
   wire n2209;
   wire n2210;
   wire n2211;
   wire n2212;
   wire n2213;
   wire n2214;
   wire n2215;
   wire n2216;
   wire n2217;
   wire n2218;
   wire n2219;
   wire n2220;
   wire n2221;
   wire n2222;
   wire n2223;
   wire n2224;
   wire n2225;
   wire n2226;
   wire n2227;
   wire n2228;
   wire n2229;
   wire n2230;
   wire n2231;
   wire n2232;
   wire n2233;
   wire n2234;
   wire n2235;
   wire n2236;
   wire n2237;
   wire n2238;
   wire n2239;
   wire n2240;
   wire n2241;
   wire n2242;
   wire n2243;
   wire n2244;
   wire n2245;
   wire n2246;
   wire n2247;
   wire n2248;
   wire n2249;
   wire n2250;
   wire n2251;
   wire n2252;
   wire n2253;
   wire n2254;
   wire n2255;
   wire n2256;
   wire n2257;
   wire n2258;
   wire n2259;
   wire n2260;
   wire n2261;
   wire n2262;
   wire n2263;
   wire n2264;
   wire n2265;
   wire n2266;
   wire n2267;
   wire n2268;
   wire n2269;
   wire n2270;
   wire n2271;
   wire n2272;
   wire n2273;
   wire n2274;
   wire n2275;
   wire n2276;
   wire n2277;
   wire n2278;
   wire n2279;
   wire n2280;
   wire n2281;
   wire n2282;
   wire n2283;
   wire n2284;
   wire n2285;
   wire n2286;
   wire n2287;
   wire n2288;
   wire n2289;
   wire n2290;
   wire n2291;
   wire n2292;
   wire n2293;
   wire n2294;
   wire n2295;
   wire n2296;
   wire n2297;
   wire n2298;
   wire n2299;
   wire n2300;
   wire n2301;
   wire n2302;
   wire n2303;
   wire n2304;
   wire n2305;
   wire n2306;
   wire n2307;
   wire n2308;
   wire n2309;
   wire n2310;
   wire n2311;
   wire n2312;
   wire n2313;
   wire n2314;
   wire n2315;
   wire n2316;
   wire n2317;
   wire n2318;
   wire n2319;
   wire n2320;
   wire n2321;
   wire n2322;
   wire n2323;
   wire n2324;
   wire n2325;
   wire n2326;
   wire n2327;
   wire n2328;
   wire n2329;
   wire n2330;
   wire n2331;
   wire n2332;
   wire n2333;
   wire n2334;
   wire n2335;
   wire n2336;
   wire n2337;
   wire n2338;
   wire n2339;
   wire n2340;
   wire n2341;
   wire n2342;
   wire n2343;
   wire n2344;
   wire n2345;
   wire n2346;
   wire n2347;
   wire n2348;
   wire n2349;
   wire n2350;
   wire [3:0] cur_state;
   wire [1:0] IDC_cnt_d;
   wire [7:0] pkt_ctrl_d;
   wire [31:0] crc_tx_d;
   wire [63:0] xgmii_tx_hold;
   wire [31:0] crc_left_d;
   wire [1:0] crc_bvalid_d;
   wire [6:0] cnt128_d;
   wire [1:0] cur_state_clk;
   wire [31:0] wakeuptimer_d;
   wire [1:0] idlernd_cnt_d;
   wire [7:0] bvalid;
   wire [31:0] xgmii_txd_d;
   wire [3:0] xgmii_txc_d;
   wire [3:0] nxt_state;

   BUFX2 FE_OFC8_pop_crc (.Y(pop_crc), 
	.A(FE_OFN8_pop_crc));
   BUFX2 FE_OFC7_n2278 (.Y(FE_OFN7_n2278), 
	.A(n2278));
   BUFX2 FE_OFC6_n1952 (.Y(FE_OFN6_n1952), 
	.A(n1952));
   INVX8 FECTS_clks_clk___L4_I9 (.Y(FECTS_clks_clk___L4_N9), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I8 (.Y(FECTS_clks_clk___L4_N8), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I7 (.Y(FECTS_clks_clk___L4_N7), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I6 (.Y(FECTS_clks_clk___L4_N6), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I5 (.Y(FECTS_clks_clk___L4_N5), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I4 (.Y(FECTS_clks_clk___L4_N4), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I3 (.Y(FECTS_clks_clk___L4_N3), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I2 (.Y(FECTS_clks_clk___L4_N2), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I1 (.Y(FECTS_clks_clk___L4_N1), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L4_I0 (.Y(FECTS_clks_clk___L4_N0), 
	.A(FECTS_clks_clk___L3_N0));
   INVX8 FECTS_clks_clk___L3_I0 (.Y(FECTS_clks_clk___L3_N0), 
	.A(FECTS_clks_clk___L2_N0));
   INVX8 FECTS_clks_clk___L2_I0 (.Y(FECTS_clks_clk___L2_N0), 
	.A(FECTS_clks_clk___L1_N0));
   INVX8 FECTS_clks_clk___L1_I0 (.Y(FECTS_clks_clk___L1_N0), 
	.A(\clks.clk ));
   BUFX4 FE_OFCC5_FE_OFN3_clks_rst (.Y(FE_OFCN5_FE_OFN3_clks_rst), 
	.A(FE_OFN3_clks_rst));
   BUFX4 FE_OFCC4_FE_OFN1_clks_rst (.Y(FE_OFCN4_FE_OFN1_clks_rst), 
	.A(FE_OFN1_clks_rst));
   BUFX2 FE_OFC3_clks_rst (.Y(FE_OFN3_clks_rst), 
	.A(\clks.rst ));
   BUFX4 FE_OFC2_clks_rst (.Y(FE_OFN2_clks_rst), 
	.A(FE_OFCN4_FE_OFN1_clks_rst));
   BUFX2 FE_OFC1_clks_rst (.Y(FE_OFN1_clks_rst), 
	.A(\clks.rst ));
   BUFX4 FE_OFC0_pop_pkt (.Y(pop_pkt), 
	.A(FE_OFN0_pop_pkt));
   DFFSR \wakeuptimer_d_reg[0]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[0]), 
	.D(n1040), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \cur_state_clk_reg[1]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cur_state_clk[1]), 
	.D(n1045), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \cur_state_clk_reg[0]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cur_state_clk[0]), 
	.D(n802), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \cnt128_d_reg[0]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[0]), 
	.D(n1041), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \cnt128_d_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(cnt128_d[1]), 
	.D(n800), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \cnt128_d_reg[2]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[2]), 
	.D(n1042), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \cnt128_d_reg[3]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[3]), 
	.D(n798), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \cnt128_d_reg[4]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[4]), 
	.D(n797), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \cnt128_d_reg[5]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[5]), 
	.D(n1043), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \cnt128_d_reg[6]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(cnt128_d[6]), 
	.D(n1044), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[1]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[1]), 
	.D(n793), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[2]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[2]), 
	.D(n792), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[3]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[3]), 
	.D(n791), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[4]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[4]), 
	.D(n790), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[5]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[5]), 
	.D(n789), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[6]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[6]), 
	.D(n788), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[7]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[7]), 
	.D(n787), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[8]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[8]), 
	.D(n1562), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[9]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[9]), 
	.D(n785), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[10]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[10]), 
	.D(n1563), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[11]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[11]), 
	.D(n783), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[12]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[12]), 
	.D(n1048), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[13]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[13]), 
	.D(n781), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[14]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[14]), 
	.D(n1564), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[15]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[15]), 
	.D(n779), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[16]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[16]), 
	.D(n1049), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[17]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[17]), 
	.D(n777), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[18]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[18]), 
	.D(n1050), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[19]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[19]), 
	.D(n775), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \wakeuptimer_d_reg[20]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[20]), 
	.D(n1051), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \wakeuptimer_d_reg[21]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[21]), 
	.D(n2105), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \wakeuptimer_d_reg[22]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[22]), 
	.D(n1052), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \wakeuptimer_d_reg[23]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[23]), 
	.D(n771), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \wakeuptimer_d_reg[24]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[24]), 
	.D(n1565), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \wakeuptimer_d_reg[25]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[25]), 
	.D(n769), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \wakeuptimer_d_reg[26]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[26]), 
	.D(n1053), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \wakeuptimer_d_reg[27]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[27]), 
	.D(n767), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[28]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[28]), 
	.D(n1054), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[29]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[29]), 
	.D(n1046), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \wakeuptimer_d_reg[30]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[30]), 
	.D(n764), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \wakeuptimer_d_reg[31]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(wakeuptimer_d[31]), 
	.D(n763), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR div2_d_reg (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(clk125mhz), 
	.D(n806), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR gclk_en_d_reg (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(gclk_en_d), 
	.D(n1457), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \bvalid_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[0]), 
	.D(n762), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \cur_state_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(cur_state[0]), 
	.D(n1592), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_bvalid_d_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_bvalid_d[1]), 
	.D(n1047), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \idlernd_cnt_d_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(idlernd_cnt_d[0]), 
	.D(n677), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \cur_state_reg[2]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(cur_state[2]), 
	.D(n1382), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR cnt2_d_reg (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(cnt2_d), 
	.D(n757), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_bvalid_d_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_bvalid_d[0]), 
	.D(n761), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \cur_state_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(cur_state[1]), 
	.D(n1389), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[63]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[63]), 
	.D(n756), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \bvalid_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[1]), 
	.D(n755), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[2]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[2]), 
	.D(n754), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[3]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(bvalid[3]), 
	.D(n753), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[4]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[4]), 
	.D(n752), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[5]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[5]), 
	.D(n751), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[6]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[6]), 
	.D(n750), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \bvalid_reg[7]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(bvalid[7]), 
	.D(n749), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[0]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[0]), 
	.D(n748), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \pkt_ctrl_d_reg[1]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[1]), 
	.D(n747), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[2]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[2]), 
	.D(n746), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[3]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[3]), 
	.D(n745), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \pkt_ctrl_d_reg[4]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[4]), 
	.D(n744), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[5]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[5]), 
	.D(n743), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[6]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[6]), 
	.D(n742), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \pkt_ctrl_d_reg[7]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(pkt_ctrl_d[7]), 
	.D(n741), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_tx_hold_reg[0]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[0]), 
	.D(n740), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[1]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[1]), 
	.D(n739), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[2]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[2]), 
	.D(n738), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_tx_hold_reg[3]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_tx_hold[3]), 
	.D(n737), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[4]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_tx_hold[4]), 
	.D(n736), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_tx_hold_reg[5]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[5]), 
	.D(n735), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[6]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[6]), 
	.D(n734), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[7]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[7]), 
	.D(n733), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[8]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[8]), 
	.D(n732), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[9]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[9]), 
	.D(n731), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[10]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[10]), 
	.D(n730), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[11]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_tx_hold[11]), 
	.D(n729), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[12]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[12]), 
	.D(n728), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[13]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[13]), 
	.D(n727), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[14]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[14]), 
	.D(n726), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[15]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[15]), 
	.D(n725), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[16]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[16]), 
	.D(n724), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[17]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[17]), 
	.D(n723), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[18]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[18]), 
	.D(n722), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[19]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[19]), 
	.D(n721), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[20]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[20]), 
	.D(n720), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_tx_hold_reg[21]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[21]), 
	.D(n719), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_tx_hold_reg[22]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[22]), 
	.D(n718), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[23]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[23]), 
	.D(n717), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[24]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[24]), 
	.D(n716), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[25]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[25]), 
	.D(n715), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_tx_hold_reg[26]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[26]), 
	.D(n714), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[27]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[27]), 
	.D(n713), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_tx_hold_reg[28]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[28]), 
	.D(n712), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[29]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[29]), 
	.D(n711), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_tx_hold_reg[30]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[30]), 
	.D(n710), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_tx_hold_reg[31]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[31]), 
	.D(n709), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[32]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[32]), 
	.D(n708), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[33]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[33]), 
	.D(n707), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[34]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[34]), 
	.D(n706), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_tx_hold_reg[35]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[35]), 
	.D(n705), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_tx_hold_reg[36]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[36]), 
	.D(n704), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_tx_hold_reg[37]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[37]), 
	.D(n703), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_tx_hold_reg[38]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[38]), 
	.D(n702), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_tx_hold_reg[39]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[39]), 
	.D(n701), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[40]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[40]), 
	.D(n700), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[41]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[41]), 
	.D(n699), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[42]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[42]), 
	.D(n698), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_tx_hold_reg[43]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[43]), 
	.D(n697), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[44]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[44]), 
	.D(n696), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_tx_hold_reg[45]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_tx_hold[45]), 
	.D(n695), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[46]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[46]), 
	.D(n694), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[47]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[47]), 
	.D(n693), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[48]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[48]), 
	.D(n692), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[49]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[49]), 
	.D(n691), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_tx_hold_reg[50]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[50]), 
	.D(n690), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_tx_hold_reg[51]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[51]), 
	.D(n689), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_tx_hold_reg[52]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[52]), 
	.D(n688), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_tx_hold_reg[53]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[53]), 
	.D(n687), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_tx_hold_reg[54]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[54]), 
	.D(n686), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[55]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[55]), 
	.D(n685), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[56]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[56]), 
	.D(n684), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \xgmii_tx_hold_reg[57]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[57]), 
	.D(n683), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[58]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[58]), 
	.D(n682), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_tx_hold_reg[59]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[59]), 
	.D(n681), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[60]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[60]), 
	.D(n680), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_tx_hold_reg[61]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_tx_hold[61]), 
	.D(n679), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_tx_hold_reg[62]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_tx_hold[62]), 
	.D(n678), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \IDC_cnt_d_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(IDC_cnt_d[0]), 
	.D(n759), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \IDC_cnt_d_reg[1]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(IDC_cnt_d[1]), 
	.D(n758), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[0]), 
	.D(n675), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_left_d_reg[1]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_left_d[1]), 
	.D(n674), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_left_d[2]), 
	.D(n673), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[3]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[3]), 
	.D(n672), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[4]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_left_d[4]), 
	.D(n671), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[5]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[5]), 
	.D(n670), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \crc_left_d_reg[6]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[6]), 
	.D(n669), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_left_d_reg[7]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[7]), 
	.D(n668), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[8]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[8]), 
	.D(n667), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_left_d_reg[9]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[9]), 
	.D(n666), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_left_d_reg[10]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_left_d[10]), 
	.D(n665), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \crc_left_d_reg[11]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[11]), 
	.D(n664), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \crc_left_d_reg[12]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[12]), 
	.D(n663), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[13]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_left_d[13]), 
	.D(n662), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_left_d_reg[14]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[14]), 
	.D(n661), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_left_d_reg[15]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[15]), 
	.D(n660), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_left_d_reg[16]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[16]), 
	.D(n659), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_left_d_reg[17]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_left_d[17]), 
	.D(n658), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[18]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_left_d[18]), 
	.D(n657), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \crc_left_d_reg[19]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[19]), 
	.D(n656), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[20]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[20]), 
	.D(n655), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_left_d_reg[21]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_left_d[21]), 
	.D(n654), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_left_d_reg[22]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[22]), 
	.D(n653), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_left_d_reg[23]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_left_d[23]), 
	.D(n652), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_left_d_reg[24]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[24]), 
	.D(n651), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \crc_left_d_reg[25]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[25]), 
	.D(n650), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_left_d_reg[26]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[26]), 
	.D(n649), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[27]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[27]), 
	.D(n648), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_left_d_reg[28]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_left_d[28]), 
	.D(n647), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_left_d_reg[29]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_left_d[29]), 
	.D(n646), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_left_d_reg[30]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[30]), 
	.D(n645), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_left_d_reg[31]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_left_d[31]), 
	.D(n644), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_txd_d_reg[31]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[31]), 
	.D(\xgmii_tx.TXD [31]), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_txd_d_reg[30]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[30]), 
	.D(\xgmii_tx.TXD [30]), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_txd_d_reg[29]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[29]), 
	.D(\xgmii_tx.TXD [29]), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_txd_d_reg[28]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[28]), 
	.D(\xgmii_tx.TXD [28]), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_txd_d_reg[27]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[27]), 
	.D(\xgmii_tx.TXD [27]), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_txd_d_reg[23]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(xgmii_txd_d[23]), 
	.D(\xgmii_tx.TXD [23]), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_txd_d_reg[22]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_txd_d[22]), 
	.D(\xgmii_tx.TXD [22]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txd_d_reg[21]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(xgmii_txd_d[21]), 
	.D(\xgmii_tx.TXD [21]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[20]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_txd_d[20]), 
	.D(\xgmii_tx.TXD [20]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[19]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_txd_d[19]), 
	.D(\xgmii_tx.TXD [19]), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_txd_d_reg[15]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_txd_d[15]), 
	.D(\xgmii_tx.TXD [15]), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_txd_d_reg[14]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(xgmii_txd_d[14]), 
	.D(\xgmii_tx.TXD [14]), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_txd_d_reg[13]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[13]), 
	.D(\xgmii_tx.TXD [13]), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_txd_d_reg[12]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[12]), 
	.D(\xgmii_tx.TXD [12]), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_txd_d_reg[11]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[11]), 
	.D(\xgmii_tx.TXD [11]), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \xgmii_txd_d_reg[7]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[7]), 
	.D(\xgmii_tx.TXD [7]), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \xgmii_txd_d_reg[6]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(xgmii_txd_d[6]), 
	.D(\xgmii_tx.TXD [6]), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_txd_d_reg[5]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[5]), 
	.D(\xgmii_tx.TXD [5]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[4]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(xgmii_txd_d[4]), 
	.D(\xgmii_tx.TXD [4]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[3]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(xgmii_txd_d[3]), 
	.D(\xgmii_tx.TXD [3]), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \idlernd_cnt_d_reg[1]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(idlernd_cnt_d[1]), 
	.D(n1055), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \cur_state_reg[3]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(cur_state[3]), 
	.D(n1603), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_txc_d_reg[0]  (.S(FE_OFCN5_FE_OFN3_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txc_d[0]), 
	.D(\xgmii_tx.TXC [0]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txc_d_reg[2]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txc_d[2]), 
	.D(\xgmii_tx.TXC [2]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txc_d_reg[3]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txc_d[3]), 
	.D(\xgmii_tx.TXC [3]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txc_d_reg[1]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txc_d[1]), 
	.D(\xgmii_tx.TXC [1]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txd_d_reg[26]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(xgmii_txd_d[26]), 
	.D(\xgmii_tx.TXD [26]), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \xgmii_txd_d_reg[25]  (.S(FE_OFCN4_FE_OFN1_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[25]), 
	.D(\xgmii_tx.TXD [25]), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_txd_d_reg[24]  (.S(FE_OFCN4_FE_OFN1_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[24]), 
	.D(\xgmii_tx.TXD [24]), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \xgmii_txd_d_reg[18]  (.S(FE_OFN3_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[18]), 
	.D(\xgmii_tx.TXD [18]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[17]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[17]), 
	.D(\xgmii_tx.TXD [17]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txd_d_reg[16]  (.S(FE_OFN2_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[16]), 
	.D(\xgmii_tx.TXD [16]), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \xgmii_txd_d_reg[10]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(xgmii_txd_d[10]), 
	.D(\xgmii_tx.TXD [10]), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_txd_d_reg[9]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(xgmii_txd_d[9]), 
	.D(\xgmii_tx.TXD [9]), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \xgmii_txd_d_reg[8]  (.S(FE_OFCN4_FE_OFN1_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[8]), 
	.D(\xgmii_tx.TXD [8]), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \xgmii_txd_d_reg[2]  (.S(FE_OFN3_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[2]), 
	.D(\xgmii_tx.TXD [2]), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \xgmii_txd_d_reg[1]  (.S(\clks.rst ), 
	.R(1'b1), 
	.Q(xgmii_txd_d[1]), 
	.D(\xgmii_tx.TXD [1]), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \xgmii_txd_d_reg[0]  (.S(FE_OFCN4_FE_OFN1_clks_rst), 
	.R(1'b1), 
	.Q(xgmii_txd_d[0]), 
	.D(\xgmii_tx.TXD [0]), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[31]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[31]), 
	.D(n643), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[0]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[0]), 
	.D(n642), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[1]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[1]), 
	.D(n641), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_tx_d_reg[2]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_tx_d[2]), 
	.D(n640), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \crc_tx_d_reg[3]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_tx_d[3]), 
	.D(n639), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \crc_tx_d_reg[4]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[4]), 
	.D(n638), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_tx_d_reg[5]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_tx_d[5]), 
	.D(n637), 
	.CLK(FECTS_clks_clk___L4_N0));
   DFFSR \crc_tx_d_reg[6]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[6]), 
	.D(n636), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \crc_tx_d_reg[7]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_tx_d[7]), 
	.D(n635), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \crc_tx_d_reg[8]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[8]), 
	.D(n634), 
	.CLK(FECTS_clks_clk___L4_N9));
   DFFSR \crc_tx_d_reg[9]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[9]), 
	.D(n633), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[10]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[10]), 
	.D(n632), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_tx_d_reg[11]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_tx_d[11]), 
	.D(n631), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_tx_d_reg[12]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(crc_tx_d[12]), 
	.D(n630), 
	.CLK(FECTS_clks_clk___L4_N5));
   DFFSR \crc_tx_d_reg[13]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[13]), 
	.D(n629), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_tx_d_reg[14]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[14]), 
	.D(n628), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_tx_d_reg[15]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[15]), 
	.D(n627), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_tx_d_reg[16]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[16]), 
	.D(n626), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[17]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[17]), 
	.D(n625), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_tx_d_reg[18]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(crc_tx_d[18]), 
	.D(n624), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_tx_d_reg[19]  (.S(1'b1), 
	.R(\clks.rst ), 
	.Q(crc_tx_d[19]), 
	.D(n623), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_tx_d_reg[20]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[20]), 
	.D(n622), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_tx_d_reg[21]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[21]), 
	.D(n621), 
	.CLK(FECTS_clks_clk___L4_N4));
   DFFSR \crc_tx_d_reg[22]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[22]), 
	.D(n620), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_tx_d_reg[23]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[23]), 
	.D(n619), 
	.CLK(FECTS_clks_clk___L4_N8));
   DFFSR \crc_tx_d_reg[24]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[24]), 
	.D(n618), 
	.CLK(FECTS_clks_clk___L4_N7));
   DFFSR \crc_tx_d_reg[25]  (.S(1'b1), 
	.R(FE_OFCN4_FE_OFN1_clks_rst), 
	.Q(crc_tx_d[25]), 
	.D(n617), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_tx_d_reg[26]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_tx_d[26]), 
	.D(n616), 
	.CLK(FECTS_clks_clk___L4_N2));
   DFFSR \crc_tx_d_reg[27]  (.S(1'b1), 
	.R(FE_OFCN5_FE_OFN3_clks_rst), 
	.Q(crc_tx_d[27]), 
	.D(n615), 
	.CLK(FECTS_clks_clk___L4_N3));
   DFFSR \crc_tx_d_reg[28]  (.S(1'b1), 
	.R(FE_OFN1_clks_rst), 
	.Q(crc_tx_d[28]), 
	.D(n614), 
	.CLK(FECTS_clks_clk___L4_N6));
   DFFSR \crc_tx_d_reg[29]  (.S(1'b1), 
	.R(FE_OFN3_clks_rst), 
	.Q(crc_tx_d[29]), 
	.D(n613), 
	.CLK(FECTS_clks_clk___L4_N1));
   DFFSR \crc_tx_d_reg[30]  (.S(1'b1), 
	.R(FE_OFN2_clks_rst), 
	.Q(crc_tx_d[30]), 
	.D(n612), 
	.CLK(FECTS_clks_clk___L4_N8));
   AND2X1 U852 (.Y(n1731), 
	.B(n1508), 
	.A(n1440));
   AND2X1 U853 (.Y(n2066), 
	.B(n1678), 
	.A(n2061));
   AND2X1 U854 (.Y(n2053), 
	.B(n1663), 
	.A(n2048));
   AND2X1 U855 (.Y(nxt_buf), 
	.B(n1592), 
	.A(n1998));
   OR2X1 U856 (.Y(n1967), 
	.B(n1674), 
	.A(n1671));
   AND2X1 U857 (.Y(n1762), 
	.B(n1454), 
	.A(n1913));
   AND2X1 U858 (.Y(n1910), 
	.B(n1516), 
	.A(n1953));
   AND2X1 U859 (.Y(n1927), 
	.B(n1701), 
	.A(n1486));
   AND2X1 U860 (.Y(n1775), 
	.B(n1453), 
	.A(n1913));
   AND2X1 U861 (.Y(n1787), 
	.B(n1913), 
	.A(n1452));
   AND2X1 U862 (.Y(n1794), 
	.B(n1358), 
	.A(n1352));
   AND2X1 U863 (.Y(n1796), 
	.B(n1913), 
	.A(n1451));
   AND2X1 U864 (.Y(n1899), 
	.B(n1365), 
	.A(n1857));
   OR2X1 U865 (.Y(n1740), 
	.B(n1510), 
	.A(n1364));
   AND2X1 U866 (.Y(n2074), 
	.B(n1679), 
	.A(n2068));
   AND2X1 U867 (.Y(n1721), 
	.B(n1036), 
	.A(n2268));
   OR2X1 U868 (.Y(n2275), 
	.B(n1359), 
	.A(n1658));
   AND2X1 U869 (.Y(n2174), 
	.B(n1701), 
	.A(n1858));
   OR2X1 U870 (.Y(n2264), 
	.B(n2166), 
	.A(n1593));
   OR2X1 U871 (.Y(n2093), 
	.B(n810), 
	.A(n1498));
   AND2X1 U872 (.Y(n2048), 
	.B(n1668), 
	.A(n2046));
   AND2X1 U873 (.Y(n2046), 
	.B(n1662), 
	.A(n2041));
   AND2X1 U874 (.Y(n2041), 
	.B(n1667), 
	.A(n2039));
   AND2X1 U875 (.Y(n2039), 
	.B(n1661), 
	.A(n2034));
   AND2X1 U876 (.Y(n2034), 
	.B(n1690), 
	.A(n1446));
   AND2X1 U877 (.Y(n2028), 
	.B(n2031), 
	.A(n1356));
   AND2X1 U878 (.Y(n2352), 
	.B(n1039), 
	.A(n1920));
   OR2X1 U879 (.Y(n1990), 
	.B(n1371), 
	.A(n1708));
   AND2X1 U880 (.Y(nxt_state[0]), 
	.B(n809), 
	.A(n1020));
   AND2X1 U881 (.Y(n770), 
	.B(n2118), 
	.A(n1030));
   AND2X1 U882 (.Y(n780), 
	.B(n2079), 
	.A(n1029));
   AND2X1 U883 (.Y(n784), 
	.B(n2064), 
	.A(n1028));
   AND2X1 U884 (.Y(n786), 
	.B(n2057), 
	.A(n1027));
   AND2X1 U885 (.Y(n2164), 
	.B(n1444), 
	.A(n1372));
   AND2X1 U886 (.Y(n1747), 
	.B(n1364), 
	.A(n1018));
   AND2X1 U887 (.Y(n1858), 
	.B(n1354), 
	.A(n1489));
   OR2X1 U888 (.Y(n1756), 
	.B(n1961), 
	.A(n1078));
   AND2X2 U889 (.Y(FE_OFN8_pop_crc), 
	.B(n1909), 
	.A(n1754));
   AND2X1 U890 (.Y(n1795), 
	.B(n1375), 
	.A(n1737));
   AND2X1 U891 (.Y(n2167), 
	.B(n1353), 
	.A(n2175));
   AND2X1 U892 (.Y(n1938), 
	.B(n1034), 
	.A(n1706));
   OR2X1 U893 (.Y(n1729), 
	.B(n1079), 
	.A(n1492));
   AND2X1 U894 (.Y(n1765), 
	.B(n1956), 
	.A(n1021));
   AND2X1 U895 (.Y(n1771), 
	.B(n1956), 
	.A(n1022));
   AND2X1 U896 (.Y(n1778), 
	.B(n1956), 
	.A(n1023));
   AND2X1 U897 (.Y(n1784), 
	.B(n1956), 
	.A(n1024));
   AND2X1 U898 (.Y(n1791), 
	.B(n1956), 
	.A(n1025));
   AND2X1 U899 (.Y(n1799), 
	.B(n1956), 
	.A(n1026));
   AND2X1 U900 (.Y(n1863), 
	.B(n1031), 
	.A(n1486));
   AND2X1 U901 (.Y(n1895), 
	.B(n1033), 
	.A(n1918));
   AND2X1 U902 (.Y(n2354), 
	.B(n1037), 
	.A(n1019));
   AND2X1 U903 (.Y(n2151), 
	.B(n1355), 
	.A(n1360));
   AND2X1 U904 (.Y(n1885), 
	.B(n1032), 
	.A(n1918));
   AND2X1 U905 (.Y(n1948), 
	.B(n1035), 
	.A(n1706));
   OR2X1 U906 (.Y(n1809), 
	.B(n1080), 
	.A(n1820));
   AND2X1 U907 (.Y(n2148), 
	.B(pop_pkt), 
	.A(bvalidin[0]));
   AND2X1 U908 (.Y(n2180), 
	.B(pop_pkt), 
	.A(bvalidin[2]));
   AND2X1 U909 (.Y(n2353), 
	.B(n1038), 
	.A(n1869));
   AND2X1 U910 (.Y(n1718), 
	.B(n808), 
	.A(n807));
   OR2X1 U911 (.Y(n1992), 
	.B(n1489), 
	.A(n807));
   BUFX2 U912 (.Y(n807), 
	.A(cur_state[3]));
   BUFX2 U913 (.Y(n808), 
	.A(cur_state[2]));
   BUFX2 U914 (.Y(n809), 
	.A(n1711));
   OR2X1 U915 (.Y(n2030), 
	.B(n1604), 
	.A(n1381));
   AND2X1 U916 (.Y(n1730), 
	.B(n1355), 
	.A(n1590));
   AND2X1 U917 (.Y(n2025), 
	.B(n1666), 
	.A(n1373));
   AND2X1 U918 (.Y(n2059), 
	.B(n1669), 
	.A(n2053));
   AND2X1 U919 (.Y(n2081), 
	.B(n1674), 
	.A(n2076));
   AND2X1 U920 (.Y(n2089), 
	.B(n1681), 
	.A(n2083));
   AND2X1 U921 (.Y(n2104), 
	.B(n1682), 
	.A(n2098));
   AND2X1 U922 (.Y(n2120), 
	.B(n1657), 
	.A(n2115));
   AND2X1 U923 (.Y(n2136), 
	.B(n1683), 
	.A(n2130));
   AND2X1 U924 (.Y(n1846), 
	.B(n1067), 
	.A(n1075));
   AND2X1 U925 (.Y(n1923), 
	.B(n1068), 
	.A(n1076));
   AND2X2 U926 (.Y(n1999), 
	.B(n985), 
	.A(n2032));
   INVX1 U927 (.Y(n810), 
	.A(n1999));
   BUFX2 U928 (.Y(n811), 
	.A(n1723));
   BUFX2 U929 (.Y(n812), 
	.A(n1751));
   BUFX2 U930 (.Y(n813), 
	.A(n1761));
   BUFX2 U931 (.Y(n814), 
	.A(n1766));
   BUFX2 U932 (.Y(n815), 
	.A(n1772));
   BUFX2 U933 (.Y(n816), 
	.A(n1779));
   BUFX2 U934 (.Y(n817), 
	.A(n1786));
   BUFX2 U935 (.Y(n818), 
	.A(n1793));
   BUFX2 U936 (.Y(n819), 
	.A(n1801));
   BUFX2 U937 (.Y(n820), 
	.A(n1810));
   BUFX2 U938 (.Y(n821), 
	.A(n1816));
   BUFX2 U939 (.Y(n822), 
	.A(n1822));
   BUFX2 U940 (.Y(n823), 
	.A(n1828));
   BUFX2 U941 (.Y(n824), 
	.A(n1834));
   BUFX2 U942 (.Y(n825), 
	.A(n1841));
   BUFX2 U943 (.Y(n826), 
	.A(n1847));
   BUFX2 U944 (.Y(n827), 
	.A(n1866));
   BUFX2 U945 (.Y(n828), 
	.A(n1861));
   BUFX2 U946 (.Y(n829), 
	.A(n1864));
   BUFX2 U947 (.Y(n830), 
	.A(n1873));
   BUFX2 U948 (.Y(n831), 
	.A(n1871));
   BUFX2 U949 (.Y(n832), 
	.A(n1878));
   BUFX2 U950 (.Y(n833), 
	.A(n1876));
   BUFX2 U951 (.Y(n834), 
	.A(n1883));
   BUFX2 U952 (.Y(n835), 
	.A(n1881));
   BUFX2 U953 (.Y(n836), 
	.A(n1888));
   BUFX2 U954 (.Y(n837), 
	.A(n1886));
   BUFX2 U955 (.Y(n838), 
	.A(n1893));
   BUFX2 U956 (.Y(n839), 
	.A(n1891));
   BUFX2 U957 (.Y(n840), 
	.A(n1898));
   BUFX2 U958 (.Y(n841), 
	.A(n1896));
   BUFX2 U959 (.Y(n842), 
	.A(n1905));
   BUFX2 U960 (.Y(n843), 
	.A(n1903));
   BUFX2 U961 (.Y(n844), 
	.A(n1917));
   BUFX2 U962 (.Y(n845), 
	.A(n1915));
   BUFX2 U963 (.Y(n846), 
	.A(n1924));
   BUFX2 U964 (.Y(n847), 
	.A(n1922));
   BUFX2 U965 (.Y(n848), 
	.A(n1931));
   BUFX2 U966 (.Y(n849), 
	.A(n1929));
   BUFX2 U967 (.Y(n850), 
	.A(n1936));
   BUFX2 U968 (.Y(n851), 
	.A(n1934));
   BUFX2 U969 (.Y(n852), 
	.A(n1941));
   BUFX2 U970 (.Y(n853), 
	.A(n1939));
   BUFX2 U971 (.Y(n854), 
	.A(n1946));
   BUFX2 U972 (.Y(n855), 
	.A(n1944));
   BUFX2 U973 (.Y(n856), 
	.A(n1951));
   BUFX2 U974 (.Y(n857), 
	.A(n1949));
   BUFX2 U975 (.Y(n858), 
	.A(n1960));
   BUFX2 U976 (.Y(n859), 
	.A(n1958));
   BUFX2 U977 (.Y(n860), 
	.A(n1981));
   BUFX2 U978 (.Y(n861), 
	.A(n2033));
   BUFX2 U979 (.Y(n862), 
	.A(n2040));
   BUFX2 U980 (.Y(n863), 
	.A(n2047));
   BUFX2 U981 (.Y(n864), 
	.A(n2054));
   BUFX2 U982 (.Y(n865), 
	.A(n2060));
   BUFX2 U983 (.Y(n866), 
	.A(n2067));
   BUFX2 U984 (.Y(n867), 
	.A(n2075));
   AND2X1 U985 (.Y(n2076), 
	.B(n1671), 
	.A(n2074));
   BUFX2 U986 (.Y(n868), 
	.A(n2082));
   BUFX2 U987 (.Y(n869), 
	.A(n2090));
   AND2X1 U988 (.Y(n2091), 
	.B(n1652), 
	.A(n2089));
   BUFX2 U989 (.Y(n870), 
	.A(n2097));
   BUFX2 U990 (.Y(n871), 
	.A(n2114));
   AND2X1 U991 (.Y(n2115), 
	.B(n1654), 
	.A(n2112));
   BUFX2 U992 (.Y(n872), 
	.A(n2121));
   BUFX2 U993 (.Y(n873), 
	.A(n2129));
   BUFX2 U994 (.Y(n874), 
	.A(n2142));
   BUFX2 U995 (.Y(n875), 
	.A(n2184));
   BUFX2 U996 (.Y(n876), 
	.A(n2185));
   BUFX2 U997 (.Y(n877), 
	.A(n2186));
   BUFX2 U998 (.Y(n878), 
	.A(n2187));
   BUFX2 U999 (.Y(n879), 
	.A(n2189));
   BUFX2 U1000 (.Y(n880), 
	.A(n2190));
   BUFX2 U1001 (.Y(n881), 
	.A(n2191));
   BUFX2 U1002 (.Y(n882), 
	.A(n2193));
   BUFX2 U1003 (.Y(n883), 
	.A(n2195));
   BUFX2 U1004 (.Y(n884), 
	.A(n2196));
   BUFX2 U1005 (.Y(n885), 
	.A(n2197));
   BUFX2 U1006 (.Y(n886), 
	.A(n2198));
   BUFX2 U1007 (.Y(n887), 
	.A(n2199));
   BUFX2 U1008 (.Y(n888), 
	.A(n2200));
   BUFX2 U1009 (.Y(n889), 
	.A(n2201));
   BUFX2 U1010 (.Y(n890), 
	.A(n2202));
   BUFX2 U1011 (.Y(n891), 
	.A(n2203));
   BUFX2 U1012 (.Y(n892), 
	.A(n2208));
   BUFX2 U1013 (.Y(n893), 
	.A(n2209));
   BUFX2 U1014 (.Y(n894), 
	.A(n2210));
   BUFX2 U1015 (.Y(n895), 
	.A(n2211));
   BUFX2 U1016 (.Y(n896), 
	.A(n2212));
   BUFX2 U1017 (.Y(n897), 
	.A(n2213));
   BUFX2 U1018 (.Y(n898), 
	.A(n2214));
   BUFX2 U1019 (.Y(n899), 
	.A(n2215));
   BUFX2 U1020 (.Y(n900), 
	.A(n2216));
   BUFX2 U1021 (.Y(n901), 
	.A(n2217));
   BUFX2 U1022 (.Y(n902), 
	.A(n2218));
   BUFX2 U1023 (.Y(n903), 
	.A(n2221));
   BUFX2 U1024 (.Y(n904), 
	.A(n2222));
   BUFX2 U1025 (.Y(n905), 
	.A(n2223));
   BUFX2 U1026 (.Y(n906), 
	.A(n2224));
   BUFX2 U1027 (.Y(n907), 
	.A(n2225));
   BUFX2 U1028 (.Y(n908), 
	.A(n2226));
   BUFX2 U1029 (.Y(n909), 
	.A(n2228));
   BUFX2 U1030 (.Y(n910), 
	.A(n2229));
   BUFX2 U1031 (.Y(n911), 
	.A(n2230));
   BUFX2 U1032 (.Y(n912), 
	.A(n2231));
   BUFX2 U1033 (.Y(n913), 
	.A(n2232));
   BUFX2 U1034 (.Y(n914), 
	.A(n2234));
   BUFX2 U1035 (.Y(n915), 
	.A(n2235));
   BUFX2 U1036 (.Y(n916), 
	.A(n2236));
   BUFX2 U1037 (.Y(n917), 
	.A(n2237));
   BUFX2 U1038 (.Y(n918), 
	.A(n2238));
   BUFX2 U1039 (.Y(n919), 
	.A(n2239));
   BUFX2 U1040 (.Y(n920), 
	.A(n2241));
   BUFX2 U1041 (.Y(n921), 
	.A(n2242));
   BUFX2 U1042 (.Y(n922), 
	.A(n2243));
   BUFX2 U1043 (.Y(n923), 
	.A(n2244));
   BUFX2 U1044 (.Y(n924), 
	.A(n2245));
   BUFX2 U1045 (.Y(n925), 
	.A(n2246));
   BUFX2 U1046 (.Y(n926), 
	.A(n2247));
   BUFX2 U1047 (.Y(n927), 
	.A(n2249));
   BUFX2 U1048 (.Y(n928), 
	.A(n2250));
   BUFX2 U1049 (.Y(n929), 
	.A(n2251));
   BUFX2 U1050 (.Y(n930), 
	.A(n2252));
   BUFX2 U1051 (.Y(n931), 
	.A(n2253));
   BUFX2 U1052 (.Y(n932), 
	.A(n2254));
   BUFX2 U1053 (.Y(n933), 
	.A(n2255));
   BUFX2 U1054 (.Y(n934), 
	.A(n2256));
   INVX4 U1055 (.Y(n2257), 
	.A(pop_pkt));
   BUFX2 U1056 (.Y(n935), 
	.A(n2261));
   BUFX2 U1057 (.Y(n936), 
	.A(n2280));
   BUFX2 U1058 (.Y(n937), 
	.A(n2281));
   BUFX2 U1059 (.Y(n938), 
	.A(n2282));
   BUFX2 U1060 (.Y(n939), 
	.A(n2283));
   BUFX2 U1061 (.Y(n940), 
	.A(n2284));
   BUFX2 U1062 (.Y(n941), 
	.A(n2285));
   BUFX2 U1063 (.Y(n942), 
	.A(n2286));
   BUFX2 U1064 (.Y(n943), 
	.A(n2287));
   BUFX2 U1065 (.Y(n944), 
	.A(n2291));
   BUFX2 U1066 (.Y(n945), 
	.A(n2292));
   BUFX2 U1067 (.Y(n946), 
	.A(n2293));
   BUFX2 U1068 (.Y(n947), 
	.A(n2294));
   BUFX2 U1069 (.Y(n948), 
	.A(n2295));
   BUFX2 U1070 (.Y(n949), 
	.A(n2296));
   BUFX2 U1071 (.Y(n950), 
	.A(n2297));
   BUFX2 U1072 (.Y(n951), 
	.A(n2299));
   BUFX2 U1073 (.Y(n952), 
	.A(n2300));
   BUFX2 U1074 (.Y(n953), 
	.A(n2301));
   BUFX2 U1075 (.Y(n954), 
	.A(n2302));
   BUFX2 U1076 (.Y(n955), 
	.A(n2303));
   BUFX2 U1077 (.Y(n956), 
	.A(n2304));
   BUFX2 U1078 (.Y(n957), 
	.A(n2305));
   BUFX2 U1079 (.Y(n958), 
	.A(n2306));
   BUFX2 U1080 (.Y(n959), 
	.A(n2308));
   BUFX2 U1081 (.Y(n960), 
	.A(n2309));
   BUFX2 U1082 (.Y(n961), 
	.A(n2310));
   BUFX2 U1083 (.Y(n962), 
	.A(n2311));
   BUFX2 U1084 (.Y(n963), 
	.A(n2312));
   BUFX2 U1085 (.Y(n964), 
	.A(n2313));
   BUFX2 U1086 (.Y(n965), 
	.A(n2314));
   BUFX2 U1087 (.Y(n966), 
	.A(n2315));
   BUFX2 U1088 (.Y(n967), 
	.A(n2317));
   BUFX2 U1089 (.Y(n968), 
	.A(n2318));
   BUFX2 U1090 (.Y(n969), 
	.A(n2319));
   BUFX2 U1091 (.Y(n970), 
	.A(n2320));
   BUFX2 U1092 (.Y(n971), 
	.A(n2321));
   BUFX2 U1093 (.Y(n972), 
	.A(n2322));
   BUFX2 U1094 (.Y(n973), 
	.A(n2323));
   BUFX2 U1095 (.Y(n974), 
	.A(n2324));
   BUFX2 U1096 (.Y(n975), 
	.A(n2325));
   BUFX2 U1097 (.Y(n976), 
	.A(n2326));
   BUFX2 U1098 (.Y(n977), 
	.A(n2340));
   BUFX2 U1099 (.Y(n978), 
	.A(n2343));
   BUFX2 U1100 (.Y(n979), 
	.A(n2344));
   BUFX2 U1101 (.Y(n980), 
	.A(n2345));
   BUFX2 U1102 (.Y(n981), 
	.A(n2346));
   BUFX2 U1103 (.Y(n982), 
	.A(n2347));
   BUFX2 U1104 (.Y(n983), 
	.A(n2349));
   BUFX2 U1105 (.Y(n984), 
	.A(n2350));
   BUFX2 U1106 (.Y(n985), 
	.A(cur_state_clk[1]));
   BUFX2 U1107 (.Y(n986), 
	.A(n1741));
   BUFX2 U1108 (.Y(n987), 
	.A(n1750));
   BUFX2 U1109 (.Y(n988), 
	.A(n1748));
   BUFX2 U1110 (.Y(n989), 
	.A(n1760));
   BUFX2 U1111 (.Y(n990), 
	.A(n1767));
   BUFX2 U1112 (.Y(n991), 
	.A(n1773));
   BUFX2 U1113 (.Y(n992), 
	.A(n1780));
   BUFX2 U1114 (.Y(n993), 
	.A(n1785));
   BUFX2 U1115 (.Y(n994), 
	.A(n1792));
   BUFX2 U1116 (.Y(n995), 
	.A(n1800));
   BUFX2 U1117 (.Y(n996), 
	.A(n1815));
   BUFX2 U1118 (.Y(n997), 
	.A(n1829));
   BUFX2 U1119 (.Y(n998), 
	.A(n1835));
   BUFX2 U1120 (.Y(n999), 
	.A(n1840));
   BUFX2 U1121 (.Y(n1000), 
	.A(n1844));
   BUFX2 U1122 (.Y(n1001), 
	.A(n1865));
   BUFX2 U1123 (.Y(n1002), 
	.A(n1872));
   BUFX2 U1124 (.Y(n1003), 
	.A(n1877));
   BUFX2 U1125 (.Y(n1004), 
	.A(n1882));
   BUFX2 U1126 (.Y(n1005), 
	.A(n1887));
   BUFX2 U1127 (.Y(n1006), 
	.A(n1892));
   BUFX2 U1128 (.Y(n1007), 
	.A(n1897));
   BUFX2 U1129 (.Y(n1008), 
	.A(n1904));
   BUFX2 U1130 (.Y(n1009), 
	.A(n1921));
   BUFX2 U1131 (.Y(n1010), 
	.A(n1930));
   BUFX2 U1132 (.Y(n1011), 
	.A(n1935));
   BUFX2 U1133 (.Y(n1012), 
	.A(n1940));
   BUFX2 U1134 (.Y(n1013), 
	.A(n1945));
   BUFX2 U1135 (.Y(n1014), 
	.A(n1950));
   BUFX2 U1136 (.Y(n1015), 
	.A(n1959));
   BUFX2 U1137 (.Y(n1016), 
	.A(n1982));
   BUFX2 U1138 (.Y(n1017), 
	.A(n2011));
   OR2X1 U1139 (.Y(\xgmii_tx.TXD [0]), 
	.B(n1216), 
	.A(n1215));
   OR2X1 U1140 (.Y(n1216), 
	.B(n1214), 
	.A(n1749));
   OR2X1 U1141 (.Y(\xgmii_tx.TXD [1]), 
	.B(n1220), 
	.A(n1219));
   OR2X1 U1142 (.Y(n1220), 
	.B(n1218), 
	.A(n1759));
   OR2X1 U1143 (.Y(\xgmii_tx.TXD [2]), 
	.B(n1224), 
	.A(n1223));
   OR2X1 U1144 (.Y(n1224), 
	.B(n1222), 
	.A(n1765));
   OR2X1 U1145 (.Y(\xgmii_tx.TXD [3]), 
	.B(n1228), 
	.A(n1227));
   OR2X1 U1146 (.Y(n1228), 
	.B(n1226), 
	.A(n1771));
   OR2X1 U1147 (.Y(\xgmii_tx.TXD [4]), 
	.B(n1232), 
	.A(n1231));
   OR2X1 U1148 (.Y(n1232), 
	.B(n1230), 
	.A(n1778));
   OR2X1 U1149 (.Y(\xgmii_tx.TXD [5]), 
	.B(n1236), 
	.A(n1235));
   OR2X1 U1150 (.Y(n1236), 
	.B(n1234), 
	.A(n1784));
   OR2X1 U1151 (.Y(\xgmii_tx.TXD [6]), 
	.B(n1240), 
	.A(n1239));
   OR2X1 U1152 (.Y(n1240), 
	.B(n1238), 
	.A(n1791));
   OR2X1 U1153 (.Y(\xgmii_tx.TXD [7]), 
	.B(n1244), 
	.A(n1243));
   OR2X1 U1154 (.Y(n1244), 
	.B(n1242), 
	.A(n1799));
   OR2X1 U1155 (.Y(\xgmii_tx.TXD [8]), 
	.B(n1247), 
	.A(n1246));
   OR2X1 U1156 (.Y(n1247), 
	.B(n1809), 
	.A(n1808));
   OR2X1 U1157 (.Y(\xgmii_tx.TXD [9]), 
	.B(n1251), 
	.A(n1250));
   OR2X1 U1158 (.Y(n1251), 
	.B(n1249), 
	.A(n1814));
   OR2X1 U1159 (.Y(\xgmii_tx.TXD [10]), 
	.B(n1254), 
	.A(n1823));
   OR2X1 U1160 (.Y(n1254), 
	.B(n1253), 
	.A(n1821));
   OR2X1 U1161 (.Y(\xgmii_tx.TXD [11]), 
	.B(n1258), 
	.A(n1257));
   OR2X1 U1162 (.Y(n1258), 
	.B(n1256), 
	.A(n1827));
   OR2X1 U1163 (.Y(\xgmii_tx.TXD [12]), 
	.B(n1262), 
	.A(n1261));
   OR2X1 U1164 (.Y(n1262), 
	.B(n1260), 
	.A(n1833));
   OR2X1 U1165 (.Y(\xgmii_tx.TXD [13]), 
	.B(n1266), 
	.A(n1265));
   OR2X1 U1166 (.Y(n1266), 
	.B(n1264), 
	.A(n1839));
   OR2X1 U1167 (.Y(\xgmii_tx.TXD [14]), 
	.B(n1269), 
	.A(n1268));
   OR2X1 U1168 (.Y(n1269), 
	.B(n1846), 
	.A(n1845));
   OR2X1 U1169 (.Y(\xgmii_tx.TXD [16]), 
	.B(n1274), 
	.A(n1273));
   OR2X1 U1170 (.Y(n1274), 
	.B(n1272), 
	.A(n1271));
   OR2X1 U1171 (.Y(\xgmii_tx.TXD [17]), 
	.B(n1279), 
	.A(n1278));
   OR2X1 U1172 (.Y(n1279), 
	.B(n1277), 
	.A(n1276));
   OR2X1 U1173 (.Y(\xgmii_tx.TXD [18]), 
	.B(n1284), 
	.A(n1283));
   OR2X1 U1174 (.Y(n1284), 
	.B(n1282), 
	.A(n1281));
   OR2X1 U1175 (.Y(\xgmii_tx.TXD [19]), 
	.B(n1289), 
	.A(n1288));
   OR2X1 U1176 (.Y(n1289), 
	.B(n1287), 
	.A(n1286));
   OR2X1 U1177 (.Y(\xgmii_tx.TXD [20]), 
	.B(n1294), 
	.A(n1293));
   OR2X1 U1178 (.Y(n1294), 
	.B(n1292), 
	.A(n1291));
   OR2X1 U1179 (.Y(\xgmii_tx.TXD [21]), 
	.B(n1299), 
	.A(n1298));
   OR2X1 U1180 (.Y(n1299), 
	.B(n1297), 
	.A(n1296));
   OR2X1 U1181 (.Y(\xgmii_tx.TXD [22]), 
	.B(n1304), 
	.A(n1303));
   OR2X1 U1182 (.Y(n1304), 
	.B(n1302), 
	.A(n1301));
   OR2X2 U1183 (.Y(\xgmii_tx.TXD [23]), 
	.B(n1309), 
	.A(n1308));
   OR2X1 U1184 (.Y(n1309), 
	.B(n1307), 
	.A(n1306));
   OR2X2 U1185 (.Y(\xgmii_tx.TXD [24]), 
	.B(n1314), 
	.A(n1313));
   OR2X1 U1186 (.Y(n1314), 
	.B(n1312), 
	.A(n1311));
   OR2X1 U1187 (.Y(\xgmii_tx.TXD [25]), 
	.B(n1318), 
	.A(n1317));
   OR2X1 U1188 (.Y(n1318), 
	.B(n1923), 
	.A(n1316));
   OR2X1 U1189 (.Y(\xgmii_tx.TXD [26]), 
	.B(n1323), 
	.A(n1322));
   OR2X1 U1190 (.Y(n1323), 
	.B(n1321), 
	.A(n1320));
   OR2X1 U1191 (.Y(\xgmii_tx.TXD [27]), 
	.B(n1328), 
	.A(n1327));
   OR2X1 U1192 (.Y(n1328), 
	.B(n1326), 
	.A(n1325));
   OR2X1 U1193 (.Y(\xgmii_tx.TXD [28]), 
	.B(n1333), 
	.A(n1332));
   OR2X1 U1194 (.Y(n1333), 
	.B(n1331), 
	.A(n1330));
   OR2X1 U1195 (.Y(\xgmii_tx.TXD [29]), 
	.B(n1338), 
	.A(n1337));
   OR2X1 U1196 (.Y(n1338), 
	.B(n1336), 
	.A(n1335));
   OR2X1 U1197 (.Y(\xgmii_tx.TXD [30]), 
	.B(n1343), 
	.A(n1342));
   OR2X1 U1198 (.Y(n1343), 
	.B(n1341), 
	.A(n1340));
   OR2X1 U1199 (.Y(\xgmii_tx.TXD [31]), 
	.B(n1348), 
	.A(n1347));
   OR2X1 U1200 (.Y(n1348), 
	.B(n1346), 
	.A(n1345));
   OR2X1 U1201 (.Y(n1384), 
	.B(n1387), 
	.A(n1386));
   OR2X1 U1202 (.Y(n1387), 
	.B(n1385), 
	.A(n2268));
   OR2X1 U1203 (.Y(n1510), 
	.B(n1511), 
	.A(n1754));
   INVX1 U1204 (.Y(n1018), 
	.A(n1510));
   OR2X1 U1205 (.Y(n1511), 
	.B(n1470), 
	.A(n1713));
   OR2X1 U1206 (.Y(n2105), 
	.B(n1082), 
	.A(n1077));
   OR2X1 U1207 (.Y(\xgmii_tx.TXC [3]), 
	.B(n1588), 
	.A(n1587));
   OR2X1 U1208 (.Y(n1588), 
	.B(n1586), 
	.A(n1722));
   OR2X2 U1209 (.Y(n1701), 
	.B(n1703), 
	.A(n1509));
   OR2X1 U1210 (.Y(n1703), 
	.B(n1702), 
	.A(n807));
   OR2X2 U1211 (.Y(n1706), 
	.B(n1707), 
	.A(n1353));
   OR2X1 U1212 (.Y(n1707), 
	.B(n1524), 
	.A(n2276));
   OR2X1 U1213 (.Y(n1713), 
	.B(n807), 
	.A(n1509));
   AND2X1 U1214 (.Y(n1749), 
	.B(n1710), 
	.A(n1378));
   AND2X1 U1215 (.Y(n1759), 
	.B(n1526), 
	.A(n1602));
   AND2X1 U1216 (.Y(n1808), 
	.B(n1854), 
	.A(n1595));
   AND2X1 U1217 (.Y(n1814), 
	.B(n1854), 
	.A(n1596));
   OR2X1 U1218 (.Y(n1823), 
	.B(n1081), 
	.A(n1820));
   AND2X1 U1219 (.Y(n1821), 
	.B(n1854), 
	.A(n1597));
   AND2X1 U1220 (.Y(n1827), 
	.B(n1854), 
	.A(n1598));
   AND2X1 U1221 (.Y(n1833), 
	.B(n1848), 
	.A(n1600));
   AND2X1 U1222 (.Y(n1839), 
	.B(n1854), 
	.A(n1599));
   AND2X1 U1223 (.Y(n1845), 
	.B(n1848), 
	.A(n1601));
   BUFX2 U1224 (.Y(n1019), 
	.A(n1856));
   BUFX2 U1225 (.Y(n1020), 
	.A(n1986));
   BUFX2 U1226 (.Y(n1021), 
	.A(xgmii_txd_d[2]));
   BUFX2 U1227 (.Y(n1022), 
	.A(xgmii_txd_d[3]));
   BUFX2 U1228 (.Y(n1023), 
	.A(xgmii_txd_d[4]));
   BUFX2 U1229 (.Y(n1024), 
	.A(xgmii_txd_d[5]));
   BUFX2 U1230 (.Y(n1025), 
	.A(xgmii_txd_d[6]));
   BUFX2 U1231 (.Y(n1026), 
	.A(xgmii_txd_d[7]));
   BUFX2 U1232 (.Y(n1027), 
	.A(n2058));
   BUFX2 U1233 (.Y(n1028), 
	.A(n2065));
   BUFX2 U1234 (.Y(n1029), 
	.A(n2080));
   BUFX2 U1235 (.Y(n1030), 
	.A(n2119));
   BUFX2 U1236 (.Y(n1031), 
	.A(n1862));
   BUFX2 U1237 (.Y(n1032), 
	.A(n1884));
   BUFX2 U1238 (.Y(n1033), 
	.A(n1894));
   BUFX2 U1239 (.Y(n1034), 
	.A(n1937));
   BUFX2 U1240 (.Y(n1035), 
	.A(n1947));
   BUFX2 U1241 (.Y(n1036), 
	.A(xgmii_txc_d[2]));
   BUFX2 U1242 (.Y(n1037), 
	.A(n1855));
   AND2X1 U1243 (.Y(n1719), 
	.B(n1568), 
	.A(n2268));
   INVX1 U1244 (.Y(n1038), 
	.A(n1719));
   INVX1 U1245 (.Y(n1039), 
	.A(n1720));
   AND2X1 U1246 (.Y(n1720), 
	.B(n1066), 
	.A(n2268));
   BUFX2 U1247 (.Y(n1040), 
	.A(n803));
   BUFX2 U1248 (.Y(n1041), 
	.A(n801));
   BUFX2 U1249 (.Y(n1042), 
	.A(n799));
   BUFX2 U1250 (.Y(n1043), 
	.A(n796));
   BUFX2 U1251 (.Y(n1044), 
	.A(n795));
   BUFX2 U1252 (.Y(n1045), 
	.A(n794));
   BUFX2 U1253 (.Y(n1046), 
	.A(n765));
   BUFX2 U1254 (.Y(n1047), 
	.A(n760));
   INVX1 U1255 (.Y(n1048), 
	.A(n782));
   AND2X1 U1256 (.Y(n782), 
	.B(n2072), 
	.A(n1069));
   INVX1 U1257 (.Y(n1049), 
	.A(n778));
   AND2X1 U1258 (.Y(n778), 
	.B(n2087), 
	.A(n1070));
   INVX1 U1259 (.Y(n1050), 
	.A(n776));
   AND2X1 U1260 (.Y(n776), 
	.B(n2094), 
	.A(n1071));
   INVX1 U1261 (.Y(n1051), 
	.A(n774));
   AND2X1 U1262 (.Y(n774), 
	.B(n2102), 
	.A(n1072));
   INVX1 U1263 (.Y(n1052), 
	.A(n772));
   AND2X1 U1264 (.Y(n772), 
	.B(n2110), 
	.A(n1073));
   INVX1 U1265 (.Y(n1053), 
	.A(n768));
   AND2X1 U1266 (.Y(n768), 
	.B(n2125), 
	.A(n1569));
   INVX1 U1267 (.Y(n1054), 
	.A(n766));
   AND2X1 U1268 (.Y(n766), 
	.B(n2134), 
	.A(n1074));
   INVX1 U1269 (.Y(n1055), 
	.A(n676));
   AND2X1 U1270 (.Y(n676), 
	.B(n2276), 
	.A(n2277));
   BUFX2 U1271 (.Y(n1056), 
	.A(n2001));
   BUFX2 U1272 (.Y(n1057), 
	.A(n2006));
   BUFX2 U1273 (.Y(n1058), 
	.A(n2017));
   BUFX2 U1274 (.Y(n1059), 
	.A(n2270));
   BUFX2 U1275 (.Y(n1060), 
	.A(n2274));
   INVX1 U1276 (.Y(n1061), 
	.A(n1984));
   AND2X1 U1277 (.Y(n1984), 
	.B(n2020), 
	.A(n1380));
   INVX1 U1278 (.Y(n1062), 
	.A(n2012));
   AND2X1 U1279 (.Y(n2012), 
	.B(n2015), 
	.A(n1443));
   INVX1 U1280 (.Y(n1063), 
	.A(n2148));
   INVX1 U1281 (.Y(n1064), 
	.A(n2168));
   AND2X1 U1282 (.Y(n2168), 
	.B(n1447), 
	.A(n1593));
   INVX1 U1283 (.Y(n1065), 
	.A(n2180));
   BUFX2 U1284 (.Y(n1066), 
	.A(xgmii_txc_d[1]));
   INVX1 U1285 (.Y(n1067), 
	.A(n1573));
   AND2X1 U1286 (.Y(n1573), 
	.B(n1918), 
	.A(n1574));
   INVX1 U1287 (.Y(n1068), 
	.A(n1576));
   AND2X1 U1288 (.Y(n1576), 
	.B(n1997), 
	.A(n1577));
   BUFX2 U1289 (.Y(n1069), 
	.A(n2073));
   BUFX2 U1290 (.Y(n1070), 
	.A(n2088));
   BUFX2 U1291 (.Y(n1071), 
	.A(n2095));
   BUFX2 U1292 (.Y(n1072), 
	.A(n2103));
   BUFX2 U1293 (.Y(n1073), 
	.A(n2111));
   BUFX2 U1294 (.Y(n1074), 
	.A(n2135));
   INVX1 U1295 (.Y(n1075), 
	.A(n1572));
   AND2X1 U1296 (.Y(n1572), 
	.B(n1512), 
	.A(n1574));
   INVX1 U1297 (.Y(n1076), 
	.A(n1575));
   AND2X1 U1298 (.Y(n1575), 
	.B(n1514), 
	.A(n1577));
   INVX1 U1299 (.Y(n1077), 
	.A(n1527));
   OR2X1 U1300 (.Y(n1527), 
	.B(n1529), 
	.A(n2109));
   BUFX2 U1301 (.Y(n1078), 
	.A(n1755));
   BUFX2 U1302 (.Y(n1079), 
	.A(n1728));
   BUFX2 U1303 (.Y(n1080), 
	.A(n1806));
   BUFX2 U1304 (.Y(n1081), 
	.A(n1819));
   INVX1 U1305 (.Y(n1082), 
	.A(n1528));
   OR2X1 U1306 (.Y(n1528), 
	.B(n1484), 
	.A(n1530));
   BUFX2 U1307 (.Y(n1083), 
	.A(n1744));
   BUFX2 U1308 (.Y(n1084), 
	.A(n1758));
   BUFX2 U1309 (.Y(n1085), 
	.A(n1764));
   BUFX2 U1310 (.Y(n1086), 
	.A(n1770));
   BUFX2 U1311 (.Y(n1087), 
	.A(n1777));
   BUFX2 U1312 (.Y(n1088), 
	.A(n1783));
   BUFX2 U1313 (.Y(n1089), 
	.A(n1790));
   BUFX2 U1314 (.Y(n1090), 
	.A(n1798));
   BUFX2 U1315 (.Y(n1091), 
	.A(n1813));
   BUFX2 U1316 (.Y(n1092), 
	.A(n1826));
   BUFX2 U1317 (.Y(n1093), 
	.A(n1832));
   BUFX2 U1318 (.Y(n1094), 
	.A(n1838));
   BUFX2 U1319 (.Y(n1095), 
	.A(n1853));
   BUFX2 U1320 (.Y(n1096), 
	.A(n1870));
   BUFX2 U1321 (.Y(n1097), 
	.A(n1875));
   BUFX2 U1322 (.Y(n1098), 
	.A(n1880));
   BUFX2 U1323 (.Y(n1099), 
	.A(n1890));
   BUFX2 U1324 (.Y(n1100), 
	.A(n1901));
   BUFX2 U1325 (.Y(n1101), 
	.A(n1928));
   BUFX2 U1326 (.Y(n1102), 
	.A(n1933));
   BUFX2 U1327 (.Y(n1103), 
	.A(n1943));
   BUFX2 U1328 (.Y(n1104), 
	.A(n1955));
   BUFX2 U1329 (.Y(n1105), 
	.A(n2162));
   INVX1 U1330 (.Y(n1106), 
	.A(n1863));
   INVX1 U1331 (.Y(n1107), 
	.A(n1885));
   INVX1 U1332 (.Y(n1108), 
	.A(n1895));
   INVX1 U1333 (.Y(n1109), 
	.A(n1938));
   INVX1 U1334 (.Y(n1110), 
	.A(n1948));
   INVX1 U1335 (.Y(n1111), 
	.A(n1718));
   BUFX2 U1336 (.Y(n1112), 
	.A(n1757));
   BUFX2 U1337 (.Y(n1113), 
	.A(n1763));
   BUFX2 U1338 (.Y(n1114), 
	.A(n1769));
   BUFX2 U1339 (.Y(n1115), 
	.A(n1782));
   BUFX2 U1340 (.Y(n1116), 
	.A(n1789));
   BUFX2 U1341 (.Y(n1117), 
	.A(n1797));
   BUFX2 U1342 (.Y(n1118), 
	.A(n1805));
   BUFX2 U1343 (.Y(n1119), 
	.A(n1812));
   BUFX2 U1344 (.Y(n1120), 
	.A(n1818));
   BUFX2 U1345 (.Y(n1121), 
	.A(n1825));
   BUFX2 U1346 (.Y(n1122), 
	.A(n1837));
   BUFX2 U1347 (.Y(n1123), 
	.A(n1879));
   BUFX2 U1348 (.Y(n1124), 
	.A(n1889));
   BUFX2 U1349 (.Y(n1125), 
	.A(n1900));
   BUFX2 U1350 (.Y(n1126), 
	.A(n1911));
   BUFX2 U1351 (.Y(n1127), 
	.A(n1932));
   BUFX2 U1352 (.Y(n1128), 
	.A(n1942));
   BUFX2 U1353 (.Y(n1129), 
	.A(n1954));
   BUFX2 U1354 (.Y(n1130), 
	.A(n1994));
   BUFX2 U1355 (.Y(n1131), 
	.A(n1743));
   INVX1 U1356 (.Y(n1132), 
	.A(n1739));
   AND2X1 U1357 (.Y(n1739), 
	.B(n1362), 
	.A(n1444));
   INVX1 U1358 (.Y(n1133), 
	.A(n1746));
   AND2X1 U1359 (.Y(n1746), 
	.B(n2164), 
	.A(n2153));
   INVX1 U1360 (.Y(n1134), 
	.A(n2163));
   OR2X1 U1361 (.Y(n2163), 
	.B(n1508), 
	.A(n1487));
   BUFX2 U1362 (.Y(n1135), 
	.A(n2271));
   BUFX2 U1363 (.Y(n1136), 
	.A(n2176));
   INVX1 U1364 (.Y(n1137), 
	.A(n2147));
   AND2X1 U1365 (.Y(n2147), 
	.B(n1379), 
	.A(n1656));
   BUFX2 U1366 (.Y(n1138), 
	.A(n2009));
   BUFX2 U1367 (.Y(n1139), 
	.A(n2027));
   BUFX2 U1368 (.Y(n1140), 
	.A(n2165));
   OR2X1 U1369 (.Y(n1860), 
	.B(n1488), 
	.A(n1508));
   INVX1 U1370 (.Y(n1141), 
	.A(n1860));
   BUFX2 U1371 (.Y(n1142), 
	.A(n2146));
   BUFX2 U1372 (.Y(n1143), 
	.A(xgmii_txd_d[1]));
   BUFX2 U1373 (.Y(n1144), 
	.A(xgmii_txd_d[12]));
   BUFX2 U1374 (.Y(n1145), 
	.A(xgmii_txd_d[14]));
   BUFX2 U1375 (.Y(n1146), 
	.A(n1742));
   BUFX2 U1376 (.Y(n1147), 
	.A(n1776));
   BUFX2 U1377 (.Y(n1148), 
	.A(n1804));
   BUFX2 U1378 (.Y(n1149), 
	.A(n1817));
   BUFX2 U1379 (.Y(n1150), 
	.A(n1831));
   BUFX2 U1380 (.Y(n1151), 
	.A(n1843));
   BUFX2 U1381 (.Y(n1152), 
	.A(n1851));
   BUFX2 U1382 (.Y(n1153), 
	.A(n1868));
   BUFX2 U1383 (.Y(n1154), 
	.A(n1874));
   BUFX2 U1384 (.Y(n1155), 
	.A(n1919));
   BUFX2 U1385 (.Y(n1156), 
	.A(n1926));
   BUFX2 U1386 (.Y(n1157), 
	.A(n1991));
   INVX1 U1387 (.Y(n1158), 
	.A(n1756));
   BUFX2 U1388 (.Y(n1159), 
	.A(n2018));
   INVX1 U1389 (.Y(n1160), 
	.A(n2038));
   AND2X1 U1390 (.Y(n2038), 
	.B(n2034), 
	.A(n1999));
   INVX1 U1391 (.Y(n1161), 
	.A(n2045));
   AND2X1 U1392 (.Y(n2045), 
	.B(n2041), 
	.A(n1999));
   INVX1 U1393 (.Y(n1162), 
	.A(n2052));
   AND2X1 U1394 (.Y(n2052), 
	.B(n2048), 
	.A(n1999));
   BUFX2 U1395 (.Y(n1163), 
	.A(xgmii_txd_d[0]));
   BUFX2 U1396 (.Y(n1164), 
	.A(xgmii_txd_d[8]));
   BUFX2 U1397 (.Y(n1165), 
	.A(xgmii_txd_d[9]));
   BUFX2 U1398 (.Y(n1166), 
	.A(xgmii_txd_d[10]));
   BUFX2 U1399 (.Y(n1167), 
	.A(xgmii_txd_d[16]));
   BUFX2 U1400 (.Y(n1168), 
	.A(xgmii_txd_d[17]));
   BUFX2 U1401 (.Y(n1169), 
	.A(xgmii_txd_d[18]));
   BUFX2 U1402 (.Y(n1170), 
	.A(xgmii_txd_d[24]));
   BUFX2 U1403 (.Y(n1171), 
	.A(xgmii_txd_d[25]));
   BUFX2 U1404 (.Y(n1172), 
	.A(xgmii_txd_d[26]));
   BUFX2 U1405 (.Y(n1173), 
	.A(xgmii_txd_d[11]));
   BUFX2 U1406 (.Y(n1174), 
	.A(xgmii_txd_d[13]));
   BUFX2 U1407 (.Y(n1175), 
	.A(xgmii_txd_d[15]));
   BUFX2 U1408 (.Y(n1176), 
	.A(xgmii_txd_d[19]));
   BUFX2 U1409 (.Y(n1177), 
	.A(xgmii_txd_d[20]));
   BUFX2 U1410 (.Y(n1178), 
	.A(xgmii_txd_d[21]));
   BUFX2 U1411 (.Y(n1179), 
	.A(xgmii_txd_d[22]));
   BUFX2 U1412 (.Y(n1180), 
	.A(xgmii_txd_d[23]));
   BUFX2 U1413 (.Y(n1181), 
	.A(xgmii_txd_d[27]));
   BUFX2 U1414 (.Y(n1182), 
	.A(xgmii_txd_d[28]));
   BUFX2 U1415 (.Y(n1183), 
	.A(xgmii_txd_d[29]));
   BUFX2 U1416 (.Y(n1184), 
	.A(xgmii_txd_d[30]));
   BUFX2 U1417 (.Y(n1185), 
	.A(xgmii_txd_d[31]));
   BUFX2 U1418 (.Y(n1186), 
	.A(n1980));
   BUFX2 U1419 (.Y(n1187), 
	.A(n2008));
   BUFX2 U1420 (.Y(n1188), 
	.A(n2026));
   INVX1 U1421 (.Y(n1189), 
	.A(n2021));
   AND2X1 U1422 (.Y(n2021), 
	.B(n2005), 
	.A(n2025));
   BUFX2 U1423 (.Y(n1190), 
	.A(xgmii_txc_d[3]));
   INVX1 U1424 (.Y(n1191), 
	.A(n1859));
   OR2X1 U1425 (.Y(n1859), 
	.B(n1493), 
	.A(n1691));
   BUFX2 U1426 (.Y(n1192), 
	.A(n1850));
   INVX1 U1427 (.Y(n1193), 
	.A(n1752));
   AND2X1 U1428 (.Y(n1752), 
	.B(n1849), 
	.A(n1677));
   INVX1 U1429 (.Y(n1194), 
	.A(n1768));
   AND2X1 U1430 (.Y(n1768), 
	.B(n1913), 
	.A(n1659));
   INVX1 U1431 (.Y(n1195), 
	.A(n1781));
   AND2X1 U1432 (.Y(n1781), 
	.B(n1913), 
	.A(n1660));
   INVX1 U1433 (.Y(n1196), 
	.A(n1811));
   AND2X1 U1434 (.Y(n1811), 
	.B(n1670), 
	.A(n1953));
   INVX1 U1435 (.Y(n1197), 
	.A(n1824));
   AND2X1 U1436 (.Y(n1824), 
	.B(n1953), 
	.A(n1659));
   INVX1 U1437 (.Y(n1198), 
	.A(n1830));
   AND2X1 U1438 (.Y(n1830), 
	.B(n1913), 
	.A(n1675));
   INVX1 U1439 (.Y(n1199), 
	.A(n1836));
   AND2X1 U1440 (.Y(n1836), 
	.B(n1953), 
	.A(n1660));
   INVX1 U1441 (.Y(n1200), 
	.A(n1842));
   AND2X1 U1442 (.Y(n1842), 
	.B(n1913), 
	.A(n1676));
   INVX1 U1443 (.Y(n1201), 
	.A(n1996));
   AND2X1 U1444 (.Y(n1996), 
	.B(n1995), 
	.A(n1700));
   INVX1 U1445 (.Y(n1202), 
	.A(n2169));
   AND2X1 U1446 (.Y(n2169), 
	.B(n2264), 
	.A(n1525));
   INVX1 U1447 (.Y(n1203), 
	.A(n1977));
   AND2X1 U1448 (.Y(n1977), 
	.B(n2099), 
	.A(n1970));
   INVX1 U1449 (.Y(n1204), 
	.A(n1976));
   AND2X1 U1450 (.Y(n1976), 
	.B(n2084), 
	.A(n1971));
   BUFX2 U1451 (.Y(n1205), 
	.A(n1912));
   BUFX2 U1452 (.Y(n1206), 
	.A(n1964));
   BUFX2 U1453 (.Y(n1207), 
	.A(n1969));
   BUFX2 U1454 (.Y(n1208), 
	.A(n1975));
   BUFX2 U1455 (.Y(n1209), 
	.A(n2266));
   INVX1 U1456 (.Y(n1210), 
	.A(n1715));
   AND2X1 U1457 (.Y(n1715), 
	.B(n1714), 
	.A(n1594));
   INVX1 U1458 (.Y(n1211), 
	.A(n1973));
   AND2X1 U1459 (.Y(n1973), 
	.B(n2131), 
	.A(n1972));
   BUFX2 U1460 (.Y(\xgmii_tx.TXC [2]), 
	.A(n2351));
   INVX1 U1461 (.Y(n1214), 
	.A(n987));
   INVX1 U1462 (.Y(n1215), 
	.A(n812));
   INVX1 U1463 (.Y(n1218), 
	.A(n989));
   INVX1 U1464 (.Y(n1219), 
	.A(n813));
   INVX1 U1465 (.Y(n1222), 
	.A(n814));
   INVX1 U1466 (.Y(n1223), 
	.A(n990));
   INVX1 U1467 (.Y(n1226), 
	.A(n815));
   INVX1 U1468 (.Y(n1227), 
	.A(n991));
   INVX1 U1469 (.Y(n1230), 
	.A(n816));
   INVX1 U1470 (.Y(n1231), 
	.A(n992));
   INVX1 U1471 (.Y(n1234), 
	.A(n993));
   INVX1 U1472 (.Y(n1235), 
	.A(n817));
   INVX1 U1473 (.Y(n1238), 
	.A(n994));
   INVX1 U1474 (.Y(n1239), 
	.A(n818));
   INVX1 U1475 (.Y(n1242), 
	.A(n995));
   INVX1 U1476 (.Y(n1243), 
	.A(n819));
   INVX1 U1477 (.Y(n1246), 
	.A(n820));
   INVX1 U1478 (.Y(n1249), 
	.A(n996));
   INVX1 U1479 (.Y(n1250), 
	.A(n821));
   INVX1 U1480 (.Y(n1253), 
	.A(n822));
   INVX1 U1481 (.Y(n1256), 
	.A(n823));
   INVX1 U1482 (.Y(n1257), 
	.A(n997));
   INVX1 U1483 (.Y(n1260), 
	.A(n824));
   INVX1 U1484 (.Y(n1261), 
	.A(n998));
   INVX1 U1485 (.Y(n1264), 
	.A(n999));
   INVX1 U1486 (.Y(n1265), 
	.A(n825));
   INVX1 U1487 (.Y(n1268), 
	.A(n826));
   INVX1 U1488 (.Y(n1271), 
	.A(n829));
   INVX1 U1489 (.Y(n1272), 
	.A(n1001));
   INVX1 U1490 (.Y(n1273), 
	.A(n827));
   INVX1 U1491 (.Y(n1276), 
	.A(n831));
   INVX1 U1492 (.Y(n1277), 
	.A(n1002));
   INVX1 U1493 (.Y(n1278), 
	.A(n830));
   INVX1 U1494 (.Y(n1281), 
	.A(n833));
   INVX1 U1495 (.Y(n1282), 
	.A(n1003));
   INVX1 U1496 (.Y(n1283), 
	.A(n832));
   INVX1 U1497 (.Y(n1286), 
	.A(n835));
   INVX1 U1498 (.Y(n1287), 
	.A(n1004));
   INVX1 U1499 (.Y(n1288), 
	.A(n834));
   INVX1 U1500 (.Y(n1291), 
	.A(n837));
   INVX1 U1501 (.Y(n1292), 
	.A(n1005));
   INVX1 U1502 (.Y(n1293), 
	.A(n836));
   INVX1 U1503 (.Y(n1296), 
	.A(n839));
   INVX1 U1504 (.Y(n1297), 
	.A(n1006));
   INVX1 U1505 (.Y(n1298), 
	.A(n838));
   INVX1 U1506 (.Y(n1301), 
	.A(n841));
   INVX1 U1507 (.Y(n1302), 
	.A(n1007));
   INVX1 U1508 (.Y(n1303), 
	.A(n840));
   INVX1 U1509 (.Y(n1306), 
	.A(n843));
   INVX1 U1510 (.Y(n1307), 
	.A(n1008));
   INVX1 U1511 (.Y(n1308), 
	.A(n842));
   INVX1 U1512 (.Y(n1311), 
	.A(n845));
   INVX1 U1513 (.Y(n1312), 
	.A(n1916));
   INVX1 U1514 (.Y(n1313), 
	.A(n844));
   INVX1 U1515 (.Y(n1316), 
	.A(n847));
   INVX1 U1516 (.Y(n1317), 
	.A(n846));
   INVX1 U1517 (.Y(n1320), 
	.A(n849));
   INVX1 U1518 (.Y(n1321), 
	.A(n1010));
   INVX1 U1519 (.Y(n1322), 
	.A(n848));
   INVX1 U1520 (.Y(n1325), 
	.A(n851));
   INVX1 U1521 (.Y(n1326), 
	.A(n1011));
   INVX1 U1522 (.Y(n1327), 
	.A(n850));
   INVX1 U1523 (.Y(n1330), 
	.A(n853));
   INVX1 U1524 (.Y(n1331), 
	.A(n1012));
   INVX1 U1525 (.Y(n1332), 
	.A(n852));
   INVX1 U1526 (.Y(n1335), 
	.A(n855));
   INVX1 U1527 (.Y(n1336), 
	.A(n1013));
   INVX1 U1528 (.Y(n1337), 
	.A(n854));
   INVX1 U1529 (.Y(n1340), 
	.A(n857));
   INVX1 U1530 (.Y(n1341), 
	.A(n1014));
   INVX1 U1531 (.Y(n1342), 
	.A(n856));
   INVX1 U1532 (.Y(n1345), 
	.A(n859));
   INVX1 U1533 (.Y(n1346), 
	.A(n1015));
   INVX1 U1534 (.Y(n1347), 
	.A(n858));
   INVX1 U1535 (.Y(\xgmii_tx.TXC [0]), 
	.A(n2353));
   INVX1 U1536 (.Y(\xgmii_tx.TXD [15]), 
	.A(n2354));
   BUFX2 U1537 (.Y(n1351), 
	.A(n2170));
   BUFX2 U1538 (.Y(n1352), 
	.A(n1807));
   BUFX2 U1539 (.Y(n1353), 
	.A(crc_bvalid_d[0]));
   BUFX2 U1540 (.Y(n1354), 
	.A(n1753));
   INVX1 U1541 (.Y(n1355), 
	.A(n1729));
   BUFX2 U1542 (.Y(n1356), 
	.A(n2003));
   BUFX2 U1543 (.Y(n1357), 
	.A(n1914));
   INVX1 U1544 (.Y(n1358), 
	.A(n1802));
   AND2X1 U1545 (.Y(n1802), 
	.B(n1497), 
	.A(n2151));
   AND2X1 U1546 (.Y(n1961), 
	.B(n1774), 
	.A(n1754));
   INVX1 U1547 (.Y(n1359), 
	.A(n1961));
   INVX1 U1548 (.Y(n1360), 
	.A(n1361));
   BUFX2 U1549 (.Y(n1361), 
	.A(n1727));
   INVX1 U1550 (.Y(n1362), 
	.A(n2150));
   AND2X1 U1551 (.Y(n2150), 
	.B(n1441), 
	.A(n1371));
   BUFX2 U1552 (.Y(n1363), 
	.A(n2161));
   BUFX2 U1553 (.Y(n1364), 
	.A(n1724));
   BUFX2 U1554 (.Y(n1365), 
	.A(n1906));
   OR2X1 U1555 (.Y(n2109), 
	.B(n810), 
	.A(n1485));
   INVX1 U1556 (.Y(n1366), 
	.A(n2109));
   INVX1 U1557 (.Y(n1367), 
	.A(n1722));
   AND2X1 U1558 (.Y(n1722), 
	.B(n1524), 
	.A(n2175));
   INVX1 U1559 (.Y(n1368), 
	.A(n1369));
   BUFX2 U1560 (.Y(n1369), 
	.A(n2007));
   AND2X1 U1561 (.Y(n2005), 
	.B(n2010), 
	.A(lpi));
   INVX1 U1562 (.Y(n1370), 
	.A(n2005));
   INVX1 U1563 (.Y(n1371), 
	.A(n1989));
   OR2X1 U1564 (.Y(n1989), 
	.B(n1738), 
	.A(n2160));
   INVX1 U1565 (.Y(n1372), 
	.A(n1740));
   OR2X1 U1566 (.Y(n2016), 
	.B(n1442), 
	.A(n1459));
   INVX1 U1567 (.Y(n1373), 
	.A(n2016));
   INVX1 U1568 (.Y(n1374), 
	.A(n1907));
   AND2X1 U1569 (.Y(n1907), 
	.B(n1733), 
	.A(n2164));
   INVX1 U1570 (.Y(n1375), 
	.A(n1803));
   AND2X1 U1571 (.Y(n1803), 
	.B(n1738), 
	.A(n2164));
   BUFX2 U1572 (.Y(n1376), 
	.A(n2139));
   INVX1 U1573 (.Y(n1377), 
	.A(n1726));
   AND2X1 U1574 (.Y(n1726), 
	.B(n1725), 
	.A(n1496));
   BUFX2 U1575 (.Y(n1378), 
	.A(xgmii_tx_hold[24]));
   INVX1 U1576 (.Y(n1379), 
	.A(n2143));
   OR2X1 U1577 (.Y(n2143), 
	.B(n2140), 
	.A(n2141));
   INVX1 U1578 (.Y(n1380), 
	.A(n1992));
   BUFX2 U1579 (.Y(n1381), 
	.A(n2029));
   BUFX2 U1580 (.Y(n1382), 
	.A(nxt_state[2]));
   INVX1 U1581 (.Y(n1383), 
	.A(n2138));
   AND2X1 U1582 (.Y(n2138), 
	.B(n1651), 
	.A(n2136));
   INVX1 U1583 (.Y(n1385), 
	.A(n860));
   INVX1 U1584 (.Y(n1386), 
	.A(n1016));
   INVX1 U1585 (.Y(n1388), 
	.A(n2152));
   OR2X1 U1586 (.Y(n2152), 
	.B(n1445), 
	.A(n1492));
   BUFX2 U1587 (.Y(n1389), 
	.A(nxt_state[1]));
   BUFX2 U1588 (.Y(n1390), 
	.A(pkt_ctrl_d[3]));
   BUFX2 U1589 (.Y(n1391), 
	.A(n1788));
   INVX1 U1590 (.Y(n1392), 
	.A(n2056));
   OR2X1 U1591 (.Y(n2056), 
	.B(n810), 
	.A(n1669));
   INVX1 U1592 (.Y(n1393), 
	.A(n2063));
   OR2X1 U1593 (.Y(n2063), 
	.B(n810), 
	.A(n1678));
   OR2X1 U1594 (.Y(n2071), 
	.B(n810), 
	.A(n1679));
   INVX1 U1595 (.Y(n1394), 
	.A(n2071));
   INVX1 U1596 (.Y(n1395), 
	.A(n2078));
   OR2X1 U1597 (.Y(n2078), 
	.B(n810), 
	.A(n1674));
   INVX1 U1598 (.Y(n1396), 
	.A(n2086));
   OR2X1 U1599 (.Y(n2086), 
	.B(n810), 
	.A(n1681));
   INVX1 U1600 (.Y(n1397), 
	.A(n2101));
   OR2X1 U1601 (.Y(n2101), 
	.B(n810), 
	.A(n1682));
   INVX1 U1602 (.Y(n1398), 
	.A(n2124));
   OR2X1 U1603 (.Y(n2124), 
	.B(n810), 
	.A(n1680));
   INVX1 U1604 (.Y(n1399), 
	.A(n2133));
   OR2X1 U1605 (.Y(n2133), 
	.B(n810), 
	.A(n1683));
   INVX1 U1606 (.Y(n1400), 
	.A(n2272));
   AND2X1 U1607 (.Y(n2272), 
	.B(n1658), 
	.A(n1961));
   BUFX2 U1608 (.Y(n1401), 
	.A(xgmii_tx_hold[62]));
   BUFX2 U1609 (.Y(n1402), 
	.A(xgmii_tx_hold[61]));
   BUFX2 U1610 (.Y(n1403), 
	.A(xgmii_tx_hold[60]));
   BUFX2 U1611 (.Y(n1404), 
	.A(xgmii_tx_hold[59]));
   BUFX2 U1612 (.Y(n1405), 
	.A(xgmii_tx_hold[58]));
   BUFX2 U1613 (.Y(n1406), 
	.A(xgmii_tx_hold[15]));
   BUFX2 U1614 (.Y(n1407), 
	.A(xgmii_tx_hold[14]));
   BUFX2 U1615 (.Y(n1408), 
	.A(xgmii_tx_hold[13]));
   BUFX2 U1616 (.Y(n1409), 
	.A(xgmii_tx_hold[12]));
   BUFX2 U1617 (.Y(n1410), 
	.A(xgmii_tx_hold[11]));
   BUFX2 U1618 (.Y(n1411), 
	.A(xgmii_tx_hold[10]));
   BUFX2 U1619 (.Y(n1412), 
	.A(xgmii_tx_hold[9]));
   BUFX2 U1620 (.Y(n1413), 
	.A(xgmii_tx_hold[8]));
   BUFX2 U1621 (.Y(n1414), 
	.A(xgmii_tx_hold[63]));
   INVX1 U1622 (.Y(n1415), 
	.A(n2042));
   OR2X1 U1623 (.Y(n2042), 
	.B(n810), 
	.A(n1667));
   INVX1 U1624 (.Y(n1416), 
	.A(n2049));
   OR2X1 U1625 (.Y(n2049), 
	.B(n810), 
	.A(n1668));
   BUFX2 U1626 (.Y(n1417), 
	.A(xgmii_tx_hold[31]));
   BUFX2 U1627 (.Y(n1418), 
	.A(xgmii_tx_hold[30]));
   BUFX2 U1628 (.Y(n1419), 
	.A(xgmii_tx_hold[29]));
   BUFX2 U1629 (.Y(n1420), 
	.A(xgmii_tx_hold[28]));
   BUFX2 U1630 (.Y(n1421), 
	.A(xgmii_tx_hold[27]));
   BUFX2 U1631 (.Y(n1422), 
	.A(xgmii_tx_hold[26]));
   BUFX2 U1632 (.Y(n1423), 
	.A(xgmii_tx_hold[25]));
   BUFX2 U1633 (.Y(n1424), 
	.A(n2002));
   BUFX2 U1634 (.Y(n1425), 
	.A(crc_left_d[24]));
   BUFX2 U1635 (.Y(n1426), 
	.A(crc_left_d[31]));
   BUFX2 U1636 (.Y(n1427), 
	.A(crc_left_d[30]));
   BUFX2 U1637 (.Y(n1428), 
	.A(crc_left_d[29]));
   BUFX2 U1638 (.Y(n1429), 
	.A(crc_left_d[28]));
   BUFX2 U1639 (.Y(n1430), 
	.A(crc_left_d[27]));
   BUFX2 U1640 (.Y(n1431), 
	.A(crc_left_d[26]));
   BUFX2 U1641 (.Y(n1432), 
	.A(crc_left_d[25]));
   INVX1 U1642 (.Y(n1433), 
	.A(n2035));
   OR2X1 U1643 (.Y(n2035), 
	.B(n810), 
	.A(n1446));
   BUFX2 U1644 (.Y(n1434), 
	.A(pkt_ctrl_d[7]));
   BUFX2 U1645 (.Y(n1435), 
	.A(pkt_ctrl_d[5]));
   OR2X1 U1646 (.Y(n2267), 
	.B(n1489), 
	.A(n1522));
   INVX1 U1647 (.Y(n1436), 
	.A(n2267));
   BUFX2 U1648 (.Y(n1437), 
	.A(pkt_ctrl_d[1]));
   INVX1 U1649 (.Y(n1438), 
	.A(n2157));
   OR2X1 U1650 (.Y(n2157), 
	.B(n1508), 
	.A(n1705));
   BUFX2 U1651 (.Y(n1439), 
	.A(wakeuptimer_d[31]));
   INVX1 U1652 (.Y(n1440), 
	.A(n2151));
   INVX1 U1653 (.Y(n1441), 
	.A(n1987));
   OR2X1 U1654 (.Y(n1987), 
	.B(n2153), 
	.A(n1570));
   INVX1 U1655 (.Y(n1442), 
	.A(n1443));
   BUFX2 U1656 (.Y(n1443), 
	.A(cnt128_d[3]));
   BUFX2 U1657 (.Y(n1444), 
	.A(bvalid[7]));
   INVX1 U1658 (.Y(n1445), 
	.A(n2160));
   AND2X1 U1659 (.Y(n2160), 
	.B(n1726), 
	.A(n1691));
   BUFX2 U1660 (.Y(n1446), 
	.A(wakeuptimer_d[1]));
   INVX1 U1661 (.Y(n1447), 
	.A(n2167));
   INVX1 U1662 (.Y(n1448), 
	.A(n1449));
   BUFX2 U1663 (.Y(n1449), 
	.A(cnt128_d[6]));
   BUFX2 U1664 (.Y(n1450), 
	.A(n2173));
   BUFX2 U1665 (.Y(n1451), 
	.A(crc_left_d[23]));
   BUFX2 U1666 (.Y(n1452), 
	.A(crc_left_d[22]));
   BUFX2 U1667 (.Y(n1453), 
	.A(crc_left_d[20]));
   BUFX2 U1668 (.Y(n1454), 
	.A(crc_left_d[18]));
   INVX1 U1669 (.Y(n1455), 
	.A(n2172));
   AND2X1 U1670 (.Y(n2172), 
	.B(n1909), 
	.A(n1700));
   INVX1 U1671 (.Y(n1456), 
	.A(n1747));
   INVX1 U1672 (.Y(n1457), 
	.A(gclk_en));
   OR2X1 U1673 (.Y(gclk_en), 
	.B(n2137), 
	.A(n2032));
   INVX1 U1674 (.Y(n1458), 
	.A(n2275));
   BUFX2 U1675 (.Y(n1459), 
	.A(n2014));
   BUFX2 U1676 (.Y(n1460), 
	.A(bvalid[3]));
   BUFX2 U1677 (.Y(n1461), 
	.A(crc_left_d[16]));
   BUFX2 U1678 (.Y(n1462), 
	.A(crc_tx_d[15]));
   BUFX2 U1679 (.Y(n1463), 
	.A(crc_tx_d[14]));
   BUFX2 U1680 (.Y(n1464), 
	.A(crc_tx_d[13]));
   BUFX2 U1681 (.Y(n1465), 
	.A(crc_tx_d[12]));
   BUFX2 U1682 (.Y(n1466), 
	.A(crc_tx_d[11]));
   BUFX2 U1683 (.Y(n1467), 
	.A(crc_tx_d[10]));
   BUFX2 U1684 (.Y(n1468), 
	.A(crc_tx_d[9]));
   BUFX2 U1685 (.Y(n1469), 
	.A(crc_tx_d[8]));
   INVX1 U1686 (.Y(n1470), 
	.A(n1471));
   BUFX2 U1687 (.Y(n1471), 
	.A(cur_state[0]));
   INVX1 U1688 (.Y(n1472), 
	.A(n1473));
   BUFX2 U1689 (.Y(n1473), 
	.A(wakeuptimer_d[24]));
   INVX1 U1690 (.Y(n1474), 
	.A(n1475));
   BUFX2 U1691 (.Y(n1475), 
	.A(wakeuptimer_d[10]));
   INVX1 U1692 (.Y(n1476), 
	.A(n1477));
   BUFX2 U1693 (.Y(n1477), 
	.A(wakeuptimer_d[8]));
   INVX1 U1694 (.Y(n1478), 
	.A(n1479));
   BUFX2 U1695 (.Y(n1479), 
	.A(wakeuptimer_d[26]));
   INVX1 U1696 (.Y(n1480), 
	.A(n1481));
   BUFX2 U1697 (.Y(n1481), 
	.A(wakeuptimer_d[18]));
   INVX1 U1698 (.Y(n1482), 
	.A(n1483));
   BUFX2 U1699 (.Y(n1483), 
	.A(wakeuptimer_d[14]));
   INVX1 U1700 (.Y(n1484), 
	.A(n1485));
   BUFX2 U1701 (.Y(n1485), 
	.A(wakeuptimer_d[21]));
   BUFX2 U1702 (.Y(n1486), 
	.A(n1925));
   INVX1 U1703 (.Y(n1487), 
	.A(n1488));
   BUFX2 U1704 (.Y(n1488), 
	.A(bvalid[1]));
   BUFX2 U1705 (.Y(n1489), 
	.A(n1983));
   INVX1 U1706 (.Y(n1490), 
	.A(n1491));
   BUFX2 U1707 (.Y(n1491), 
	.A(cnt128_d[1]));
   INVX1 U1708 (.Y(n1492), 
	.A(n1493));
   BUFX2 U1709 (.Y(n1493), 
	.A(bvalid[4]));
   INVX1 U1710 (.Y(n1494), 
	.A(n1495));
   BUFX2 U1711 (.Y(n1495), 
	.A(cnt128_d[2]));
   BUFX2 U1712 (.Y(n1496), 
	.A(bvalid[6]));
   INVX1 U1713 (.Y(n1497), 
	.A(n1988));
   OR2X1 U1714 (.Y(n1988), 
	.B(n1745), 
	.A(n1708));
   BUFX2 U1715 (.Y(n1498), 
	.A(wakeuptimer_d[17]));
   BUFX2 U1716 (.Y(n1499), 
	.A(n2265));
   BUFX2 U1717 (.Y(n1500), 
	.A(crc_tx_d[16]));
   BUFX2 U1718 (.Y(n1501), 
	.A(crc_tx_d[23]));
   BUFX2 U1719 (.Y(n1502), 
	.A(crc_tx_d[22]));
   BUFX2 U1720 (.Y(n1503), 
	.A(crc_tx_d[21]));
   BUFX2 U1721 (.Y(n1504), 
	.A(crc_tx_d[20]));
   BUFX2 U1722 (.Y(n1505), 
	.A(crc_tx_d[19]));
   BUFX2 U1723 (.Y(n1506), 
	.A(crc_tx_d[18]));
   BUFX2 U1724 (.Y(n1507), 
	.A(crc_tx_d[17]));
   INVX1 U1725 (.Y(n1508), 
	.A(n2156));
   AND2X1 U1726 (.Y(n2156), 
	.B(n1730), 
	.A(n2149));
   INVX1 U1727 (.Y(n1509), 
	.A(n808));
   INVX1 U1728 (.Y(n1512), 
	.A(n1513));
   BUFX2 U1729 (.Y(n1513), 
	.A(crc_left_d[6]));
   INVX1 U1730 (.Y(n1514), 
	.A(n1515));
   BUFX2 U1731 (.Y(n1515), 
	.A(crc_left_d[1]));
   BUFX2 U1732 (.Y(n1516), 
	.A(crc_left_d[0]));
   BUFX2 U1733 (.Y(n1517), 
	.A(crc_left_d[4]));
   BUFX2 U1734 (.Y(n1518), 
	.A(crc_left_d[2]));
   BUFX2 U1735 (.Y(n1519), 
	.A(crc_left_d[7]));
   BUFX2 U1736 (.Y(n1520), 
	.A(crc_left_d[5]));
   BUFX2 U1737 (.Y(n1521), 
	.A(crc_left_d[3]));
   INVX1 U1738 (.Y(n1522), 
	.A(n807));
   BUFX2 U1739 (.Y(n1523), 
	.A(n1867));
   INVX1 U1740 (.Y(n1524), 
	.A(n1525));
   BUFX2 U1741 (.Y(n1525), 
	.A(crc_bvalid_d[1]));
   INVX1 U1742 (.Y(n1526), 
	.A(n1795));
   INVX1 U1743 (.Y(n1529), 
	.A(n2106));
   INVX1 U1744 (.Y(n1530), 
	.A(n2108));
   AND2X1 U1745 (.Y(n2106), 
	.B(n1653), 
	.A(n2104));
   BUFX2 U1746 (.Y(n1531), 
	.A(n2178));
   BUFX2 U1747 (.Y(n1532), 
	.A(n2182));
   BUFX2 U1748 (.Y(n1533), 
	.A(n2188));
   BUFX2 U1749 (.Y(n1534), 
	.A(n2192));
   BUFX2 U1750 (.Y(n1535), 
	.A(n2194));
   BUFX2 U1751 (.Y(n1536), 
	.A(n2204));
   BUFX2 U1752 (.Y(n1537), 
	.A(n2205));
   BUFX2 U1753 (.Y(n1538), 
	.A(n2206));
   BUFX2 U1754 (.Y(n1539), 
	.A(n2207));
   BUFX2 U1755 (.Y(n1540), 
	.A(n2220));
   BUFX2 U1756 (.Y(n1541), 
	.A(n2227));
   BUFX2 U1757 (.Y(n1542), 
	.A(n2258));
   BUFX2 U1758 (.Y(n1543), 
	.A(n2259));
   BUFX2 U1759 (.Y(n1544), 
	.A(n2260));
   BUFX2 U1760 (.Y(n1545), 
	.A(n2262));
   BUFX2 U1761 (.Y(n1546), 
	.A(n2327));
   BUFX2 U1762 (.Y(n1547), 
	.A(n2328));
   BUFX2 U1763 (.Y(n1548), 
	.A(n2329));
   BUFX2 U1764 (.Y(n1549), 
	.A(n2330));
   BUFX2 U1765 (.Y(n1550), 
	.A(n2331));
   BUFX2 U1766 (.Y(n1551), 
	.A(n2332));
   BUFX2 U1767 (.Y(n1552), 
	.A(n2333));
   BUFX2 U1768 (.Y(n1553), 
	.A(n2334));
   BUFX2 U1769 (.Y(n1554), 
	.A(n2335));
   BUFX2 U1770 (.Y(n1555), 
	.A(n2336));
   BUFX2 U1771 (.Y(n1556), 
	.A(n2337));
   BUFX2 U1772 (.Y(n1557), 
	.A(n2338));
   BUFX2 U1773 (.Y(n1558), 
	.A(n2339));
   BUFX2 U1774 (.Y(n1559), 
	.A(n2341));
   BUFX2 U1775 (.Y(n1560), 
	.A(n2342));
   BUFX2 U1776 (.Y(n1561), 
	.A(clk125mhz));
   INVX1 U1777 (.Y(n1562), 
	.A(n786));
   INVX1 U1778 (.Y(n1563), 
	.A(n784));
   INVX1 U1779 (.Y(n1564), 
	.A(n780));
   INVX1 U1780 (.Y(n1565), 
	.A(n770));
   AND2X1 U1781 (.Y(n2179), 
	.B(pop_pkt), 
	.A(bvalidin[1]));
   INVX1 U1782 (.Y(n1566), 
	.A(n2179));
   AND2X1 U1783 (.Y(n2183), 
	.B(pop_pkt), 
	.A(bvalidin[4]));
   INVX1 U1784 (.Y(n1567), 
	.A(n2183));
   BUFX2 U1785 (.Y(n1568), 
	.A(xgmii_txc_d[0]));
   BUFX2 U1786 (.Y(n1569), 
	.A(n2126));
   AND2X1 U1787 (.Y(n2127), 
	.B(n1680), 
	.A(n2122));
   INVX1 U1788 (.Y(n1570), 
	.A(n1731));
   BUFX2 U1789 (.Y(n1571), 
	.A(gclk_en_d));
   INVX1 U1790 (.Y(n1574), 
	.A(n1000));
   INVX1 U1791 (.Y(n1577), 
	.A(n1009));
   AND2X1 U1792 (.Y(n2013), 
	.B(n1442), 
	.A(n2005));
   INVX1 U1793 (.Y(n1578), 
	.A(n2013));
   INVX1 U1794 (.Y(n1579), 
	.A(n1721));
   INVX1 U1795 (.Y(n1580), 
	.A(n1796));
   INVX1 U1796 (.Y(n1581), 
	.A(n1787));
   INVX1 U1797 (.Y(n1582), 
	.A(n1775));
   INVX1 U1798 (.Y(n1583), 
	.A(n1910));
   INVX1 U1799 (.Y(n1584), 
	.A(n1762));
   INVX1 U1800 (.Y(n1586), 
	.A(n811));
   INVX1 U1801 (.Y(n1587), 
	.A(n1869));
   INVX1 U1802 (.Y(\xgmii_tx.TXC [1]), 
	.A(n2352));
   BUFX2 U1803 (.Y(n1590), 
	.A(bvalid[2]));
   BUFX2 U1804 (.Y(n1591), 
	.A(bvalid[0]));
   INVX1 U1805 (.Y(n1592), 
	.A(nxt_state[0]));
   BUFX2 U1806 (.Y(n1593), 
	.A(IDC_cnt_d[0]));
   BUFX2 U1807 (.Y(n1594), 
	.A(pkt_ctrl_d[2]));
   BUFX2 U1808 (.Y(n1595), 
	.A(xgmii_tx_hold[16]));
   BUFX2 U1809 (.Y(n1596), 
	.A(xgmii_tx_hold[17]));
   BUFX2 U1810 (.Y(n1597), 
	.A(xgmii_tx_hold[18]));
   BUFX2 U1811 (.Y(n1598), 
	.A(xgmii_tx_hold[19]));
   BUFX2 U1812 (.Y(n1599), 
	.A(xgmii_tx_hold[21]));
   BUFX2 U1813 (.Y(n1600), 
	.A(xgmii_tx_hold[52]));
   BUFX2 U1814 (.Y(n1601), 
	.A(xgmii_tx_hold[54]));
   BUFX2 U1815 (.Y(n1602), 
	.A(xgmii_tx_hold[57]));
   BUFX2 U1816 (.Y(n1603), 
	.A(nxt_state[3]));
   INVX1 U1817 (.Y(n1604), 
	.A(n2028));
   BUFX2 U1818 (.Y(n1605), 
	.A(xgmii_tx_hold[23]));
   INVX1 U1819 (.Y(n1606), 
	.A(n2093));
   BUFX2 U1820 (.Y(n1607), 
	.A(xgmii_tx_hold[0]));
   BUFX2 U1821 (.Y(n1608), 
	.A(xgmii_tx_hold[1]));
   BUFX2 U1822 (.Y(n1609), 
	.A(xgmii_tx_hold[2]));
   BUFX2 U1823 (.Y(n1610), 
	.A(xgmii_tx_hold[3]));
   BUFX2 U1824 (.Y(n1611), 
	.A(xgmii_tx_hold[4]));
   BUFX2 U1825 (.Y(n1612), 
	.A(xgmii_tx_hold[5]));
   BUFX2 U1826 (.Y(n1613), 
	.A(xgmii_tx_hold[6]));
   BUFX2 U1827 (.Y(n1614), 
	.A(xgmii_tx_hold[7]));
   BUFX2 U1828 (.Y(n1615), 
	.A(xgmii_tx_hold[32]));
   BUFX2 U1829 (.Y(n1616), 
	.A(xgmii_tx_hold[33]));
   BUFX2 U1830 (.Y(n1617), 
	.A(xgmii_tx_hold[34]));
   BUFX2 U1831 (.Y(n1618), 
	.A(xgmii_tx_hold[35]));
   BUFX2 U1832 (.Y(n1619), 
	.A(xgmii_tx_hold[36]));
   BUFX2 U1833 (.Y(n1620), 
	.A(xgmii_tx_hold[37]));
   BUFX2 U1834 (.Y(n1621), 
	.A(xgmii_tx_hold[38]));
   BUFX2 U1835 (.Y(n1622), 
	.A(xgmii_tx_hold[39]));
   BUFX2 U1836 (.Y(n1623), 
	.A(xgmii_tx_hold[40]));
   BUFX2 U1837 (.Y(n1624), 
	.A(xgmii_tx_hold[41]));
   BUFX2 U1838 (.Y(n1625), 
	.A(xgmii_tx_hold[42]));
   BUFX2 U1839 (.Y(n1626), 
	.A(xgmii_tx_hold[43]));
   BUFX2 U1840 (.Y(n1627), 
	.A(xgmii_tx_hold[44]));
   BUFX2 U1841 (.Y(n1628), 
	.A(xgmii_tx_hold[45]));
   BUFX2 U1842 (.Y(n1629), 
	.A(xgmii_tx_hold[46]));
   BUFX2 U1843 (.Y(n1630), 
	.A(xgmii_tx_hold[47]));
   BUFX2 U1844 (.Y(n1631), 
	.A(xgmii_tx_hold[48]));
   BUFX2 U1845 (.Y(n1632), 
	.A(xgmii_tx_hold[49]));
   BUFX2 U1846 (.Y(n1633), 
	.A(xgmii_tx_hold[50]));
   BUFX2 U1847 (.Y(n1634), 
	.A(xgmii_tx_hold[51]));
   BUFX2 U1848 (.Y(n1635), 
	.A(xgmii_tx_hold[53]));
   BUFX2 U1849 (.Y(n1636), 
	.A(xgmii_tx_hold[55]));
   BUFX2 U1850 (.Y(n1637), 
	.A(xgmii_tx_hold[56]));
   BUFX2 U1851 (.Y(n1638), 
	.A(pkt_ctrl_d[0]));
   BUFX2 U1852 (.Y(n1639), 
	.A(xgmii_tx_hold[20]));
   BUFX2 U1853 (.Y(n1640), 
	.A(xgmii_tx_hold[22]));
   BUFX2 U1854 (.Y(n1641), 
	.A(crc_tx_d[0]));
   BUFX2 U1855 (.Y(n1642), 
	.A(crc_tx_d[1]));
   BUFX2 U1856 (.Y(n1643), 
	.A(crc_tx_d[2]));
   BUFX2 U1857 (.Y(n1644), 
	.A(crc_tx_d[3]));
   BUFX2 U1858 (.Y(n1645), 
	.A(crc_tx_d[4]));
   BUFX2 U1859 (.Y(n1646), 
	.A(crc_tx_d[5]));
   BUFX2 U1860 (.Y(n1647), 
	.A(crc_tx_d[6]));
   BUFX2 U1861 (.Y(n1648), 
	.A(crc_tx_d[7]));
   BUFX2 U1862 (.Y(n1649), 
	.A(pkt_ctrl_d[6]));
   BUFX2 U1863 (.Y(n1650), 
	.A(pkt_ctrl_d[4]));
   BUFX2 U1864 (.Y(n1651), 
	.A(wakeuptimer_d[28]));
   BUFX2 U1865 (.Y(n1652), 
	.A(wakeuptimer_d[16]));
   BUFX2 U1866 (.Y(n1653), 
	.A(wakeuptimer_d[20]));
   BUFX2 U1867 (.Y(n1654), 
	.A(wakeuptimer_d[22]));
   INVX1 U1868 (.Y(n1655), 
	.A(n1858));
   BUFX2 U1869 (.Y(n1656), 
	.A(wakeuptimer_d[30]));
   BUFX2 U1870 (.Y(n1657), 
	.A(wakeuptimer_d[23]));
   BUFX2 U1871 (.Y(n1658), 
	.A(idlernd_cnt_d[0]));
   BUFX2 U1872 (.Y(n1659), 
	.A(crc_left_d[19]));
   BUFX2 U1873 (.Y(n1660), 
	.A(crc_left_d[21]));
   BUFX2 U1874 (.Y(n1661), 
	.A(wakeuptimer_d[2]));
   BUFX2 U1875 (.Y(n1662), 
	.A(wakeuptimer_d[4]));
   BUFX2 U1876 (.Y(n1663), 
	.A(wakeuptimer_d[6]));
   BUFX2 U1877 (.Y(n1664), 
	.A(wakeuptimer_d[29]));
   BUFX2 U1878 (.Y(n1665), 
	.A(IDC_cnt_d[1]));
   BUFX2 U1879 (.Y(n1666), 
	.A(cnt128_d[4]));
   BUFX2 U1880 (.Y(n1667), 
	.A(wakeuptimer_d[3]));
   BUFX2 U1881 (.Y(n1668), 
	.A(wakeuptimer_d[5]));
   BUFX2 U1882 (.Y(n1669), 
	.A(wakeuptimer_d[7]));
   BUFX2 U1883 (.Y(n1670), 
	.A(crc_left_d[17]));
   BUFX2 U1884 (.Y(n1671), 
	.A(wakeuptimer_d[12]));
   BUFX2 U1885 (.Y(n1672), 
	.A(cnt128_d[5]));
   AND2X1 U1886 (.Y(n2010), 
	.B(n2137), 
	.A(n2128));
   INVX1 U1887 (.Y(n1673), 
	.A(n2010));
   BUFX2 U1888 (.Y(n1674), 
	.A(wakeuptimer_d[13]));
   BUFX2 U1889 (.Y(n1675), 
	.A(crc_left_d[12]));
   BUFX2 U1890 (.Y(n1676), 
	.A(crc_left_d[14]));
   BUFX2 U1891 (.Y(n1677), 
	.A(crc_left_d[9]));
   BUFX2 U1892 (.Y(n1678), 
	.A(wakeuptimer_d[9]));
   BUFX2 U1893 (.Y(n1679), 
	.A(wakeuptimer_d[11]));
   BUFX2 U1894 (.Y(n1680), 
	.A(wakeuptimer_d[25]));
   BUFX2 U1895 (.Y(n1681), 
	.A(wakeuptimer_d[15]));
   BUFX2 U1896 (.Y(n1682), 
	.A(wakeuptimer_d[19]));
   BUFX2 U1897 (.Y(n1683), 
	.A(wakeuptimer_d[27]));
   BUFX2 U1898 (.Y(n1684), 
	.A(crc_left_d[11]));
   BUFX2 U1899 (.Y(n1685), 
	.A(crc_left_d[13]));
   BUFX2 U1900 (.Y(n1686), 
	.A(crc_left_d[8]));
   BUFX2 U1901 (.Y(n1687), 
	.A(crc_left_d[10]));
   BUFX2 U1902 (.Y(n1688), 
	.A(crc_left_d[15]));
   BUFX2 U1903 (.Y(n1689), 
	.A(idlernd_cnt_d[1]));
   BUFX2 U1904 (.Y(n1690), 
	.A(wakeuptimer_d[0]));
   BUFX2 U1905 (.Y(n1691), 
	.A(bvalid[5]));
   BUFX2 U1906 (.Y(n1692), 
	.A(crc_tx_d[31]));
   BUFX2 U1907 (.Y(n1693), 
	.A(crc_tx_d[27]));
   BUFX2 U1908 (.Y(n1694), 
	.A(crc_tx_d[29]));
   BUFX2 U1909 (.Y(n1695), 
	.A(crc_tx_d[25]));
   BUFX2 U1910 (.Y(n1696), 
	.A(crc_tx_d[26]));
   BUFX2 U1911 (.Y(n1697), 
	.A(crc_tx_d[24]));
   BUFX2 U1912 (.Y(n1698), 
	.A(crc_tx_d[28]));
   BUFX2 U1913 (.Y(n1699), 
	.A(crc_tx_d[30]));
   BUFX2 U1914 (.Y(n1700), 
	.A(cur_state[1]));
   INVX1 U1915 (.Y(n1702), 
	.A(n1717));
   BUFX2 U1916 (.Y(n1704), 
	.A(cnt128_d[0]));
   BUFX2 U1917 (.Y(n1705), 
	.A(cnt2_d));
   INVX1 U1918 (.Y(n1708), 
	.A(n2164));
   INVX1 U1919 (.Y(n1709), 
	.A(n1899));
   INVX1 U1920 (.Y(n1710), 
	.A(n1794));
   INVX1 U1921 (.Y(n1754), 
	.A(n1700));
   NAND3X1 U1922 (.Y(n1711), 
	.C(n1509), 
	.B(n1522), 
	.A(n1471));
   INVX1 U1923 (.Y(n1909), 
	.A(n809));
   NOR3X1 U1924 (.Y(n1714), 
	.C(n1650), 
	.B(n1437), 
	.A(n1435));
   NOR3X1 U1925 (.Y(n1716), 
	.C(n1210), 
	.B(n1649), 
	.A(n1434));
   NAND3X1 U1926 (.Y(n1724), 
	.C(n1716), 
	.B(n1638), 
	.A(n1390));
   INVX1 U1927 (.Y(n1745), 
	.A(n1705));
   OAI21X1 U1928 (.Y(FE_OFN0_pop_pkt), 
	.C(n2348), 
	.B(n1745), 
	.A(n1456));
   NAND3X1 U1929 (.Y(n1983), 
	.C(n1509), 
	.B(n1470), 
	.A(n1754));
   NAND3X1 U1930 (.Y(n1753), 
	.C(n1470), 
	.B(n808), 
	.A(n807));
   AND2X1 U1931 (.Y(n1717), 
	.B(n1470), 
	.A(n1754));
   AND2X1 U1932 (.Y(n1869), 
	.B(n2174), 
	.A(n809));
   OR2X1 U1933 (.Y(n1993), 
	.B(n1111), 
	.A(n1754));
   OR2X1 U1934 (.Y(n2276), 
	.B(n1993), 
	.A(n1470));
   NAND3X1 U1935 (.Y(n2173), 
	.C(n2276), 
	.B(n1510), 
	.A(n1869));
   INVX1 U1936 (.Y(n2268), 
	.A(n1450));
   INVX1 U1937 (.Y(n2166), 
	.A(n1353));
   INVX1 U1938 (.Y(n2175), 
	.A(n2276));
   NAND3X1 U1939 (.Y(n1867), 
	.C(n2175), 
	.B(n2166), 
	.A(n1524));
   AND2X1 U1940 (.Y(n1920), 
	.B(n1523), 
	.A(n1869));
   NAND3X1 U1941 (.Y(n2351), 
	.C(n1579), 
	.B(n1367), 
	.A(n1869));
   AOI22X1 U1942 (.Y(n1723), 
	.D(n1190), 
	.C(n2268), 
	.B(n2166), 
	.A(n2175));
   INVX1 U1943 (.Y(n2149), 
	.A(n1591));
   INVX1 U1944 (.Y(n2181), 
	.A(n1590));
   NAND3X1 U1945 (.Y(n1727), 
	.C(n2181), 
	.B(n1487), 
	.A(n2149));
   OR2X1 U1946 (.Y(n1736), 
	.B(n1361), 
	.A(n1460));
   INVX1 U1947 (.Y(n1725), 
	.A(n1736));
   NOR3X1 U1948 (.Y(n1735), 
	.C(n1377), 
	.B(n1708), 
	.A(n1493));
   NAND3X1 U1949 (.Y(n1728), 
	.C(n1691), 
	.B(n1496), 
	.A(n1460));
   NAND3X1 U1950 (.Y(n2161), 
	.C(n1730), 
	.B(n1488), 
	.A(n1591));
   INVX1 U1951 (.Y(n2153), 
	.A(n1363));
   OAI21X1 U1952 (.Y(n1732), 
	.C(n1456), 
	.B(n1708), 
	.A(n1441));
   AOI22X1 U1953 (.Y(n1914), 
	.D(n1732), 
	.C(n1745), 
	.B(n1388), 
	.A(n2164));
   AND2X1 U1954 (.Y(n1733), 
	.B(n2160), 
	.A(n1492));
   AND2X1 U1955 (.Y(n1734), 
	.B(n1374), 
	.A(n1357));
   INVX1 U1956 (.Y(n1902), 
	.A(n1734));
   OR2X2 U1957 (.Y(n1848), 
	.B(n1902), 
	.A(n1735));
   INVX1 U1958 (.Y(n1737), 
	.A(n1848));
   NOR3X1 U1959 (.Y(n1738), 
	.C(n1736), 
	.B(n1493), 
	.A(n1691));
   AOI21X1 U1960 (.Y(n1741), 
	.C(n2268), 
	.B(n1132), 
	.A(n1372));
   INVX2 U1961 (.Y(n1956), 
	.A(n986));
   AOI22X1 U1962 (.Y(n1751), 
	.D(n1956), 
	.C(n1163), 
	.B(n1526), 
	.A(n1637));
   OR2X2 U1963 (.Y(n1918), 
	.B(n1447), 
	.A(n1525));
   INVX1 U1964 (.Y(n1849), 
	.A(n1918));
   INVX2 U1965 (.Y(n1913), 
	.A(n1706));
   AOI21X1 U1966 (.Y(n1743), 
	.C(n1655), 
	.B(n1913), 
	.A(n1461));
   INVX1 U1967 (.Y(n1820), 
	.A(n1523));
   OR2X1 U1968 (.Y(n1997), 
	.B(n1447), 
	.A(n1524));
   INVX2 U1969 (.Y(n1953), 
	.A(n1997));
   AOI22X1 U1970 (.Y(n1742), 
	.D(n1953), 
	.C(n1425), 
	.B(n1820), 
	.A(n1516));
   NAND3X1 U1971 (.Y(n1744), 
	.C(n2348), 
	.B(n1146), 
	.A(n1131));
   AOI21X1 U1972 (.Y(n1750), 
	.C(n1083), 
	.B(n1849), 
	.A(n1686));
   AOI21X1 U1973 (.Y(n1748), 
	.C(n1745), 
	.B(n1133), 
	.A(n1456));
   INVX1 U1974 (.Y(n1857), 
	.A(n988));
   AOI21X1 U1975 (.Y(n1807), 
	.C(n988), 
	.B(n2156), 
	.A(n1497));
   AOI22X1 U1976 (.Y(n1761), 
	.D(n1710), 
	.C(n1423), 
	.B(n1956), 
	.A(n1143));
   AOI22X1 U1977 (.Y(n1757), 
	.D(n1432), 
	.C(n1953), 
	.B(n1515), 
	.A(n1820));
   NAND3X1 U1978 (.Y(n1755), 
	.C(n1193), 
	.B(n1701), 
	.A(n809));
   INVX1 U1979 (.Y(n1774), 
	.A(n1354));
   NAND3X1 U1980 (.Y(n1758), 
	.C(n1489), 
	.B(n1158), 
	.A(n1112));
   AOI21X1 U1981 (.Y(n1760), 
	.C(n1084), 
	.B(n1670), 
	.A(n1913));
   AOI22X1 U1982 (.Y(n1763), 
	.D(n1431), 
	.C(n1953), 
	.B(n1518), 
	.A(n1820));
   NAND3X1 U1983 (.Y(n1764), 
	.C(n1584), 
	.B(n2174), 
	.A(n1113));
   AOI21X1 U1984 (.Y(n1767), 
	.C(n1085), 
	.B(n1687), 
	.A(n1849));
   AOI22X1 U1985 (.Y(n1766), 
	.D(n1710), 
	.C(n1422), 
	.B(n1526), 
	.A(n1405));
   AOI22X1 U1986 (.Y(n1769), 
	.D(n1430), 
	.C(n1953), 
	.B(n1521), 
	.A(n1820));
   AOI21X1 U1987 (.Y(n2265), 
	.C(n1909), 
	.B(n1774), 
	.A(n1700));
   NAND3X1 U1988 (.Y(n1770), 
	.C(n1194), 
	.B(n1499), 
	.A(n1114));
   AOI21X1 U1989 (.Y(n1773), 
	.C(n1086), 
	.B(n1684), 
	.A(n1849));
   AOI22X1 U1990 (.Y(n1772), 
	.D(n1710), 
	.C(n1421), 
	.B(n1526), 
	.A(n1404));
   AOI21X1 U1991 (.Y(n1788), 
	.C(FE_OFN8_pop_crc), 
	.B(n1700), 
	.A(n1774));
   AOI22X1 U1992 (.Y(n1776), 
	.D(n1429), 
	.C(n1953), 
	.B(n1517), 
	.A(n1820));
   NAND3X1 U1993 (.Y(n1777), 
	.C(n1582), 
	.B(n1147), 
	.A(n1391));
   AOI21X1 U1994 (.Y(n1780), 
	.C(n1087), 
	.B(n1675), 
	.A(n1849));
   AOI22X1 U1995 (.Y(n1779), 
	.D(n1710), 
	.C(n1420), 
	.B(n1526), 
	.A(n1403));
   AOI22X1 U1996 (.Y(n1786), 
	.D(n1710), 
	.C(n1419), 
	.B(n1526), 
	.A(n1402));
   AOI22X1 U1997 (.Y(n1782), 
	.D(n1428), 
	.C(n1953), 
	.B(n1520), 
	.A(n1820));
   NAND3X1 U1998 (.Y(n1783), 
	.C(n1195), 
	.B(n1499), 
	.A(n1115));
   AOI21X1 U1999 (.Y(n1785), 
	.C(n1088), 
	.B(n1685), 
	.A(n1849));
   AOI22X1 U2000 (.Y(n1793), 
	.D(n1710), 
	.C(n1418), 
	.B(n1526), 
	.A(n1401));
   AOI22X1 U2001 (.Y(n1789), 
	.D(n1427), 
	.C(n1953), 
	.B(n1513), 
	.A(n1820));
   NAND3X1 U2002 (.Y(n1790), 
	.C(n1581), 
	.B(n1391), 
	.A(n1116));
   AOI21X1 U2003 (.Y(n1792), 
	.C(n1089), 
	.B(n1676), 
	.A(n1849));
   AOI22X1 U2004 (.Y(n1801), 
	.D(n1710), 
	.C(n1417), 
	.B(n1526), 
	.A(n1414));
   AOI22X1 U2005 (.Y(n1797), 
	.D(n1426), 
	.C(n1953), 
	.B(n1519), 
	.A(n1820));
   NAND3X1 U2006 (.Y(n1798), 
	.C(n1580), 
	.B(n1499), 
	.A(n1117));
   AOI21X1 U2007 (.Y(n1800), 
	.C(n1090), 
	.B(n1688), 
	.A(n1849));
   AOI22X1 U2008 (.Y(n1810), 
	.D(n1956), 
	.C(n1164), 
	.B(n1848), 
	.A(n1631));
   OAI21X1 U2009 (.Y(n1952), 
	.C(n1358), 
	.B(n1375), 
	.A(n1496));
   AOI22X1 U2010 (.Y(n1805), 
	.D(FE_OFN6_n1952), 
	.C(n1697), 
	.B(n1516), 
	.A(n1849));
   AOI22X1 U2011 (.Y(n1804), 
	.D(n1461), 
	.C(n1953), 
	.B(n1913), 
	.A(n1686));
   NAND3X1 U2012 (.Y(n1806), 
	.C(n1858), 
	.B(n1148), 
	.A(n1118));
   INVX1 U2013 (.Y(n1854), 
	.A(n1352));
   AOI22X1 U2014 (.Y(n1816), 
	.D(n1956), 
	.C(n1165), 
	.B(n1848), 
	.A(n1632));
   AOI22X1 U2015 (.Y(n1812), 
	.D(FE_OFN6_n1952), 
	.C(n1695), 
	.B(n1515), 
	.A(n1849));
   NAND3X1 U2016 (.Y(n1813), 
	.C(n1196), 
	.B(n1869), 
	.A(n1119));
   AOI21X1 U2017 (.Y(n1815), 
	.C(n1091), 
	.B(n1677), 
	.A(n1913));
   AOI22X1 U2018 (.Y(n1818), 
	.D(FE_OFN6_n1952), 
	.C(n1696), 
	.B(n1518), 
	.A(n1849));
   AOI22X1 U2019 (.Y(n1817), 
	.D(n1687), 
	.C(n1913), 
	.B(n1454), 
	.A(n1953));
   NAND3X1 U2020 (.Y(n1819), 
	.C(n2174), 
	.B(n1149), 
	.A(n1120));
   AOI22X1 U2021 (.Y(n1822), 
	.D(n1956), 
	.C(n1166), 
	.B(n1848), 
	.A(n1633));
   AOI22X1 U2022 (.Y(n1825), 
	.D(FE_OFN6_n1952), 
	.C(n1693), 
	.B(n1521), 
	.A(n1849));
   AND2X1 U2023 (.Y(n1852), 
	.B(n1523), 
	.A(n809));
   NAND3X1 U2024 (.Y(n1826), 
	.C(n1197), 
	.B(n1852), 
	.A(n1121));
   AOI21X1 U2025 (.Y(n1829), 
	.C(n1092), 
	.B(n1684), 
	.A(n1913));
   AOI22X1 U2026 (.Y(n1828), 
	.D(n1956), 
	.C(n1173), 
	.B(n1848), 
	.A(n1634));
   AOI22X1 U2027 (.Y(n1831), 
	.D(FE_OFN6_n1952), 
	.C(n1698), 
	.B(n1453), 
	.A(n1953));
   NAND3X1 U2028 (.Y(n1832), 
	.C(n1198), 
	.B(n1150), 
	.A(n1523));
   AOI21X1 U2029 (.Y(n1835), 
	.C(n1093), 
	.B(n1517), 
	.A(n1849));
   AOI22X1 U2030 (.Y(n1834), 
	.D(n1854), 
	.C(n1639), 
	.B(n1956), 
	.A(n1144));
   AOI22X1 U2031 (.Y(n1841), 
	.D(n1956), 
	.C(n1174), 
	.B(n1848), 
	.A(n1635));
   AOI22X1 U2032 (.Y(n1837), 
	.D(FE_OFN6_n1952), 
	.C(n1694), 
	.B(n1520), 
	.A(n1849));
   NAND3X1 U2033 (.Y(n1838), 
	.C(n1199), 
	.B(n1852), 
	.A(n1122));
   AOI21X1 U2034 (.Y(n1840), 
	.C(n1094), 
	.B(n1685), 
	.A(n1913));
   AOI22X1 U2035 (.Y(n1847), 
	.D(n1854), 
	.C(n1640), 
	.B(n1956), 
	.A(n1145));
   AOI22X1 U2036 (.Y(n1843), 
	.D(FE_OFN6_n1952), 
	.C(n1699), 
	.B(n1452), 
	.A(n1953));
   NAND3X1 U2037 (.Y(n1844), 
	.C(n1200), 
	.B(n1151), 
	.A(n1523));
   AOI22X1 U2038 (.Y(n1856), 
	.D(n1956), 
	.C(n1175), 
	.B(n1848), 
	.A(n1636));
   AOI22X1 U2039 (.Y(n1851), 
	.D(n1688), 
	.C(n1913), 
	.B(n1451), 
	.A(n1953));
   AOI22X1 U2040 (.Y(n1850), 
	.D(FE_OFN6_n1952), 
	.C(n1692), 
	.B(n1519), 
	.A(n1849));
   NAND3X1 U2041 (.Y(n1853), 
	.C(n1192), 
	.B(n1152), 
	.A(n1852));
   AOI21X1 U2042 (.Y(n1855), 
	.C(n1095), 
	.B(n1605), 
	.A(n1854));
   NAND3X1 U2043 (.Y(n1906), 
	.C(n2156), 
	.B(n1497), 
	.A(n1488));
   AOI22X1 U2044 (.Y(n1866), 
	.D(FE_OFN6_n1952), 
	.C(n1500), 
	.B(n1709), 
	.A(n1413));
   AOI21X1 U2045 (.Y(n1925), 
	.C(n1655), 
	.B(n1524), 
	.A(n2175));
   AOI22X1 U2046 (.Y(n1861), 
	.D(n1191), 
	.C(n1726), 
	.B(n1141), 
	.A(n1705));
   INVX1 U2047 (.Y(n2154), 
	.A(n828));
   AND2X2 U2048 (.Y(n2290), 
	.B(n2164), 
	.A(n2154));
   AOI22X1 U2049 (.Y(n1862), 
	.D(n2290), 
	.C(n1697), 
	.B(n1913), 
	.A(n1516));
   AOI21X1 U2050 (.Y(n1865), 
	.C(n1106), 
	.B(n1686), 
	.A(n1953));
   AOI22X1 U2051 (.Y(n1864), 
	.D(n1956), 
	.C(n1167), 
	.B(n1902), 
	.A(n1623));
   AOI22X1 U2052 (.Y(n1873), 
	.D(FE_OFN6_n1952), 
	.C(n1507), 
	.B(n1709), 
	.A(n1412));
   AOI22X1 U2053 (.Y(n1868), 
	.D(n1515), 
	.C(n1913), 
	.B(n1677), 
	.A(n1953));
   NAND3X1 U2054 (.Y(n1870), 
	.C(n1523), 
	.B(n1153), 
	.A(n1869));
   AOI21X1 U2055 (.Y(n1872), 
	.C(n1096), 
	.B(n2290), 
	.A(n1695));
   AOI22X1 U2056 (.Y(n1871), 
	.D(n1956), 
	.C(n1168), 
	.B(n1902), 
	.A(n1624));
   AOI22X1 U2057 (.Y(n1878), 
	.D(FE_OFN6_n1952), 
	.C(n1506), 
	.B(n1709), 
	.A(n1411));
   AOI22X1 U2058 (.Y(n1874), 
	.D(n1518), 
	.C(n1913), 
	.B(n1687), 
	.A(n1953));
   NAND3X1 U2059 (.Y(n1875), 
	.C(n1701), 
	.B(n1154), 
	.A(n1486));
   AOI21X1 U2060 (.Y(n1877), 
	.C(n1097), 
	.B(n2290), 
	.A(n1696));
   AOI22X1 U2061 (.Y(n1876), 
	.D(n1956), 
	.C(n1169), 
	.B(n1902), 
	.A(n1625));
   AOI22X1 U2062 (.Y(n1883), 
	.D(FE_OFN6_n1952), 
	.C(n1505), 
	.B(n1709), 
	.A(n1410));
   AOI22X1 U2063 (.Y(n1879), 
	.D(n1521), 
	.C(n1913), 
	.B(n1684), 
	.A(n1953));
   NAND3X1 U2064 (.Y(n1880), 
	.C(n1918), 
	.B(n809), 
	.A(n1123));
   AOI21X1 U2065 (.Y(n1882), 
	.C(n1098), 
	.B(n2290), 
	.A(n1693));
   AOI22X1 U2066 (.Y(n1881), 
	.D(n1956), 
	.C(n1176), 
	.B(n1902), 
	.A(n1626));
   AOI22X1 U2067 (.Y(n1888), 
	.D(FE_OFN6_n1952), 
	.C(n1504), 
	.B(n1709), 
	.A(n1409));
   AOI22X1 U2068 (.Y(n1884), 
	.D(n2290), 
	.C(n1698), 
	.B(n1517), 
	.A(n1913));
   AOI21X1 U2069 (.Y(n1887), 
	.C(n1107), 
	.B(n1675), 
	.A(n1953));
   AOI22X1 U2070 (.Y(n1886), 
	.D(n1956), 
	.C(n1177), 
	.B(n1902), 
	.A(n1627));
   AOI22X1 U2071 (.Y(n1893), 
	.D(FE_OFN6_n1952), 
	.C(n1503), 
	.B(n1709), 
	.A(n1408));
   AOI22X1 U2072 (.Y(n1889), 
	.D(n1520), 
	.C(n1913), 
	.B(n1685), 
	.A(n1953));
   NAND3X1 U2073 (.Y(n1890), 
	.C(n1918), 
	.B(n809), 
	.A(n1124));
   AOI21X1 U2074 (.Y(n1892), 
	.C(n1099), 
	.B(n2290), 
	.A(n1694));
   AOI22X1 U2075 (.Y(n1891), 
	.D(n1956), 
	.C(n1178), 
	.B(n1902), 
	.A(n1628));
   AOI22X1 U2076 (.Y(n1898), 
	.D(FE_OFN6_n1952), 
	.C(n1502), 
	.B(n1709), 
	.A(n1407));
   AOI22X1 U2077 (.Y(n1894), 
	.D(n2290), 
	.C(n1699), 
	.B(n1513), 
	.A(n1913));
   AOI21X1 U2078 (.Y(n1897), 
	.C(n1108), 
	.B(n1676), 
	.A(n1953));
   AOI22X1 U2079 (.Y(n1896), 
	.D(n1956), 
	.C(n1179), 
	.B(n1902), 
	.A(n1629));
   AOI22X1 U2080 (.Y(n1905), 
	.D(FE_OFN6_n1952), 
	.C(n1501), 
	.B(n1709), 
	.A(n1406));
   AOI22X1 U2081 (.Y(n1900), 
	.D(n1519), 
	.C(n1913), 
	.B(n1688), 
	.A(n1953));
   NAND3X1 U2082 (.Y(n1901), 
	.C(n1918), 
	.B(n809), 
	.A(n1125));
   AOI21X1 U2083 (.Y(n1904), 
	.C(n1100), 
	.B(n2290), 
	.A(n1692));
   AOI22X1 U2084 (.Y(n1903), 
	.D(n1956), 
	.C(n1180), 
	.B(n1902), 
	.A(n1630));
   AND2X1 U2085 (.Y(n1908), 
	.B(n1365), 
	.A(n1374));
   INVX1 U2086 (.Y(n2289), 
	.A(n1908));
   AOI22X1 U2087 (.Y(n1917), 
	.D(FE_OFN6_n1952), 
	.C(n1469), 
	.B(n2289), 
	.A(n1697));
   AOI22X1 U2088 (.Y(n1911), 
	.D(n2290), 
	.C(n1500), 
	.B(n1607), 
	.A(n988));
   NAND3X1 U2089 (.Y(n1912), 
	.C(n1583), 
	.B(n1486), 
	.A(n1126));
   NOR3X1 U2090 (.Y(n1916), 
	.C(n1205), 
	.B(n2172), 
	.A(n1913));
   INVX1 U2091 (.Y(n1957), 
	.A(n1357));
   AOI22X1 U2092 (.Y(n1915), 
	.D(n1956), 
	.C(n1170), 
	.B(n1957), 
	.A(n1615));
   AOI22X1 U2093 (.Y(n1924), 
	.D(n1507), 
	.C(n2290), 
	.B(n2289), 
	.A(n1695));
   AOI22X1 U2094 (.Y(n1919), 
	.D(FE_OFN6_n1952), 
	.C(n1468), 
	.B(n1608), 
	.A(n988));
   NAND3X1 U2095 (.Y(n1921), 
	.C(n1918), 
	.B(n1155), 
	.A(n1920));
   AOI22X1 U2096 (.Y(n1922), 
	.D(n1956), 
	.C(n1171), 
	.B(n1957), 
	.A(n1616));
   AOI22X1 U2097 (.Y(n1931), 
	.D(n1506), 
	.C(n2290), 
	.B(n2289), 
	.A(n1696));
   AOI22X1 U2098 (.Y(n1926), 
	.D(FE_OFN6_n1952), 
	.C(n1467), 
	.B(n1609), 
	.A(n988));
   NAND3X1 U2099 (.Y(n1928), 
	.C(n1706), 
	.B(n1156), 
	.A(n1927));
   AOI21X1 U2100 (.Y(n1930), 
	.C(n1101), 
	.B(n1518), 
	.A(n1953));
   AOI22X1 U2101 (.Y(n1929), 
	.D(n1956), 
	.C(n1172), 
	.B(n1957), 
	.A(n1617));
   AOI22X1 U2102 (.Y(n1936), 
	.D(n1505), 
	.C(n2290), 
	.B(n1610), 
	.A(n988));
   AOI22X1 U2103 (.Y(n1932), 
	.D(FE_OFN6_n1952), 
	.C(n1466), 
	.B(n1521), 
	.A(n1953));
   NAND3X1 U2104 (.Y(n1933), 
	.C(n1706), 
	.B(n809), 
	.A(n1127));
   AOI21X1 U2105 (.Y(n1935), 
	.C(n1102), 
	.B(n2289), 
	.A(n1693));
   AOI22X1 U2106 (.Y(n1934), 
	.D(n1956), 
	.C(n1181), 
	.B(n1957), 
	.A(n1618));
   AOI22X1 U2107 (.Y(n1941), 
	.D(n1504), 
	.C(n2290), 
	.B(n1611), 
	.A(n988));
   AOI22X1 U2108 (.Y(n1937), 
	.D(FE_OFN6_n1952), 
	.C(n1465), 
	.B(n2289), 
	.A(n1698));
   AOI21X1 U2109 (.Y(n1940), 
	.C(n1109), 
	.B(n1517), 
	.A(n1953));
   AOI22X1 U2110 (.Y(n1939), 
	.D(n1956), 
	.C(n1182), 
	.B(n1957), 
	.A(n1619));
   AOI22X1 U2111 (.Y(n1946), 
	.D(n1503), 
	.C(n2290), 
	.B(n1612), 
	.A(n988));
   AOI22X1 U2112 (.Y(n1942), 
	.D(FE_OFN6_n1952), 
	.C(n1464), 
	.B(n1520), 
	.A(n1953));
   NAND3X1 U2113 (.Y(n1943), 
	.C(n1706), 
	.B(n809), 
	.A(n1128));
   AOI21X1 U2114 (.Y(n1945), 
	.C(n1103), 
	.B(n2289), 
	.A(n1694));
   AOI22X1 U2115 (.Y(n1944), 
	.D(n1956), 
	.C(n1183), 
	.B(n1957), 
	.A(n1620));
   AOI22X1 U2116 (.Y(n1951), 
	.D(n1502), 
	.C(n2290), 
	.B(n1613), 
	.A(n988));
   AOI22X1 U2117 (.Y(n1947), 
	.D(FE_OFN6_n1952), 
	.C(n1463), 
	.B(n2289), 
	.A(n1699));
   AOI21X1 U2118 (.Y(n1950), 
	.C(n1110), 
	.B(n1513), 
	.A(n1953));
   AOI22X1 U2119 (.Y(n1949), 
	.D(n1956), 
	.C(n1184), 
	.B(n1957), 
	.A(n1621));
   AOI22X1 U2120 (.Y(n1960), 
	.D(n1501), 
	.C(n2290), 
	.B(n1614), 
	.A(n988));
   AOI22X1 U2121 (.Y(n1954), 
	.D(FE_OFN6_n1952), 
	.C(n1462), 
	.B(n1519), 
	.A(n1953));
   NAND3X1 U2122 (.Y(n1955), 
	.C(n1706), 
	.B(n809), 
	.A(n1129));
   AOI21X1 U2123 (.Y(n1959), 
	.C(n1104), 
	.B(n2289), 
	.A(n1692));
   AOI22X1 U2124 (.Y(n1958), 
	.D(n1956), 
	.C(n1185), 
	.B(n1957), 
	.A(n1622));
   INVX1 U2125 (.Y(n806), 
	.A(n1561));
   NOR2X1 U2126 (.Y(\xgmii_tx.TXCLK ), 
	.B(n806), 
	.A(n1571));
   INVX1 U2127 (.Y(n1962), 
	.A(FE_OFN2_clks_rst));
   AOI21X1 U2128 (.Y(n1982), 
	.C(n1458), 
	.B(n1962), 
	.A(n1436));
   NOR3X1 U2129 (.Y(n1963), 
	.C(n1666), 
	.B(n1443), 
	.A(n1495));
   INVX1 U2130 (.Y(n2024), 
	.A(n1672));
   NAND3X1 U2131 (.Y(n1964), 
	.C(n1448), 
	.B(n2024), 
	.A(n1963));
   NOR3X1 U2132 (.Y(n1965), 
	.C(n1206), 
	.B(n1704), 
	.A(n1491));
   BUFX2 U2133 (.Y(n2128), 
	.A(cur_state_clk[0]));
   INVX1 U2134 (.Y(n2137), 
	.A(n985));
   NOR3X1 U2135 (.Y(n1966), 
	.C(n1673), 
	.B(n1965), 
	.A(lpi));
   NAND3X1 U2136 (.Y(n2014), 
	.C(n1495), 
	.B(n1704), 
	.A(n1491));
   NAND3X1 U2137 (.Y(n2029), 
	.C(n2025), 
	.B(n1449), 
	.A(n1672));
   AOI21X1 U2138 (.Y(n1980), 
	.C(n1701), 
	.B(n1381), 
	.A(n1966));
   NOR3X1 U2139 (.Y(n1968), 
	.C(n1967), 
	.B(n1679), 
	.A(n1475));
   INVX1 U2140 (.Y(n2145), 
	.A(n1656));
   INVX1 U2141 (.Y(n2141), 
	.A(n1664));
   NAND3X1 U2142 (.Y(n1969), 
	.C(n2141), 
	.B(n2145), 
	.A(n1968));
   NOR3X1 U2143 (.Y(n1979), 
	.C(n1207), 
	.B(n1678), 
	.A(n1477));
   NOR3X1 U2144 (.Y(n1970), 
	.C(n1682), 
	.B(n1481), 
	.A(n1485));
   INVX1 U2145 (.Y(n2099), 
	.A(n1653));
   NOR3X1 U2146 (.Y(n1971), 
	.C(n1681), 
	.B(n1483), 
	.A(n1498));
   INVX1 U2147 (.Y(n2084), 
	.A(n1652));
   NOR3X1 U2148 (.Y(n1972), 
	.C(n1683), 
	.B(n1479), 
	.A(n1439));
   INVX1 U2149 (.Y(n2131), 
	.A(n1651));
   NOR3X1 U2150 (.Y(n1974), 
	.C(n1211), 
	.B(n1680), 
	.A(n1473));
   INVX1 U2151 (.Y(n2107), 
	.A(n1654));
   INVX1 U2152 (.Y(n2113), 
	.A(n1657));
   NAND3X1 U2153 (.Y(n1975), 
	.C(n2113), 
	.B(n2107), 
	.A(n1974));
   NOR3X1 U2154 (.Y(n1978), 
	.C(n1208), 
	.B(n1204), 
	.A(n1203));
   NAND3X1 U2155 (.Y(n2002), 
	.C(n1978), 
	.B(n1979), 
	.A(n2059));
   AOI22X1 U2156 (.Y(n1981), 
	.D(n1424), 
	.C(n1186), 
	.B(n1689), 
	.A(n1961));
   OR2X1 U2157 (.Y(n1995), 
	.B(n1384), 
	.A(n1018));
   INVX1 U2158 (.Y(n2020), 
	.A(lpi));
   OAI21X1 U2159 (.Y(n1985), 
	.C(n1061), 
	.B(n1689), 
	.A(n1400));
   AOI22X1 U2160 (.Y(n1986), 
	.D(n1985), 
	.C(start_transmit), 
	.B(n1995), 
	.A(n1471));
   AOI22X1 U2161 (.Y(n1991), 
	.D(n1987), 
	.C(n1497), 
	.B(n1384), 
	.A(n807));
   NAND3X1 U2162 (.Y(nxt_state[3]), 
	.C(n1990), 
	.B(n1157), 
	.A(n1993));
   AOI22X1 U2163 (.Y(n1994), 
	.D(lpi), 
	.C(n1380), 
	.B(n1995), 
	.A(n808));
   NAND3X1 U2164 (.Y(nxt_state[2]), 
	.C(n1455), 
	.B(n1993), 
	.A(n1130));
   NAND3X1 U2165 (.Y(nxt_state[1]), 
	.C(n1201), 
	.B(n1997), 
	.A(n809));
   NOR3X1 U2166 (.Y(n1998), 
	.C(n1389), 
	.B(n1382), 
	.A(n1603));
   INVX1 U2167 (.Y(n2032), 
	.A(n2128));
   INVX1 U2168 (.Y(n2000), 
	.A(n1690));
   AOI22X1 U2169 (.Y(n803), 
	.D(n2000), 
	.C(n810), 
	.B(n985), 
	.A(n1690));
   AOI22X1 U2170 (.Y(n2003), 
	.D(n2020), 
	.C(n2010), 
	.B(n1457), 
	.A(lpi));
   AOI21X1 U2171 (.Y(n2001), 
	.C(n2128), 
	.B(n2137), 
	.A(FE_OFCN5_FE_OFN3_clks_rst));
   OAI21X1 U2172 (.Y(n2031), 
	.C(n1056), 
	.B(n2137), 
	.A(n1424));
   OAI21X1 U2173 (.Y(n802), 
	.C(n1356), 
	.B(n1457), 
	.A(n1604));
   INVX1 U2174 (.Y(n2004), 
	.A(n1704));
   AOI22X1 U2175 (.Y(n801), 
	.D(n2004), 
	.C(n1370), 
	.B(n2010), 
	.A(n1704));
   AOI21X1 U2176 (.Y(n2007), 
	.C(n1673), 
	.B(lpi), 
	.A(n2004));
   NAND3X1 U2177 (.Y(n2006), 
	.C(n1490), 
	.B(n1704), 
	.A(n2005));
   OAI21X1 U2178 (.Y(n800), 
	.C(n1057), 
	.B(n1369), 
	.A(n1490));
   AOI21X1 U2179 (.Y(n2009), 
	.C(n1368), 
	.B(n1490), 
	.A(n2005));
   NAND3X1 U2180 (.Y(n2008), 
	.C(n2005), 
	.B(n1704), 
	.A(n1491));
   AOI22X1 U2181 (.Y(n799), 
	.D(n1494), 
	.C(n1187), 
	.B(n1138), 
	.A(n1495));
   AOI21X1 U2182 (.Y(n2011), 
	.C(n1673), 
	.B(lpi), 
	.A(n1459));
   INVX1 U2183 (.Y(n2015), 
	.A(n1017));
   OAI21X1 U2184 (.Y(n798), 
	.C(n1062), 
	.B(n1578), 
	.A(n1459));
   INVX1 U2185 (.Y(n2019), 
	.A(n1666));
   AOI21X1 U2186 (.Y(n2018), 
	.C(n2015), 
	.B(n1442), 
	.A(n2005));
   NAND3X1 U2187 (.Y(n2017), 
	.C(n2019), 
	.B(n1373), 
	.A(n2005));
   OAI21X1 U2188 (.Y(n797), 
	.C(n1058), 
	.B(n1159), 
	.A(n2019));
   OAI21X1 U2189 (.Y(n2023), 
	.C(n2010), 
	.B(n2020), 
	.A(n2025));
   INVX1 U2190 (.Y(n2022), 
	.A(n2023));
   AOI22X1 U2191 (.Y(n796), 
	.D(n2024), 
	.C(n1189), 
	.B(n2022), 
	.A(n1672));
   AOI21X1 U2192 (.Y(n2027), 
	.C(n2023), 
	.B(n2024), 
	.A(n2005));
   NAND3X1 U2193 (.Y(n2026), 
	.C(n2005), 
	.B(n2025), 
	.A(n1672));
   AOI22X1 U2194 (.Y(n795), 
	.D(n1448), 
	.C(n1188), 
	.B(n1139), 
	.A(n1449));
   AOI22X1 U2195 (.Y(n794), 
	.D(n2030), 
	.C(n2137), 
	.B(n2031), 
	.A(n2032));
   OAI21X1 U2196 (.Y(n2036), 
	.C(n985), 
	.B(n1690), 
	.A(n2128));
   AOI22X1 U2197 (.Y(n2033), 
	.D(n1433), 
	.C(n1690), 
	.B(n2036), 
	.A(n1446));
   INVX1 U2198 (.Y(n793), 
	.A(n861));
   OAI21X1 U2199 (.Y(n2037), 
	.C(n1661), 
	.B(n1433), 
	.A(n2036));
   OAI21X1 U2200 (.Y(n792), 
	.C(n2037), 
	.B(n1160), 
	.A(n1661));
   OAI21X1 U2201 (.Y(n2043), 
	.C(n985), 
	.B(n2039), 
	.A(n2128));
   AOI22X1 U2202 (.Y(n2040), 
	.D(n2043), 
	.C(n1667), 
	.B(n1415), 
	.A(n2039));
   INVX1 U2203 (.Y(n791), 
	.A(n862));
   OAI21X1 U2204 (.Y(n2044), 
	.C(n1662), 
	.B(n1415), 
	.A(n2043));
   OAI21X1 U2205 (.Y(n790), 
	.C(n2044), 
	.B(n1161), 
	.A(n1662));
   OAI21X1 U2206 (.Y(n2050), 
	.C(n985), 
	.B(n2046), 
	.A(n2128));
   AOI22X1 U2207 (.Y(n2047), 
	.D(n2050), 
	.C(n1668), 
	.B(n1416), 
	.A(n2046));
   INVX1 U2208 (.Y(n789), 
	.A(n863));
   OAI21X1 U2209 (.Y(n2051), 
	.C(n1663), 
	.B(n1416), 
	.A(n2050));
   OAI21X1 U2210 (.Y(n788), 
	.C(n2051), 
	.B(n1162), 
	.A(n1663));
   OAI21X1 U2211 (.Y(n2055), 
	.C(n985), 
	.B(n2053), 
	.A(n2128));
   AOI22X1 U2212 (.Y(n2054), 
	.D(n2055), 
	.C(n1669), 
	.B(n1392), 
	.A(n2053));
   INVX1 U2213 (.Y(n787), 
	.A(n864));
   NAND3X1 U2214 (.Y(n2058), 
	.C(n2059), 
	.B(n1999), 
	.A(n1476));
   OAI21X1 U2215 (.Y(n2057), 
	.C(n1477), 
	.B(n2055), 
	.A(n1392));
   AND2X1 U2216 (.Y(n2061), 
	.B(n1477), 
	.A(n2059));
   OAI21X1 U2217 (.Y(n2062), 
	.C(n985), 
	.B(n2061), 
	.A(n2128));
   AOI22X1 U2218 (.Y(n2060), 
	.D(n2062), 
	.C(n1678), 
	.B(n1393), 
	.A(n2061));
   INVX1 U2219 (.Y(n785), 
	.A(n865));
   NAND3X1 U2220 (.Y(n2065), 
	.C(n2066), 
	.B(n1999), 
	.A(n1474));
   OAI21X1 U2221 (.Y(n2064), 
	.C(n1475), 
	.B(n2062), 
	.A(n1393));
   AND2X1 U2222 (.Y(n2068), 
	.B(n1475), 
	.A(n2066));
   OAI21X1 U2223 (.Y(n2070), 
	.C(n985), 
	.B(n2068), 
	.A(n2128));
   AOI22X1 U2224 (.Y(n2067), 
	.D(n2070), 
	.C(n1679), 
	.B(n1394), 
	.A(n2068));
   INVX1 U2225 (.Y(n783), 
	.A(n866));
   INVX1 U2226 (.Y(n2069), 
	.A(n1671));
   NAND3X1 U2227 (.Y(n2073), 
	.C(n2074), 
	.B(n1999), 
	.A(n2069));
   OAI21X1 U2228 (.Y(n2072), 
	.C(n1671), 
	.B(n2070), 
	.A(n1394));
   OAI21X1 U2229 (.Y(n2077), 
	.C(n985), 
	.B(n2076), 
	.A(n2128));
   AOI22X1 U2230 (.Y(n2075), 
	.D(n2077), 
	.C(n1674), 
	.B(n1395), 
	.A(n2076));
   INVX1 U2231 (.Y(n781), 
	.A(n867));
   NAND3X1 U2232 (.Y(n2080), 
	.C(n2081), 
	.B(n1999), 
	.A(n1482));
   OAI21X1 U2233 (.Y(n2079), 
	.C(n1483), 
	.B(n2077), 
	.A(n1395));
   AND2X1 U2234 (.Y(n2083), 
	.B(n1483), 
	.A(n2081));
   OAI21X1 U2235 (.Y(n2085), 
	.C(n985), 
	.B(n2083), 
	.A(n2128));
   AOI22X1 U2236 (.Y(n2082), 
	.D(n2085), 
	.C(n1681), 
	.B(n1396), 
	.A(n2083));
   INVX1 U2237 (.Y(n779), 
	.A(n868));
   NAND3X1 U2238 (.Y(n2088), 
	.C(n2089), 
	.B(n1999), 
	.A(n2084));
   OAI21X1 U2239 (.Y(n2087), 
	.C(n1652), 
	.B(n2085), 
	.A(n1396));
   OAI21X1 U2240 (.Y(n2092), 
	.C(n985), 
	.B(n2091), 
	.A(n2128));
   AOI22X1 U2241 (.Y(n2090), 
	.D(n2092), 
	.C(n1498), 
	.B(n1606), 
	.A(n2091));
   INVX1 U2242 (.Y(n777), 
	.A(n869));
   AND2X1 U2243 (.Y(n2096), 
	.B(n1498), 
	.A(n2091));
   NAND3X1 U2244 (.Y(n2095), 
	.C(n2096), 
	.B(n1999), 
	.A(n1480));
   OAI21X1 U2245 (.Y(n2094), 
	.C(n1481), 
	.B(n2092), 
	.A(n1606));
   AND2X1 U2246 (.Y(n2098), 
	.B(n1481), 
	.A(n2096));
   OAI21X1 U2247 (.Y(n2100), 
	.C(n985), 
	.B(n2098), 
	.A(n2128));
   AOI22X1 U2248 (.Y(n2097), 
	.D(n2100), 
	.C(n1682), 
	.B(n1397), 
	.A(n2098));
   INVX1 U2249 (.Y(n775), 
	.A(n870));
   NAND3X1 U2250 (.Y(n2103), 
	.C(n2104), 
	.B(n1999), 
	.A(n2099));
   OAI21X1 U2251 (.Y(n2102), 
	.C(n1653), 
	.B(n2100), 
	.A(n1397));
   OAI21X1 U2252 (.Y(n2108), 
	.C(n985), 
	.B(n2106), 
	.A(n2128));
   AND2X1 U2253 (.Y(n2112), 
	.B(n1485), 
	.A(n2106));
   NAND3X1 U2254 (.Y(n2111), 
	.C(n2112), 
	.B(n1999), 
	.A(n2107));
   OAI21X1 U2255 (.Y(n2110), 
	.C(n1654), 
	.B(n2108), 
	.A(n1366));
   AND2X1 U2256 (.Y(n2117), 
	.B(n1999), 
	.A(n2113));
   OAI21X1 U2257 (.Y(n2116), 
	.C(n985), 
	.B(n2115), 
	.A(n2128));
   AOI22X1 U2258 (.Y(n2114), 
	.D(n2116), 
	.C(n1657), 
	.B(n2117), 
	.A(n2115));
   INVX1 U2259 (.Y(n771), 
	.A(n871));
   NAND3X1 U2260 (.Y(n2119), 
	.C(n2120), 
	.B(n1999), 
	.A(n1472));
   OAI21X1 U2261 (.Y(n2118), 
	.C(n1473), 
	.B(n2116), 
	.A(n2117));
   AND2X1 U2262 (.Y(n2122), 
	.B(n1473), 
	.A(n2120));
   OAI21X1 U2263 (.Y(n2123), 
	.C(n985), 
	.B(n2122), 
	.A(n2128));
   AOI22X1 U2264 (.Y(n2121), 
	.D(n2123), 
	.C(n1680), 
	.B(n1398), 
	.A(n2122));
   INVX1 U2265 (.Y(n769), 
	.A(n872));
   NAND3X1 U2266 (.Y(n2126), 
	.C(n2127), 
	.B(n1999), 
	.A(n1478));
   OAI21X1 U2267 (.Y(n2125), 
	.C(n1479), 
	.B(n2123), 
	.A(n1398));
   AND2X1 U2268 (.Y(n2130), 
	.B(n1479), 
	.A(n2127));
   OAI21X1 U2269 (.Y(n2132), 
	.C(n985), 
	.B(n2130), 
	.A(n2128));
   AOI22X1 U2270 (.Y(n2129), 
	.D(n2132), 
	.C(n1683), 
	.B(n1399), 
	.A(n2130));
   INVX1 U2271 (.Y(n767), 
	.A(n873));
   NAND3X1 U2272 (.Y(n2135), 
	.C(n2136), 
	.B(n1999), 
	.A(n2131));
   OAI21X1 U2273 (.Y(n2134), 
	.C(n1651), 
	.B(n2132), 
	.A(n1399));
   AOI21X1 U2274 (.Y(n2139), 
	.C(n2137), 
	.B(n1383), 
	.A(n1999));
   OR2X1 U2275 (.Y(n2140), 
	.B(n1383), 
	.A(n810));
   AOI22X1 U2276 (.Y(n765), 
	.D(n2141), 
	.C(n2140), 
	.B(n1376), 
	.A(n1664));
   OAI21X1 U2277 (.Y(n2144), 
	.C(n1376), 
	.B(n810), 
	.A(n1664));
   AOI22X1 U2278 (.Y(n2142), 
	.D(n2145), 
	.C(n1379), 
	.B(n2144), 
	.A(n1656));
   INVX1 U2279 (.Y(n764), 
	.A(n874));
   AOI21X1 U2280 (.Y(n2146), 
	.C(n2144), 
	.B(n2145), 
	.A(n1999));
   MUX2X1 U2281 (.Y(n763), 
	.S(n1439), 
	.B(n1137), 
	.A(n1142));
   OAI21X1 U2282 (.Y(n762), 
	.C(n1063), 
	.B(pop_pkt), 
	.A(n2149));
   OAI21X1 U2283 (.Y(n2158), 
	.C(n1362), 
	.B(n1440), 
	.A(n1705));
   NOR3X1 U2284 (.Y(n2278), 
	.C(n1438), 
	.B(n2158), 
	.A(n1708));
   OR2X1 U2285 (.Y(n2288), 
	.B(n1388), 
	.A(n2153));
   OAI21X1 U2286 (.Y(n2155), 
	.C(n2164), 
	.B(n2288), 
	.A(n2154));
   OAI21X1 U2287 (.Y(n761), 
	.C(n2155), 
	.B(n2166), 
	.A(FE_OFN7_n2278));
   OAI21X1 U2288 (.Y(n2159), 
	.C(n1525), 
	.B(n1438), 
	.A(n2158));
   NAND3X1 U2289 (.Y(n2162), 
	.C(n2159), 
	.B(n1445), 
	.A(n1363));
   AOI21X1 U2290 (.Y(n2165), 
	.C(n1105), 
	.B(n1134), 
	.A(n1705));
   AOI22X1 U2291 (.Y(n760), 
	.D(n1708), 
	.C(n1524), 
	.B(n1140), 
	.A(n2164));
   OAI21X1 U2292 (.Y(n759), 
	.C(n1064), 
	.B(n2264), 
	.A(n2276));
   INVX1 U2293 (.Y(n2171), 
	.A(n1665));
   OR2X1 U2294 (.Y(n2263), 
	.B(n1525), 
	.A(n2264));
   NAND3X1 U2295 (.Y(n2170), 
	.C(n1202), 
	.B(n2263), 
	.A(n2175));
   MUX2X1 U2296 (.Y(n758), 
	.S(n1351), 
	.B(n1665), 
	.A(n2171));
   NAND3X1 U2297 (.Y(n2176), 
	.C(n1455), 
	.B(n1450), 
	.A(n2174));
   OAI21X1 U2298 (.Y(n2177), 
	.C(n1705), 
	.B(n2175), 
	.A(n1136));
   OAI21X1 U2299 (.Y(n757), 
	.C(n2177), 
	.B(n1510), 
	.A(n1705));
   AOI22X1 U2300 (.Y(n2178), 
	.D(pop_pkt), 
	.C(pkt_data[63]), 
	.B(n1414), 
	.A(n2257));
   INVX1 U2301 (.Y(n756), 
	.A(n1531));
   OAI21X1 U2302 (.Y(n755), 
	.C(n1566), 
	.B(pop_pkt), 
	.A(n1487));
   OAI21X1 U2303 (.Y(n754), 
	.C(n1065), 
	.B(pop_pkt), 
	.A(n2181));
   AOI22X1 U2304 (.Y(n2182), 
	.D(pop_pkt), 
	.C(bvalidin[3]), 
	.B(n1460), 
	.A(n2248));
   INVX1 U2305 (.Y(n753), 
	.A(n1532));
   OAI21X1 U2306 (.Y(n752), 
	.C(n1567), 
	.B(pop_pkt), 
	.A(n1492));
   INVX2 U2307 (.Y(n2248), 
	.A(pop_pkt));
   AOI22X1 U2308 (.Y(n2184), 
	.D(pop_pkt), 
	.C(bvalidin[5]), 
	.B(n1691), 
	.A(n2248));
   INVX1 U2309 (.Y(n751), 
	.A(n875));
   AOI22X1 U2310 (.Y(n2185), 
	.D(pop_pkt), 
	.C(bvalidin[6]), 
	.B(n1496), 
	.A(n2248));
   INVX1 U2311 (.Y(n750), 
	.A(n876));
   AOI22X1 U2312 (.Y(n2186), 
	.D(pop_pkt), 
	.C(bvalidin[7]), 
	.B(n1444), 
	.A(n2257));
   INVX1 U2313 (.Y(n749), 
	.A(n877));
   AOI22X1 U2314 (.Y(n2187), 
	.D(pop_pkt), 
	.C(pkt_ctrl[0]), 
	.B(n1638), 
	.A(n2257));
   INVX1 U2315 (.Y(n748), 
	.A(n878));
   AOI22X1 U2316 (.Y(n2188), 
	.D(pop_pkt), 
	.C(pkt_ctrl[1]), 
	.B(n1437), 
	.A(n2257));
   INVX1 U2317 (.Y(n747), 
	.A(n1533));
   AOI22X1 U2318 (.Y(n2189), 
	.D(pop_pkt), 
	.C(pkt_ctrl[2]), 
	.B(n1594), 
	.A(n2257));
   INVX1 U2319 (.Y(n746), 
	.A(n879));
   AOI22X1 U2320 (.Y(n2190), 
	.D(pop_pkt), 
	.C(pkt_ctrl[3]), 
	.B(n1390), 
	.A(n2248));
   INVX1 U2321 (.Y(n745), 
	.A(n880));
   AOI22X1 U2322 (.Y(n2191), 
	.D(pop_pkt), 
	.C(pkt_ctrl[4]), 
	.B(n1650), 
	.A(n2248));
   INVX1 U2323 (.Y(n744), 
	.A(n881));
   AOI22X1 U2324 (.Y(n2192), 
	.D(pop_pkt), 
	.C(pkt_ctrl[5]), 
	.B(n1435), 
	.A(n2257));
   INVX1 U2325 (.Y(n743), 
	.A(n1534));
   AOI22X1 U2326 (.Y(n2193), 
	.D(pop_pkt), 
	.C(pkt_ctrl[6]), 
	.B(n1649), 
	.A(n2257));
   INVX1 U2327 (.Y(n742), 
	.A(n882));
   AOI22X1 U2328 (.Y(n2194), 
	.D(pop_pkt), 
	.C(pkt_ctrl[7]), 
	.B(n1434), 
	.A(n2248));
   INVX1 U2329 (.Y(n741), 
	.A(n1535));
   AOI22X1 U2330 (.Y(n2195), 
	.D(pop_pkt), 
	.C(pkt_data[0]), 
	.B(n1607), 
	.A(n2257));
   INVX1 U2331 (.Y(n740), 
	.A(n883));
   AOI22X1 U2332 (.Y(n2196), 
	.D(pop_pkt), 
	.C(pkt_data[1]), 
	.B(n1608), 
	.A(n2248));
   INVX1 U2333 (.Y(n739), 
	.A(n884));
   AOI22X1 U2334 (.Y(n2197), 
	.D(pop_pkt), 
	.C(pkt_data[2]), 
	.B(n1609), 
	.A(n2248));
   INVX1 U2335 (.Y(n738), 
	.A(n885));
   AOI22X1 U2336 (.Y(n2198), 
	.D(pop_pkt), 
	.C(pkt_data[3]), 
	.B(n1610), 
	.A(n2257));
   INVX1 U2337 (.Y(n737), 
	.A(n886));
   AOI22X1 U2338 (.Y(n2199), 
	.D(pop_pkt), 
	.C(pkt_data[4]), 
	.B(n1611), 
	.A(n2257));
   INVX1 U2339 (.Y(n736), 
	.A(n887));
   AOI22X1 U2340 (.Y(n2200), 
	.D(pop_pkt), 
	.C(pkt_data[5]), 
	.B(n1612), 
	.A(n2257));
   INVX1 U2341 (.Y(n735), 
	.A(n888));
   AOI22X1 U2342 (.Y(n2201), 
	.D(pop_pkt), 
	.C(pkt_data[6]), 
	.B(n1613), 
	.A(n2248));
   INVX1 U2343 (.Y(n734), 
	.A(n889));
   AOI22X1 U2344 (.Y(n2202), 
	.D(pop_pkt), 
	.C(pkt_data[7]), 
	.B(n1614), 
	.A(n2248));
   INVX1 U2345 (.Y(n733), 
	.A(n890));
   AOI22X1 U2346 (.Y(n2203), 
	.D(pop_pkt), 
	.C(pkt_data[8]), 
	.B(n1413), 
	.A(n2248));
   INVX1 U2347 (.Y(n732), 
	.A(n891));
   AOI22X1 U2348 (.Y(n2204), 
	.D(pop_pkt), 
	.C(pkt_data[9]), 
	.B(n1412), 
	.A(n2257));
   INVX1 U2349 (.Y(n731), 
	.A(n1536));
   AOI22X1 U2350 (.Y(n2205), 
	.D(pop_pkt), 
	.C(pkt_data[10]), 
	.B(n1411), 
	.A(n2257));
   INVX1 U2351 (.Y(n730), 
	.A(n1537));
   AOI22X1 U2352 (.Y(n2206), 
	.D(pop_pkt), 
	.C(pkt_data[11]), 
	.B(n1410), 
	.A(n2257));
   INVX1 U2353 (.Y(n729), 
	.A(n1538));
   AOI22X1 U2354 (.Y(n2207), 
	.D(pop_pkt), 
	.C(pkt_data[12]), 
	.B(n1409), 
	.A(n2257));
   INVX1 U2355 (.Y(n728), 
	.A(n1539));
   AOI22X1 U2356 (.Y(n2208), 
	.D(pop_pkt), 
	.C(pkt_data[13]), 
	.B(n1408), 
	.A(n2248));
   INVX1 U2357 (.Y(n727), 
	.A(n892));
   AOI22X1 U2358 (.Y(n2209), 
	.D(pop_pkt), 
	.C(pkt_data[14]), 
	.B(n1407), 
	.A(n2248));
   INVX1 U2359 (.Y(n726), 
	.A(n893));
   INVX1 U2360 (.Y(n2240), 
	.A(n2257));
   AOI22X1 U2361 (.Y(n2210), 
	.D(n2240), 
	.C(pkt_data[15]), 
	.B(n1406), 
	.A(n2257));
   INVX1 U2362 (.Y(n725), 
	.A(n894));
   INVX1 U2363 (.Y(n2219), 
	.A(n2257));
   AOI22X1 U2364 (.Y(n2211), 
	.D(n2219), 
	.C(pkt_data[16]), 
	.B(n1595), 
	.A(n2257));
   INVX1 U2365 (.Y(n724), 
	.A(n895));
   AOI22X1 U2366 (.Y(n2212), 
	.D(n2233), 
	.C(pkt_data[17]), 
	.B(n1596), 
	.A(n2257));
   INVX1 U2367 (.Y(n723), 
	.A(n896));
   AOI22X1 U2368 (.Y(n2213), 
	.D(n2240), 
	.C(pkt_data[18]), 
	.B(n1597), 
	.A(n2248));
   INVX1 U2369 (.Y(n722), 
	.A(n897));
   AOI22X1 U2370 (.Y(n2214), 
	.D(n2219), 
	.C(pkt_data[19]), 
	.B(n1598), 
	.A(n2248));
   INVX1 U2371 (.Y(n721), 
	.A(n898));
   AOI22X1 U2372 (.Y(n2215), 
	.D(n2233), 
	.C(pkt_data[20]), 
	.B(n1639), 
	.A(n2248));
   INVX1 U2373 (.Y(n720), 
	.A(n899));
   AOI22X1 U2374 (.Y(n2216), 
	.D(n2219), 
	.C(pkt_data[21]), 
	.B(n1599), 
	.A(n2257));
   INVX1 U2375 (.Y(n719), 
	.A(n900));
   AOI22X1 U2376 (.Y(n2217), 
	.D(n2219), 
	.C(pkt_data[22]), 
	.B(n1640), 
	.A(n2257));
   INVX1 U2377 (.Y(n718), 
	.A(n901));
   AOI22X1 U2378 (.Y(n2218), 
	.D(n2240), 
	.C(pkt_data[23]), 
	.B(n1605), 
	.A(n2257));
   INVX1 U2379 (.Y(n717), 
	.A(n902));
   AOI22X1 U2380 (.Y(n2220), 
	.D(n2219), 
	.C(pkt_data[24]), 
	.B(n1378), 
	.A(n2248));
   INVX1 U2381 (.Y(n716), 
	.A(n1540));
   AOI22X1 U2382 (.Y(n2221), 
	.D(n2219), 
	.C(pkt_data[25]), 
	.B(n1423), 
	.A(n2248));
   INVX1 U2383 (.Y(n715), 
	.A(n903));
   AOI22X1 U2384 (.Y(n2222), 
	.D(n2219), 
	.C(pkt_data[26]), 
	.B(n1422), 
	.A(n2248));
   INVX1 U2385 (.Y(n714), 
	.A(n904));
   AOI22X1 U2386 (.Y(n2223), 
	.D(n2233), 
	.C(pkt_data[27]), 
	.B(n1421), 
	.A(n2257));
   INVX1 U2387 (.Y(n713), 
	.A(n905));
   INVX1 U2388 (.Y(n2233), 
	.A(n2257));
   AOI22X1 U2389 (.Y(n2224), 
	.D(n2233), 
	.C(pkt_data[28]), 
	.B(n1420), 
	.A(n2257));
   INVX1 U2390 (.Y(n712), 
	.A(n906));
   AOI22X1 U2391 (.Y(n2225), 
	.D(n2233), 
	.C(pkt_data[29]), 
	.B(n1419), 
	.A(n2248));
   INVX1 U2392 (.Y(n711), 
	.A(n907));
   AOI22X1 U2393 (.Y(n2226), 
	.D(n2240), 
	.C(pkt_data[30]), 
	.B(n1418), 
	.A(n2257));
   INVX1 U2394 (.Y(n710), 
	.A(n908));
   AOI22X1 U2395 (.Y(n2227), 
	.D(n2233), 
	.C(pkt_data[31]), 
	.B(n1417), 
	.A(n2248));
   INVX1 U2396 (.Y(n709), 
	.A(n1541));
   AOI22X1 U2397 (.Y(n2228), 
	.D(n2219), 
	.C(pkt_data[32]), 
	.B(n1615), 
	.A(n2248));
   INVX1 U2398 (.Y(n708), 
	.A(n909));
   AOI22X1 U2399 (.Y(n2229), 
	.D(n2233), 
	.C(pkt_data[33]), 
	.B(n1616), 
	.A(n2257));
   INVX1 U2400 (.Y(n707), 
	.A(n910));
   AOI22X1 U2401 (.Y(n2230), 
	.D(n2233), 
	.C(pkt_data[34]), 
	.B(n1617), 
	.A(n2257));
   INVX1 U2402 (.Y(n706), 
	.A(n911));
   AOI22X1 U2403 (.Y(n2231), 
	.D(n2240), 
	.C(pkt_data[35]), 
	.B(n1618), 
	.A(n2257));
   INVX1 U2404 (.Y(n705), 
	.A(n912));
   AOI22X1 U2405 (.Y(n2232), 
	.D(n2233), 
	.C(pkt_data[36]), 
	.B(n1619), 
	.A(n2248));
   INVX1 U2406 (.Y(n704), 
	.A(n913));
   AOI22X1 U2407 (.Y(n2234), 
	.D(n2233), 
	.C(pkt_data[37]), 
	.B(n1620), 
	.A(n2248));
   INVX1 U2408 (.Y(n703), 
	.A(n914));
   AOI22X1 U2409 (.Y(n2235), 
	.D(pop_pkt), 
	.C(pkt_data[38]), 
	.B(n1621), 
	.A(n2248));
   INVX1 U2410 (.Y(n702), 
	.A(n915));
   AOI22X1 U2411 (.Y(n2236), 
	.D(pop_pkt), 
	.C(pkt_data[39]), 
	.B(n1622), 
	.A(n2257));
   INVX1 U2412 (.Y(n701), 
	.A(n916));
   AOI22X1 U2413 (.Y(n2237), 
	.D(pop_pkt), 
	.C(pkt_data[40]), 
	.B(n1623), 
	.A(n2257));
   INVX1 U2414 (.Y(n700), 
	.A(n917));
   AOI22X1 U2415 (.Y(n2238), 
	.D(n2240), 
	.C(pkt_data[41]), 
	.B(n1624), 
	.A(n2257));
   INVX1 U2416 (.Y(n699), 
	.A(n918));
   AOI22X1 U2417 (.Y(n2239), 
	.D(pop_pkt), 
	.C(pkt_data[42]), 
	.B(n1625), 
	.A(n2248));
   INVX1 U2418 (.Y(n698), 
	.A(n919));
   AOI22X1 U2419 (.Y(n2241), 
	.D(n2240), 
	.C(pkt_data[43]), 
	.B(n1626), 
	.A(n2248));
   INVX1 U2420 (.Y(n697), 
	.A(n920));
   AOI22X1 U2421 (.Y(n2242), 
	.D(n2240), 
	.C(pkt_data[44]), 
	.B(n1627), 
	.A(n2248));
   INVX1 U2422 (.Y(n696), 
	.A(n921));
   AOI22X1 U2423 (.Y(n2243), 
	.D(n2240), 
	.C(pkt_data[45]), 
	.B(n1628), 
	.A(n2257));
   INVX1 U2424 (.Y(n695), 
	.A(n922));
   AOI22X1 U2425 (.Y(n2244), 
	.D(pop_pkt), 
	.C(pkt_data[46]), 
	.B(n1629), 
	.A(n2257));
   INVX1 U2426 (.Y(n694), 
	.A(n923));
   AOI22X1 U2427 (.Y(n2245), 
	.D(n2233), 
	.C(pkt_data[47]), 
	.B(n1630), 
	.A(n2257));
   INVX1 U2428 (.Y(n693), 
	.A(n924));
   AOI22X1 U2429 (.Y(n2246), 
	.D(n2233), 
	.C(pkt_data[48]), 
	.B(n1631), 
	.A(n2248));
   INVX1 U2430 (.Y(n692), 
	.A(n925));
   AOI22X1 U2431 (.Y(n2247), 
	.D(pop_pkt), 
	.C(pkt_data[49]), 
	.B(n1632), 
	.A(n2248));
   INVX1 U2432 (.Y(n691), 
	.A(n926));
   AOI22X1 U2433 (.Y(n2249), 
	.D(pop_pkt), 
	.C(pkt_data[50]), 
	.B(n1633), 
	.A(n2248));
   INVX1 U2434 (.Y(n690), 
	.A(n927));
   AOI22X1 U2435 (.Y(n2250), 
	.D(n2219), 
	.C(pkt_data[51]), 
	.B(n1634), 
	.A(n2257));
   INVX1 U2436 (.Y(n689), 
	.A(n928));
   AOI22X1 U2437 (.Y(n2251), 
	.D(n2219), 
	.C(pkt_data[52]), 
	.B(n1600), 
	.A(n2257));
   INVX1 U2438 (.Y(n688), 
	.A(n929));
   AOI22X1 U2439 (.Y(n2252), 
	.D(n2240), 
	.C(pkt_data[53]), 
	.B(n1635), 
	.A(n2257));
   INVX1 U2440 (.Y(n687), 
	.A(n930));
   AOI22X1 U2441 (.Y(n2253), 
	.D(n2233), 
	.C(pkt_data[54]), 
	.B(n1601), 
	.A(n2257));
   INVX1 U2442 (.Y(n686), 
	.A(n931));
   AOI22X1 U2443 (.Y(n2254), 
	.D(n2219), 
	.C(pkt_data[55]), 
	.B(n1636), 
	.A(n2248));
   INVX1 U2444 (.Y(n685), 
	.A(n932));
   AOI22X1 U2445 (.Y(n2255), 
	.D(pop_pkt), 
	.C(pkt_data[56]), 
	.B(n1637), 
	.A(n2248));
   INVX1 U2446 (.Y(n684), 
	.A(n933));
   AOI22X1 U2447 (.Y(n2256), 
	.D(n2240), 
	.C(pkt_data[57]), 
	.B(n1602), 
	.A(n2257));
   INVX1 U2448 (.Y(n683), 
	.A(n934));
   AOI22X1 U2449 (.Y(n2258), 
	.D(n2240), 
	.C(pkt_data[58]), 
	.B(n1405), 
	.A(n2257));
   INVX1 U2450 (.Y(n682), 
	.A(n1542));
   AOI22X1 U2451 (.Y(n2259), 
	.D(pop_pkt), 
	.C(pkt_data[59]), 
	.B(n1404), 
	.A(n2257));
   INVX1 U2452 (.Y(n681), 
	.A(n1543));
   AOI22X1 U2453 (.Y(n2260), 
	.D(n2219), 
	.C(pkt_data[60]), 
	.B(n1403), 
	.A(n2257));
   INVX1 U2454 (.Y(n680), 
	.A(n1544));
   AOI22X1 U2455 (.Y(n2261), 
	.D(pop_pkt), 
	.C(pkt_data[61]), 
	.B(n1402), 
	.A(n2248));
   INVX1 U2456 (.Y(n679), 
	.A(n935));
   AOI22X1 U2457 (.Y(n2262), 
	.D(pop_pkt), 
	.C(pkt_data[62]), 
	.B(n1401), 
	.A(n2248));
   INVX1 U2458 (.Y(n678), 
	.A(n1545));
   AOI22X1 U2459 (.Y(n2271), 
	.D(n2263), 
	.C(n1665), 
	.B(n2264), 
	.A(n1525));
   NAND3X1 U2460 (.Y(n2266), 
	.C(n1701), 
	.B(n1510), 
	.A(n1499));
   NOR3X1 U2461 (.Y(n2273), 
	.C(n1209), 
	.B(n1436), 
	.A(n2268));
   INVX1 U2462 (.Y(n2269), 
	.A(n2273));
   AOI21X1 U2463 (.Y(n2270), 
	.C(n1458), 
	.B(n2269), 
	.A(n1658));
   OAI21X1 U2464 (.Y(n677), 
	.C(n1059), 
	.B(n2276), 
	.A(n1135));
   NAND3X1 U2465 (.Y(n2274), 
	.C(n1689), 
	.B(n1400), 
	.A(n2273));
   OAI21X1 U2466 (.Y(n2277), 
	.C(n1060), 
	.B(n1458), 
	.A(n1689));
   INVX2 U2467 (.Y(n2279), 
	.A(FE_OFN7_n2278));
   AOI22X1 U2468 (.Y(n2280), 
	.D(FE_OFN7_n2278), 
	.C(n1641), 
	.B(n2279), 
	.A(n1516));
   INVX1 U2469 (.Y(n675), 
	.A(n936));
   AOI22X1 U2470 (.Y(n2281), 
	.D(FE_OFN7_n2278), 
	.C(n1642), 
	.B(n2279), 
	.A(n1515));
   INVX1 U2471 (.Y(n674), 
	.A(n937));
   AOI22X1 U2472 (.Y(n2282), 
	.D(FE_OFN7_n2278), 
	.C(n1643), 
	.B(n2279), 
	.A(n1518));
   INVX1 U2473 (.Y(n673), 
	.A(n938));
   AOI22X1 U2474 (.Y(n2283), 
	.D(FE_OFN7_n2278), 
	.C(n1644), 
	.B(n2279), 
	.A(n1521));
   INVX1 U2475 (.Y(n672), 
	.A(n939));
   AOI22X1 U2476 (.Y(n2284), 
	.D(FE_OFN7_n2278), 
	.C(n1645), 
	.B(n2279), 
	.A(n1517));
   INVX1 U2477 (.Y(n671), 
	.A(n940));
   AOI22X1 U2478 (.Y(n2285), 
	.D(FE_OFN7_n2278), 
	.C(n1646), 
	.B(n2279), 
	.A(n1520));
   INVX1 U2479 (.Y(n670), 
	.A(n941));
   AOI22X1 U2480 (.Y(n2286), 
	.D(FE_OFN7_n2278), 
	.C(n1647), 
	.B(n2279), 
	.A(n1513));
   INVX1 U2481 (.Y(n669), 
	.A(n942));
   AOI22X1 U2482 (.Y(n2287), 
	.D(FE_OFN7_n2278), 
	.C(n1648), 
	.B(n2279), 
	.A(n1519));
   INVX1 U2483 (.Y(n668), 
	.A(n943));
   AND2X2 U2484 (.Y(n2316), 
	.B(n2288), 
	.A(n2164));
   OR2X2 U2485 (.Y(n2307), 
	.B(n2316), 
	.A(n2289));
   OR2X2 U2486 (.Y(n2298), 
	.B(n2307), 
	.A(n2290));
   AOI22X1 U2487 (.Y(n2291), 
	.D(n2298), 
	.C(n1469), 
	.B(n2279), 
	.A(n1686));
   INVX1 U2488 (.Y(n667), 
	.A(n944));
   AOI22X1 U2489 (.Y(n2292), 
	.D(n2298), 
	.C(n1468), 
	.B(n2279), 
	.A(n1677));
   INVX1 U2490 (.Y(n666), 
	.A(n945));
   AOI22X1 U2491 (.Y(n2293), 
	.D(n2298), 
	.C(n1467), 
	.B(n2279), 
	.A(n1687));
   INVX1 U2492 (.Y(n665), 
	.A(n946));
   AOI22X1 U2493 (.Y(n2294), 
	.D(n2298), 
	.C(n1466), 
	.B(n2279), 
	.A(n1684));
   INVX1 U2494 (.Y(n664), 
	.A(n947));
   AOI22X1 U2495 (.Y(n2295), 
	.D(n2298), 
	.C(n1465), 
	.B(n2279), 
	.A(n1675));
   INVX1 U2496 (.Y(n663), 
	.A(n948));
   AOI22X1 U2497 (.Y(n2296), 
	.D(n2298), 
	.C(n1464), 
	.B(n2279), 
	.A(n1685));
   INVX1 U2498 (.Y(n662), 
	.A(n949));
   AOI22X1 U2499 (.Y(n2297), 
	.D(n2298), 
	.C(n1463), 
	.B(n2279), 
	.A(n1676));
   INVX1 U2500 (.Y(n661), 
	.A(n950));
   AOI22X1 U2501 (.Y(n2299), 
	.D(n2298), 
	.C(n1462), 
	.B(n2279), 
	.A(n1688));
   INVX1 U2502 (.Y(n660), 
	.A(n951));
   AOI22X1 U2503 (.Y(n2300), 
	.D(n2307), 
	.C(n1500), 
	.B(n2279), 
	.A(n1461));
   INVX1 U2504 (.Y(n659), 
	.A(n952));
   AOI22X1 U2505 (.Y(n2301), 
	.D(n2307), 
	.C(n1507), 
	.B(n2279), 
	.A(n1670));
   INVX1 U2506 (.Y(n658), 
	.A(n953));
   AOI22X1 U2507 (.Y(n2302), 
	.D(n2307), 
	.C(n1506), 
	.B(n2279), 
	.A(n1454));
   INVX1 U2508 (.Y(n657), 
	.A(n954));
   AOI22X1 U2509 (.Y(n2303), 
	.D(n2307), 
	.C(n1505), 
	.B(n2279), 
	.A(n1659));
   INVX1 U2510 (.Y(n656), 
	.A(n955));
   AOI22X1 U2511 (.Y(n2304), 
	.D(n2307), 
	.C(n1504), 
	.B(n2279), 
	.A(n1453));
   INVX1 U2512 (.Y(n655), 
	.A(n956));
   AOI22X1 U2513 (.Y(n2305), 
	.D(n2307), 
	.C(n1503), 
	.B(n2279), 
	.A(n1660));
   INVX1 U2514 (.Y(n654), 
	.A(n957));
   AOI22X1 U2515 (.Y(n2306), 
	.D(n2307), 
	.C(n1502), 
	.B(n2279), 
	.A(n1452));
   INVX1 U2516 (.Y(n653), 
	.A(n958));
   AOI22X1 U2517 (.Y(n2308), 
	.D(n2307), 
	.C(n1501), 
	.B(n2279), 
	.A(n1451));
   INVX1 U2518 (.Y(n652), 
	.A(n959));
   AOI22X1 U2519 (.Y(n2309), 
	.D(n2316), 
	.C(n1697), 
	.B(n2279), 
	.A(n1425));
   INVX1 U2520 (.Y(n651), 
	.A(n960));
   AOI22X1 U2521 (.Y(n2310), 
	.D(n2316), 
	.C(n1695), 
	.B(n2279), 
	.A(n1432));
   INVX1 U2522 (.Y(n650), 
	.A(n961));
   AOI22X1 U2523 (.Y(n2311), 
	.D(n2316), 
	.C(n1696), 
	.B(n2279), 
	.A(n1431));
   INVX1 U2524 (.Y(n649), 
	.A(n962));
   AOI22X1 U2525 (.Y(n2312), 
	.D(n2316), 
	.C(n1693), 
	.B(n2279), 
	.A(n1430));
   INVX1 U2526 (.Y(n648), 
	.A(n963));
   AOI22X1 U2527 (.Y(n2313), 
	.D(n2316), 
	.C(n1698), 
	.B(n2279), 
	.A(n1429));
   INVX1 U2528 (.Y(n647), 
	.A(n964));
   AOI22X1 U2529 (.Y(n2314), 
	.D(n2316), 
	.C(n1694), 
	.B(n2279), 
	.A(n1428));
   INVX1 U2530 (.Y(n646), 
	.A(n965));
   AOI22X1 U2531 (.Y(n2315), 
	.D(n2316), 
	.C(n1699), 
	.B(n2279), 
	.A(n1427));
   INVX1 U2532 (.Y(n645), 
	.A(n966));
   AOI22X1 U2533 (.Y(n2317), 
	.D(n2316), 
	.C(n1692), 
	.B(n2279), 
	.A(n1426));
   INVX1 U2534 (.Y(n644), 
	.A(n967));
   AOI22X1 U2535 (.Y(n2318), 
	.D(n2348), 
	.C(n1692), 
	.B(pkt_crc[31]), 
	.A(pop_crc));
   INVX1 U2536 (.Y(n643), 
	.A(n968));
   AOI22X1 U2537 (.Y(n2319), 
	.D(n2348), 
	.C(n1641), 
	.B(pkt_crc[0]), 
	.A(pop_crc));
   INVX1 U2538 (.Y(n642), 
	.A(n969));
   AOI22X1 U2539 (.Y(n2320), 
	.D(n2348), 
	.C(n1642), 
	.B(pkt_crc[1]), 
	.A(pop_crc));
   INVX1 U2540 (.Y(n641), 
	.A(n970));
   AOI22X1 U2541 (.Y(n2321), 
	.D(n2348), 
	.C(n1643), 
	.B(pkt_crc[2]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2542 (.Y(n640), 
	.A(n971));
   AOI22X1 U2543 (.Y(n2322), 
	.D(n2348), 
	.C(n1644), 
	.B(pkt_crc[3]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2544 (.Y(n639), 
	.A(n972));
   AOI22X1 U2545 (.Y(n2323), 
	.D(n2348), 
	.C(n1645), 
	.B(pkt_crc[4]), 
	.A(pop_crc));
   INVX1 U2546 (.Y(n638), 
	.A(n973));
   AOI22X1 U2547 (.Y(n2324), 
	.D(n2348), 
	.C(n1646), 
	.B(pkt_crc[5]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2548 (.Y(n637), 
	.A(n974));
   AOI22X1 U2549 (.Y(n2325), 
	.D(n2348), 
	.C(n1647), 
	.B(pkt_crc[6]), 
	.A(pop_crc));
   INVX1 U2550 (.Y(n636), 
	.A(n975));
   AOI22X1 U2551 (.Y(n2326), 
	.D(n2348), 
	.C(n1648), 
	.B(pkt_crc[7]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2552 (.Y(n635), 
	.A(n976));
   AOI22X1 U2553 (.Y(n2327), 
	.D(n2348), 
	.C(n1469), 
	.B(pkt_crc[8]), 
	.A(pop_crc));
   INVX1 U2554 (.Y(n634), 
	.A(n1546));
   AOI22X1 U2555 (.Y(n2328), 
	.D(n2348), 
	.C(n1468), 
	.B(pkt_crc[9]), 
	.A(pop_crc));
   INVX1 U2556 (.Y(n633), 
	.A(n1547));
   AOI22X1 U2557 (.Y(n2329), 
	.D(n2348), 
	.C(n1467), 
	.B(pkt_crc[10]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2558 (.Y(n632), 
	.A(n1548));
   AOI22X1 U2559 (.Y(n2330), 
	.D(n2348), 
	.C(n1466), 
	.B(pkt_crc[11]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2560 (.Y(n631), 
	.A(n1549));
   AOI22X1 U2561 (.Y(n2331), 
	.D(n2348), 
	.C(n1465), 
	.B(pkt_crc[12]), 
	.A(pop_crc));
   INVX1 U2562 (.Y(n630), 
	.A(n1550));
   AOI22X1 U2563 (.Y(n2332), 
	.D(n2348), 
	.C(n1464), 
	.B(pkt_crc[13]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2564 (.Y(n629), 
	.A(n1551));
   AOI22X1 U2565 (.Y(n2333), 
	.D(n2348), 
	.C(n1463), 
	.B(pkt_crc[14]), 
	.A(pop_crc));
   INVX1 U2566 (.Y(n628), 
	.A(n1552));
   AOI22X1 U2567 (.Y(n2334), 
	.D(n2348), 
	.C(n1462), 
	.B(pkt_crc[15]), 
	.A(pop_crc));
   INVX1 U2568 (.Y(n627), 
	.A(n1553));
   AOI22X1 U2569 (.Y(n2335), 
	.D(n2348), 
	.C(n1500), 
	.B(pkt_crc[16]), 
	.A(pop_crc));
   INVX1 U2570 (.Y(n626), 
	.A(n1554));
   AOI22X1 U2571 (.Y(n2336), 
	.D(n2348), 
	.C(n1507), 
	.B(pkt_crc[17]), 
	.A(pop_crc));
   INVX1 U2572 (.Y(n625), 
	.A(n1555));
   AOI22X1 U2573 (.Y(n2337), 
	.D(n2348), 
	.C(n1506), 
	.B(pkt_crc[18]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2574 (.Y(n624), 
	.A(n1556));
   AOI22X1 U2575 (.Y(n2338), 
	.D(n2348), 
	.C(n1505), 
	.B(pkt_crc[19]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2576 (.Y(n623), 
	.A(n1557));
   AOI22X1 U2577 (.Y(n2339), 
	.D(n2348), 
	.C(n1504), 
	.B(pkt_crc[20]), 
	.A(pop_crc));
   INVX1 U2578 (.Y(n622), 
	.A(n1558));
   INVX4 U2579 (.Y(n2348), 
	.A(FE_OFN8_pop_crc));
   AOI22X1 U2580 (.Y(n2340), 
	.D(n2348), 
	.C(n1503), 
	.B(pkt_crc[21]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2581 (.Y(n621), 
	.A(n977));
   AOI22X1 U2582 (.Y(n2341), 
	.D(n2348), 
	.C(n1502), 
	.B(pkt_crc[22]), 
	.A(pop_crc));
   INVX1 U2583 (.Y(n620), 
	.A(n1559));
   AOI22X1 U2584 (.Y(n2342), 
	.D(n2348), 
	.C(n1501), 
	.B(pkt_crc[23]), 
	.A(pop_crc));
   INVX1 U2585 (.Y(n619), 
	.A(n1560));
   AOI22X1 U2586 (.Y(n2343), 
	.D(n2348), 
	.C(n1697), 
	.B(pkt_crc[24]), 
	.A(pop_crc));
   INVX1 U2587 (.Y(n618), 
	.A(n978));
   AOI22X1 U2588 (.Y(n2344), 
	.D(n2348), 
	.C(n1695), 
	.B(pkt_crc[25]), 
	.A(pop_crc));
   INVX1 U2589 (.Y(n617), 
	.A(n979));
   AOI22X1 U2590 (.Y(n2345), 
	.D(n2348), 
	.C(n1696), 
	.B(pkt_crc[26]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2591 (.Y(n616), 
	.A(n980));
   AOI22X1 U2592 (.Y(n2346), 
	.D(n2348), 
	.C(n1693), 
	.B(pkt_crc[27]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2593 (.Y(n615), 
	.A(n981));
   AOI22X1 U2594 (.Y(n2347), 
	.D(n2348), 
	.C(n1698), 
	.B(pkt_crc[28]), 
	.A(pop_crc));
   INVX1 U2595 (.Y(n614), 
	.A(n982));
   AOI22X1 U2596 (.Y(n2349), 
	.D(n2348), 
	.C(n1694), 
	.B(pkt_crc[29]), 
	.A(FE_OFN8_pop_crc));
   INVX1 U2597 (.Y(n613), 
	.A(n983));
   AOI22X1 U2599 (.Y(n2350), 
	.D(n2348), 
	.C(n1699), 
	.B(pkt_crc[30]), 
	.A(pop_crc));
   INVX1 U2600 (.Y(n612), 
	.A(n984));
endmodule

