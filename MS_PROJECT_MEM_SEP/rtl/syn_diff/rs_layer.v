/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sun Nov  6 01:41:19 2016
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
  wire   gclk_en_d, clk125mhz, cnt2_d, gclk_en, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065,
         n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175,
         n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
         n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395,
         n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405,
         n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415,
         n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425,
         n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435,
         n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445,
         n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455,
         n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465,
         n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475,
         n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485,
         n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495,
         n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505,
         n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515,
         n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525,
         n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535,
         n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545,
         n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555,
         n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565,
         n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635,
         n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645,
         n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655,
         n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665,
         n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675,
         n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685,
         n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695,
         n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705,
         n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715,
         n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725,
         n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735,
         n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745,
         n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755,
         n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765,
         n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775,
         n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785,
         n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795,
         n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805,
         n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815,
         n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825,
         n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835,
         n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845,
         n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855,
         n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865,
         n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875,
         n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885,
         n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895,
         n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905,
         n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913;
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

  DFFSR \wakeuptimer_d_reg[0]  ( .D(n982), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[0]) );
  DFFSR \cur_state_clk_reg[1]  ( .D(n973), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(cur_state_clk[1]) );
  DFFSR \cur_state_clk_reg[0]  ( .D(n981), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(cur_state_clk[0]) );
  DFFSR \cnt128_d_reg[0]  ( .D(n980), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[0]) );
  DFFSR \cnt128_d_reg[1]  ( .D(n979), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[1]) );
  DFFSR \cnt128_d_reg[2]  ( .D(n978), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[2]) );
  DFFSR \cnt128_d_reg[3]  ( .D(n977), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[3]) );
  DFFSR \cnt128_d_reg[4]  ( .D(n976), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[4]) );
  DFFSR \cnt128_d_reg[5]  ( .D(n975), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[5]) );
  DFFSR \cnt128_d_reg[6]  ( .D(n974), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[6]) );
  DFFSR \wakeuptimer_d_reg[1]  ( .D(n972), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[1]) );
  DFFSR \wakeuptimer_d_reg[2]  ( .D(n971), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[2]) );
  DFFSR \wakeuptimer_d_reg[3]  ( .D(n970), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[3]) );
  DFFSR \wakeuptimer_d_reg[4]  ( .D(n969), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[4]) );
  DFFSR \wakeuptimer_d_reg[5]  ( .D(n968), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[5]) );
  DFFSR \wakeuptimer_d_reg[6]  ( .D(n967), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[6]) );
  DFFSR \wakeuptimer_d_reg[7]  ( .D(n966), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[7]) );
  DFFSR \wakeuptimer_d_reg[8]  ( .D(n965), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[8]) );
  DFFSR \wakeuptimer_d_reg[9]  ( .D(n964), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[9]) );
  DFFSR \wakeuptimer_d_reg[10]  ( .D(n963), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[10]) );
  DFFSR \wakeuptimer_d_reg[11]  ( .D(n962), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[11]) );
  DFFSR \wakeuptimer_d_reg[12]  ( .D(n961), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[12]) );
  DFFSR \wakeuptimer_d_reg[13]  ( .D(n960), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[13]) );
  DFFSR \wakeuptimer_d_reg[14]  ( .D(n959), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[14]) );
  DFFSR \wakeuptimer_d_reg[15]  ( .D(n958), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[15]) );
  DFFSR \wakeuptimer_d_reg[16]  ( .D(n957), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[16]) );
  DFFSR \wakeuptimer_d_reg[17]  ( .D(n956), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[17]) );
  DFFSR \wakeuptimer_d_reg[18]  ( .D(n955), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[18]) );
  DFFSR \wakeuptimer_d_reg[19]  ( .D(n954), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[19]) );
  DFFSR \wakeuptimer_d_reg[20]  ( .D(n953), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[20]) );
  DFFSR \wakeuptimer_d_reg[21]  ( .D(n952), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[21]) );
  DFFSR \wakeuptimer_d_reg[22]  ( .D(n951), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[22]) );
  DFFSR \wakeuptimer_d_reg[23]  ( .D(n950), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[23]) );
  DFFSR \wakeuptimer_d_reg[24]  ( .D(n949), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[24]) );
  DFFSR \wakeuptimer_d_reg[25]  ( .D(n948), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[25]) );
  DFFSR \wakeuptimer_d_reg[26]  ( .D(n947), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[26]) );
  DFFSR \wakeuptimer_d_reg[27]  ( .D(n946), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[27]) );
  DFFSR \wakeuptimer_d_reg[28]  ( .D(n945), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[28]) );
  DFFSR \wakeuptimer_d_reg[29]  ( .D(n944), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[29]) );
  DFFSR \wakeuptimer_d_reg[30]  ( .D(n943), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[30]) );
  DFFSR \wakeuptimer_d_reg[31]  ( .D(n942), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[31]) );
  DFFSR div2_d_reg ( .D(n985), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(
        clk125mhz) );
  DFFSR gclk_en_d_reg ( .D(gclk_en), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(gclk_en_d) );
  DFFSR \bvalid_reg[0]  ( .D(n941), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[0]) );
  DFFSR \cur_state_reg[0]  ( .D(nxt_state[0]), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(cur_state[0]) );
  DFFSR \crc_bvalid_d_reg[1]  ( .D(n939), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(crc_bvalid_d[1]) );
  DFFSR \idlernd_cnt_d_reg[0]  ( .D(n856), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(idlernd_cnt_d[0]) );
  DFFSR \cur_state_reg[2]  ( .D(nxt_state[2]), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(cur_state[2]) );
  DFFSR cnt2_d_reg ( .D(n936), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(
        cnt2_d) );
  DFFSR \crc_bvalid_d_reg[0]  ( .D(n940), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(crc_bvalid_d[0]) );
  DFFSR \cur_state_reg[1]  ( .D(nxt_state[1]), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(cur_state[1]) );
  DFFSR \xgmii_tx_hold_reg[63]  ( .D(n935), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[63]) );
  DFFSR \bvalid_reg[1]  ( .D(n934), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[1]) );
  DFFSR \bvalid_reg[2]  ( .D(n933), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[2]) );
  DFFSR \bvalid_reg[3]  ( .D(n932), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[3]) );
  DFFSR \bvalid_reg[4]  ( .D(n931), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[4]) );
  DFFSR \bvalid_reg[5]  ( .D(n930), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[5]) );
  DFFSR \bvalid_reg[6]  ( .D(n929), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[6]) );
  DFFSR \bvalid_reg[7]  ( .D(n928), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[7]) );
  DFFSR \pkt_ctrl_d_reg[0]  ( .D(n927), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[0]) );
  DFFSR \pkt_ctrl_d_reg[1]  ( .D(n926), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[1]) );
  DFFSR \pkt_ctrl_d_reg[2]  ( .D(n925), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[2]) );
  DFFSR \pkt_ctrl_d_reg[3]  ( .D(n924), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[3]) );
  DFFSR \pkt_ctrl_d_reg[4]  ( .D(n923), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[4]) );
  DFFSR \pkt_ctrl_d_reg[5]  ( .D(n922), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[5]) );
  DFFSR \pkt_ctrl_d_reg[6]  ( .D(n921), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[6]) );
  DFFSR \pkt_ctrl_d_reg[7]  ( .D(n920), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[7]) );
  DFFSR \xgmii_tx_hold_reg[0]  ( .D(n919), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[0]) );
  DFFSR \xgmii_tx_hold_reg[1]  ( .D(n918), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[1]) );
  DFFSR \xgmii_tx_hold_reg[2]  ( .D(n917), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[2]) );
  DFFSR \xgmii_tx_hold_reg[3]  ( .D(n916), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[3]) );
  DFFSR \xgmii_tx_hold_reg[4]  ( .D(n915), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[4]) );
  DFFSR \xgmii_tx_hold_reg[5]  ( .D(n914), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[5]) );
  DFFSR \xgmii_tx_hold_reg[6]  ( .D(n913), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[6]) );
  DFFSR \xgmii_tx_hold_reg[7]  ( .D(n912), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[7]) );
  DFFSR \xgmii_tx_hold_reg[8]  ( .D(n911), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[8]) );
  DFFSR \xgmii_tx_hold_reg[9]  ( .D(n910), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[9]) );
  DFFSR \xgmii_tx_hold_reg[10]  ( .D(n909), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[10]) );
  DFFSR \xgmii_tx_hold_reg[11]  ( .D(n908), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[11]) );
  DFFSR \xgmii_tx_hold_reg[12]  ( .D(n907), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[12]) );
  DFFSR \xgmii_tx_hold_reg[13]  ( .D(n906), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[13]) );
  DFFSR \xgmii_tx_hold_reg[14]  ( .D(n905), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[14]) );
  DFFSR \xgmii_tx_hold_reg[15]  ( .D(n904), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[15]) );
  DFFSR \xgmii_tx_hold_reg[16]  ( .D(n903), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[16]) );
  DFFSR \xgmii_tx_hold_reg[17]  ( .D(n902), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[17]) );
  DFFSR \xgmii_tx_hold_reg[18]  ( .D(n901), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[18]) );
  DFFSR \xgmii_tx_hold_reg[19]  ( .D(n900), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[19]) );
  DFFSR \xgmii_tx_hold_reg[20]  ( .D(n899), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[20]) );
  DFFSR \xgmii_tx_hold_reg[21]  ( .D(n898), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[21]) );
  DFFSR \xgmii_tx_hold_reg[22]  ( .D(n897), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[22]) );
  DFFSR \xgmii_tx_hold_reg[23]  ( .D(n896), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[23]) );
  DFFSR \xgmii_tx_hold_reg[24]  ( .D(n895), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[24]) );
  DFFSR \xgmii_tx_hold_reg[25]  ( .D(n894), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[25]) );
  DFFSR \xgmii_tx_hold_reg[26]  ( .D(n893), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[26]) );
  DFFSR \xgmii_tx_hold_reg[27]  ( .D(n892), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[27]) );
  DFFSR \xgmii_tx_hold_reg[28]  ( .D(n891), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[28]) );
  DFFSR \xgmii_tx_hold_reg[29]  ( .D(n890), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[29]) );
  DFFSR \xgmii_tx_hold_reg[30]  ( .D(n889), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[30]) );
  DFFSR \xgmii_tx_hold_reg[31]  ( .D(n888), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[31]) );
  DFFSR \xgmii_tx_hold_reg[32]  ( .D(n887), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[32]) );
  DFFSR \xgmii_tx_hold_reg[33]  ( .D(n886), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[33]) );
  DFFSR \xgmii_tx_hold_reg[34]  ( .D(n885), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[34]) );
  DFFSR \xgmii_tx_hold_reg[35]  ( .D(n884), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[35]) );
  DFFSR \xgmii_tx_hold_reg[36]  ( .D(n883), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[36]) );
  DFFSR \xgmii_tx_hold_reg[37]  ( .D(n882), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[37]) );
  DFFSR \xgmii_tx_hold_reg[38]  ( .D(n881), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[38]) );
  DFFSR \xgmii_tx_hold_reg[39]  ( .D(n880), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[39]) );
  DFFSR \xgmii_tx_hold_reg[40]  ( .D(n879), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[40]) );
  DFFSR \xgmii_tx_hold_reg[41]  ( .D(n878), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[41]) );
  DFFSR \xgmii_tx_hold_reg[42]  ( .D(n877), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[42]) );
  DFFSR \xgmii_tx_hold_reg[43]  ( .D(n876), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[43]) );
  DFFSR \xgmii_tx_hold_reg[44]  ( .D(n875), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[44]) );
  DFFSR \xgmii_tx_hold_reg[45]  ( .D(n874), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[45]) );
  DFFSR \xgmii_tx_hold_reg[46]  ( .D(n873), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[46]) );
  DFFSR \xgmii_tx_hold_reg[47]  ( .D(n872), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[47]) );
  DFFSR \xgmii_tx_hold_reg[48]  ( .D(n871), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[48]) );
  DFFSR \xgmii_tx_hold_reg[49]  ( .D(n870), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[49]) );
  DFFSR \xgmii_tx_hold_reg[50]  ( .D(n869), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[50]) );
  DFFSR \xgmii_tx_hold_reg[51]  ( .D(n868), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[51]) );
  DFFSR \xgmii_tx_hold_reg[52]  ( .D(n867), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[52]) );
  DFFSR \xgmii_tx_hold_reg[53]  ( .D(n866), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[53]) );
  DFFSR \xgmii_tx_hold_reg[54]  ( .D(n865), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[54]) );
  DFFSR \xgmii_tx_hold_reg[55]  ( .D(n864), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[55]) );
  DFFSR \xgmii_tx_hold_reg[56]  ( .D(n863), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[56]) );
  DFFSR \xgmii_tx_hold_reg[57]  ( .D(n862), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[57]) );
  DFFSR \xgmii_tx_hold_reg[58]  ( .D(n861), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[58]) );
  DFFSR \xgmii_tx_hold_reg[59]  ( .D(n860), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[59]) );
  DFFSR \xgmii_tx_hold_reg[60]  ( .D(n859), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[60]) );
  DFFSR \xgmii_tx_hold_reg[61]  ( .D(n858), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[61]) );
  DFFSR \xgmii_tx_hold_reg[62]  ( .D(n857), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[62]) );
  DFFSR \IDC_cnt_d_reg[0]  ( .D(n938), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(IDC_cnt_d[0]) );
  DFFSR \IDC_cnt_d_reg[1]  ( .D(n937), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(IDC_cnt_d[1]) );
  DFFSR \crc_left_d_reg[0]  ( .D(n854), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[0]) );
  DFFSR \crc_left_d_reg[1]  ( .D(n853), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[1]) );
  DFFSR \crc_left_d_reg[2]  ( .D(n852), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[2]) );
  DFFSR \crc_left_d_reg[3]  ( .D(n851), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[3]) );
  DFFSR \crc_left_d_reg[4]  ( .D(n850), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[4]) );
  DFFSR \crc_left_d_reg[5]  ( .D(n849), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[5]) );
  DFFSR \crc_left_d_reg[6]  ( .D(n848), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[6]) );
  DFFSR \crc_left_d_reg[7]  ( .D(n847), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[7]) );
  DFFSR \crc_left_d_reg[8]  ( .D(n846), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[8]) );
  DFFSR \crc_left_d_reg[9]  ( .D(n845), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[9]) );
  DFFSR \crc_left_d_reg[10]  ( .D(n844), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[10]) );
  DFFSR \crc_left_d_reg[11]  ( .D(n843), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[11]) );
  DFFSR \crc_left_d_reg[12]  ( .D(n842), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[12]) );
  DFFSR \crc_left_d_reg[13]  ( .D(n841), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[13]) );
  DFFSR \crc_left_d_reg[14]  ( .D(n840), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[14]) );
  DFFSR \crc_left_d_reg[15]  ( .D(n839), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[15]) );
  DFFSR \crc_left_d_reg[16]  ( .D(n838), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[16]) );
  DFFSR \crc_left_d_reg[17]  ( .D(n837), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[17]) );
  DFFSR \crc_left_d_reg[18]  ( .D(n836), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[18]) );
  DFFSR \crc_left_d_reg[19]  ( .D(n835), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[19]) );
  DFFSR \crc_left_d_reg[20]  ( .D(n834), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[20]) );
  DFFSR \crc_left_d_reg[21]  ( .D(n833), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[21]) );
  DFFSR \crc_left_d_reg[22]  ( .D(n832), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[22]) );
  DFFSR \crc_left_d_reg[23]  ( .D(n831), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[23]) );
  DFFSR \crc_left_d_reg[24]  ( .D(n830), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[24]) );
  DFFSR \crc_left_d_reg[25]  ( .D(n829), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[25]) );
  DFFSR \crc_left_d_reg[26]  ( .D(n828), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[26]) );
  DFFSR \crc_left_d_reg[27]  ( .D(n827), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[27]) );
  DFFSR \crc_left_d_reg[28]  ( .D(n826), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[28]) );
  DFFSR \crc_left_d_reg[29]  ( .D(n825), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[29]) );
  DFFSR \crc_left_d_reg[30]  ( .D(n824), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[30]) );
  DFFSR \crc_left_d_reg[31]  ( .D(n823), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[31]) );
  DFFSR \xgmii_txd_d_reg[31]  ( .D(\xgmii_tx.TXD [31]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[31]) );
  DFFSR \xgmii_txd_d_reg[30]  ( .D(\xgmii_tx.TXD [30]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[30]) );
  DFFSR \xgmii_txd_d_reg[29]  ( .D(\xgmii_tx.TXD [29]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[29]) );
  DFFSR \xgmii_txd_d_reg[28]  ( .D(\xgmii_tx.TXD [28]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[28]) );
  DFFSR \xgmii_txd_d_reg[27]  ( .D(\xgmii_tx.TXD [27]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[27]) );
  DFFSR \xgmii_txd_d_reg[23]  ( .D(\xgmii_tx.TXD [23]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[23]) );
  DFFSR \xgmii_txd_d_reg[22]  ( .D(\xgmii_tx.TXD [22]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[22]) );
  DFFSR \xgmii_txd_d_reg[21]  ( .D(\xgmii_tx.TXD [21]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[21]) );
  DFFSR \xgmii_txd_d_reg[20]  ( .D(\xgmii_tx.TXD [20]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[20]) );
  DFFSR \xgmii_txd_d_reg[19]  ( .D(\xgmii_tx.TXD [19]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[19]) );
  DFFSR \xgmii_txd_d_reg[15]  ( .D(\xgmii_tx.TXD [15]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[15]) );
  DFFSR \xgmii_txd_d_reg[14]  ( .D(\xgmii_tx.TXD [14]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[14]) );
  DFFSR \xgmii_txd_d_reg[13]  ( .D(\xgmii_tx.TXD [13]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[13]) );
  DFFSR \xgmii_txd_d_reg[12]  ( .D(\xgmii_tx.TXD [12]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[12]) );
  DFFSR \xgmii_txd_d_reg[11]  ( .D(\xgmii_tx.TXD [11]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[11]) );
  DFFSR \xgmii_txd_d_reg[7]  ( .D(\xgmii_tx.TXD [7]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[7]) );
  DFFSR \xgmii_txd_d_reg[6]  ( .D(\xgmii_tx.TXD [6]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[6]) );
  DFFSR \xgmii_txd_d_reg[5]  ( .D(\xgmii_tx.TXD [5]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[5]) );
  DFFSR \xgmii_txd_d_reg[4]  ( .D(\xgmii_tx.TXD [4]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[4]) );
  DFFSR \xgmii_txd_d_reg[3]  ( .D(\xgmii_tx.TXD [3]), .CLK(\clks.clk ), .R(
        \clks.rst ), .S(1'b1), .Q(xgmii_txd_d[3]) );
  DFFSR \idlernd_cnt_d_reg[1]  ( .D(n855), .CLK(\clks.clk ), .R(1'b1), .S(
        \clks.rst ), .Q(idlernd_cnt_d[1]) );
  DFFSR \cur_state_reg[3]  ( .D(nxt_state[3]), .CLK(\clks.clk ), .R(1'b1), .S(
        \clks.rst ), .Q(cur_state[3]) );
  DFFSR \xgmii_txc_d_reg[0]  ( .D(\xgmii_tx.TXC [0]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txc_d[0]) );
  DFFSR \xgmii_txc_d_reg[2]  ( .D(\xgmii_tx.TXC [2]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txc_d[2]) );
  DFFSR \xgmii_txc_d_reg[3]  ( .D(\xgmii_tx.TXC [3]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txc_d[3]) );
  DFFSR \xgmii_txc_d_reg[1]  ( .D(\xgmii_tx.TXC [1]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txc_d[1]) );
  DFFSR \xgmii_txd_d_reg[26]  ( .D(\xgmii_tx.TXD [26]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[26]) );
  DFFSR \xgmii_txd_d_reg[25]  ( .D(\xgmii_tx.TXD [25]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[25]) );
  DFFSR \xgmii_txd_d_reg[24]  ( .D(\xgmii_tx.TXD [24]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[24]) );
  DFFSR \xgmii_txd_d_reg[18]  ( .D(\xgmii_tx.TXD [18]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[18]) );
  DFFSR \xgmii_txd_d_reg[17]  ( .D(\xgmii_tx.TXD [17]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[17]) );
  DFFSR \xgmii_txd_d_reg[16]  ( .D(\xgmii_tx.TXD [16]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[16]) );
  DFFSR \xgmii_txd_d_reg[10]  ( .D(\xgmii_tx.TXD [10]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[10]) );
  DFFSR \xgmii_txd_d_reg[9]  ( .D(\xgmii_tx.TXD [9]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[9]) );
  DFFSR \xgmii_txd_d_reg[8]  ( .D(\xgmii_tx.TXD [8]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[8]) );
  DFFSR \xgmii_txd_d_reg[2]  ( .D(\xgmii_tx.TXD [2]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[2]) );
  DFFSR \xgmii_txd_d_reg[1]  ( .D(\xgmii_tx.TXD [1]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[1]) );
  DFFSR \xgmii_txd_d_reg[0]  ( .D(\xgmii_tx.TXD [0]), .CLK(\clks.clk ), .R(
        1'b1), .S(\clks.rst ), .Q(xgmii_txd_d[0]) );
  DFFSR \crc_tx_d_reg[31]  ( .D(n822), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[31]) );
  DFFSR \crc_tx_d_reg[0]  ( .D(n821), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[0]) );
  DFFSR \crc_tx_d_reg[1]  ( .D(n820), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[1]) );
  DFFSR \crc_tx_d_reg[2]  ( .D(n819), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[2]) );
  DFFSR \crc_tx_d_reg[3]  ( .D(n818), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[3]) );
  DFFSR \crc_tx_d_reg[4]  ( .D(n817), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[4]) );
  DFFSR \crc_tx_d_reg[5]  ( .D(n816), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[5]) );
  DFFSR \crc_tx_d_reg[6]  ( .D(n815), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[6]) );
  DFFSR \crc_tx_d_reg[7]  ( .D(n814), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[7]) );
  DFFSR \crc_tx_d_reg[8]  ( .D(n813), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[8]) );
  DFFSR \crc_tx_d_reg[9]  ( .D(n812), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[9]) );
  DFFSR \crc_tx_d_reg[10]  ( .D(n811), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[10]) );
  DFFSR \crc_tx_d_reg[11]  ( .D(n810), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[11]) );
  DFFSR \crc_tx_d_reg[12]  ( .D(n809), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[12]) );
  DFFSR \crc_tx_d_reg[13]  ( .D(n808), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[13]) );
  DFFSR \crc_tx_d_reg[14]  ( .D(n807), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[14]) );
  DFFSR \crc_tx_d_reg[15]  ( .D(n806), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[15]) );
  DFFSR \crc_tx_d_reg[16]  ( .D(n805), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[16]) );
  DFFSR \crc_tx_d_reg[17]  ( .D(n804), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[17]) );
  DFFSR \crc_tx_d_reg[18]  ( .D(n803), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[18]) );
  DFFSR \crc_tx_d_reg[19]  ( .D(n802), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[19]) );
  DFFSR \crc_tx_d_reg[20]  ( .D(n801), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[20]) );
  DFFSR \crc_tx_d_reg[21]  ( .D(n800), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[21]) );
  DFFSR \crc_tx_d_reg[22]  ( .D(n799), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[22]) );
  DFFSR \crc_tx_d_reg[23]  ( .D(n798), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[23]) );
  DFFSR \crc_tx_d_reg[24]  ( .D(n797), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[24]) );
  DFFSR \crc_tx_d_reg[25]  ( .D(n796), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[25]) );
  DFFSR \crc_tx_d_reg[26]  ( .D(n795), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[26]) );
  DFFSR \crc_tx_d_reg[27]  ( .D(n794), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[27]) );
  DFFSR \crc_tx_d_reg[28]  ( .D(n793), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[28]) );
  DFFSR \crc_tx_d_reg[29]  ( .D(n792), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[29]) );
  DFFSR \crc_tx_d_reg[30]  ( .D(n791), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[30]) );
  INVX1 U1031 ( .A(n1069), .Y(n1077) );
  INVX1 U1032 ( .A(cnt2_d), .Y(n1329) );
  INVX2 U1033 ( .A(n1491), .Y(n1798) );
  INVX1 U1034 ( .A(cur_state_clk[1]), .Y(n1160) );
  INVX1 U1035 ( .A(cur_state[1]), .Y(n992) );
  OR2X1 U1036 ( .A(n1111), .B(n1329), .Y(n1566) );
  INVX2 U1037 ( .A(n1160), .Y(n1315) );
  INVX2 U1038 ( .A(cur_state[3]), .Y(n1348) );
  INVX2 U1039 ( .A(n1561), .Y(n1550) );
  BUFX2 U1040 ( .A(n1911), .Y(n986) );
  INVX2 U1041 ( .A(cur_state[2]), .Y(n1073) );
  INVX4 U1042 ( .A(n1073), .Y(n995) );
  AND2X1 U1043 ( .A(n1104), .B(n1103), .Y(n1333) );
  OR2X1 U1044 ( .A(n1757), .B(n987), .Y(n1133) );
  OR2X1 U1045 ( .A(n1762), .B(n987), .Y(n1114) );
  INVX2 U1046 ( .A(n1476), .Y(n1558) );
  OR2X1 U1047 ( .A(n1766), .B(n987), .Y(n1123) );
  INVX2 U1048 ( .A(n1481), .Y(n1617) );
  INVX1 U1049 ( .A(n1566), .Y(n1618) );
  AND2X1 U1050 ( .A(pkt_ctrl_d[2]), .B(pkt_ctrl_d[3]), .Y(n1050) );
  OR2X1 U1051 ( .A(n1054), .B(bvalid[2]), .Y(n1059) );
  INVX1 U1052 ( .A(n1083), .Y(n1394) );
  INVX1 U1053 ( .A(n1556), .Y(n1540) );
  INVX1 U1054 ( .A(n1319), .Y(n1105) );
  OR2X1 U1055 ( .A(n1096), .B(n1337), .Y(n1328) );
  OR2X1 U1056 ( .A(n1086), .B(n1088), .Y(n1326) );
  OR2X1 U1057 ( .A(n1395), .B(n1394), .Y(n1797) );
  AND2X1 U1058 ( .A(n1062), .B(n1058), .Y(n1147) );
  INVX1 U1059 ( .A(n1046), .Y(n1078) );
  INVX1 U1060 ( .A(lpi), .Y(n1028) );
  OR2X1 U1061 ( .A(cur_state[1]), .B(n1791), .Y(n1850) );
  INVX1 U1062 ( .A(n1545), .Y(n1522) );
  OR2X1 U1063 ( .A(n1496), .B(n1495), .Y(n1497) );
  OR2X1 U1064 ( .A(n1768), .B(n1550), .Y(n1499) );
  INVX1 U1065 ( .A(n1803), .Y(n1813) );
  INVX1 U1066 ( .A(bvalid[4]), .Y(n1665) );
  INVX1 U1067 ( .A(cur_state[1]), .Y(n1076) );
  INVX1 U1068 ( .A(n1617), .Y(n1373) );
  BUFX2 U1069 ( .A(n1370), .Y(n1365) );
  INVX1 U1070 ( .A(n1087), .Y(n1795) );
  INVX1 U1071 ( .A(n1147), .Y(n1316) );
  INVX1 U1072 ( .A(bvalid[0]), .Y(n1652) );
  AND2X1 U1073 ( .A(n1198), .B(n1173), .Y(n1194) );
  INVX1 U1074 ( .A(n1198), .Y(n1241) );
  INVX1 U1075 ( .A(n1257), .Y(n1262) );
  INVX1 U1076 ( .A(n1518), .Y(n1519) );
  AND2X1 U1077 ( .A(n1572), .B(n1571), .Y(n1577) );
  INVX1 U1078 ( .A(n997), .Y(\xgmii_tx.TXC [2]) );
  AND2X1 U1079 ( .A(n1563), .B(n1562), .Y(n1564) );
  OR2X1 U1080 ( .A(n1136), .B(n1135), .Y(n1137) );
  OR2X1 U1081 ( .A(n1117), .B(n1116), .Y(n1118) );
  INVX1 U1082 ( .A(n1487), .Y(n1488) );
  OR2X1 U1083 ( .A(n1126), .B(n1125), .Y(n1127) );
  INVX2 U1084 ( .A(n1334), .Y(n987) );
  BUFX2 U1085 ( .A(n1375), .Y(n1836) );
  INVX1 U1086 ( .A(n1059), .Y(n1060) );
  INVX1 U1087 ( .A(n1208), .Y(n1209) );
  INVX1 U1088 ( .A(n1149), .Y(n1096) );
  BUFX2 U1089 ( .A(n1077), .Y(n1793) );
  INVX1 U1090 ( .A(n1245), .Y(n1248) );
  INVX1 U1091 ( .A(n1370), .Y(n1371) );
  INVX1 U1092 ( .A(n1219), .Y(n1224) );
  INVX1 U1093 ( .A(n1645), .Y(n1027) );
  INVX2 U1094 ( .A(n1101), .Y(n1573) );
  INVX1 U1095 ( .A(bvalid[1]), .Y(n1099) );
  INVX1 U1096 ( .A(n1320), .Y(n1109) );
  INVX1 U1097 ( .A(gclk_en), .Y(n1022) );
  INVX4 U1098 ( .A(n1366), .Y(n1847) );
  INVX1 U1099 ( .A(pkt_ctrl_d[5]), .Y(n1677) );
  INVX1 U1100 ( .A(cur_state[0]), .Y(n1083) );
  INVX1 U1101 ( .A(n1036), .Y(n1631) );
  INVX1 U1102 ( .A(n1478), .Y(n1479) );
  INVX1 U1103 ( .A(n1029), .Y(n975) );
  INVX1 U1104 ( .A(n996), .Y(\xgmii_tx.TXC [1]) );
  NOR2X1 U1105 ( .A(cur_state[3]), .B(n995), .Y(n988) );
  NAND2X1 U1106 ( .A(n1394), .B(n988), .Y(n1791) );
  INVX2 U1107 ( .A(n1850), .Y(pop_crc) );
  NAND2X1 U1108 ( .A(n995), .B(cur_state[3]), .Y(n989) );
  NOR2X1 U1109 ( .A(n1394), .B(n989), .Y(n1030) );
  NOR2X1 U1110 ( .A(cur_state[1]), .B(n995), .Y(n990) );
  NAND2X1 U1111 ( .A(n1083), .B(n990), .Y(n1069) );
  NOR2X1 U1112 ( .A(n1030), .B(n1077), .Y(n1494) );
  NOR2X1 U1113 ( .A(cur_state[3]), .B(n1394), .Y(n991) );
  NAND3X1 U1114 ( .A(n995), .B(n1076), .C(n991), .Y(n1790) );
  AND2X2 U1115 ( .A(n1494), .B(n1790), .Y(n1467) );
  NAND2X1 U1116 ( .A(cur_state[2]), .B(cur_state[0]), .Y(n1350) );
  NOR2X1 U1117 ( .A(n992), .B(n1350), .Y(n1047) );
  INVX1 U1118 ( .A(n1047), .Y(n993) );
  AND2X2 U1119 ( .A(n993), .B(n1791), .Y(n994) );
  NAND2X1 U1120 ( .A(n1467), .B(n994), .Y(n1491) );
  AND2X2 U1121 ( .A(n1467), .B(n1791), .Y(n1502) );
  INVX1 U1122 ( .A(crc_bvalid_d[0]), .Y(n1655) );
  NAND3X1 U1123 ( .A(cur_state[1]), .B(n995), .C(cur_state[3]), .Y(n1395) );
  OR2X2 U1124 ( .A(n1395), .B(n1083), .Y(n1803) );
  NOR2X1 U1125 ( .A(crc_bvalid_d[1]), .B(n1803), .Y(n1654) );
  NAND2X1 U1126 ( .A(n1655), .B(n1654), .Y(n1545) );
  NAND2X1 U1127 ( .A(n1502), .B(n1545), .Y(n1461) );
  AOI21X1 U1128 ( .A(n1798), .B(xgmii_txc_d[1]), .C(n1461), .Y(n996) );
  INVX1 U1129 ( .A(n1654), .Y(n1466) );
  NAND2X1 U1130 ( .A(n1502), .B(n1466), .Y(n1581) );
  AOI21X1 U1131 ( .A(n1798), .B(xgmii_txc_d[2]), .C(n1581), .Y(n997) );
  INVX1 U1132 ( .A(cur_state_clk[0]), .Y(n1158) );
  NOR2X1 U1133 ( .A(n1158), .B(n1160), .Y(gclk_en) );
  NAND2X1 U1134 ( .A(wakeuptimer_d[6]), .B(wakeuptimer_d[5]), .Y(n999) );
  NAND2X1 U1135 ( .A(wakeuptimer_d[4]), .B(wakeuptimer_d[3]), .Y(n998) );
  NOR2X1 U1136 ( .A(n999), .B(n998), .Y(n1020) );
  NAND2X1 U1137 ( .A(wakeuptimer_d[0]), .B(wakeuptimer_d[1]), .Y(n1302) );
  INVX1 U1138 ( .A(wakeuptimer_d[19]), .Y(n1232) );
  INVX1 U1139 ( .A(wakeuptimer_d[21]), .Y(n1223) );
  NAND2X1 U1140 ( .A(n1232), .B(n1223), .Y(n1001) );
  INVX1 U1141 ( .A(wakeuptimer_d[20]), .Y(n1227) );
  INVX1 U1142 ( .A(wakeuptimer_d[18]), .Y(n1236) );
  NAND2X1 U1143 ( .A(n1227), .B(n1236), .Y(n1000) );
  NOR2X1 U1144 ( .A(n1001), .B(n1000), .Y(n1002) );
  INVX1 U1145 ( .A(wakeuptimer_d[17]), .Y(n1240) );
  INVX1 U1146 ( .A(wakeuptimer_d[16]), .Y(n1244) );
  NAND3X1 U1147 ( .A(n1002), .B(n1240), .C(n1244), .Y(n1010) );
  NOR2X1 U1148 ( .A(wakeuptimer_d[14]), .B(wakeuptimer_d[11]), .Y(n1008) );
  NOR2X1 U1149 ( .A(wakeuptimer_d[12]), .B(wakeuptimer_d[10]), .Y(n1007) );
  INVX1 U1150 ( .A(wakeuptimer_d[9]), .Y(n1279) );
  INVX1 U1151 ( .A(wakeuptimer_d[8]), .Y(n1283) );
  NAND2X1 U1152 ( .A(n1279), .B(n1283), .Y(n1005) );
  NOR2X1 U1153 ( .A(wakeuptimer_d[15]), .B(wakeuptimer_d[13]), .Y(n1003) );
  INVX1 U1154 ( .A(wakeuptimer_d[23]), .Y(n1214) );
  INVX1 U1155 ( .A(wakeuptimer_d[22]), .Y(n1218) );
  NAND3X1 U1156 ( .A(n1003), .B(n1214), .C(n1218), .Y(n1004) );
  NOR2X1 U1157 ( .A(n1005), .B(n1004), .Y(n1006) );
  NAND3X1 U1158 ( .A(n1008), .B(n1007), .C(n1006), .Y(n1009) );
  NOR2X1 U1159 ( .A(n1010), .B(n1009), .Y(n1011) );
  INVX1 U1160 ( .A(wakeuptimer_d[24]), .Y(n1207) );
  NAND3X1 U1161 ( .A(wakeuptimer_d[2]), .B(n1011), .C(n1207), .Y(n1012) );
  NOR2X1 U1162 ( .A(n1302), .B(n1012), .Y(n1019) );
  NOR2X1 U1163 ( .A(wakeuptimer_d[25]), .B(wakeuptimer_d[26]), .Y(n1014) );
  NOR2X1 U1164 ( .A(wakeuptimer_d[28]), .B(wakeuptimer_d[27]), .Y(n1013) );
  NAND2X1 U1165 ( .A(n1014), .B(n1013), .Y(n1017) );
  INVX1 U1166 ( .A(wakeuptimer_d[31]), .Y(n1177) );
  NOR2X1 U1167 ( .A(wakeuptimer_d[30]), .B(wakeuptimer_d[29]), .Y(n1015) );
  NAND3X1 U1168 ( .A(wakeuptimer_d[7]), .B(n1177), .C(n1015), .Y(n1016) );
  NOR2X1 U1169 ( .A(n1017), .B(n1016), .Y(n1018) );
  NAND3X1 U1170 ( .A(n1020), .B(n1019), .C(n1018), .Y(n1031) );
  AOI21X1 U1171 ( .A(\clks.rst ), .B(n1160), .C(cur_state_clk[0]), .Y(n1021)
         );
  OAI21X1 U1172 ( .A(n1160), .B(n1031), .C(n1021), .Y(n1159) );
  OAI21X1 U1173 ( .A(lpi), .B(n1022), .C(n1159), .Y(n1023) );
  INVX1 U1174 ( .A(n1023), .Y(n981) );
  NAND2X1 U1175 ( .A(cur_state_clk[0]), .B(n1160), .Y(n1036) );
  OAI21X1 U1176 ( .A(cnt128_d[0]), .B(n1028), .C(n1631), .Y(n1633) );
  NOR2X1 U1177 ( .A(n1028), .B(n1036), .Y(n1645) );
  NOR2X1 U1178 ( .A(cnt128_d[1]), .B(n1027), .Y(n1634) );
  AOI22X1 U1179 ( .A(cnt128_d[1]), .B(n1633), .C(cnt128_d[0]), .D(n1634), .Y(
        n1024) );
  INVX1 U1180 ( .A(n1024), .Y(n979) );
  NAND2X1 U1181 ( .A(cnt128_d[1]), .B(cnt128_d[0]), .Y(n1637) );
  INVX1 U1182 ( .A(cnt128_d[2]), .Y(n1632) );
  NOR2X1 U1183 ( .A(n1637), .B(n1632), .Y(n1026) );
  NOR2X1 U1184 ( .A(cnt128_d[3]), .B(n1027), .Y(n1640) );
  OAI21X1 U1185 ( .A(n1026), .B(n1028), .C(n1631), .Y(n1639) );
  AOI22X1 U1186 ( .A(n1026), .B(n1640), .C(cnt128_d[3]), .D(n1639), .Y(n1025)
         );
  INVX1 U1187 ( .A(n1025), .Y(n977) );
  NAND2X1 U1188 ( .A(n1026), .B(cnt128_d[3]), .Y(n1643) );
  INVX1 U1189 ( .A(cnt128_d[4]), .Y(n1638) );
  NOR2X1 U1190 ( .A(n1643), .B(n1638), .Y(n1038) );
  NOR2X1 U1191 ( .A(cnt128_d[5]), .B(n1027), .Y(n1647) );
  OAI21X1 U1192 ( .A(n1038), .B(n1028), .C(n1631), .Y(n1646) );
  AOI22X1 U1193 ( .A(n1038), .B(n1647), .C(cnt128_d[5]), .D(n1646), .Y(n1029)
         );
  INVX1 U1194 ( .A(clk125mhz), .Y(n985) );
  NAND2X1 U1195 ( .A(n1030), .B(n1076), .Y(n1046) );
  INVX1 U1196 ( .A(idlernd_cnt_d[1]), .Y(n1045) );
  INVX1 U1197 ( .A(idlernd_cnt_d[0]), .Y(n1810) );
  NAND2X1 U1198 ( .A(n1078), .B(n1810), .Y(n1816) );
  OAI21X1 U1199 ( .A(\clks.rst ), .B(n1069), .C(n1816), .Y(n1043) );
  INVX1 U1200 ( .A(n1790), .Y(n1032) );
  NAND2X1 U1201 ( .A(n1032), .B(n1031), .Y(n1041) );
  NOR2X1 U1202 ( .A(cnt128_d[1]), .B(cnt128_d[0]), .Y(n1035) );
  NOR2X1 U1203 ( .A(cnt128_d[2]), .B(cnt128_d[3]), .Y(n1034) );
  NOR2X1 U1204 ( .A(cnt128_d[4]), .B(cnt128_d[5]), .Y(n1033) );
  NAND3X1 U1205 ( .A(n1035), .B(n1034), .C(n1033), .Y(n1037) );
  NOR2X1 U1206 ( .A(lpi), .B(n1036), .Y(n1154) );
  OAI21X1 U1207 ( .A(cnt128_d[6]), .B(n1037), .C(n1154), .Y(n1039) );
  NAND2X1 U1208 ( .A(n1038), .B(cnt128_d[5]), .Y(n1650) );
  INVX1 U1209 ( .A(cnt128_d[6]), .Y(n1644) );
  NOR2X1 U1210 ( .A(n1650), .B(n1644), .Y(n1155) );
  NOR2X1 U1211 ( .A(n1039), .B(n1155), .Y(n1040) );
  OAI21X1 U1212 ( .A(n1041), .B(n1040), .C(n1491), .Y(n1042) );
  NOR2X1 U1213 ( .A(n1043), .B(n1042), .Y(n1044) );
  OAI21X1 U1214 ( .A(n1046), .B(n1045), .C(n1044), .Y(n1068) );
  INVX1 U1215 ( .A(n1068), .Y(n1067) );
  NAND2X1 U1216 ( .A(n1348), .B(n1047), .Y(n1086) );
  NOR2X1 U1217 ( .A(pkt_ctrl_d[7]), .B(pkt_ctrl_d[4]), .Y(n1049) );
  NOR2X1 U1218 ( .A(pkt_ctrl_d[1]), .B(pkt_ctrl_d[6]), .Y(n1048) );
  NAND2X1 U1219 ( .A(n1049), .B(n1048), .Y(n1052) );
  NAND3X1 U1220 ( .A(pkt_ctrl_d[0]), .B(n1677), .C(n1050), .Y(n1051) );
  NOR2X1 U1221 ( .A(n1052), .B(n1051), .Y(n1088) );
  NAND2X1 U1222 ( .A(bvalid[7]), .B(n1088), .Y(n1053) );
  OR2X2 U1223 ( .A(n1086), .B(n1053), .Y(n1101) );
  NOR2X1 U1224 ( .A(bvalid[4]), .B(bvalid[5]), .Y(n1100) );
  NAND2X1 U1225 ( .A(n1652), .B(n1099), .Y(n1054) );
  NOR2X1 U1226 ( .A(bvalid[3]), .B(n1059), .Y(n1104) );
  NAND3X1 U1227 ( .A(bvalid[6]), .B(bvalid[5]), .C(n1104), .Y(n1317) );
  INVX1 U1228 ( .A(n1317), .Y(n1055) );
  AOI21X1 U1229 ( .A(n1100), .B(n1104), .C(n1055), .Y(n1090) );
  INVX1 U1230 ( .A(n1090), .Y(n1065) );
  NOR2X1 U1231 ( .A(n1329), .B(n1101), .Y(n1336) );
  INVX1 U1232 ( .A(n1336), .Y(n1063) );
  NAND3X1 U1233 ( .A(bvalid[3]), .B(bvalid[6]), .C(bvalid[5]), .Y(n1056) );
  NOR2X1 U1234 ( .A(n1665), .B(n1056), .Y(n1062) );
  NAND3X1 U1235 ( .A(bvalid[1]), .B(bvalid[0]), .C(bvalid[2]), .Y(n1057) );
  INVX1 U1236 ( .A(n1057), .Y(n1058) );
  NAND2X1 U1237 ( .A(n1062), .B(n1060), .Y(n1149) );
  AND2X2 U1238 ( .A(bvalid[2]), .B(n1652), .Y(n1061) );
  AND2X2 U1239 ( .A(n1062), .B(n1061), .Y(n1337) );
  NOR2X1 U1240 ( .A(n1147), .B(n1328), .Y(n1112) );
  OAI21X1 U1241 ( .A(n1063), .B(n1112), .C(n1395), .Y(n1064) );
  AOI21X1 U1242 ( .A(n1573), .B(n1065), .C(n1064), .Y(n1066) );
  OAI21X1 U1243 ( .A(n1348), .B(n1067), .C(n1066), .Y(nxt_state[3]) );
  INVX1 U1244 ( .A(n1086), .Y(n1087) );
  NOR2X1 U1245 ( .A(n1087), .B(n1068), .Y(n1082) );
  NAND2X1 U1246 ( .A(lpi), .B(n1348), .Y(n1070) );
  OAI21X1 U1247 ( .A(n1070), .B(n1069), .C(n1395), .Y(n1071) );
  NOR2X1 U1248 ( .A(n1076), .B(n1791), .Y(n1570) );
  NOR2X1 U1249 ( .A(n1071), .B(n1570), .Y(n1072) );
  OAI21X1 U1250 ( .A(n1073), .B(n1082), .C(n1072), .Y(nxt_state[2]) );
  NAND2X1 U1251 ( .A(n1813), .B(crc_bvalid_d[0]), .Y(n1653) );
  INVX1 U1252 ( .A(n1653), .Y(n1074) );
  NAND2X1 U1253 ( .A(n1074), .B(crc_bvalid_d[1]), .Y(n1098) );
  INVX2 U1254 ( .A(n1098), .Y(n1509) );
  BUFX2 U1255 ( .A(n1509), .Y(n1609) );
  INVX1 U1256 ( .A(n1791), .Y(n1523) );
  NOR2X1 U1257 ( .A(n1609), .B(n1523), .Y(n1075) );
  OAI21X1 U1258 ( .A(n1076), .B(n1082), .C(n1075), .Y(nxt_state[1]) );
  NAND2X1 U1259 ( .A(n1348), .B(n1793), .Y(n1079) );
  NAND2X1 U1260 ( .A(n1078), .B(idlernd_cnt_d[0]), .Y(n1811) );
  OAI22X1 U1261 ( .A(lpi), .B(n1079), .C(idlernd_cnt_d[1]), .D(n1811), .Y(
        n1080) );
  AOI21X1 U1262 ( .A(start_transmit), .B(n1080), .C(n1523), .Y(n1081) );
  OAI21X1 U1263 ( .A(n1083), .B(n1082), .C(n1081), .Y(nxt_state[0]) );
  NOR2X1 U1264 ( .A(nxt_state[2]), .B(nxt_state[1]), .Y(n1084) );
  NAND2X1 U1265 ( .A(n1084), .B(nxt_state[0]), .Y(n1085) );
  NOR2X1 U1266 ( .A(nxt_state[3]), .B(n1085), .Y(nxt_buf) );
  NOR2X1 U1267 ( .A(gclk_en_d), .B(n985), .Y(\xgmii_tx.TXCLK ) );
  OAI21X1 U1268 ( .A(n1329), .B(n1326), .C(n1850), .Y(n1758) );
  BUFX4 U1269 ( .A(n1758), .Y(pop_pkt) );
  INVX1 U1270 ( .A(n1088), .Y(n1089) );
  NOR2X1 U1271 ( .A(n1795), .B(n1089), .Y(n1092) );
  NAND2X1 U1272 ( .A(n1112), .B(n1090), .Y(n1148) );
  NAND2X1 U1273 ( .A(bvalid[7]), .B(n1148), .Y(n1091) );
  AOI21X1 U1274 ( .A(n1092), .B(n1091), .C(n1798), .Y(n1331) );
  INVX2 U1275 ( .A(n1331), .Y(n1383) );
  BUFX4 U1276 ( .A(n1383), .Y(n1613) );
  INVX1 U1277 ( .A(crc_tx_d[21]), .Y(n1894) );
  INVX1 U1278 ( .A(n1104), .Y(n1093) );
  NOR2X1 U1279 ( .A(n1093), .B(bvalid[6]), .Y(n1094) );
  NAND2X1 U1280 ( .A(n1094), .B(n1100), .Y(n1095) );
  INVX4 U1281 ( .A(n1573), .Y(n1367) );
  NOR2X1 U1282 ( .A(n1095), .B(n1367), .Y(n1335) );
  INVX1 U1283 ( .A(n1335), .Y(n1097) );
  NAND2X1 U1284 ( .A(n1096), .B(n1336), .Y(n1339) );
  NAND2X1 U1285 ( .A(n1097), .B(n1339), .Y(n1476) );
  BUFX2 U1286 ( .A(n1098), .Y(n1657) );
  INVX1 U1287 ( .A(crc_left_d[13]), .Y(n1537) );
  NAND2X1 U1288 ( .A(n1813), .B(crc_bvalid_d[1]), .Y(n1806) );
  NOR2X1 U1289 ( .A(n1806), .B(crc_bvalid_d[0]), .Y(n1554) );
  BUFX4 U1290 ( .A(n1554), .Y(n1612) );
  NAND2X1 U1291 ( .A(n1337), .B(n1099), .Y(n1319) );
  NAND2X1 U1292 ( .A(bvalid[6]), .B(n1100), .Y(n1102) );
  NOR2X1 U1293 ( .A(n1102), .B(n1101), .Y(n1103) );
  AOI21X1 U1294 ( .A(n1336), .B(n1105), .C(n1333), .Y(n1481) );
  AOI22X1 U1295 ( .A(n1612), .B(crc_left_d[5]), .C(crc_tx_d[29]), .D(n1617), 
        .Y(n1106) );
  OAI21X1 U1296 ( .A(n1657), .B(n1537), .C(n1106), .Y(n1107) );
  NAND2X1 U1297 ( .A(crc_bvalid_d[0]), .B(n1654), .Y(n1546) );
  NAND2X1 U1298 ( .A(n1791), .B(n1546), .Y(n1131) );
  NOR2X1 U1299 ( .A(n1107), .B(n1131), .Y(n1108) );
  OAI21X1 U1300 ( .A(n1894), .B(n1558), .C(n1108), .Y(n1117) );
  NAND2X1 U1301 ( .A(bvalid[1]), .B(n1337), .Y(n1320) );
  NAND2X1 U1302 ( .A(n1109), .B(n1336), .Y(n1368) );
  INVX1 U1303 ( .A(n1326), .Y(n1110) );
  AOI21X1 U1304 ( .A(n1147), .B(n1573), .C(n1110), .Y(n1111) );
  NAND2X1 U1305 ( .A(n1368), .B(n1566), .Y(n1483) );
  NAND2X1 U1306 ( .A(xgmii_tx_hold[13]), .B(n1483), .Y(n1115) );
  INVX1 U1307 ( .A(xgmii_tx_hold[45]), .Y(n1762) );
  OAI21X1 U1308 ( .A(n1367), .B(n1112), .C(n1326), .Y(n1113) );
  NAND2X1 U1309 ( .A(n1329), .B(n1113), .Y(n1574) );
  OAI21X1 U1310 ( .A(n1317), .B(n1367), .C(n1574), .Y(n1334) );
  NAND2X1 U1311 ( .A(n1115), .B(n1114), .Y(n1116) );
  AOI21X1 U1312 ( .A(xgmii_txd_d[21]), .B(n1613), .C(n1118), .Y(n1119) );
  INVX1 U1313 ( .A(n1119), .Y(\xgmii_tx.TXD [21]) );
  INVX1 U1314 ( .A(crc_tx_d[23]), .Y(n1898) );
  INVX1 U1315 ( .A(crc_left_d[15]), .Y(n1439) );
  AOI22X1 U1316 ( .A(n1612), .B(crc_left_d[7]), .C(crc_tx_d[31]), .D(n1617), 
        .Y(n1120) );
  OAI21X1 U1317 ( .A(n1657), .B(n1439), .C(n1120), .Y(n1121) );
  NOR2X1 U1318 ( .A(n1121), .B(n1131), .Y(n1122) );
  OAI21X1 U1319 ( .A(n1898), .B(n1558), .C(n1122), .Y(n1126) );
  NAND2X1 U1320 ( .A(xgmii_tx_hold[15]), .B(n1483), .Y(n1124) );
  INVX1 U1321 ( .A(xgmii_tx_hold[47]), .Y(n1766) );
  NAND2X1 U1322 ( .A(n1124), .B(n1123), .Y(n1125) );
  AOI21X1 U1323 ( .A(xgmii_txd_d[23]), .B(n1613), .C(n1127), .Y(n1128) );
  INVX1 U1324 ( .A(n1128), .Y(\xgmii_tx.TXD [23]) );
  INVX1 U1325 ( .A(crc_tx_d[19]), .Y(n1890) );
  INVX1 U1326 ( .A(crc_left_d[11]), .Y(n1524) );
  AOI22X1 U1327 ( .A(n1612), .B(crc_left_d[3]), .C(crc_tx_d[27]), .D(n1617), 
        .Y(n1129) );
  OAI21X1 U1328 ( .A(n1657), .B(n1524), .C(n1129), .Y(n1130) );
  NOR2X1 U1329 ( .A(n1131), .B(n1130), .Y(n1132) );
  OAI21X1 U1330 ( .A(n1890), .B(n1558), .C(n1132), .Y(n1136) );
  NAND2X1 U1331 ( .A(xgmii_tx_hold[11]), .B(n1483), .Y(n1134) );
  INVX1 U1332 ( .A(xgmii_tx_hold[43]), .Y(n1757) );
  NAND2X1 U1333 ( .A(n1134), .B(n1133), .Y(n1135) );
  AOI21X1 U1334 ( .A(xgmii_txd_d[19]), .B(n1613), .C(n1137), .Y(n1138) );
  INVX1 U1335 ( .A(n1138), .Y(\xgmii_tx.TXD [19]) );
  NAND3X1 U1336 ( .A(n1467), .B(n1803), .C(n1491), .Y(n1139) );
  OAI21X1 U1337 ( .A(n1139), .B(n1570), .C(cnt2_d), .Y(n1140) );
  OAI21X1 U1338 ( .A(cnt2_d), .B(n1795), .C(n1140), .Y(n936) );
  INVX1 U1339 ( .A(bvalid[7]), .Y(n1142) );
  NAND2X1 U1340 ( .A(bvalidin[7]), .B(pop_pkt), .Y(n1141) );
  OAI21X1 U1341 ( .A(n1784), .B(n1142), .C(n1141), .Y(n928) );
  INVX1 U1342 ( .A(bvalid[5]), .Y(n1144) );
  BUFX4 U1343 ( .A(n1758), .Y(n1787) );
  NAND2X1 U1344 ( .A(bvalidin[5]), .B(n1787), .Y(n1143) );
  OAI21X1 U1345 ( .A(n1144), .B(n1781), .C(n1143), .Y(n930) );
  INVX1 U1346 ( .A(bvalid[6]), .Y(n1146) );
  NAND2X1 U1347 ( .A(bvalidin[6]), .B(n1787), .Y(n1145) );
  OAI21X1 U1348 ( .A(n1146), .B(n1787), .C(n1145), .Y(n929) );
  OAI21X1 U1349 ( .A(cnt2_d), .B(n1149), .C(n1148), .Y(n1322) );
  OAI21X1 U1350 ( .A(cnt2_d), .B(n1319), .C(n1320), .Y(n1150) );
  OAI21X1 U1351 ( .A(n1322), .B(n1150), .C(crc_bvalid_d[1]), .Y(n1151) );
  NAND3X1 U1352 ( .A(n1317), .B(n1316), .C(n1151), .Y(n1152) );
  MUX2X1 U1353 ( .B(n1152), .A(crc_bvalid_d[1]), .S(n1367), .Y(n1153) );
  NAND2X1 U1354 ( .A(n1368), .B(n1153), .Y(n939) );
  INVX1 U1355 ( .A(n1154), .Y(n1156) );
  AOI21X1 U1356 ( .A(n1156), .B(n1155), .C(n1315), .Y(n1157) );
  OAI22X1 U1357 ( .A(n1160), .B(n1159), .C(n1158), .D(n1157), .Y(n973) );
  NOR2X1 U1358 ( .A(cur_state_clk[0]), .B(n1160), .Y(n1312) );
  INVX1 U1359 ( .A(n1312), .Y(n1161) );
  MUX2X1 U1360 ( .B(n1161), .A(n1315), .S(wakeuptimer_d[0]), .Y(n982) );
  NAND2X1 U1361 ( .A(wakeuptimer_d[3]), .B(wakeuptimer_d[2]), .Y(n1162) );
  NOR2X1 U1362 ( .A(n1302), .B(n1162), .Y(n1284) );
  NAND2X1 U1363 ( .A(wakeuptimer_d[7]), .B(wakeuptimer_d[6]), .Y(n1163) );
  NAND2X1 U1364 ( .A(wakeuptimer_d[5]), .B(wakeuptimer_d[4]), .Y(n1285) );
  NOR2X1 U1365 ( .A(n1163), .B(n1285), .Y(n1164) );
  NAND2X1 U1366 ( .A(n1284), .B(n1164), .Y(n1246) );
  NAND2X1 U1367 ( .A(wakeuptimer_d[15]), .B(wakeuptimer_d[14]), .Y(n1165) );
  NAND2X1 U1368 ( .A(wakeuptimer_d[13]), .B(wakeuptimer_d[12]), .Y(n1245) );
  NOR2X1 U1369 ( .A(n1165), .B(n1245), .Y(n1167) );
  NAND2X1 U1370 ( .A(wakeuptimer_d[11]), .B(wakeuptimer_d[10]), .Y(n1166) );
  NAND2X1 U1371 ( .A(wakeuptimer_d[9]), .B(wakeuptimer_d[8]), .Y(n1266) );
  NOR2X1 U1372 ( .A(n1166), .B(n1266), .Y(n1247) );
  NAND2X1 U1373 ( .A(n1167), .B(n1247), .Y(n1168) );
  NOR2X1 U1374 ( .A(n1246), .B(n1168), .Y(n1198) );
  NAND2X1 U1375 ( .A(wakeuptimer_d[25]), .B(wakeuptimer_d[24]), .Y(n1172) );
  NAND2X1 U1376 ( .A(wakeuptimer_d[23]), .B(wakeuptimer_d[22]), .Y(n1169) );
  NAND2X1 U1377 ( .A(wakeuptimer_d[21]), .B(wakeuptimer_d[20]), .Y(n1210) );
  NOR2X1 U1378 ( .A(n1169), .B(n1210), .Y(n1171) );
  NAND2X1 U1379 ( .A(wakeuptimer_d[19]), .B(wakeuptimer_d[18]), .Y(n1170) );
  NAND2X1 U1380 ( .A(wakeuptimer_d[17]), .B(wakeuptimer_d[16]), .Y(n1228) );
  NOR2X1 U1381 ( .A(n1170), .B(n1228), .Y(n1208) );
  NAND2X1 U1382 ( .A(n1171), .B(n1208), .Y(n1199) );
  NOR2X1 U1383 ( .A(n1172), .B(n1199), .Y(n1173) );
  XOR2X1 U1384 ( .A(n1174), .B(wakeuptimer_d[31]), .Y(n1175) );
  NAND2X1 U1385 ( .A(n1312), .B(n1175), .Y(n1176) );
  OAI21X1 U1386 ( .A(n1315), .B(n1177), .C(n1176), .Y(n942) );
  INVX1 U1387 ( .A(wakeuptimer_d[30]), .Y(n1181) );
  HAX1 U1388 ( .A(wakeuptimer_d[30]), .B(n1178), .YC(n1174), .YS(n1179) );
  NAND2X1 U1389 ( .A(n1312), .B(n1179), .Y(n1180) );
  OAI21X1 U1390 ( .A(n1315), .B(n1181), .C(n1180), .Y(n943) );
  INVX1 U1391 ( .A(wakeuptimer_d[29]), .Y(n1185) );
  HAX1 U1392 ( .A(wakeuptimer_d[29]), .B(n1182), .YC(n1178), .YS(n1183) );
  NAND2X1 U1393 ( .A(n1312), .B(n1183), .Y(n1184) );
  OAI21X1 U1394 ( .A(n1315), .B(n1185), .C(n1184), .Y(n944) );
  INVX1 U1395 ( .A(wakeuptimer_d[28]), .Y(n1189) );
  HAX1 U1396 ( .A(wakeuptimer_d[28]), .B(n1186), .YC(n1182), .YS(n1187) );
  NAND2X1 U1397 ( .A(n1312), .B(n1187), .Y(n1188) );
  OAI21X1 U1398 ( .A(n1315), .B(n1189), .C(n1188), .Y(n945) );
  INVX1 U1399 ( .A(wakeuptimer_d[27]), .Y(n1193) );
  HAX1 U1400 ( .A(wakeuptimer_d[27]), .B(n1190), .YC(n1186), .YS(n1191) );
  NAND2X1 U1401 ( .A(n1312), .B(n1191), .Y(n1192) );
  OAI21X1 U1402 ( .A(n1315), .B(n1193), .C(n1192), .Y(n946) );
  INVX1 U1403 ( .A(wakeuptimer_d[26]), .Y(n1197) );
  HAX1 U1404 ( .A(wakeuptimer_d[26]), .B(n1194), .YC(n1190), .YS(n1195) );
  NAND2X1 U1405 ( .A(n1312), .B(n1195), .Y(n1196) );
  OAI21X1 U1406 ( .A(n1315), .B(n1197), .C(n1196), .Y(n947) );
  INVX1 U1407 ( .A(wakeuptimer_d[25]), .Y(n1203) );
  NOR2X1 U1408 ( .A(n1199), .B(n1241), .Y(n1204) );
  NAND2X1 U1409 ( .A(wakeuptimer_d[24]), .B(n1204), .Y(n1200) );
  XOR2X1 U1410 ( .A(n1200), .B(n1203), .Y(n1201) );
  NAND2X1 U1411 ( .A(n1312), .B(n1201), .Y(n1202) );
  OAI21X1 U1412 ( .A(n1315), .B(n1203), .C(n1202), .Y(n948) );
  XNOR2X1 U1413 ( .A(n1204), .B(n1207), .Y(n1205) );
  NAND2X1 U1414 ( .A(n1312), .B(n1205), .Y(n1206) );
  OAI21X1 U1415 ( .A(n1315), .B(n1207), .C(n1206), .Y(n949) );
  NOR2X1 U1416 ( .A(n1209), .B(n1241), .Y(n1219) );
  NOR2X1 U1417 ( .A(n1210), .B(n1224), .Y(n1215) );
  NAND2X1 U1418 ( .A(wakeuptimer_d[22]), .B(n1215), .Y(n1211) );
  XOR2X1 U1419 ( .A(n1211), .B(n1214), .Y(n1212) );
  NAND2X1 U1420 ( .A(n1312), .B(n1212), .Y(n1213) );
  OAI21X1 U1421 ( .A(n1315), .B(n1214), .C(n1213), .Y(n950) );
  XNOR2X1 U1422 ( .A(n1215), .B(n1218), .Y(n1216) );
  NAND2X1 U1423 ( .A(n1312), .B(n1216), .Y(n1217) );
  OAI21X1 U1424 ( .A(n1315), .B(n1218), .C(n1217), .Y(n951) );
  NAND2X1 U1425 ( .A(wakeuptimer_d[20]), .B(n1219), .Y(n1220) );
  XOR2X1 U1426 ( .A(n1220), .B(n1223), .Y(n1221) );
  NAND2X1 U1427 ( .A(n1312), .B(n1221), .Y(n1222) );
  OAI21X1 U1428 ( .A(n1315), .B(n1223), .C(n1222), .Y(n952) );
  XOR2X1 U1429 ( .A(n1224), .B(n1227), .Y(n1225) );
  NAND2X1 U1430 ( .A(n1312), .B(n1225), .Y(n1226) );
  OAI21X1 U1431 ( .A(n1315), .B(n1227), .C(n1226), .Y(n953) );
  NOR2X1 U1432 ( .A(n1228), .B(n1241), .Y(n1233) );
  NAND2X1 U1433 ( .A(wakeuptimer_d[18]), .B(n1233), .Y(n1229) );
  XOR2X1 U1434 ( .A(n1229), .B(n1232), .Y(n1230) );
  NAND2X1 U1435 ( .A(n1312), .B(n1230), .Y(n1231) );
  OAI21X1 U1436 ( .A(n1315), .B(n1232), .C(n1231), .Y(n954) );
  XNOR2X1 U1437 ( .A(n1233), .B(n1236), .Y(n1234) );
  NAND2X1 U1438 ( .A(n1312), .B(n1234), .Y(n1235) );
  OAI21X1 U1439 ( .A(cur_state_clk[1]), .B(n1236), .C(n1235), .Y(n955) );
  NOR2X1 U1440 ( .A(n1244), .B(n1241), .Y(n1237) );
  XNOR2X1 U1441 ( .A(n1237), .B(n1240), .Y(n1238) );
  NAND2X1 U1442 ( .A(n1312), .B(n1238), .Y(n1239) );
  OAI21X1 U1443 ( .A(cur_state_clk[1]), .B(n1240), .C(n1239), .Y(n956) );
  XOR2X1 U1444 ( .A(n1241), .B(n1244), .Y(n1242) );
  NAND2X1 U1445 ( .A(n1312), .B(n1242), .Y(n1243) );
  OAI21X1 U1446 ( .A(cur_state_clk[1]), .B(n1244), .C(n1243), .Y(n957) );
  INVX1 U1447 ( .A(wakeuptimer_d[15]), .Y(n1252) );
  INVX1 U1448 ( .A(wakeuptimer_d[14]), .Y(n1256) );
  INVX1 U1449 ( .A(n1246), .Y(n1280) );
  NAND2X1 U1450 ( .A(n1247), .B(n1280), .Y(n1257) );
  NAND2X1 U1451 ( .A(n1248), .B(n1262), .Y(n1253) );
  NOR2X1 U1452 ( .A(n1256), .B(n1253), .Y(n1249) );
  XNOR2X1 U1453 ( .A(n1249), .B(n1252), .Y(n1250) );
  NAND2X1 U1454 ( .A(n1312), .B(n1250), .Y(n1251) );
  OAI21X1 U1455 ( .A(cur_state_clk[1]), .B(n1252), .C(n1251), .Y(n958) );
  XOR2X1 U1456 ( .A(n1253), .B(n1256), .Y(n1254) );
  NAND2X1 U1457 ( .A(n1312), .B(n1254), .Y(n1255) );
  OAI21X1 U1458 ( .A(n1315), .B(n1256), .C(n1255), .Y(n959) );
  INVX1 U1459 ( .A(wakeuptimer_d[13]), .Y(n1261) );
  INVX1 U1460 ( .A(wakeuptimer_d[12]), .Y(n1265) );
  NOR2X1 U1461 ( .A(n1265), .B(n1257), .Y(n1258) );
  XNOR2X1 U1462 ( .A(n1258), .B(n1261), .Y(n1259) );
  NAND2X1 U1463 ( .A(n1312), .B(n1259), .Y(n1260) );
  OAI21X1 U1464 ( .A(n1315), .B(n1261), .C(n1260), .Y(n960) );
  XNOR2X1 U1465 ( .A(n1262), .B(n1265), .Y(n1263) );
  NAND2X1 U1466 ( .A(n1312), .B(n1263), .Y(n1264) );
  OAI21X1 U1467 ( .A(n1315), .B(n1265), .C(n1264), .Y(n961) );
  INVX1 U1468 ( .A(wakeuptimer_d[11]), .Y(n1271) );
  INVX1 U1469 ( .A(wakeuptimer_d[10]), .Y(n1275) );
  INVX1 U1470 ( .A(n1266), .Y(n1267) );
  NAND2X1 U1471 ( .A(n1267), .B(n1280), .Y(n1272) );
  NOR2X1 U1472 ( .A(n1275), .B(n1272), .Y(n1268) );
  XNOR2X1 U1473 ( .A(n1268), .B(n1271), .Y(n1269) );
  NAND2X1 U1474 ( .A(n1312), .B(n1269), .Y(n1270) );
  OAI21X1 U1475 ( .A(n1315), .B(n1271), .C(n1270), .Y(n962) );
  XOR2X1 U1476 ( .A(n1272), .B(n1275), .Y(n1273) );
  NAND2X1 U1477 ( .A(n1312), .B(n1273), .Y(n1274) );
  OAI21X1 U1478 ( .A(n1315), .B(n1275), .C(n1274), .Y(n963) );
  NAND2X1 U1479 ( .A(wakeuptimer_d[8]), .B(n1280), .Y(n1276) );
  XOR2X1 U1480 ( .A(n1276), .B(n1279), .Y(n1277) );
  NAND2X1 U1481 ( .A(n1312), .B(n1277), .Y(n1278) );
  OAI21X1 U1482 ( .A(n1315), .B(n1279), .C(n1278), .Y(n964) );
  XNOR2X1 U1483 ( .A(n1280), .B(n1283), .Y(n1281) );
  NAND2X1 U1484 ( .A(n1312), .B(n1281), .Y(n1282) );
  OAI21X1 U1485 ( .A(n1315), .B(n1283), .C(n1282), .Y(n965) );
  INVX1 U1486 ( .A(wakeuptimer_d[7]), .Y(n1289) );
  INVX1 U1487 ( .A(n1284), .Y(n1298) );
  NOR2X1 U1488 ( .A(n1285), .B(n1298), .Y(n1290) );
  NAND2X1 U1489 ( .A(wakeuptimer_d[6]), .B(n1290), .Y(n1286) );
  XOR2X1 U1490 ( .A(n1286), .B(n1289), .Y(n1287) );
  NAND2X1 U1491 ( .A(n1312), .B(n1287), .Y(n1288) );
  OAI21X1 U1492 ( .A(n1315), .B(n1289), .C(n1288), .Y(n966) );
  INVX1 U1493 ( .A(wakeuptimer_d[6]), .Y(n1293) );
  XNOR2X1 U1494 ( .A(n1290), .B(n1293), .Y(n1291) );
  NAND2X1 U1495 ( .A(n1312), .B(n1291), .Y(n1292) );
  OAI21X1 U1496 ( .A(n1315), .B(n1293), .C(n1292), .Y(n967) );
  INVX1 U1497 ( .A(wakeuptimer_d[5]), .Y(n1297) );
  INVX1 U1498 ( .A(wakeuptimer_d[4]), .Y(n1301) );
  NOR2X1 U1499 ( .A(n1301), .B(n1298), .Y(n1294) );
  XNOR2X1 U1500 ( .A(n1294), .B(n1297), .Y(n1295) );
  NAND2X1 U1501 ( .A(n1312), .B(n1295), .Y(n1296) );
  OAI21X1 U1502 ( .A(n1315), .B(n1297), .C(n1296), .Y(n968) );
  XOR2X1 U1503 ( .A(n1298), .B(n1301), .Y(n1299) );
  NAND2X1 U1504 ( .A(n1312), .B(n1299), .Y(n1300) );
  OAI21X1 U1505 ( .A(n1315), .B(n1301), .C(n1300), .Y(n969) );
  INVX1 U1506 ( .A(wakeuptimer_d[3]), .Y(n1306) );
  INVX1 U1507 ( .A(n1302), .Y(n1307) );
  NAND2X1 U1508 ( .A(wakeuptimer_d[2]), .B(n1307), .Y(n1303) );
  XOR2X1 U1509 ( .A(n1303), .B(n1306), .Y(n1304) );
  NAND2X1 U1510 ( .A(n1312), .B(n1304), .Y(n1305) );
  OAI21X1 U1511 ( .A(n1315), .B(n1306), .C(n1305), .Y(n970) );
  INVX1 U1512 ( .A(wakeuptimer_d[2]), .Y(n1310) );
  XNOR2X1 U1513 ( .A(n1307), .B(n1310), .Y(n1308) );
  NAND2X1 U1514 ( .A(n1312), .B(n1308), .Y(n1309) );
  OAI21X1 U1515 ( .A(n1315), .B(n1310), .C(n1309), .Y(n971) );
  INVX1 U1516 ( .A(wakeuptimer_d[1]), .Y(n1314) );
  XNOR2X1 U1517 ( .A(n1314), .B(wakeuptimer_d[0]), .Y(n1311) );
  NAND2X1 U1518 ( .A(n1312), .B(n1311), .Y(n1313) );
  OAI21X1 U1519 ( .A(n1315), .B(n1314), .C(n1313), .Y(n972) );
  OAI21X1 U1520 ( .A(n1665), .B(n1317), .C(n1316), .Y(n1318) );
  NAND2X1 U1521 ( .A(n1573), .B(n1318), .Y(n1370) );
  OAI21X1 U1522 ( .A(cnt2_d), .B(n1320), .C(n1319), .Y(n1321) );
  OAI21X1 U1523 ( .A(n1322), .B(n1321), .C(crc_bvalid_d[0]), .Y(n1323) );
  MUX2X1 U1524 ( .B(n1323), .A(n1655), .S(n1367), .Y(n1324) );
  INVX1 U1525 ( .A(n1324), .Y(n1325) );
  NAND3X1 U1526 ( .A(n1373), .B(n1365), .C(n1325), .Y(n940) );
  INVX1 U1527 ( .A(crc_tx_d[24]), .Y(n1900) );
  NAND3X1 U1528 ( .A(n1326), .B(n1803), .C(n1502), .Y(n1327) );
  AOI21X1 U1529 ( .A(n1329), .B(n1328), .C(n1327), .Y(n1330) );
  NAND2X1 U1530 ( .A(n1331), .B(n1330), .Y(n1366) );
  NAND2X1 U1531 ( .A(crc_left_d[24]), .B(n1366), .Y(n1332) );
  OAI21X1 U1532 ( .A(n1900), .B(n1365), .C(n1332), .Y(n830) );
  OR2X2 U1533 ( .A(n1334), .B(n1333), .Y(n1561) );
  NOR2X1 U1534 ( .A(n1335), .B(n1561), .Y(n1449) );
  INVX1 U1535 ( .A(xgmii_tx_hold[56]), .Y(n1786) );
  NAND2X1 U1536 ( .A(n1337), .B(n1336), .Y(n1338) );
  AND2X2 U1537 ( .A(n1566), .B(n1338), .Y(n1565) );
  AND2X2 U1538 ( .A(n1565), .B(n1339), .Y(n1446) );
  INVX2 U1539 ( .A(n1446), .Y(n1354) );
  BUFX4 U1540 ( .A(n1383), .Y(n1590) );
  AOI22X1 U1541 ( .A(xgmii_tx_hold[24]), .B(n1354), .C(xgmii_txd_d[0]), .D(
        n1590), .Y(n1345) );
  INVX1 U1542 ( .A(crc_left_d[8]), .Y(n1835) );
  NOR2X1 U1543 ( .A(n1835), .B(n1546), .Y(n1343) );
  AOI21X1 U1544 ( .A(crc_left_d[0]), .B(n1522), .C(pop_crc), .Y(n1341) );
  AOI22X1 U1545 ( .A(n1609), .B(crc_left_d[24]), .C(crc_left_d[16]), .D(n1554), 
        .Y(n1340) );
  NAND3X1 U1546 ( .A(n1494), .B(n1341), .C(n1340), .Y(n1342) );
  NOR2X1 U1547 ( .A(n1343), .B(n1342), .Y(n1344) );
  AND2X1 U1548 ( .A(n1345), .B(n1344), .Y(n1346) );
  OAI21X1 U1549 ( .A(n1449), .B(n1786), .C(n1346), .Y(\xgmii_tx.TXD [0]) );
  INVX1 U1550 ( .A(crc_tx_d[25]), .Y(n1902) );
  NAND2X1 U1551 ( .A(crc_left_d[25]), .B(n1366), .Y(n1347) );
  OAI21X1 U1552 ( .A(n1902), .B(n1365), .C(n1347), .Y(n829) );
  INVX1 U1553 ( .A(xgmii_tx_hold[57]), .Y(n1789) );
  INVX4 U1554 ( .A(n1612), .Y(n1804) );
  INVX1 U1555 ( .A(crc_left_d[17]), .Y(n1840) );
  BUFX2 U1556 ( .A(n1509), .Y(n1619) );
  INVX1 U1557 ( .A(crc_left_d[1]), .Y(n1820) );
  INVX1 U1558 ( .A(n1348), .Y(n1794) );
  MUX2X1 U1559 ( .B(cur_state[1]), .A(n1794), .S(n1394), .Y(n1349) );
  NAND2X1 U1560 ( .A(n1350), .B(n1349), .Y(n1351) );
  OAI21X1 U1561 ( .A(n1545), .B(n1820), .C(n1351), .Y(n1352) );
  AOI21X1 U1562 ( .A(n1619), .B(crc_left_d[25]), .C(n1352), .Y(n1353) );
  OAI21X1 U1563 ( .A(n1804), .B(n1840), .C(n1353), .Y(n1357) );
  BUFX2 U1564 ( .A(n1546), .Y(n1556) );
  INVX1 U1565 ( .A(crc_left_d[9]), .Y(n1838) );
  AOI22X1 U1566 ( .A(xgmii_tx_hold[25]), .B(n1354), .C(xgmii_txd_d[1]), .D(
        n1590), .Y(n1355) );
  OAI21X1 U1567 ( .A(n1556), .B(n1838), .C(n1355), .Y(n1356) );
  NOR2X1 U1568 ( .A(n1357), .B(n1356), .Y(n1358) );
  OAI21X1 U1569 ( .A(n1449), .B(n1789), .C(n1358), .Y(\xgmii_tx.TXD [1]) );
  INVX1 U1570 ( .A(crc_tx_d[26]), .Y(n1904) );
  NAND2X1 U1571 ( .A(crc_left_d[26]), .B(n1366), .Y(n1359) );
  OAI21X1 U1572 ( .A(n1365), .B(n1904), .C(n1359), .Y(n828) );
  INVX1 U1573 ( .A(crc_tx_d[27]), .Y(n1906) );
  NAND2X1 U1574 ( .A(crc_left_d[27]), .B(n1366), .Y(n1360) );
  OAI21X1 U1575 ( .A(n1365), .B(n1906), .C(n1360), .Y(n827) );
  INVX1 U1576 ( .A(crc_tx_d[28]), .Y(n1908) );
  NAND2X1 U1577 ( .A(crc_left_d[28]), .B(n1366), .Y(n1361) );
  OAI21X1 U1578 ( .A(n1365), .B(n1908), .C(n1361), .Y(n826) );
  INVX1 U1579 ( .A(crc_tx_d[29]), .Y(n1910) );
  NAND2X1 U1580 ( .A(crc_left_d[29]), .B(n1366), .Y(n1362) );
  OAI21X1 U1581 ( .A(n1365), .B(n1910), .C(n1362), .Y(n825) );
  INVX1 U1582 ( .A(crc_tx_d[30]), .Y(n1913) );
  NAND2X1 U1583 ( .A(crc_left_d[30]), .B(n1366), .Y(n1363) );
  OAI21X1 U1584 ( .A(n1365), .B(n1913), .C(n1363), .Y(n824) );
  INVX1 U1585 ( .A(crc_tx_d[31]), .Y(n1849) );
  NAND2X1 U1586 ( .A(crc_left_d[31]), .B(n1366), .Y(n1364) );
  OAI21X1 U1587 ( .A(n1365), .B(n1849), .C(n1364), .Y(n823) );
  INVX1 U1588 ( .A(crc_left_d[10]), .Y(n1469) );
  OR2X2 U1589 ( .A(n1367), .B(bvalid[4]), .Y(n1369) );
  OAI21X1 U1590 ( .A(n1369), .B(n1317), .C(n1368), .Y(n1585) );
  NOR2X1 U1591 ( .A(n1585), .B(n1371), .Y(n1372) );
  NAND2X1 U1592 ( .A(n1373), .B(n1372), .Y(n1375) );
  NAND2X1 U1593 ( .A(crc_tx_d[10]), .B(n1836), .Y(n1374) );
  OAI21X1 U1594 ( .A(n1469), .B(n1847), .C(n1374), .Y(n844) );
  NAND2X1 U1595 ( .A(crc_tx_d[11]), .B(n1836), .Y(n1376) );
  OAI21X1 U1596 ( .A(n1847), .B(n1524), .C(n1376), .Y(n843) );
  INVX1 U1597 ( .A(crc_left_d[12]), .Y(n1406) );
  NAND2X1 U1598 ( .A(crc_tx_d[12]), .B(n1836), .Y(n1377) );
  OAI21X1 U1599 ( .A(n1406), .B(n1847), .C(n1377), .Y(n842) );
  NAND2X1 U1600 ( .A(crc_tx_d[13]), .B(n1836), .Y(n1378) );
  OAI21X1 U1601 ( .A(n1847), .B(n1537), .C(n1378), .Y(n841) );
  INVX1 U1602 ( .A(crc_left_d[14]), .Y(n1427) );
  NAND2X1 U1603 ( .A(crc_tx_d[14]), .B(n1836), .Y(n1379) );
  OAI21X1 U1604 ( .A(n1427), .B(n1847), .C(n1379), .Y(n840) );
  NAND2X1 U1605 ( .A(crc_tx_d[15]), .B(n1836), .Y(n1380) );
  OAI21X1 U1606 ( .A(n1847), .B(n1439), .C(n1380), .Y(n839) );
  INVX1 U1607 ( .A(xgmii_tx_hold[58]), .Y(n1391) );
  NAND2X1 U1608 ( .A(pkt_data[58]), .B(pop_pkt), .Y(n1381) );
  OAI21X1 U1609 ( .A(n1781), .B(n1391), .C(n1381), .Y(n861) );
  INVX1 U1610 ( .A(xgmii_tx_hold[26]), .Y(n1388) );
  NAND2X1 U1611 ( .A(pkt_data[26]), .B(n1787), .Y(n1382) );
  OAI21X1 U1612 ( .A(n1388), .B(n1784), .C(n1382), .Y(n893) );
  BUFX4 U1613 ( .A(n1383), .Y(n1624) );
  INVX1 U1614 ( .A(crc_left_d[18]), .Y(n1841) );
  OAI22X1 U1615 ( .A(n1804), .B(n1841), .C(n1469), .D(n1546), .Y(n1386) );
  INVX1 U1616 ( .A(crc_left_d[2]), .Y(n1822) );
  INVX1 U1617 ( .A(n1467), .Y(n1516) );
  AOI21X1 U1618 ( .A(n1609), .B(crc_left_d[26]), .C(n1516), .Y(n1384) );
  OAI21X1 U1619 ( .A(n1545), .B(n1822), .C(n1384), .Y(n1385) );
  NOR2X1 U1620 ( .A(n1386), .B(n1385), .Y(n1387) );
  OAI21X1 U1621 ( .A(n1446), .B(n1388), .C(n1387), .Y(n1389) );
  AOI21X1 U1622 ( .A(xgmii_txd_d[2]), .B(n1624), .C(n1389), .Y(n1390) );
  OAI21X1 U1623 ( .A(n1391), .B(n1449), .C(n1390), .Y(\xgmii_tx.TXD [2]) );
  INVX1 U1624 ( .A(xgmii_tx_hold[59]), .Y(n1403) );
  NAND2X1 U1625 ( .A(pkt_data[59]), .B(pop_pkt), .Y(n1392) );
  OAI21X1 U1626 ( .A(n1784), .B(n1403), .C(n1392), .Y(n860) );
  INVX1 U1627 ( .A(xgmii_tx_hold[27]), .Y(n1400) );
  NAND2X1 U1628 ( .A(pkt_data[27]), .B(pop_pkt), .Y(n1393) );
  OAI21X1 U1629 ( .A(n1400), .B(n1781), .C(n1393), .Y(n892) );
  INVX1 U1630 ( .A(crc_left_d[19]), .Y(n1842) );
  OAI22X1 U1631 ( .A(n1804), .B(n1842), .C(n1524), .D(n1556), .Y(n1398) );
  INVX1 U1632 ( .A(crc_left_d[3]), .Y(n1824) );
  NAND2X1 U1633 ( .A(n1791), .B(n1797), .Y(n1440) );
  AOI21X1 U1634 ( .A(n1609), .B(crc_left_d[27]), .C(n1440), .Y(n1396) );
  OAI21X1 U1635 ( .A(n1545), .B(n1824), .C(n1396), .Y(n1397) );
  NOR2X1 U1636 ( .A(n1398), .B(n1397), .Y(n1399) );
  OAI21X1 U1637 ( .A(n1446), .B(n1400), .C(n1399), .Y(n1401) );
  AOI21X1 U1638 ( .A(xgmii_txd_d[3]), .B(n1613), .C(n1401), .Y(n1402) );
  OAI21X1 U1639 ( .A(n1403), .B(n1449), .C(n1402), .Y(\xgmii_tx.TXD [3]) );
  INVX1 U1640 ( .A(xgmii_tx_hold[60]), .Y(n1414) );
  NAND2X1 U1641 ( .A(pkt_data[60]), .B(pop_pkt), .Y(n1404) );
  OAI21X1 U1642 ( .A(n1787), .B(n1414), .C(n1404), .Y(n859) );
  INVX1 U1643 ( .A(xgmii_tx_hold[28]), .Y(n1411) );
  BUFX4 U1644 ( .A(n1758), .Y(n1781) );
  NAND2X1 U1645 ( .A(pkt_data[28]), .B(n1781), .Y(n1405) );
  OAI21X1 U1646 ( .A(n1411), .B(n1787), .C(n1405), .Y(n891) );
  INVX1 U1647 ( .A(crc_left_d[20]), .Y(n1843) );
  OAI22X1 U1648 ( .A(n1804), .B(n1843), .C(n1406), .D(n1546), .Y(n1409) );
  INVX1 U1649 ( .A(crc_left_d[4]), .Y(n1826) );
  NAND2X1 U1650 ( .A(n1797), .B(n1850), .Y(n1428) );
  AOI21X1 U1651 ( .A(n1619), .B(crc_left_d[28]), .C(n1428), .Y(n1407) );
  OAI21X1 U1652 ( .A(n1545), .B(n1826), .C(n1407), .Y(n1408) );
  NOR2X1 U1653 ( .A(n1409), .B(n1408), .Y(n1410) );
  OAI21X1 U1654 ( .A(n1446), .B(n1411), .C(n1410), .Y(n1412) );
  AOI21X1 U1655 ( .A(xgmii_txd_d[4]), .B(n1624), .C(n1412), .Y(n1413) );
  OAI21X1 U1656 ( .A(n1414), .B(n1449), .C(n1413), .Y(\xgmii_tx.TXD [4]) );
  INVX1 U1657 ( .A(xgmii_tx_hold[61]), .Y(n1424) );
  NAND2X1 U1658 ( .A(pkt_data[61]), .B(pop_pkt), .Y(n1415) );
  OAI21X1 U1659 ( .A(n1787), .B(n1424), .C(n1415), .Y(n858) );
  INVX1 U1660 ( .A(xgmii_tx_hold[29]), .Y(n1421) );
  NAND2X1 U1661 ( .A(pkt_data[29]), .B(pop_pkt), .Y(n1416) );
  OAI21X1 U1662 ( .A(n1421), .B(n1784), .C(n1416), .Y(n890) );
  INVX1 U1663 ( .A(crc_left_d[21]), .Y(n1844) );
  OAI22X1 U1664 ( .A(n1804), .B(n1844), .C(n1537), .D(n1556), .Y(n1419) );
  INVX1 U1665 ( .A(crc_left_d[5]), .Y(n1828) );
  AOI21X1 U1666 ( .A(n1619), .B(crc_left_d[29]), .C(n1440), .Y(n1417) );
  OAI21X1 U1667 ( .A(n1545), .B(n1828), .C(n1417), .Y(n1418) );
  NOR2X1 U1668 ( .A(n1419), .B(n1418), .Y(n1420) );
  OAI21X1 U1669 ( .A(n1446), .B(n1421), .C(n1420), .Y(n1422) );
  AOI21X1 U1670 ( .A(xgmii_txd_d[5]), .B(n1613), .C(n1422), .Y(n1423) );
  OAI21X1 U1671 ( .A(n1424), .B(n1449), .C(n1423), .Y(\xgmii_tx.TXD [5]) );
  INVX1 U1672 ( .A(xgmii_tx_hold[62]), .Y(n1436) );
  NAND2X1 U1673 ( .A(pkt_data[62]), .B(pop_pkt), .Y(n1425) );
  OAI21X1 U1674 ( .A(pop_pkt), .B(n1436), .C(n1425), .Y(n857) );
  INVX1 U1675 ( .A(xgmii_tx_hold[30]), .Y(n1433) );
  BUFX4 U1676 ( .A(n1758), .Y(n1784) );
  NAND2X1 U1677 ( .A(pkt_data[30]), .B(n1784), .Y(n1426) );
  OAI21X1 U1678 ( .A(n1433), .B(n1781), .C(n1426), .Y(n889) );
  INVX1 U1679 ( .A(crc_left_d[22]), .Y(n1845) );
  OAI22X1 U1680 ( .A(n1804), .B(n1845), .C(n1427), .D(n1546), .Y(n1431) );
  INVX1 U1681 ( .A(crc_left_d[6]), .Y(n1830) );
  AOI21X1 U1682 ( .A(n1609), .B(crc_left_d[30]), .C(n1428), .Y(n1429) );
  OAI21X1 U1683 ( .A(n1545), .B(n1830), .C(n1429), .Y(n1430) );
  NOR2X1 U1684 ( .A(n1431), .B(n1430), .Y(n1432) );
  OAI21X1 U1685 ( .A(n1446), .B(n1433), .C(n1432), .Y(n1434) );
  AOI21X1 U1686 ( .A(xgmii_txd_d[6]), .B(n1624), .C(n1434), .Y(n1435) );
  OAI21X1 U1687 ( .A(n1436), .B(n1449), .C(n1435), .Y(\xgmii_tx.TXD [6]) );
  INVX1 U1688 ( .A(xgmii_tx_hold[63]), .Y(n1450) );
  NAND2X1 U1689 ( .A(pkt_data[63]), .B(pop_pkt), .Y(n1437) );
  OAI21X1 U1690 ( .A(n1784), .B(n1450), .C(n1437), .Y(n935) );
  INVX1 U1691 ( .A(xgmii_tx_hold[31]), .Y(n1445) );
  NAND2X1 U1692 ( .A(pkt_data[31]), .B(pop_pkt), .Y(n1438) );
  OAI21X1 U1693 ( .A(n1445), .B(n1787), .C(n1438), .Y(n888) );
  INVX1 U1694 ( .A(crc_left_d[23]), .Y(n1846) );
  OAI22X1 U1695 ( .A(n1804), .B(n1846), .C(n1439), .D(n1556), .Y(n1443) );
  INVX1 U1696 ( .A(crc_left_d[7]), .Y(n1833) );
  AOI21X1 U1697 ( .A(n1619), .B(crc_left_d[31]), .C(n1440), .Y(n1441) );
  OAI21X1 U1698 ( .A(n1545), .B(n1833), .C(n1441), .Y(n1442) );
  NOR2X1 U1699 ( .A(n1443), .B(n1442), .Y(n1444) );
  OAI21X1 U1700 ( .A(n1446), .B(n1445), .C(n1444), .Y(n1447) );
  AOI21X1 U1701 ( .A(xgmii_txd_d[7]), .B(n1613), .C(n1447), .Y(n1448) );
  OAI21X1 U1702 ( .A(n1450), .B(n1449), .C(n1448), .Y(\xgmii_tx.TXD [7]) );
  INVX1 U1703 ( .A(xgmii_tx_hold[40]), .Y(n1751) );
  BUFX4 U1704 ( .A(n1476), .Y(n1831) );
  AOI22X1 U1705 ( .A(crc_tx_d[16]), .B(n1831), .C(xgmii_tx_hold[8]), .D(n1483), 
        .Y(n1451) );
  OAI21X1 U1706 ( .A(n1751), .B(n987), .C(n1451), .Y(n1452) );
  AOI21X1 U1707 ( .A(xgmii_txd_d[16]), .B(n1624), .C(n1452), .Y(n1456) );
  NAND2X1 U1708 ( .A(n1494), .B(n1466), .Y(n1567) );
  AOI22X1 U1709 ( .A(n1612), .B(crc_left_d[0]), .C(crc_tx_d[24]), .D(n1617), 
        .Y(n1453) );
  OAI21X1 U1710 ( .A(n1657), .B(n1835), .C(n1453), .Y(n1454) );
  NOR2X1 U1711 ( .A(n1567), .B(n1454), .Y(n1455) );
  NAND2X1 U1712 ( .A(n1456), .B(n1455), .Y(\xgmii_tx.TXD [16]) );
  INVX1 U1713 ( .A(xgmii_tx_hold[41]), .Y(n1753) );
  AOI22X1 U1714 ( .A(crc_tx_d[17]), .B(n1831), .C(xgmii_tx_hold[9]), .D(n1483), 
        .Y(n1457) );
  OAI21X1 U1715 ( .A(n1753), .B(n987), .C(n1457), .Y(n1458) );
  AOI21X1 U1716 ( .A(xgmii_txd_d[17]), .B(n1613), .C(n1458), .Y(n1463) );
  AOI22X1 U1717 ( .A(n1612), .B(crc_left_d[1]), .C(crc_tx_d[25]), .D(n1617), 
        .Y(n1459) );
  OAI21X1 U1718 ( .A(n1657), .B(n1838), .C(n1459), .Y(n1460) );
  NOR2X1 U1719 ( .A(n1461), .B(n1460), .Y(n1462) );
  NAND2X1 U1720 ( .A(n1463), .B(n1462), .Y(\xgmii_tx.TXD [17]) );
  INVX1 U1721 ( .A(xgmii_tx_hold[42]), .Y(n1755) );
  AOI22X1 U1722 ( .A(crc_tx_d[18]), .B(n1831), .C(xgmii_tx_hold[10]), .D(n1483), .Y(n1464) );
  OAI21X1 U1723 ( .A(n1755), .B(n987), .C(n1464), .Y(n1465) );
  AOI21X1 U1724 ( .A(xgmii_txd_d[18]), .B(n1624), .C(n1465), .Y(n1472) );
  NAND2X1 U1725 ( .A(n1467), .B(n1466), .Y(n1587) );
  AOI22X1 U1726 ( .A(n1612), .B(crc_left_d[2]), .C(crc_tx_d[26]), .D(n1617), 
        .Y(n1468) );
  OAI21X1 U1727 ( .A(n1657), .B(n1469), .C(n1468), .Y(n1470) );
  NOR2X1 U1728 ( .A(n1587), .B(n1470), .Y(n1471) );
  NAND2X1 U1729 ( .A(n1472), .B(n1471), .Y(\xgmii_tx.TXD [18]) );
  INVX1 U1730 ( .A(xgmii_tx_hold[44]), .Y(n1760) );
  OAI21X1 U1731 ( .A(n1908), .B(n1481), .C(n1546), .Y(n1473) );
  AOI21X1 U1732 ( .A(xgmii_tx_hold[12]), .B(n1483), .C(n1473), .Y(n1474) );
  OAI21X1 U1733 ( .A(n1760), .B(n987), .C(n1474), .Y(n1475) );
  AOI21X1 U1734 ( .A(xgmii_txd_d[20]), .B(n1624), .C(n1475), .Y(n1480) );
  AOI22X1 U1735 ( .A(n1609), .B(crc_left_d[12]), .C(crc_tx_d[20]), .D(n1831), 
        .Y(n1477) );
  OAI21X1 U1736 ( .A(n1804), .B(n1826), .C(n1477), .Y(n1478) );
  NAND2X1 U1737 ( .A(n1480), .B(n1479), .Y(\xgmii_tx.TXD [20]) );
  INVX1 U1738 ( .A(xgmii_tx_hold[46]), .Y(n1764) );
  OAI21X1 U1739 ( .A(n1913), .B(n1481), .C(n1556), .Y(n1482) );
  AOI21X1 U1740 ( .A(xgmii_tx_hold[14]), .B(n1483), .C(n1482), .Y(n1484) );
  OAI21X1 U1741 ( .A(n1764), .B(n987), .C(n1484), .Y(n1485) );
  AOI21X1 U1742 ( .A(xgmii_txd_d[22]), .B(n1624), .C(n1485), .Y(n1489) );
  AOI22X1 U1743 ( .A(n1619), .B(crc_left_d[14]), .C(crc_tx_d[22]), .D(n1831), 
        .Y(n1486) );
  OAI21X1 U1744 ( .A(n1804), .B(n1830), .C(n1486), .Y(n1487) );
  NAND2X1 U1745 ( .A(n1489), .B(n1488), .Y(\xgmii_tx.TXD [22]) );
  INVX1 U1747 ( .A(xgmii_txc_d[0]), .Y(n1490) );
  OAI21X1 U1748 ( .A(n1491), .B(n1490), .C(n1502), .Y(\xgmii_tx.TXC [0]) );
  AOI21X1 U1749 ( .A(n1798), .B(xgmii_txc_d[3]), .C(n1581), .Y(n1492) );
  OAI21X1 U1750 ( .A(crc_bvalid_d[0]), .B(n1803), .C(n1492), .Y(
        \xgmii_tx.TXC [3]) );
  INVX1 U1751 ( .A(xgmii_tx_hold[16]), .Y(n1715) );
  INVX1 U1752 ( .A(xgmii_tx_hold[48]), .Y(n1768) );
  INVX1 U1753 ( .A(crc_left_d[0]), .Y(n1818) );
  AOI22X1 U1754 ( .A(n1509), .B(crc_left_d[16]), .C(crc_left_d[8]), .D(n1612), 
        .Y(n1493) );
  OAI21X1 U1755 ( .A(n1546), .B(n1818), .C(n1493), .Y(n1496) );
  OAI21X1 U1756 ( .A(n1900), .B(n1558), .C(n1494), .Y(n1495) );
  AOI21X1 U1757 ( .A(xgmii_txd_d[8]), .B(n1624), .C(n1497), .Y(n1498) );
  NAND2X1 U1758 ( .A(n1499), .B(n1498), .Y(n1500) );
  NOR2X1 U1759 ( .A(n1522), .B(n1500), .Y(n1501) );
  OAI21X1 U1760 ( .A(n1565), .B(n1715), .C(n1501), .Y(\xgmii_tx.TXD [8]) );
  INVX1 U1761 ( .A(xgmii_tx_hold[17]), .Y(n1717) );
  OAI21X1 U1762 ( .A(n1804), .B(n1838), .C(n1502), .Y(n1503) );
  AOI21X1 U1763 ( .A(crc_tx_d[25]), .B(n1831), .C(n1503), .Y(n1504) );
  OAI21X1 U1764 ( .A(n1556), .B(n1820), .C(n1504), .Y(n1507) );
  INVX1 U1765 ( .A(xgmii_tx_hold[49]), .Y(n1770) );
  AOI22X1 U1766 ( .A(crc_left_d[17]), .B(n1619), .C(xgmii_txd_d[9]), .D(n1590), 
        .Y(n1505) );
  OAI21X1 U1767 ( .A(n1770), .B(n1550), .C(n1505), .Y(n1506) );
  NOR2X1 U1768 ( .A(n1507), .B(n1506), .Y(n1508) );
  OAI21X1 U1769 ( .A(n1565), .B(n1717), .C(n1508), .Y(\xgmii_tx.TXD [9]) );
  INVX1 U1770 ( .A(xgmii_tx_hold[18]), .Y(n1719) );
  AOI22X1 U1771 ( .A(n1509), .B(crc_left_d[18]), .C(n1612), .D(crc_left_d[10]), 
        .Y(n1510) );
  OAI21X1 U1772 ( .A(n1546), .B(n1822), .C(n1510), .Y(n1511) );
  INVX1 U1773 ( .A(n1511), .Y(n1514) );
  OAI21X1 U1774 ( .A(n1904), .B(n1558), .C(n1545), .Y(n1512) );
  INVX1 U1775 ( .A(n1512), .Y(n1513) );
  NAND2X1 U1776 ( .A(n1514), .B(n1513), .Y(n1515) );
  AOI21X1 U1777 ( .A(xgmii_txd_d[10]), .B(n1613), .C(n1515), .Y(n1520) );
  NAND2X1 U1778 ( .A(xgmii_tx_hold[50]), .B(n1561), .Y(n1517) );
  NAND2X1 U1779 ( .A(n1467), .B(n1517), .Y(n1518) );
  AND2X1 U1780 ( .A(n1520), .B(n1519), .Y(n1521) );
  OAI21X1 U1781 ( .A(n1565), .B(n1719), .C(n1521), .Y(\xgmii_tx.TXD [10]) );
  INVX1 U1782 ( .A(xgmii_tx_hold[19]), .Y(n1721) );
  NOR2X1 U1783 ( .A(n1523), .B(n1522), .Y(n1557) );
  OAI21X1 U1784 ( .A(n1804), .B(n1524), .C(n1557), .Y(n1525) );
  AOI21X1 U1785 ( .A(n1609), .B(crc_left_d[19]), .C(n1525), .Y(n1526) );
  OAI21X1 U1786 ( .A(n1558), .B(n1906), .C(n1526), .Y(n1529) );
  INVX1 U1787 ( .A(xgmii_tx_hold[51]), .Y(n1774) );
  AOI22X1 U1788 ( .A(crc_left_d[3]), .B(n1540), .C(xgmii_txd_d[11]), .D(n1590), 
        .Y(n1527) );
  OAI21X1 U1789 ( .A(n1774), .B(n1550), .C(n1527), .Y(n1528) );
  NOR2X1 U1790 ( .A(n1529), .B(n1528), .Y(n1530) );
  OAI21X1 U1791 ( .A(n1565), .B(n1721), .C(n1530), .Y(\xgmii_tx.TXD [11]) );
  INVX1 U1792 ( .A(xgmii_tx_hold[20]), .Y(n1723) );
  OAI21X1 U1793 ( .A(n1556), .B(n1826), .C(n1545), .Y(n1531) );
  AOI21X1 U1794 ( .A(n1609), .B(crc_left_d[20]), .C(n1531), .Y(n1532) );
  OAI21X1 U1795 ( .A(n1558), .B(n1908), .C(n1532), .Y(n1535) );
  INVX1 U1796 ( .A(xgmii_tx_hold[52]), .Y(n1776) );
  AOI22X1 U1797 ( .A(crc_left_d[12]), .B(n1554), .C(xgmii_txd_d[12]), .D(n1590), .Y(n1533) );
  OAI21X1 U1798 ( .A(n1776), .B(n1550), .C(n1533), .Y(n1534) );
  NOR2X1 U1799 ( .A(n1535), .B(n1534), .Y(n1536) );
  OAI21X1 U1800 ( .A(n1565), .B(n1723), .C(n1536), .Y(\xgmii_tx.TXD [12]) );
  INVX1 U1801 ( .A(xgmii_tx_hold[21]), .Y(n1725) );
  OAI21X1 U1802 ( .A(n1804), .B(n1537), .C(n1557), .Y(n1538) );
  AOI21X1 U1803 ( .A(n1609), .B(crc_left_d[21]), .C(n1538), .Y(n1539) );
  OAI21X1 U1804 ( .A(n1558), .B(n1910), .C(n1539), .Y(n1543) );
  INVX1 U1805 ( .A(xgmii_tx_hold[53]), .Y(n1778) );
  AOI22X1 U1806 ( .A(crc_left_d[5]), .B(n1540), .C(xgmii_txd_d[13]), .D(n1590), 
        .Y(n1541) );
  OAI21X1 U1807 ( .A(n1778), .B(n1550), .C(n1541), .Y(n1542) );
  NOR2X1 U1808 ( .A(n1543), .B(n1542), .Y(n1544) );
  OAI21X1 U1809 ( .A(n1565), .B(n1725), .C(n1544), .Y(\xgmii_tx.TXD [13]) );
  INVX1 U1810 ( .A(xgmii_tx_hold[22]), .Y(n1727) );
  OAI21X1 U1811 ( .A(n1546), .B(n1830), .C(n1545), .Y(n1547) );
  AOI21X1 U1812 ( .A(n1619), .B(crc_left_d[22]), .C(n1547), .Y(n1548) );
  OAI21X1 U1813 ( .A(n1558), .B(n1913), .C(n1548), .Y(n1552) );
  INVX1 U1814 ( .A(xgmii_tx_hold[54]), .Y(n1780) );
  AOI22X1 U1815 ( .A(crc_left_d[14]), .B(n1612), .C(xgmii_txd_d[14]), .D(n1590), .Y(n1549) );
  OAI21X1 U1816 ( .A(n1780), .B(n1550), .C(n1549), .Y(n1551) );
  NOR2X1 U1817 ( .A(n1552), .B(n1551), .Y(n1553) );
  OAI21X1 U1818 ( .A(n1565), .B(n1727), .C(n1553), .Y(\xgmii_tx.TXD [14]) );
  INVX1 U1819 ( .A(xgmii_tx_hold[23]), .Y(n1729) );
  AOI22X1 U1820 ( .A(n1619), .B(crc_left_d[23]), .C(n1554), .D(crc_left_d[15]), 
        .Y(n1555) );
  OAI21X1 U1821 ( .A(n1556), .B(n1833), .C(n1555), .Y(n1560) );
  OAI21X1 U1822 ( .A(n1558), .B(n1849), .C(n1557), .Y(n1559) );
  NOR2X1 U1823 ( .A(n1560), .B(n1559), .Y(n1563) );
  AOI22X1 U1824 ( .A(xgmii_txd_d[15]), .B(n1613), .C(xgmii_tx_hold[55]), .D(
        n1561), .Y(n1562) );
  OAI21X1 U1825 ( .A(n1565), .B(n1729), .C(n1564), .Y(\xgmii_tx.TXD [15]) );
  AOI22X1 U1826 ( .A(crc_tx_d[8]), .B(n1831), .C(n1618), .D(xgmii_tx_hold[0]), 
        .Y(n1578) );
  AOI22X1 U1827 ( .A(crc_tx_d[24]), .B(n1585), .C(crc_tx_d[16]), .D(n1617), 
        .Y(n1572) );
  NOR2X1 U1828 ( .A(n1612), .B(n1567), .Y(n1568) );
  OAI21X1 U1829 ( .A(n1657), .B(n1818), .C(n1568), .Y(n1569) );
  NOR2X1 U1830 ( .A(n1570), .B(n1569), .Y(n1571) );
  NAND2X1 U1831 ( .A(bvalid[4]), .B(n1573), .Y(n1575) );
  OAI21X1 U1832 ( .A(n1317), .B(n1575), .C(n1574), .Y(n1625) );
  AOI22X1 U1833 ( .A(xgmii_tx_hold[32]), .B(n1625), .C(xgmii_txd_d[24]), .D(
        n1590), .Y(n1576) );
  NAND3X1 U1834 ( .A(n1578), .B(n1577), .C(n1576), .Y(\xgmii_tx.TXD [24]) );
  AOI22X1 U1835 ( .A(n1618), .B(xgmii_tx_hold[1]), .C(crc_tx_d[17]), .D(n1617), 
        .Y(n1584) );
  AOI22X1 U1836 ( .A(crc_tx_d[25]), .B(n1585), .C(crc_tx_d[9]), .D(n1831), .Y(
        n1579) );
  OAI21X1 U1837 ( .A(n1657), .B(n1820), .C(n1579), .Y(n1580) );
  NOR2X1 U1838 ( .A(n1581), .B(n1580), .Y(n1583) );
  AOI22X1 U1839 ( .A(xgmii_tx_hold[33]), .B(n1625), .C(xgmii_txd_d[25]), .D(
        n1590), .Y(n1582) );
  NAND3X1 U1840 ( .A(n1584), .B(n1583), .C(n1582), .Y(\xgmii_tx.TXD [25]) );
  AOI22X1 U1841 ( .A(crc_tx_d[10]), .B(n1831), .C(n1618), .D(xgmii_tx_hold[2]), 
        .Y(n1593) );
  INVX1 U1842 ( .A(n1585), .Y(n1621) );
  OAI21X1 U1843 ( .A(n1904), .B(n1621), .C(n1804), .Y(n1586) );
  NOR2X1 U1844 ( .A(n1587), .B(n1586), .Y(n1588) );
  OAI21X1 U1845 ( .A(n1657), .B(n1822), .C(n1588), .Y(n1589) );
  AOI21X1 U1846 ( .A(crc_tx_d[18]), .B(n1617), .C(n1589), .Y(n1592) );
  AOI22X1 U1847 ( .A(xgmii_tx_hold[34]), .B(n1625), .C(xgmii_txd_d[26]), .D(
        n1590), .Y(n1591) );
  NAND3X1 U1848 ( .A(n1593), .B(n1592), .C(n1591), .Y(\xgmii_tx.TXD [26]) );
  AOI22X1 U1849 ( .A(n1618), .B(xgmii_tx_hold[3]), .C(crc_tx_d[19]), .D(n1617), 
        .Y(n1598) );
  NAND2X1 U1850 ( .A(n1791), .B(n1804), .Y(n1623) );
  AOI22X1 U1851 ( .A(n1619), .B(crc_left_d[3]), .C(crc_tx_d[11]), .D(n1831), 
        .Y(n1594) );
  OAI21X1 U1852 ( .A(n1621), .B(n1906), .C(n1594), .Y(n1595) );
  NOR2X1 U1853 ( .A(n1623), .B(n1595), .Y(n1597) );
  AOI22X1 U1854 ( .A(xgmii_tx_hold[35]), .B(n1625), .C(xgmii_txd_d[27]), .D(
        n1624), .Y(n1596) );
  NAND3X1 U1855 ( .A(n1598), .B(n1597), .C(n1596), .Y(\xgmii_tx.TXD [27]) );
  AOI22X1 U1856 ( .A(crc_tx_d[12]), .B(n1831), .C(n1618), .D(xgmii_tx_hold[4]), 
        .Y(n1603) );
  AOI22X1 U1857 ( .A(n1619), .B(crc_left_d[4]), .C(crc_tx_d[20]), .D(n1617), 
        .Y(n1599) );
  OAI21X1 U1858 ( .A(n1621), .B(n1908), .C(n1599), .Y(n1600) );
  NOR2X1 U1859 ( .A(n1612), .B(n1600), .Y(n1602) );
  AOI22X1 U1860 ( .A(xgmii_tx_hold[36]), .B(n1625), .C(xgmii_txd_d[28]), .D(
        n1613), .Y(n1601) );
  NAND3X1 U1861 ( .A(n1603), .B(n1602), .C(n1601), .Y(\xgmii_tx.TXD [28]) );
  AOI22X1 U1862 ( .A(n1618), .B(xgmii_tx_hold[5]), .C(crc_tx_d[21]), .D(n1617), 
        .Y(n1608) );
  AOI22X1 U1863 ( .A(n1609), .B(crc_left_d[5]), .C(crc_tx_d[13]), .D(n1831), 
        .Y(n1604) );
  OAI21X1 U1864 ( .A(n1621), .B(n1910), .C(n1604), .Y(n1605) );
  NOR2X1 U1865 ( .A(n1623), .B(n1605), .Y(n1607) );
  AOI22X1 U1866 ( .A(xgmii_tx_hold[37]), .B(n1625), .C(xgmii_txd_d[29]), .D(
        n1624), .Y(n1606) );
  NAND3X1 U1867 ( .A(n1608), .B(n1607), .C(n1606), .Y(\xgmii_tx.TXD [29]) );
  AOI22X1 U1868 ( .A(crc_tx_d[14]), .B(n1831), .C(n1618), .D(xgmii_tx_hold[6]), 
        .Y(n1616) );
  AOI22X1 U1869 ( .A(n1609), .B(crc_left_d[6]), .C(crc_tx_d[22]), .D(n1617), 
        .Y(n1610) );
  OAI21X1 U1870 ( .A(n1621), .B(n1913), .C(n1610), .Y(n1611) );
  NOR2X1 U1871 ( .A(n1612), .B(n1611), .Y(n1615) );
  AOI22X1 U1872 ( .A(xgmii_tx_hold[38]), .B(n1625), .C(xgmii_txd_d[30]), .D(
        n1613), .Y(n1614) );
  NAND3X1 U1873 ( .A(n1616), .B(n1615), .C(n1614), .Y(\xgmii_tx.TXD [30]) );
  AOI22X1 U1874 ( .A(n1618), .B(xgmii_tx_hold[7]), .C(crc_tx_d[23]), .D(n1617), 
        .Y(n1628) );
  AOI22X1 U1875 ( .A(n1619), .B(crc_left_d[7]), .C(crc_tx_d[15]), .D(n1831), 
        .Y(n1620) );
  OAI21X1 U1876 ( .A(n1621), .B(n1849), .C(n1620), .Y(n1622) );
  NOR2X1 U1877 ( .A(n1623), .B(n1622), .Y(n1627) );
  AOI22X1 U1878 ( .A(xgmii_tx_hold[39]), .B(n1625), .C(xgmii_txd_d[31]), .D(
        n1624), .Y(n1626) );
  NAND3X1 U1879 ( .A(n1628), .B(n1627), .C(n1626), .Y(\xgmii_tx.TXD [31]) );
  INVX1 U1880 ( .A(cnt128_d[0]), .Y(n1630) );
  NAND2X1 U1881 ( .A(n1645), .B(n1630), .Y(n1629) );
  OAI21X1 U1882 ( .A(n1631), .B(n1630), .C(n1629), .Y(n980) );
  NAND2X1 U1883 ( .A(n1645), .B(n1632), .Y(n1636) );
  OAI21X1 U1884 ( .A(n1634), .B(n1633), .C(cnt128_d[2]), .Y(n1635) );
  OAI21X1 U1885 ( .A(n1637), .B(n1636), .C(n1635), .Y(n978) );
  NAND2X1 U1886 ( .A(n1645), .B(n1638), .Y(n1642) );
  OAI21X1 U1887 ( .A(n1640), .B(n1639), .C(cnt128_d[4]), .Y(n1641) );
  OAI21X1 U1888 ( .A(n1643), .B(n1642), .C(n1641), .Y(n976) );
  NAND2X1 U1889 ( .A(n1645), .B(n1644), .Y(n1649) );
  OAI21X1 U1890 ( .A(n1647), .B(n1646), .C(cnt128_d[6]), .Y(n1648) );
  OAI21X1 U1891 ( .A(n1650), .B(n1649), .C(n1648), .Y(n974) );
  NAND2X1 U1892 ( .A(bvalidin[0]), .B(n1787), .Y(n1651) );
  OAI21X1 U1893 ( .A(n1787), .B(n1652), .C(n1651), .Y(n941) );
  INVX1 U1894 ( .A(IDC_cnt_d[0]), .Y(n1805) );
  MUX2X1 U1895 ( .B(IDC_cnt_d[0]), .A(n1805), .S(n1653), .Y(n938) );
  OAI21X1 U1896 ( .A(n1655), .B(IDC_cnt_d[0]), .C(n1654), .Y(n1656) );
  OAI21X1 U1897 ( .A(IDC_cnt_d[0]), .B(n1657), .C(n1656), .Y(n1658) );
  XOR2X1 U1898 ( .A(IDC_cnt_d[1]), .B(n1658), .Y(n937) );
  NAND2X1 U1899 ( .A(bvalidin[1]), .B(n1787), .Y(n1659) );
  OAI21X1 U1900 ( .A(pop_pkt), .B(n1099), .C(n1659), .Y(n934) );
  INVX1 U1901 ( .A(bvalid[2]), .Y(n1661) );
  NAND2X1 U1902 ( .A(bvalidin[2]), .B(n1787), .Y(n1660) );
  OAI21X1 U1903 ( .A(n1758), .B(n1661), .C(n1660), .Y(n933) );
  INVX1 U1904 ( .A(bvalid[3]), .Y(n1663) );
  NAND2X1 U1905 ( .A(bvalidin[3]), .B(n1787), .Y(n1662) );
  OAI21X1 U1906 ( .A(n1758), .B(n1663), .C(n1662), .Y(n932) );
  NAND2X1 U1907 ( .A(bvalidin[4]), .B(n1787), .Y(n1664) );
  OAI21X1 U1908 ( .A(n1758), .B(n1665), .C(n1664), .Y(n931) );
  INVX1 U1909 ( .A(pkt_ctrl_d[0]), .Y(n1667) );
  NAND2X1 U1910 ( .A(pkt_ctrl[0]), .B(n1781), .Y(n1666) );
  OAI21X1 U1911 ( .A(n1787), .B(n1667), .C(n1666), .Y(n927) );
  INVX1 U1912 ( .A(pkt_ctrl_d[1]), .Y(n1669) );
  NAND2X1 U1913 ( .A(pkt_ctrl[1]), .B(n1781), .Y(n1668) );
  OAI21X1 U1914 ( .A(n1784), .B(n1669), .C(n1668), .Y(n926) );
  INVX1 U1915 ( .A(pkt_ctrl_d[2]), .Y(n1671) );
  NAND2X1 U1916 ( .A(pkt_ctrl[2]), .B(n1781), .Y(n1670) );
  OAI21X1 U1917 ( .A(n1781), .B(n1671), .C(n1670), .Y(n925) );
  INVX1 U1918 ( .A(pkt_ctrl_d[3]), .Y(n1673) );
  NAND2X1 U1919 ( .A(pkt_ctrl[3]), .B(n1781), .Y(n1672) );
  OAI21X1 U1920 ( .A(n1784), .B(n1673), .C(n1672), .Y(n924) );
  INVX1 U1921 ( .A(pkt_ctrl_d[4]), .Y(n1675) );
  NAND2X1 U1922 ( .A(pkt_ctrl[4]), .B(n1781), .Y(n1674) );
  OAI21X1 U1923 ( .A(n1787), .B(n1675), .C(n1674), .Y(n923) );
  NAND2X1 U1924 ( .A(pkt_ctrl[5]), .B(n1781), .Y(n1676) );
  OAI21X1 U1925 ( .A(pop_pkt), .B(n1677), .C(n1676), .Y(n922) );
  INVX1 U1926 ( .A(pkt_ctrl_d[6]), .Y(n1679) );
  NAND2X1 U1927 ( .A(pkt_ctrl[6]), .B(n1781), .Y(n1678) );
  OAI21X1 U1928 ( .A(n1781), .B(n1679), .C(n1678), .Y(n921) );
  INVX1 U1929 ( .A(pkt_ctrl_d[7]), .Y(n1681) );
  NAND2X1 U1930 ( .A(pkt_ctrl[7]), .B(n1781), .Y(n1680) );
  OAI21X1 U1931 ( .A(n1784), .B(n1681), .C(n1680), .Y(n920) );
  INVX1 U1932 ( .A(xgmii_tx_hold[0]), .Y(n1683) );
  NAND2X1 U1933 ( .A(pkt_data[0]), .B(n1781), .Y(n1682) );
  OAI21X1 U1934 ( .A(n1787), .B(n1683), .C(n1682), .Y(n919) );
  INVX1 U1935 ( .A(xgmii_tx_hold[1]), .Y(n1685) );
  NAND2X1 U1936 ( .A(pkt_data[1]), .B(n1781), .Y(n1684) );
  OAI21X1 U1937 ( .A(n1787), .B(n1685), .C(n1684), .Y(n918) );
  INVX1 U1938 ( .A(xgmii_tx_hold[2]), .Y(n1687) );
  NAND2X1 U1939 ( .A(pkt_data[2]), .B(n1781), .Y(n1686) );
  OAI21X1 U1940 ( .A(n1781), .B(n1687), .C(n1686), .Y(n917) );
  INVX1 U1941 ( .A(xgmii_tx_hold[3]), .Y(n1689) );
  NAND2X1 U1942 ( .A(pkt_data[3]), .B(n1781), .Y(n1688) );
  OAI21X1 U1943 ( .A(n1784), .B(n1689), .C(n1688), .Y(n916) );
  INVX1 U1944 ( .A(xgmii_tx_hold[4]), .Y(n1691) );
  NAND2X1 U1945 ( .A(pkt_data[4]), .B(n1781), .Y(n1690) );
  OAI21X1 U1946 ( .A(n1784), .B(n1691), .C(n1690), .Y(n915) );
  INVX1 U1947 ( .A(xgmii_tx_hold[5]), .Y(n1693) );
  NAND2X1 U1948 ( .A(pkt_data[5]), .B(n1784), .Y(n1692) );
  OAI21X1 U1949 ( .A(n1787), .B(n1693), .C(n1692), .Y(n914) );
  INVX1 U1950 ( .A(xgmii_tx_hold[6]), .Y(n1695) );
  NAND2X1 U1951 ( .A(pkt_data[6]), .B(n1784), .Y(n1694) );
  OAI21X1 U1952 ( .A(n1781), .B(n1695), .C(n1694), .Y(n913) );
  INVX1 U1953 ( .A(xgmii_tx_hold[7]), .Y(n1697) );
  NAND2X1 U1954 ( .A(pkt_data[7]), .B(n1784), .Y(n1696) );
  OAI21X1 U1955 ( .A(n1787), .B(n1697), .C(n1696), .Y(n912) );
  INVX1 U1956 ( .A(xgmii_tx_hold[8]), .Y(n1699) );
  NAND2X1 U1957 ( .A(pkt_data[8]), .B(n1784), .Y(n1698) );
  OAI21X1 U1958 ( .A(n1784), .B(n1699), .C(n1698), .Y(n911) );
  INVX1 U1959 ( .A(xgmii_tx_hold[9]), .Y(n1701) );
  NAND2X1 U1960 ( .A(pkt_data[9]), .B(n1784), .Y(n1700) );
  OAI21X1 U1961 ( .A(pop_pkt), .B(n1701), .C(n1700), .Y(n910) );
  INVX1 U1962 ( .A(xgmii_tx_hold[10]), .Y(n1703) );
  NAND2X1 U1963 ( .A(pkt_data[10]), .B(n1784), .Y(n1702) );
  OAI21X1 U1964 ( .A(n1784), .B(n1703), .C(n1702), .Y(n909) );
  INVX1 U1965 ( .A(xgmii_tx_hold[11]), .Y(n1705) );
  NAND2X1 U1966 ( .A(pkt_data[11]), .B(n1784), .Y(n1704) );
  OAI21X1 U1967 ( .A(n1781), .B(n1705), .C(n1704), .Y(n908) );
  INVX1 U1968 ( .A(xgmii_tx_hold[12]), .Y(n1707) );
  NAND2X1 U1969 ( .A(pkt_data[12]), .B(n1784), .Y(n1706) );
  OAI21X1 U1970 ( .A(n1758), .B(n1707), .C(n1706), .Y(n907) );
  INVX1 U1971 ( .A(xgmii_tx_hold[13]), .Y(n1709) );
  NAND2X1 U1972 ( .A(pkt_data[13]), .B(n1784), .Y(n1708) );
  OAI21X1 U1973 ( .A(n1781), .B(n1709), .C(n1708), .Y(n906) );
  INVX1 U1974 ( .A(xgmii_tx_hold[14]), .Y(n1711) );
  NAND2X1 U1975 ( .A(pkt_data[14]), .B(n1784), .Y(n1710) );
  OAI21X1 U1976 ( .A(n1758), .B(n1711), .C(n1710), .Y(n905) );
  INVX1 U1977 ( .A(xgmii_tx_hold[15]), .Y(n1713) );
  NAND2X1 U1978 ( .A(pkt_data[15]), .B(n1784), .Y(n1712) );
  OAI21X1 U1979 ( .A(n1758), .B(n1713), .C(n1712), .Y(n904) );
  NAND2X1 U1980 ( .A(pkt_data[16]), .B(n1784), .Y(n1714) );
  OAI21X1 U1981 ( .A(n1781), .B(n1715), .C(n1714), .Y(n903) );
  NAND2X1 U1982 ( .A(pkt_data[17]), .B(n1784), .Y(n1716) );
  OAI21X1 U1983 ( .A(n1781), .B(n1717), .C(n1716), .Y(n902) );
  NAND2X1 U1984 ( .A(pkt_data[18]), .B(n1784), .Y(n1718) );
  OAI21X1 U1985 ( .A(n1781), .B(n1719), .C(n1718), .Y(n901) );
  NAND2X1 U1986 ( .A(pkt_data[19]), .B(n1784), .Y(n1720) );
  OAI21X1 U1987 ( .A(n1784), .B(n1721), .C(n1720), .Y(n900) );
  NAND2X1 U1988 ( .A(pkt_data[20]), .B(n1784), .Y(n1722) );
  OAI21X1 U1989 ( .A(n1787), .B(n1723), .C(n1722), .Y(n899) );
  NAND2X1 U1990 ( .A(pkt_data[21]), .B(n1784), .Y(n1724) );
  OAI21X1 U1991 ( .A(pop_pkt), .B(n1725), .C(n1724), .Y(n898) );
  NAND2X1 U1992 ( .A(pkt_data[22]), .B(n1758), .Y(n1726) );
  OAI21X1 U1993 ( .A(n1787), .B(n1727), .C(n1726), .Y(n897) );
  NAND2X1 U1994 ( .A(pkt_data[23]), .B(n1758), .Y(n1728) );
  OAI21X1 U1995 ( .A(n1784), .B(n1729), .C(n1728), .Y(n896) );
  INVX1 U1996 ( .A(xgmii_tx_hold[24]), .Y(n1731) );
  NAND2X1 U1997 ( .A(pkt_data[24]), .B(n1758), .Y(n1730) );
  OAI21X1 U1998 ( .A(n1781), .B(n1731), .C(n1730), .Y(n895) );
  INVX1 U1999 ( .A(xgmii_tx_hold[25]), .Y(n1733) );
  NAND2X1 U2000 ( .A(pkt_data[25]), .B(n1758), .Y(n1732) );
  OAI21X1 U2001 ( .A(n1787), .B(n1733), .C(n1732), .Y(n894) );
  INVX1 U2002 ( .A(xgmii_tx_hold[32]), .Y(n1735) );
  NAND2X1 U2003 ( .A(pkt_data[32]), .B(n1758), .Y(n1734) );
  OAI21X1 U2004 ( .A(n1784), .B(n1735), .C(n1734), .Y(n887) );
  INVX1 U2005 ( .A(xgmii_tx_hold[33]), .Y(n1737) );
  NAND2X1 U2006 ( .A(pkt_data[33]), .B(n1787), .Y(n1736) );
  OAI21X1 U2007 ( .A(n1781), .B(n1737), .C(n1736), .Y(n886) );
  INVX1 U2008 ( .A(xgmii_tx_hold[34]), .Y(n1739) );
  NAND2X1 U2009 ( .A(pkt_data[34]), .B(n1787), .Y(n1738) );
  OAI21X1 U2010 ( .A(n1781), .B(n1739), .C(n1738), .Y(n885) );
  INVX1 U2011 ( .A(xgmii_tx_hold[35]), .Y(n1741) );
  NAND2X1 U2012 ( .A(pkt_data[35]), .B(n1787), .Y(n1740) );
  OAI21X1 U2013 ( .A(n1758), .B(n1741), .C(n1740), .Y(n884) );
  INVX1 U2014 ( .A(xgmii_tx_hold[36]), .Y(n1743) );
  NAND2X1 U2015 ( .A(pkt_data[36]), .B(n1787), .Y(n1742) );
  OAI21X1 U2016 ( .A(n1758), .B(n1743), .C(n1742), .Y(n883) );
  INVX1 U2017 ( .A(xgmii_tx_hold[37]), .Y(n1745) );
  NAND2X1 U2018 ( .A(pkt_data[37]), .B(n1787), .Y(n1744) );
  OAI21X1 U2019 ( .A(n1784), .B(n1745), .C(n1744), .Y(n882) );
  INVX1 U2020 ( .A(xgmii_tx_hold[38]), .Y(n1747) );
  NAND2X1 U2021 ( .A(pkt_data[38]), .B(n1787), .Y(n1746) );
  OAI21X1 U2022 ( .A(n1758), .B(n1747), .C(n1746), .Y(n881) );
  INVX1 U2023 ( .A(xgmii_tx_hold[39]), .Y(n1749) );
  NAND2X1 U2024 ( .A(pkt_data[39]), .B(n1781), .Y(n1748) );
  OAI21X1 U2025 ( .A(n1781), .B(n1749), .C(n1748), .Y(n880) );
  NAND2X1 U2026 ( .A(pkt_data[40]), .B(n1758), .Y(n1750) );
  OAI21X1 U2027 ( .A(n1781), .B(n1751), .C(n1750), .Y(n879) );
  NAND2X1 U2028 ( .A(pkt_data[41]), .B(n1784), .Y(n1752) );
  OAI21X1 U2029 ( .A(n1781), .B(n1753), .C(n1752), .Y(n878) );
  NAND2X1 U2030 ( .A(pkt_data[42]), .B(n1787), .Y(n1754) );
  OAI21X1 U2031 ( .A(n1781), .B(n1755), .C(n1754), .Y(n877) );
  NAND2X1 U2032 ( .A(pkt_data[43]), .B(n1787), .Y(n1756) );
  OAI21X1 U2033 ( .A(n1758), .B(n1757), .C(n1756), .Y(n876) );
  NAND2X1 U2034 ( .A(pkt_data[44]), .B(pop_pkt), .Y(n1759) );
  OAI21X1 U2035 ( .A(pop_pkt), .B(n1760), .C(n1759), .Y(n875) );
  NAND2X1 U2036 ( .A(pkt_data[45]), .B(n1781), .Y(n1761) );
  OAI21X1 U2037 ( .A(n1781), .B(n1762), .C(n1761), .Y(n874) );
  NAND2X1 U2038 ( .A(pkt_data[46]), .B(n1781), .Y(n1763) );
  OAI21X1 U2039 ( .A(pop_pkt), .B(n1764), .C(n1763), .Y(n873) );
  NAND2X1 U2040 ( .A(pkt_data[47]), .B(pop_pkt), .Y(n1765) );
  OAI21X1 U2041 ( .A(n1787), .B(n1766), .C(n1765), .Y(n872) );
  NAND2X1 U2042 ( .A(pkt_data[48]), .B(n1787), .Y(n1767) );
  OAI21X1 U2043 ( .A(n1784), .B(n1768), .C(n1767), .Y(n871) );
  NAND2X1 U2044 ( .A(pkt_data[49]), .B(pop_pkt), .Y(n1769) );
  OAI21X1 U2045 ( .A(pop_pkt), .B(n1770), .C(n1769), .Y(n870) );
  INVX1 U2046 ( .A(xgmii_tx_hold[50]), .Y(n1772) );
  NAND2X1 U2047 ( .A(pkt_data[50]), .B(pop_pkt), .Y(n1771) );
  OAI21X1 U2048 ( .A(n1787), .B(n1772), .C(n1771), .Y(n869) );
  NAND2X1 U2049 ( .A(pkt_data[51]), .B(pop_pkt), .Y(n1773) );
  OAI21X1 U2050 ( .A(n1784), .B(n1774), .C(n1773), .Y(n868) );
  NAND2X1 U2051 ( .A(pkt_data[52]), .B(pop_pkt), .Y(n1775) );
  OAI21X1 U2052 ( .A(n1784), .B(n1776), .C(n1775), .Y(n867) );
  NAND2X1 U2053 ( .A(pkt_data[53]), .B(n1787), .Y(n1777) );
  OAI21X1 U2054 ( .A(n1787), .B(n1778), .C(n1777), .Y(n866) );
  NAND2X1 U2055 ( .A(pkt_data[54]), .B(pop_pkt), .Y(n1779) );
  OAI21X1 U2056 ( .A(pop_pkt), .B(n1780), .C(n1779), .Y(n865) );
  INVX1 U2057 ( .A(xgmii_tx_hold[55]), .Y(n1783) );
  NAND2X1 U2058 ( .A(pkt_data[55]), .B(n1781), .Y(n1782) );
  OAI21X1 U2059 ( .A(n1784), .B(n1783), .C(n1782), .Y(n864) );
  NAND2X1 U2060 ( .A(pkt_data[56]), .B(n1787), .Y(n1785) );
  OAI21X1 U2061 ( .A(n1787), .B(n1786), .C(n1785), .Y(n863) );
  NAND2X1 U2062 ( .A(pkt_data[57]), .B(pop_pkt), .Y(n1788) );
  OAI21X1 U2063 ( .A(pop_pkt), .B(n1789), .C(n1788), .Y(n862) );
  NAND2X1 U2064 ( .A(n1791), .B(n1790), .Y(n1792) );
  AOI21X1 U2065 ( .A(n1794), .B(n1793), .C(n1792), .Y(n1796) );
  NAND3X1 U2066 ( .A(n1797), .B(n1796), .C(n1795), .Y(n1799) );
  NOR2X1 U2067 ( .A(n1799), .B(n1798), .Y(n1812) );
  INVX1 U2068 ( .A(crc_bvalid_d[1]), .Y(n1800) );
  NAND2X1 U2069 ( .A(crc_bvalid_d[0]), .B(n1800), .Y(n1801) );
  OAI21X1 U2070 ( .A(IDC_cnt_d[0]), .B(n1801), .C(IDC_cnt_d[1]), .Y(n1802) );
  OAI21X1 U2071 ( .A(n1803), .B(n1802), .C(n1816), .Y(n1808) );
  OAI21X1 U2072 ( .A(n1806), .B(n1805), .C(n1804), .Y(n1807) );
  NOR2X1 U2073 ( .A(n1808), .B(n1807), .Y(n1809) );
  OAI21X1 U2074 ( .A(n1812), .B(n1810), .C(n1809), .Y(n856) );
  NAND2X1 U2075 ( .A(n1812), .B(n1811), .Y(n1814) );
  AOI21X1 U2076 ( .A(n1814), .B(idlernd_cnt_d[1]), .C(n1813), .Y(n1815) );
  OAI21X1 U2077 ( .A(idlernd_cnt_d[1]), .B(n1816), .C(n1815), .Y(n855) );
  OAI21X1 U2078 ( .A(n1831), .B(n1836), .C(crc_tx_d[0]), .Y(n1817) );
  OAI21X1 U2079 ( .A(n1847), .B(n1818), .C(n1817), .Y(n854) );
  OAI21X1 U2080 ( .A(n1831), .B(n1836), .C(crc_tx_d[1]), .Y(n1819) );
  OAI21X1 U2081 ( .A(n1847), .B(n1820), .C(n1819), .Y(n853) );
  OAI21X1 U2082 ( .A(n1831), .B(n1836), .C(crc_tx_d[2]), .Y(n1821) );
  OAI21X1 U2083 ( .A(n1847), .B(n1822), .C(n1821), .Y(n852) );
  OAI21X1 U2084 ( .A(n1831), .B(n1836), .C(crc_tx_d[3]), .Y(n1823) );
  OAI21X1 U2085 ( .A(n1847), .B(n1824), .C(n1823), .Y(n851) );
  OAI21X1 U2086 ( .A(n1831), .B(n1836), .C(crc_tx_d[4]), .Y(n1825) );
  OAI21X1 U2087 ( .A(n1847), .B(n1826), .C(n1825), .Y(n850) );
  OAI21X1 U2088 ( .A(n1831), .B(n1836), .C(crc_tx_d[5]), .Y(n1827) );
  OAI21X1 U2089 ( .A(n1847), .B(n1828), .C(n1827), .Y(n849) );
  OAI21X1 U2090 ( .A(n1831), .B(n1836), .C(crc_tx_d[6]), .Y(n1829) );
  OAI21X1 U2091 ( .A(n1847), .B(n1830), .C(n1829), .Y(n848) );
  OAI21X1 U2092 ( .A(n1831), .B(n1836), .C(crc_tx_d[7]), .Y(n1832) );
  OAI21X1 U2093 ( .A(n1847), .B(n1833), .C(n1832), .Y(n847) );
  NAND2X1 U2094 ( .A(crc_tx_d[8]), .B(n1836), .Y(n1834) );
  OAI21X1 U2095 ( .A(n1847), .B(n1835), .C(n1834), .Y(n846) );
  NAND2X1 U2096 ( .A(crc_tx_d[9]), .B(n1836), .Y(n1837) );
  OAI21X1 U2097 ( .A(n1847), .B(n1838), .C(n1837), .Y(n845) );
  INVX1 U2098 ( .A(crc_tx_d[16]), .Y(n1884) );
  INVX1 U2099 ( .A(crc_left_d[16]), .Y(n1839) );
  OAI22X1 U2100 ( .A(n1372), .B(n1884), .C(n1847), .D(n1839), .Y(n838) );
  INVX1 U2101 ( .A(crc_tx_d[17]), .Y(n1886) );
  OAI22X1 U2102 ( .A(n1372), .B(n1886), .C(n1847), .D(n1840), .Y(n837) );
  INVX1 U2103 ( .A(crc_tx_d[18]), .Y(n1888) );
  OAI22X1 U2104 ( .A(n1372), .B(n1888), .C(n1847), .D(n1841), .Y(n836) );
  OAI22X1 U2105 ( .A(n1372), .B(n1890), .C(n1847), .D(n1842), .Y(n835) );
  INVX1 U2106 ( .A(crc_tx_d[20]), .Y(n1892) );
  OAI22X1 U2107 ( .A(n1372), .B(n1892), .C(n1847), .D(n1843), .Y(n834) );
  OAI22X1 U2108 ( .A(n1372), .B(n1894), .C(n1847), .D(n1844), .Y(n833) );
  INVX1 U2109 ( .A(crc_tx_d[22]), .Y(n1896) );
  OAI22X1 U2110 ( .A(n1372), .B(n1896), .C(n1847), .D(n1845), .Y(n832) );
  OAI22X1 U2111 ( .A(n1372), .B(n1898), .C(n1847), .D(n1846), .Y(n831) );
  INVX1 U2112 ( .A(n1850), .Y(n1911) );
  NAND2X1 U2113 ( .A(n986), .B(pkt_crc[31]), .Y(n1848) );
  OAI21X1 U2114 ( .A(pop_crc), .B(n1849), .C(n1848), .Y(n822) );
  INVX1 U2115 ( .A(crc_tx_d[0]), .Y(n1852) );
  NAND2X1 U2116 ( .A(n986), .B(pkt_crc[0]), .Y(n1851) );
  OAI21X1 U2117 ( .A(pop_crc), .B(n1852), .C(n1851), .Y(n821) );
  INVX1 U2118 ( .A(crc_tx_d[1]), .Y(n1854) );
  NAND2X1 U2119 ( .A(n986), .B(pkt_crc[1]), .Y(n1853) );
  OAI21X1 U2120 ( .A(pop_crc), .B(n1854), .C(n1853), .Y(n820) );
  INVX1 U2121 ( .A(crc_tx_d[2]), .Y(n1856) );
  NAND2X1 U2122 ( .A(n986), .B(pkt_crc[2]), .Y(n1855) );
  OAI21X1 U2123 ( .A(pop_crc), .B(n1856), .C(n1855), .Y(n819) );
  INVX1 U2124 ( .A(crc_tx_d[3]), .Y(n1858) );
  NAND2X1 U2125 ( .A(n986), .B(pkt_crc[3]), .Y(n1857) );
  OAI21X1 U2126 ( .A(pop_crc), .B(n1858), .C(n1857), .Y(n818) );
  INVX1 U2127 ( .A(crc_tx_d[4]), .Y(n1860) );
  NAND2X1 U2128 ( .A(n986), .B(pkt_crc[4]), .Y(n1859) );
  OAI21X1 U2129 ( .A(pop_crc), .B(n1860), .C(n1859), .Y(n817) );
  INVX1 U2130 ( .A(crc_tx_d[5]), .Y(n1862) );
  NAND2X1 U2131 ( .A(n986), .B(pkt_crc[5]), .Y(n1861) );
  OAI21X1 U2132 ( .A(pop_crc), .B(n1862), .C(n1861), .Y(n816) );
  INVX1 U2133 ( .A(crc_tx_d[6]), .Y(n1864) );
  NAND2X1 U2134 ( .A(n986), .B(pkt_crc[6]), .Y(n1863) );
  OAI21X1 U2135 ( .A(pop_crc), .B(n1864), .C(n1863), .Y(n815) );
  INVX1 U2136 ( .A(crc_tx_d[7]), .Y(n1866) );
  NAND2X1 U2137 ( .A(n986), .B(pkt_crc[7]), .Y(n1865) );
  OAI21X1 U2138 ( .A(pop_crc), .B(n1866), .C(n1865), .Y(n814) );
  INVX1 U2139 ( .A(crc_tx_d[8]), .Y(n1868) );
  NAND2X1 U2140 ( .A(n986), .B(pkt_crc[8]), .Y(n1867) );
  OAI21X1 U2141 ( .A(pop_crc), .B(n1868), .C(n1867), .Y(n813) );
  INVX1 U2142 ( .A(crc_tx_d[9]), .Y(n1870) );
  NAND2X1 U2143 ( .A(n986), .B(pkt_crc[9]), .Y(n1869) );
  OAI21X1 U2144 ( .A(pop_crc), .B(n1870), .C(n1869), .Y(n812) );
  INVX1 U2145 ( .A(crc_tx_d[10]), .Y(n1872) );
  NAND2X1 U2146 ( .A(n986), .B(pkt_crc[10]), .Y(n1871) );
  OAI21X1 U2147 ( .A(pop_crc), .B(n1872), .C(n1871), .Y(n811) );
  INVX1 U2148 ( .A(crc_tx_d[11]), .Y(n1874) );
  NAND2X1 U2149 ( .A(n986), .B(pkt_crc[11]), .Y(n1873) );
  OAI21X1 U2150 ( .A(pop_crc), .B(n1874), .C(n1873), .Y(n810) );
  INVX1 U2151 ( .A(crc_tx_d[12]), .Y(n1876) );
  NAND2X1 U2152 ( .A(n986), .B(pkt_crc[12]), .Y(n1875) );
  OAI21X1 U2153 ( .A(pop_crc), .B(n1876), .C(n1875), .Y(n809) );
  INVX1 U2154 ( .A(crc_tx_d[13]), .Y(n1878) );
  NAND2X1 U2155 ( .A(n986), .B(pkt_crc[13]), .Y(n1877) );
  OAI21X1 U2156 ( .A(pop_crc), .B(n1878), .C(n1877), .Y(n808) );
  INVX1 U2157 ( .A(crc_tx_d[14]), .Y(n1880) );
  NAND2X1 U2158 ( .A(n986), .B(pkt_crc[14]), .Y(n1879) );
  OAI21X1 U2159 ( .A(n986), .B(n1880), .C(n1879), .Y(n807) );
  INVX1 U2160 ( .A(crc_tx_d[15]), .Y(n1882) );
  NAND2X1 U2161 ( .A(n986), .B(pkt_crc[15]), .Y(n1881) );
  OAI21X1 U2162 ( .A(n986), .B(n1882), .C(n1881), .Y(n806) );
  NAND2X1 U2163 ( .A(pop_crc), .B(pkt_crc[16]), .Y(n1883) );
  OAI21X1 U2164 ( .A(pop_crc), .B(n1884), .C(n1883), .Y(n805) );
  NAND2X1 U2165 ( .A(n986), .B(pkt_crc[17]), .Y(n1885) );
  OAI21X1 U2166 ( .A(pop_crc), .B(n1886), .C(n1885), .Y(n804) );
  NAND2X1 U2167 ( .A(n986), .B(pkt_crc[18]), .Y(n1887) );
  OAI21X1 U2168 ( .A(n986), .B(n1888), .C(n1887), .Y(n803) );
  NAND2X1 U2169 ( .A(n986), .B(pkt_crc[19]), .Y(n1889) );
  OAI21X1 U2170 ( .A(n986), .B(n1890), .C(n1889), .Y(n802) );
  NAND2X1 U2171 ( .A(n986), .B(pkt_crc[20]), .Y(n1891) );
  OAI21X1 U2172 ( .A(n986), .B(n1892), .C(n1891), .Y(n801) );
  NAND2X1 U2173 ( .A(n986), .B(pkt_crc[21]), .Y(n1893) );
  OAI21X1 U2174 ( .A(n986), .B(n1894), .C(n1893), .Y(n800) );
  NAND2X1 U2175 ( .A(n986), .B(pkt_crc[22]), .Y(n1895) );
  OAI21X1 U2176 ( .A(pop_crc), .B(n1896), .C(n1895), .Y(n799) );
  NAND2X1 U2177 ( .A(n986), .B(pkt_crc[23]), .Y(n1897) );
  OAI21X1 U2178 ( .A(n986), .B(n1898), .C(n1897), .Y(n798) );
  NAND2X1 U2179 ( .A(pop_crc), .B(pkt_crc[24]), .Y(n1899) );
  OAI21X1 U2180 ( .A(pop_crc), .B(n1900), .C(n1899), .Y(n797) );
  NAND2X1 U2181 ( .A(n986), .B(pkt_crc[25]), .Y(n1901) );
  OAI21X1 U2182 ( .A(pop_crc), .B(n1902), .C(n1901), .Y(n796) );
  NAND2X1 U2183 ( .A(pop_crc), .B(pkt_crc[26]), .Y(n1903) );
  OAI21X1 U2184 ( .A(pop_crc), .B(n1904), .C(n1903), .Y(n795) );
  NAND2X1 U2185 ( .A(n986), .B(pkt_crc[27]), .Y(n1905) );
  OAI21X1 U2186 ( .A(pop_crc), .B(n1906), .C(n1905), .Y(n794) );
  NAND2X1 U2187 ( .A(n986), .B(pkt_crc[28]), .Y(n1907) );
  OAI21X1 U2188 ( .A(pop_crc), .B(n1908), .C(n1907), .Y(n793) );
  NAND2X1 U2189 ( .A(n986), .B(pkt_crc[29]), .Y(n1909) );
  OAI21X1 U2190 ( .A(pop_crc), .B(n1910), .C(n1909), .Y(n792) );
  NAND2X1 U2191 ( .A(n986), .B(pkt_crc[30]), .Y(n1912) );
  OAI21X1 U2192 ( .A(pop_crc), .B(n1913), .C(n1912), .Y(n791) );
endmodule

