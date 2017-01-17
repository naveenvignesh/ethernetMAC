/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Tue Nov  8 22:47:34 2016
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
  wire   n2351, n2352, n2353, n2354, gclk_en_d, clk125mhz, cnt2_d, gclk_en,
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
         n766, n767, n768, n769, n770, n771, n772, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n806, n807, n808, n809, n810, n811, n812,
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
         n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019,
         n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029,
         n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039,
         n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049,
         n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059,
         n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069,
         n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079,
         n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089,
         n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099,
         n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109,
         n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119,
         n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129,
         n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139,
         n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149,
         n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159,
         n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169,
         n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179,
         n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189,
         n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199,
         n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209,
         n1210, n1211, n1214, n1215, n1216, n1218, n1219, n1220, n1222, n1223,
         n1224, n1226, n1227, n1228, n1230, n1231, n1232, n1234, n1235, n1236,
         n1238, n1239, n1240, n1242, n1243, n1244, n1246, n1247, n1249, n1250,
         n1251, n1253, n1254, n1256, n1257, n1258, n1260, n1261, n1262, n1264,
         n1265, n1266, n1268, n1269, n1271, n1272, n1273, n1274, n1276, n1277,
         n1278, n1279, n1281, n1282, n1283, n1284, n1286, n1287, n1288, n1289,
         n1291, n1292, n1293, n1294, n1296, n1297, n1298, n1299, n1301, n1302,
         n1303, n1304, n1306, n1307, n1308, n1309, n1311, n1312, n1313, n1314,
         n1316, n1317, n1318, n1320, n1321, n1322, n1323, n1325, n1326, n1327,
         n1328, n1330, n1331, n1332, n1333, n1335, n1336, n1337, n1338, n1340,
         n1341, n1342, n1343, n1345, n1346, n1347, n1348, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1586, n1587, n1588, n1590, n1591, n1592, n1593, n1594, n1595,
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
         n1706, n1707, n1708, n1709, n1710, n1711, n1713, n1714, n1715, n1716,
         n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726,
         n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736,
         n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746,
         n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796,
         n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806,
         n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816,
         n1817, n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826,
         n1827, n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836,
         n1837, n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846,
         n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856,
         n1857, n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866,
         n1867, n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876,
         n1877, n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886,
         n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896,
         n1897, n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906,
         n1907, n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916,
         n1917, n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926,
         n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936,
         n1937, n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946,
         n1947, n1948, n1949, n1950, n1951, n1952, n1953, n1954, n1955, n1956,
         n1957, n1958, n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966,
         n1967, n1968, n1969, n1970, n1971, n1972, n1973, n1974, n1975, n1976,
         n1977, n1978, n1979, n1980, n1981, n1982, n1983, n1984, n1985, n1986,
         n1987, n1988, n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996,
         n1997, n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006,
         n2007, n2008, n2009, n2010, n2011, n2012, n2013, n2014, n2015, n2016,
         n2017, n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026,
         n2027, n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035, n2036,
         n2037, n2038, n2039, n2040, n2041, n2042, n2043, n2044, n2045, n2046,
         n2047, n2048, n2049, n2050, n2051, n2052, n2053, n2054, n2055, n2056,
         n2057, n2058, n2059, n2060, n2061, n2062, n2063, n2064, n2065, n2066,
         n2067, n2068, n2069, n2070, n2071, n2072, n2073, n2074, n2075, n2076,
         n2077, n2078, n2079, n2080, n2081, n2082, n2083, n2084, n2085, n2086,
         n2087, n2088, n2089, n2090, n2091, n2092, n2093, n2094, n2095, n2096,
         n2097, n2098, n2099, n2100, n2101, n2102, n2103, n2104, n2105, n2106,
         n2107, n2108, n2109, n2110, n2111, n2112, n2113, n2114, n2115, n2116,
         n2117, n2118, n2119, n2120, n2121, n2122, n2123, n2124, n2125, n2126,
         n2127, n2128, n2129, n2130, n2131, n2132, n2133, n2134, n2135, n2136,
         n2137, n2138, n2139, n2140, n2141, n2142, n2143, n2144, n2145, n2146,
         n2147, n2148, n2149, n2150, n2151, n2152, n2153, n2154, n2155, n2156,
         n2157, n2158, n2159, n2160, n2161, n2162, n2163, n2164, n2165, n2166,
         n2167, n2168, n2169, n2170, n2171, n2172, n2173, n2174, n2175, n2176,
         n2177, n2178, n2179, n2180, n2181, n2182, n2183, n2184, n2185, n2186,
         n2187, n2188, n2189, n2190, n2191, n2192, n2193, n2194, n2195, n2196,
         n2197, n2198, n2199, n2200, n2201, n2202, n2203, n2204, n2205, n2206,
         n2207, n2208, n2209, n2210, n2211, n2212, n2213, n2214, n2215, n2216,
         n2217, n2218, n2219, n2220, n2221, n2222, n2223, n2224, n2225, n2226,
         n2227, n2228, n2229, n2230, n2231, n2232, n2233, n2234, n2235, n2236,
         n2237, n2238, n2239, n2240, n2241, n2242, n2243, n2244, n2245, n2246,
         n2247, n2248, n2249, n2250, n2251, n2252, n2253, n2254, n2255, n2256,
         n2257, n2258, n2259, n2260, n2261, n2262, n2263, n2264, n2265, n2266,
         n2267, n2268, n2269, n2270, n2271, n2272, n2273, n2274, n2275, n2276,
         n2277, n2278, n2279, n2280, n2281, n2282, n2283, n2284, n2285, n2286,
         n2287, n2288, n2289, n2290, n2291, n2292, n2293, n2294, n2295, n2296,
         n2297, n2298, n2299, n2300, n2301, n2302, n2303, n2304, n2305, n2306,
         n2307, n2308, n2309, n2310, n2311, n2312, n2313, n2314, n2315, n2316,
         n2317, n2318, n2319, n2320, n2321, n2322, n2323, n2324, n2325, n2326,
         n2327, n2328, n2329, n2330, n2331, n2332, n2333, n2334, n2335, n2336,
         n2337, n2338, n2339, n2340, n2341, n2342, n2343, n2344, n2345, n2346,
         n2347, n2348, n2349, n2350;
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

  DFFSR \wakeuptimer_d_reg[0]  ( .D(n1040), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[0]) );
  DFFSR \cur_state_clk_reg[1]  ( .D(n1045), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(cur_state_clk[1]) );
  DFFSR \cur_state_clk_reg[0]  ( .D(n802), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(cur_state_clk[0]) );
  DFFSR \cnt128_d_reg[0]  ( .D(n1041), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[0]) );
  DFFSR \cnt128_d_reg[1]  ( .D(n800), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[1]) );
  DFFSR \cnt128_d_reg[2]  ( .D(n1042), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[2]) );
  DFFSR \cnt128_d_reg[3]  ( .D(n798), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[3]) );
  DFFSR \cnt128_d_reg[4]  ( .D(n797), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[4]) );
  DFFSR \cnt128_d_reg[5]  ( .D(n1043), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[5]) );
  DFFSR \cnt128_d_reg[6]  ( .D(n1044), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cnt128_d[6]) );
  DFFSR \wakeuptimer_d_reg[1]  ( .D(n793), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[1]) );
  DFFSR \wakeuptimer_d_reg[2]  ( .D(n792), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[2]) );
  DFFSR \wakeuptimer_d_reg[3]  ( .D(n791), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[3]) );
  DFFSR \wakeuptimer_d_reg[4]  ( .D(n790), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[4]) );
  DFFSR \wakeuptimer_d_reg[5]  ( .D(n789), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[5]) );
  DFFSR \wakeuptimer_d_reg[6]  ( .D(n788), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[6]) );
  DFFSR \wakeuptimer_d_reg[7]  ( .D(n787), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[7]) );
  DFFSR \wakeuptimer_d_reg[8]  ( .D(n1562), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[8]) );
  DFFSR \wakeuptimer_d_reg[9]  ( .D(n785), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[9]) );
  DFFSR \wakeuptimer_d_reg[10]  ( .D(n1563), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[10]) );
  DFFSR \wakeuptimer_d_reg[11]  ( .D(n783), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[11]) );
  DFFSR \wakeuptimer_d_reg[12]  ( .D(n1048), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[12]) );
  DFFSR \wakeuptimer_d_reg[13]  ( .D(n781), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[13]) );
  DFFSR \wakeuptimer_d_reg[14]  ( .D(n1564), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[14]) );
  DFFSR \wakeuptimer_d_reg[15]  ( .D(n779), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[15]) );
  DFFSR \wakeuptimer_d_reg[16]  ( .D(n1049), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[16]) );
  DFFSR \wakeuptimer_d_reg[17]  ( .D(n777), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[17]) );
  DFFSR \wakeuptimer_d_reg[18]  ( .D(n1050), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[18]) );
  DFFSR \wakeuptimer_d_reg[19]  ( .D(n775), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[19]) );
  DFFSR \wakeuptimer_d_reg[20]  ( .D(n1051), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[20]) );
  DFFSR \wakeuptimer_d_reg[21]  ( .D(n2105), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[21]) );
  DFFSR \wakeuptimer_d_reg[22]  ( .D(n1052), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[22]) );
  DFFSR \wakeuptimer_d_reg[23]  ( .D(n771), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[23]) );
  DFFSR \wakeuptimer_d_reg[24]  ( .D(n1565), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[24]) );
  DFFSR \wakeuptimer_d_reg[25]  ( .D(n769), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[25]) );
  DFFSR \wakeuptimer_d_reg[26]  ( .D(n1053), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[26]) );
  DFFSR \wakeuptimer_d_reg[27]  ( .D(n767), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[27]) );
  DFFSR \wakeuptimer_d_reg[28]  ( .D(n1054), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[28]) );
  DFFSR \wakeuptimer_d_reg[29]  ( .D(n1046), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[29]) );
  DFFSR \wakeuptimer_d_reg[30]  ( .D(n764), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[30]) );
  DFFSR \wakeuptimer_d_reg[31]  ( .D(n763), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(wakeuptimer_d[31]) );
  DFFSR div2_d_reg ( .D(n806), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(
        clk125mhz) );
  DFFSR gclk_en_d_reg ( .D(n1457), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(gclk_en_d) );
  DFFSR \bvalid_reg[0]  ( .D(n762), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[0]) );
  DFFSR \cur_state_reg[0]  ( .D(n1592), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cur_state[0]) );
  DFFSR \crc_bvalid_d_reg[1]  ( .D(n1047), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(crc_bvalid_d[1]) );
  DFFSR \idlernd_cnt_d_reg[0]  ( .D(n677), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(idlernd_cnt_d[0]) );
  DFFSR \cur_state_reg[2]  ( .D(n1382), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cur_state[2]) );
  DFFSR cnt2_d_reg ( .D(n757), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), .Q(
        cnt2_d) );
  DFFSR \crc_bvalid_d_reg[0]  ( .D(n761), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(crc_bvalid_d[0]) );
  DFFSR \cur_state_reg[1]  ( .D(n1389), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(cur_state[1]) );
  DFFSR \xgmii_tx_hold_reg[63]  ( .D(n756), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[63]) );
  DFFSR \bvalid_reg[1]  ( .D(n755), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[1]) );
  DFFSR \bvalid_reg[2]  ( .D(n754), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[2]) );
  DFFSR \bvalid_reg[3]  ( .D(n753), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[3]) );
  DFFSR \bvalid_reg[4]  ( .D(n752), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[4]) );
  DFFSR \bvalid_reg[5]  ( .D(n751), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[5]) );
  DFFSR \bvalid_reg[6]  ( .D(n750), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[6]) );
  DFFSR \bvalid_reg[7]  ( .D(n749), .CLK(\clks.clk ), .R(\clks.rst ), .S(1'b1), 
        .Q(bvalid[7]) );
  DFFSR \pkt_ctrl_d_reg[0]  ( .D(n748), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[0]) );
  DFFSR \pkt_ctrl_d_reg[1]  ( .D(n747), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[1]) );
  DFFSR \pkt_ctrl_d_reg[2]  ( .D(n746), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[2]) );
  DFFSR \pkt_ctrl_d_reg[3]  ( .D(n745), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[3]) );
  DFFSR \pkt_ctrl_d_reg[4]  ( .D(n744), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[4]) );
  DFFSR \pkt_ctrl_d_reg[5]  ( .D(n743), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[5]) );
  DFFSR \pkt_ctrl_d_reg[6]  ( .D(n742), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[6]) );
  DFFSR \pkt_ctrl_d_reg[7]  ( .D(n741), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(pkt_ctrl_d[7]) );
  DFFSR \xgmii_tx_hold_reg[0]  ( .D(n740), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[0]) );
  DFFSR \xgmii_tx_hold_reg[1]  ( .D(n739), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[1]) );
  DFFSR \xgmii_tx_hold_reg[2]  ( .D(n738), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[2]) );
  DFFSR \xgmii_tx_hold_reg[3]  ( .D(n737), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[3]) );
  DFFSR \xgmii_tx_hold_reg[4]  ( .D(n736), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[4]) );
  DFFSR \xgmii_tx_hold_reg[5]  ( .D(n735), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[5]) );
  DFFSR \xgmii_tx_hold_reg[6]  ( .D(n734), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[6]) );
  DFFSR \xgmii_tx_hold_reg[7]  ( .D(n733), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[7]) );
  DFFSR \xgmii_tx_hold_reg[8]  ( .D(n732), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[8]) );
  DFFSR \xgmii_tx_hold_reg[9]  ( .D(n731), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[9]) );
  DFFSR \xgmii_tx_hold_reg[10]  ( .D(n730), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[10]) );
  DFFSR \xgmii_tx_hold_reg[11]  ( .D(n729), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[11]) );
  DFFSR \xgmii_tx_hold_reg[12]  ( .D(n728), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[12]) );
  DFFSR \xgmii_tx_hold_reg[13]  ( .D(n727), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[13]) );
  DFFSR \xgmii_tx_hold_reg[14]  ( .D(n726), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[14]) );
  DFFSR \xgmii_tx_hold_reg[15]  ( .D(n725), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[15]) );
  DFFSR \xgmii_tx_hold_reg[16]  ( .D(n724), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[16]) );
  DFFSR \xgmii_tx_hold_reg[17]  ( .D(n723), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[17]) );
  DFFSR \xgmii_tx_hold_reg[18]  ( .D(n722), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[18]) );
  DFFSR \xgmii_tx_hold_reg[19]  ( .D(n721), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[19]) );
  DFFSR \xgmii_tx_hold_reg[20]  ( .D(n720), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[20]) );
  DFFSR \xgmii_tx_hold_reg[21]  ( .D(n719), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[21]) );
  DFFSR \xgmii_tx_hold_reg[22]  ( .D(n718), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[22]) );
  DFFSR \xgmii_tx_hold_reg[23]  ( .D(n717), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[23]) );
  DFFSR \xgmii_tx_hold_reg[24]  ( .D(n716), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[24]) );
  DFFSR \xgmii_tx_hold_reg[25]  ( .D(n715), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[25]) );
  DFFSR \xgmii_tx_hold_reg[26]  ( .D(n714), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[26]) );
  DFFSR \xgmii_tx_hold_reg[27]  ( .D(n713), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[27]) );
  DFFSR \xgmii_tx_hold_reg[28]  ( .D(n712), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[28]) );
  DFFSR \xgmii_tx_hold_reg[29]  ( .D(n711), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[29]) );
  DFFSR \xgmii_tx_hold_reg[30]  ( .D(n710), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[30]) );
  DFFSR \xgmii_tx_hold_reg[31]  ( .D(n709), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[31]) );
  DFFSR \xgmii_tx_hold_reg[32]  ( .D(n708), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[32]) );
  DFFSR \xgmii_tx_hold_reg[33]  ( .D(n707), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[33]) );
  DFFSR \xgmii_tx_hold_reg[34]  ( .D(n706), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[34]) );
  DFFSR \xgmii_tx_hold_reg[35]  ( .D(n705), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[35]) );
  DFFSR \xgmii_tx_hold_reg[36]  ( .D(n704), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[36]) );
  DFFSR \xgmii_tx_hold_reg[37]  ( .D(n703), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[37]) );
  DFFSR \xgmii_tx_hold_reg[38]  ( .D(n702), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[38]) );
  DFFSR \xgmii_tx_hold_reg[39]  ( .D(n701), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[39]) );
  DFFSR \xgmii_tx_hold_reg[40]  ( .D(n700), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[40]) );
  DFFSR \xgmii_tx_hold_reg[41]  ( .D(n699), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[41]) );
  DFFSR \xgmii_tx_hold_reg[42]  ( .D(n698), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[42]) );
  DFFSR \xgmii_tx_hold_reg[43]  ( .D(n697), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[43]) );
  DFFSR \xgmii_tx_hold_reg[44]  ( .D(n696), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[44]) );
  DFFSR \xgmii_tx_hold_reg[45]  ( .D(n695), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[45]) );
  DFFSR \xgmii_tx_hold_reg[46]  ( .D(n694), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[46]) );
  DFFSR \xgmii_tx_hold_reg[47]  ( .D(n693), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[47]) );
  DFFSR \xgmii_tx_hold_reg[48]  ( .D(n692), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[48]) );
  DFFSR \xgmii_tx_hold_reg[49]  ( .D(n691), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[49]) );
  DFFSR \xgmii_tx_hold_reg[50]  ( .D(n690), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[50]) );
  DFFSR \xgmii_tx_hold_reg[51]  ( .D(n689), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[51]) );
  DFFSR \xgmii_tx_hold_reg[52]  ( .D(n688), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[52]) );
  DFFSR \xgmii_tx_hold_reg[53]  ( .D(n687), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[53]) );
  DFFSR \xgmii_tx_hold_reg[54]  ( .D(n686), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[54]) );
  DFFSR \xgmii_tx_hold_reg[55]  ( .D(n685), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[55]) );
  DFFSR \xgmii_tx_hold_reg[56]  ( .D(n684), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[56]) );
  DFFSR \xgmii_tx_hold_reg[57]  ( .D(n683), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[57]) );
  DFFSR \xgmii_tx_hold_reg[58]  ( .D(n682), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[58]) );
  DFFSR \xgmii_tx_hold_reg[59]  ( .D(n681), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[59]) );
  DFFSR \xgmii_tx_hold_reg[60]  ( .D(n680), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[60]) );
  DFFSR \xgmii_tx_hold_reg[61]  ( .D(n679), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[61]) );
  DFFSR \xgmii_tx_hold_reg[62]  ( .D(n678), .CLK(\clks.clk ), .R(\clks.rst ), 
        .S(1'b1), .Q(xgmii_tx_hold[62]) );
  DFFSR \IDC_cnt_d_reg[0]  ( .D(n759), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(IDC_cnt_d[0]) );
  DFFSR \IDC_cnt_d_reg[1]  ( .D(n758), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(IDC_cnt_d[1]) );
  DFFSR \crc_left_d_reg[0]  ( .D(n675), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[0]) );
  DFFSR \crc_left_d_reg[1]  ( .D(n674), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[1]) );
  DFFSR \crc_left_d_reg[2]  ( .D(n673), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[2]) );
  DFFSR \crc_left_d_reg[3]  ( .D(n672), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[3]) );
  DFFSR \crc_left_d_reg[4]  ( .D(n671), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[4]) );
  DFFSR \crc_left_d_reg[5]  ( .D(n670), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[5]) );
  DFFSR \crc_left_d_reg[6]  ( .D(n669), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[6]) );
  DFFSR \crc_left_d_reg[7]  ( .D(n668), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[7]) );
  DFFSR \crc_left_d_reg[8]  ( .D(n667), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[8]) );
  DFFSR \crc_left_d_reg[9]  ( .D(n666), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[9]) );
  DFFSR \crc_left_d_reg[10]  ( .D(n665), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[10]) );
  DFFSR \crc_left_d_reg[11]  ( .D(n664), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[11]) );
  DFFSR \crc_left_d_reg[12]  ( .D(n663), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[12]) );
  DFFSR \crc_left_d_reg[13]  ( .D(n662), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[13]) );
  DFFSR \crc_left_d_reg[14]  ( .D(n661), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[14]) );
  DFFSR \crc_left_d_reg[15]  ( .D(n660), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[15]) );
  DFFSR \crc_left_d_reg[16]  ( .D(n659), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[16]) );
  DFFSR \crc_left_d_reg[17]  ( .D(n658), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[17]) );
  DFFSR \crc_left_d_reg[18]  ( .D(n657), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[18]) );
  DFFSR \crc_left_d_reg[19]  ( .D(n656), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[19]) );
  DFFSR \crc_left_d_reg[20]  ( .D(n655), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[20]) );
  DFFSR \crc_left_d_reg[21]  ( .D(n654), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[21]) );
  DFFSR \crc_left_d_reg[22]  ( .D(n653), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[22]) );
  DFFSR \crc_left_d_reg[23]  ( .D(n652), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[23]) );
  DFFSR \crc_left_d_reg[24]  ( .D(n651), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[24]) );
  DFFSR \crc_left_d_reg[25]  ( .D(n650), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[25]) );
  DFFSR \crc_left_d_reg[26]  ( .D(n649), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[26]) );
  DFFSR \crc_left_d_reg[27]  ( .D(n648), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[27]) );
  DFFSR \crc_left_d_reg[28]  ( .D(n647), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[28]) );
  DFFSR \crc_left_d_reg[29]  ( .D(n646), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[29]) );
  DFFSR \crc_left_d_reg[30]  ( .D(n645), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_left_d[30]) );
  DFFSR \crc_left_d_reg[31]  ( .D(n644), .CLK(\clks.clk ), .R(\clks.rst ), .S(
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
  DFFSR \idlernd_cnt_d_reg[1]  ( .D(n1055), .CLK(\clks.clk ), .R(1'b1), .S(
        \clks.rst ), .Q(idlernd_cnt_d[1]) );
  DFFSR \cur_state_reg[3]  ( .D(n1603), .CLK(\clks.clk ), .R(1'b1), .S(
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
  DFFSR \crc_tx_d_reg[31]  ( .D(n643), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[31]) );
  DFFSR \crc_tx_d_reg[0]  ( .D(n642), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[0]) );
  DFFSR \crc_tx_d_reg[1]  ( .D(n641), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[1]) );
  DFFSR \crc_tx_d_reg[2]  ( .D(n640), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[2]) );
  DFFSR \crc_tx_d_reg[3]  ( .D(n639), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[3]) );
  DFFSR \crc_tx_d_reg[4]  ( .D(n638), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[4]) );
  DFFSR \crc_tx_d_reg[5]  ( .D(n637), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[5]) );
  DFFSR \crc_tx_d_reg[6]  ( .D(n636), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[6]) );
  DFFSR \crc_tx_d_reg[7]  ( .D(n635), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[7]) );
  DFFSR \crc_tx_d_reg[8]  ( .D(n634), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[8]) );
  DFFSR \crc_tx_d_reg[9]  ( .D(n633), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[9]) );
  DFFSR \crc_tx_d_reg[10]  ( .D(n632), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[10]) );
  DFFSR \crc_tx_d_reg[11]  ( .D(n631), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[11]) );
  DFFSR \crc_tx_d_reg[12]  ( .D(n630), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[12]) );
  DFFSR \crc_tx_d_reg[13]  ( .D(n629), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[13]) );
  DFFSR \crc_tx_d_reg[14]  ( .D(n628), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[14]) );
  DFFSR \crc_tx_d_reg[15]  ( .D(n627), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[15]) );
  DFFSR \crc_tx_d_reg[16]  ( .D(n626), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[16]) );
  DFFSR \crc_tx_d_reg[17]  ( .D(n625), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[17]) );
  DFFSR \crc_tx_d_reg[18]  ( .D(n624), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[18]) );
  DFFSR \crc_tx_d_reg[19]  ( .D(n623), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[19]) );
  DFFSR \crc_tx_d_reg[20]  ( .D(n622), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[20]) );
  DFFSR \crc_tx_d_reg[21]  ( .D(n621), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[21]) );
  DFFSR \crc_tx_d_reg[22]  ( .D(n620), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[22]) );
  DFFSR \crc_tx_d_reg[23]  ( .D(n619), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[23]) );
  DFFSR \crc_tx_d_reg[24]  ( .D(n618), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[24]) );
  DFFSR \crc_tx_d_reg[25]  ( .D(n617), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[25]) );
  DFFSR \crc_tx_d_reg[26]  ( .D(n616), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[26]) );
  DFFSR \crc_tx_d_reg[27]  ( .D(n615), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[27]) );
  DFFSR \crc_tx_d_reg[28]  ( .D(n614), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[28]) );
  DFFSR \crc_tx_d_reg[29]  ( .D(n613), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[29]) );
  DFFSR \crc_tx_d_reg[30]  ( .D(n612), .CLK(\clks.clk ), .R(\clks.rst ), .S(
        1'b1), .Q(crc_tx_d[30]) );
  AND2X1 U852 ( .A(n1440), .B(n1508), .Y(n1731) );
  AND2X1 U853 ( .A(n2061), .B(n1678), .Y(n2066) );
  AND2X1 U854 ( .A(n2048), .B(n1663), .Y(n2053) );
  AND2X1 U855 ( .A(n1998), .B(n1592), .Y(nxt_buf) );
  OR2X1 U856 ( .A(n1671), .B(n1674), .Y(n1967) );
  AND2X1 U857 ( .A(n1913), .B(n1454), .Y(n1762) );
  AND2X1 U858 ( .A(n1953), .B(n1516), .Y(n1910) );
  AND2X1 U859 ( .A(n1486), .B(n1701), .Y(n1927) );
  AND2X1 U860 ( .A(n1913), .B(n1453), .Y(n1775) );
  AND2X1 U861 ( .A(n1452), .B(n1913), .Y(n1787) );
  AND2X1 U862 ( .A(n1352), .B(n1358), .Y(n1794) );
  AND2X1 U863 ( .A(n1451), .B(n1913), .Y(n1796) );
  AND2X1 U864 ( .A(n1857), .B(n1365), .Y(n1899) );
  OR2X1 U865 ( .A(n1364), .B(n1510), .Y(n1740) );
  AND2X1 U866 ( .A(n2068), .B(n1679), .Y(n2074) );
  AND2X1 U867 ( .A(n2268), .B(n1036), .Y(n1721) );
  OR2X1 U868 ( .A(n1658), .B(n1359), .Y(n2275) );
  AND2X1 U869 ( .A(n1858), .B(n1701), .Y(n2174) );
  OR2X1 U870 ( .A(n1593), .B(n2166), .Y(n2264) );
  OR2X1 U871 ( .A(n1498), .B(n810), .Y(n2093) );
  AND2X1 U872 ( .A(n2046), .B(n1668), .Y(n2048) );
  AND2X1 U873 ( .A(n2041), .B(n1662), .Y(n2046) );
  AND2X1 U874 ( .A(n2039), .B(n1667), .Y(n2041) );
  AND2X1 U875 ( .A(n2034), .B(n1661), .Y(n2039) );
  AND2X1 U876 ( .A(n1446), .B(n1690), .Y(n2034) );
  AND2X1 U877 ( .A(n1356), .B(n2031), .Y(n2028) );
  AND2X1 U878 ( .A(n1920), .B(n1039), .Y(n2352) );
  OR2X1 U879 ( .A(n1708), .B(n1371), .Y(n1990) );
  AND2X1 U880 ( .A(n1020), .B(n809), .Y(nxt_state[0]) );
  AND2X1 U881 ( .A(n1030), .B(n2118), .Y(n770) );
  AND2X1 U882 ( .A(n1029), .B(n2079), .Y(n780) );
  AND2X1 U883 ( .A(n1028), .B(n2064), .Y(n784) );
  AND2X1 U884 ( .A(n1027), .B(n2057), .Y(n786) );
  AND2X1 U885 ( .A(n1372), .B(n1444), .Y(n2164) );
  AND2X1 U886 ( .A(n1018), .B(n1364), .Y(n1747) );
  AND2X1 U887 ( .A(n1489), .B(n1354), .Y(n1858) );
  OR2X1 U888 ( .A(n1078), .B(n1961), .Y(n1756) );
  AND2X2 U889 ( .A(n1754), .B(n1909), .Y(pop_crc) );
  AND2X1 U890 ( .A(n1737), .B(n1375), .Y(n1795) );
  AND2X1 U891 ( .A(n2175), .B(n1353), .Y(n2167) );
  AND2X1 U892 ( .A(n1706), .B(n1034), .Y(n1938) );
  OR2X1 U893 ( .A(n1492), .B(n1079), .Y(n1729) );
  AND2X1 U894 ( .A(n1021), .B(n1956), .Y(n1765) );
  AND2X1 U895 ( .A(n1022), .B(n1956), .Y(n1771) );
  AND2X1 U896 ( .A(n1023), .B(n1956), .Y(n1778) );
  AND2X1 U897 ( .A(n1024), .B(n1956), .Y(n1784) );
  AND2X1 U898 ( .A(n1025), .B(n1956), .Y(n1791) );
  AND2X1 U899 ( .A(n1026), .B(n1956), .Y(n1799) );
  AND2X1 U900 ( .A(n1486), .B(n1031), .Y(n1863) );
  AND2X1 U901 ( .A(n1918), .B(n1033), .Y(n1895) );
  AND2X1 U902 ( .A(n1019), .B(n1037), .Y(n2354) );
  AND2X1 U903 ( .A(n1360), .B(n1355), .Y(n2151) );
  AND2X1 U904 ( .A(n1918), .B(n1032), .Y(n1885) );
  AND2X1 U905 ( .A(n1706), .B(n1035), .Y(n1948) );
  OR2X1 U906 ( .A(n1820), .B(n1080), .Y(n1809) );
  AND2X1 U907 ( .A(bvalidin[0]), .B(pop_pkt), .Y(n2148) );
  AND2X1 U908 ( .A(bvalidin[2]), .B(pop_pkt), .Y(n2180) );
  AND2X1 U909 ( .A(n1869), .B(n1038), .Y(n2353) );
  AND2X1 U910 ( .A(n807), .B(n808), .Y(n1718) );
  OR2X1 U911 ( .A(n807), .B(n1489), .Y(n1992) );
  BUFX2 U912 ( .A(cur_state[3]), .Y(n807) );
  BUFX2 U913 ( .A(cur_state[2]), .Y(n808) );
  BUFX2 U914 ( .A(n1711), .Y(n809) );
  OR2X1 U915 ( .A(n1381), .B(n1604), .Y(n2030) );
  AND2X1 U916 ( .A(n1590), .B(n1355), .Y(n1730) );
  AND2X1 U917 ( .A(n1373), .B(n1666), .Y(n2025) );
  AND2X1 U918 ( .A(n2053), .B(n1669), .Y(n2059) );
  AND2X1 U919 ( .A(n2076), .B(n1674), .Y(n2081) );
  AND2X1 U920 ( .A(n2083), .B(n1681), .Y(n2089) );
  AND2X1 U921 ( .A(n2098), .B(n1682), .Y(n2104) );
  AND2X1 U922 ( .A(n2115), .B(n1657), .Y(n2120) );
  AND2X1 U923 ( .A(n2130), .B(n1683), .Y(n2136) );
  AND2X1 U924 ( .A(n1075), .B(n1067), .Y(n1846) );
  AND2X1 U925 ( .A(n1076), .B(n1068), .Y(n1923) );
  AND2X1 U926 ( .A(n2032), .B(n985), .Y(n1999) );
  INVX1 U927 ( .A(n1999), .Y(n810) );
  BUFX2 U928 ( .A(n1723), .Y(n811) );
  BUFX2 U929 ( .A(n1751), .Y(n812) );
  BUFX2 U930 ( .A(n1761), .Y(n813) );
  BUFX2 U931 ( .A(n1766), .Y(n814) );
  BUFX2 U932 ( .A(n1772), .Y(n815) );
  BUFX2 U933 ( .A(n1779), .Y(n816) );
  BUFX2 U934 ( .A(n1786), .Y(n817) );
  BUFX2 U935 ( .A(n1793), .Y(n818) );
  BUFX2 U936 ( .A(n1801), .Y(n819) );
  BUFX2 U937 ( .A(n1810), .Y(n820) );
  BUFX2 U938 ( .A(n1816), .Y(n821) );
  BUFX2 U939 ( .A(n1822), .Y(n822) );
  BUFX2 U940 ( .A(n1828), .Y(n823) );
  BUFX2 U941 ( .A(n1834), .Y(n824) );
  BUFX2 U942 ( .A(n1841), .Y(n825) );
  BUFX2 U943 ( .A(n1847), .Y(n826) );
  BUFX2 U944 ( .A(n1866), .Y(n827) );
  BUFX2 U945 ( .A(n1861), .Y(n828) );
  BUFX2 U946 ( .A(n1864), .Y(n829) );
  BUFX2 U947 ( .A(n1873), .Y(n830) );
  BUFX2 U948 ( .A(n1871), .Y(n831) );
  BUFX2 U949 ( .A(n1878), .Y(n832) );
  BUFX2 U950 ( .A(n1876), .Y(n833) );
  BUFX2 U951 ( .A(n1883), .Y(n834) );
  BUFX2 U952 ( .A(n1881), .Y(n835) );
  BUFX2 U953 ( .A(n1888), .Y(n836) );
  BUFX2 U954 ( .A(n1886), .Y(n837) );
  BUFX2 U955 ( .A(n1893), .Y(n838) );
  BUFX2 U956 ( .A(n1891), .Y(n839) );
  BUFX2 U957 ( .A(n1898), .Y(n840) );
  BUFX2 U958 ( .A(n1896), .Y(n841) );
  BUFX2 U959 ( .A(n1905), .Y(n842) );
  BUFX2 U960 ( .A(n1903), .Y(n843) );
  BUFX2 U961 ( .A(n1917), .Y(n844) );
  BUFX2 U962 ( .A(n1915), .Y(n845) );
  BUFX2 U963 ( .A(n1924), .Y(n846) );
  BUFX2 U964 ( .A(n1922), .Y(n847) );
  BUFX2 U965 ( .A(n1931), .Y(n848) );
  BUFX2 U966 ( .A(n1929), .Y(n849) );
  BUFX2 U967 ( .A(n1936), .Y(n850) );
  BUFX2 U968 ( .A(n1934), .Y(n851) );
  BUFX2 U969 ( .A(n1941), .Y(n852) );
  BUFX2 U970 ( .A(n1939), .Y(n853) );
  BUFX2 U971 ( .A(n1946), .Y(n854) );
  BUFX2 U972 ( .A(n1944), .Y(n855) );
  BUFX2 U973 ( .A(n1951), .Y(n856) );
  BUFX2 U974 ( .A(n1949), .Y(n857) );
  BUFX2 U975 ( .A(n1960), .Y(n858) );
  BUFX2 U976 ( .A(n1958), .Y(n859) );
  BUFX2 U977 ( .A(n1981), .Y(n860) );
  BUFX2 U978 ( .A(n2033), .Y(n861) );
  BUFX2 U979 ( .A(n2040), .Y(n862) );
  BUFX2 U980 ( .A(n2047), .Y(n863) );
  BUFX2 U981 ( .A(n2054), .Y(n864) );
  BUFX2 U982 ( .A(n2060), .Y(n865) );
  BUFX2 U983 ( .A(n2067), .Y(n866) );
  BUFX2 U984 ( .A(n2075), .Y(n867) );
  AND2X1 U985 ( .A(n2074), .B(n1671), .Y(n2076) );
  BUFX2 U986 ( .A(n2082), .Y(n868) );
  BUFX2 U987 ( .A(n2090), .Y(n869) );
  AND2X1 U988 ( .A(n2089), .B(n1652), .Y(n2091) );
  BUFX2 U989 ( .A(n2097), .Y(n870) );
  BUFX2 U990 ( .A(n2114), .Y(n871) );
  AND2X1 U991 ( .A(n2112), .B(n1654), .Y(n2115) );
  BUFX2 U992 ( .A(n2121), .Y(n872) );
  BUFX2 U993 ( .A(n2129), .Y(n873) );
  BUFX2 U994 ( .A(n2142), .Y(n874) );
  BUFX2 U995 ( .A(n2184), .Y(n875) );
  BUFX2 U996 ( .A(n2185), .Y(n876) );
  BUFX2 U997 ( .A(n2186), .Y(n877) );
  BUFX2 U998 ( .A(n2187), .Y(n878) );
  BUFX2 U999 ( .A(n2189), .Y(n879) );
  BUFX2 U1000 ( .A(n2190), .Y(n880) );
  BUFX2 U1001 ( .A(n2191), .Y(n881) );
  BUFX2 U1002 ( .A(n2193), .Y(n882) );
  BUFX2 U1003 ( .A(n2195), .Y(n883) );
  BUFX2 U1004 ( .A(n2196), .Y(n884) );
  BUFX2 U1005 ( .A(n2197), .Y(n885) );
  BUFX2 U1006 ( .A(n2198), .Y(n886) );
  BUFX2 U1007 ( .A(n2199), .Y(n887) );
  BUFX2 U1008 ( .A(n2200), .Y(n888) );
  BUFX2 U1009 ( .A(n2201), .Y(n889) );
  BUFX2 U1010 ( .A(n2202), .Y(n890) );
  BUFX2 U1011 ( .A(n2203), .Y(n891) );
  BUFX2 U1012 ( .A(n2208), .Y(n892) );
  BUFX2 U1013 ( .A(n2209), .Y(n893) );
  BUFX2 U1014 ( .A(n2210), .Y(n894) );
  BUFX2 U1015 ( .A(n2211), .Y(n895) );
  BUFX2 U1016 ( .A(n2212), .Y(n896) );
  BUFX2 U1017 ( .A(n2213), .Y(n897) );
  BUFX2 U1018 ( .A(n2214), .Y(n898) );
  BUFX2 U1019 ( .A(n2215), .Y(n899) );
  BUFX2 U1020 ( .A(n2216), .Y(n900) );
  BUFX2 U1021 ( .A(n2217), .Y(n901) );
  BUFX2 U1022 ( .A(n2218), .Y(n902) );
  BUFX2 U1023 ( .A(n2221), .Y(n903) );
  BUFX2 U1024 ( .A(n2222), .Y(n904) );
  BUFX2 U1025 ( .A(n2223), .Y(n905) );
  BUFX2 U1026 ( .A(n2224), .Y(n906) );
  BUFX2 U1027 ( .A(n2225), .Y(n907) );
  BUFX2 U1028 ( .A(n2226), .Y(n908) );
  BUFX2 U1029 ( .A(n2228), .Y(n909) );
  BUFX2 U1030 ( .A(n2229), .Y(n910) );
  BUFX2 U1031 ( .A(n2230), .Y(n911) );
  BUFX2 U1032 ( .A(n2231), .Y(n912) );
  BUFX2 U1033 ( .A(n2232), .Y(n913) );
  BUFX2 U1034 ( .A(n2234), .Y(n914) );
  BUFX2 U1035 ( .A(n2235), .Y(n915) );
  BUFX2 U1036 ( .A(n2236), .Y(n916) );
  BUFX2 U1037 ( .A(n2237), .Y(n917) );
  BUFX2 U1038 ( .A(n2238), .Y(n918) );
  BUFX2 U1039 ( .A(n2239), .Y(n919) );
  BUFX2 U1040 ( .A(n2241), .Y(n920) );
  BUFX2 U1041 ( .A(n2242), .Y(n921) );
  BUFX2 U1042 ( .A(n2243), .Y(n922) );
  BUFX2 U1043 ( .A(n2244), .Y(n923) );
  BUFX2 U1044 ( .A(n2245), .Y(n924) );
  BUFX2 U1045 ( .A(n2246), .Y(n925) );
  BUFX2 U1046 ( .A(n2247), .Y(n926) );
  BUFX2 U1047 ( .A(n2249), .Y(n927) );
  BUFX2 U1048 ( .A(n2250), .Y(n928) );
  BUFX2 U1049 ( .A(n2251), .Y(n929) );
  BUFX2 U1050 ( .A(n2252), .Y(n930) );
  BUFX2 U1051 ( .A(n2253), .Y(n931) );
  BUFX2 U1052 ( .A(n2254), .Y(n932) );
  BUFX2 U1053 ( .A(n2255), .Y(n933) );
  BUFX2 U1054 ( .A(n2256), .Y(n934) );
  INVX2 U1055 ( .A(pop_pkt), .Y(n2257) );
  BUFX2 U1056 ( .A(n2261), .Y(n935) );
  BUFX2 U1057 ( .A(n2280), .Y(n936) );
  BUFX2 U1058 ( .A(n2281), .Y(n937) );
  BUFX2 U1059 ( .A(n2282), .Y(n938) );
  BUFX2 U1060 ( .A(n2283), .Y(n939) );
  BUFX2 U1061 ( .A(n2284), .Y(n940) );
  BUFX2 U1062 ( .A(n2285), .Y(n941) );
  BUFX2 U1063 ( .A(n2286), .Y(n942) );
  BUFX2 U1064 ( .A(n2287), .Y(n943) );
  BUFX2 U1065 ( .A(n2291), .Y(n944) );
  BUFX2 U1066 ( .A(n2292), .Y(n945) );
  BUFX2 U1067 ( .A(n2293), .Y(n946) );
  BUFX2 U1068 ( .A(n2294), .Y(n947) );
  BUFX2 U1069 ( .A(n2295), .Y(n948) );
  BUFX2 U1070 ( .A(n2296), .Y(n949) );
  BUFX2 U1071 ( .A(n2297), .Y(n950) );
  BUFX2 U1072 ( .A(n2299), .Y(n951) );
  BUFX2 U1073 ( .A(n2300), .Y(n952) );
  BUFX2 U1074 ( .A(n2301), .Y(n953) );
  BUFX2 U1075 ( .A(n2302), .Y(n954) );
  BUFX2 U1076 ( .A(n2303), .Y(n955) );
  BUFX2 U1077 ( .A(n2304), .Y(n956) );
  BUFX2 U1078 ( .A(n2305), .Y(n957) );
  BUFX2 U1079 ( .A(n2306), .Y(n958) );
  BUFX2 U1080 ( .A(n2308), .Y(n959) );
  BUFX2 U1081 ( .A(n2309), .Y(n960) );
  BUFX2 U1082 ( .A(n2310), .Y(n961) );
  BUFX2 U1083 ( .A(n2311), .Y(n962) );
  BUFX2 U1084 ( .A(n2312), .Y(n963) );
  BUFX2 U1085 ( .A(n2313), .Y(n964) );
  BUFX2 U1086 ( .A(n2314), .Y(n965) );
  BUFX2 U1087 ( .A(n2315), .Y(n966) );
  BUFX2 U1088 ( .A(n2317), .Y(n967) );
  BUFX2 U1089 ( .A(n2318), .Y(n968) );
  BUFX2 U1090 ( .A(n2319), .Y(n969) );
  BUFX2 U1091 ( .A(n2320), .Y(n970) );
  BUFX2 U1092 ( .A(n2321), .Y(n971) );
  BUFX2 U1093 ( .A(n2322), .Y(n972) );
  BUFX2 U1094 ( .A(n2323), .Y(n973) );
  BUFX2 U1095 ( .A(n2324), .Y(n974) );
  BUFX2 U1096 ( .A(n2325), .Y(n975) );
  BUFX2 U1097 ( .A(n2326), .Y(n976) );
  BUFX2 U1098 ( .A(n2340), .Y(n977) );
  BUFX2 U1099 ( .A(n2343), .Y(n978) );
  BUFX2 U1100 ( .A(n2344), .Y(n979) );
  BUFX2 U1101 ( .A(n2345), .Y(n980) );
  BUFX2 U1102 ( .A(n2346), .Y(n981) );
  BUFX2 U1103 ( .A(n2347), .Y(n982) );
  BUFX2 U1104 ( .A(n2349), .Y(n983) );
  BUFX2 U1105 ( .A(n2350), .Y(n984) );
  BUFX2 U1106 ( .A(cur_state_clk[1]), .Y(n985) );
  BUFX2 U1107 ( .A(n1741), .Y(n986) );
  BUFX2 U1108 ( .A(n1750), .Y(n987) );
  BUFX2 U1109 ( .A(n1748), .Y(n988) );
  BUFX2 U1110 ( .A(n1760), .Y(n989) );
  BUFX2 U1111 ( .A(n1767), .Y(n990) );
  BUFX2 U1112 ( .A(n1773), .Y(n991) );
  BUFX2 U1113 ( .A(n1780), .Y(n992) );
  BUFX2 U1114 ( .A(n1785), .Y(n993) );
  BUFX2 U1115 ( .A(n1792), .Y(n994) );
  BUFX2 U1116 ( .A(n1800), .Y(n995) );
  BUFX2 U1117 ( .A(n1815), .Y(n996) );
  BUFX2 U1118 ( .A(n1829), .Y(n997) );
  BUFX2 U1119 ( .A(n1835), .Y(n998) );
  BUFX2 U1120 ( .A(n1840), .Y(n999) );
  BUFX2 U1121 ( .A(n1844), .Y(n1000) );
  BUFX2 U1122 ( .A(n1865), .Y(n1001) );
  BUFX2 U1123 ( .A(n1872), .Y(n1002) );
  BUFX2 U1124 ( .A(n1877), .Y(n1003) );
  BUFX2 U1125 ( .A(n1882), .Y(n1004) );
  BUFX2 U1126 ( .A(n1887), .Y(n1005) );
  BUFX2 U1127 ( .A(n1892), .Y(n1006) );
  BUFX2 U1128 ( .A(n1897), .Y(n1007) );
  BUFX2 U1129 ( .A(n1904), .Y(n1008) );
  BUFX2 U1130 ( .A(n1921), .Y(n1009) );
  BUFX2 U1131 ( .A(n1930), .Y(n1010) );
  BUFX2 U1132 ( .A(n1935), .Y(n1011) );
  BUFX2 U1133 ( .A(n1940), .Y(n1012) );
  BUFX2 U1134 ( .A(n1945), .Y(n1013) );
  BUFX2 U1135 ( .A(n1950), .Y(n1014) );
  BUFX2 U1136 ( .A(n1959), .Y(n1015) );
  BUFX2 U1137 ( .A(n1982), .Y(n1016) );
  BUFX2 U1138 ( .A(n2011), .Y(n1017) );
  OR2X1 U1139 ( .A(n1215), .B(n1216), .Y(\xgmii_tx.TXD [0]) );
  OR2X1 U1140 ( .A(n1749), .B(n1214), .Y(n1216) );
  OR2X1 U1141 ( .A(n1219), .B(n1220), .Y(\xgmii_tx.TXD [1]) );
  OR2X1 U1142 ( .A(n1759), .B(n1218), .Y(n1220) );
  OR2X1 U1143 ( .A(n1223), .B(n1224), .Y(\xgmii_tx.TXD [2]) );
  OR2X1 U1144 ( .A(n1765), .B(n1222), .Y(n1224) );
  OR2X1 U1145 ( .A(n1227), .B(n1228), .Y(\xgmii_tx.TXD [3]) );
  OR2X1 U1146 ( .A(n1771), .B(n1226), .Y(n1228) );
  OR2X1 U1147 ( .A(n1231), .B(n1232), .Y(\xgmii_tx.TXD [4]) );
  OR2X1 U1148 ( .A(n1778), .B(n1230), .Y(n1232) );
  OR2X1 U1149 ( .A(n1235), .B(n1236), .Y(\xgmii_tx.TXD [5]) );
  OR2X1 U1150 ( .A(n1784), .B(n1234), .Y(n1236) );
  OR2X1 U1151 ( .A(n1239), .B(n1240), .Y(\xgmii_tx.TXD [6]) );
  OR2X1 U1152 ( .A(n1791), .B(n1238), .Y(n1240) );
  OR2X1 U1153 ( .A(n1243), .B(n1244), .Y(\xgmii_tx.TXD [7]) );
  OR2X1 U1154 ( .A(n1799), .B(n1242), .Y(n1244) );
  OR2X1 U1155 ( .A(n1246), .B(n1247), .Y(\xgmii_tx.TXD [8]) );
  OR2X1 U1156 ( .A(n1808), .B(n1809), .Y(n1247) );
  OR2X1 U1157 ( .A(n1250), .B(n1251), .Y(\xgmii_tx.TXD [9]) );
  OR2X1 U1158 ( .A(n1814), .B(n1249), .Y(n1251) );
  OR2X1 U1159 ( .A(n1823), .B(n1254), .Y(\xgmii_tx.TXD [10]) );
  OR2X1 U1160 ( .A(n1821), .B(n1253), .Y(n1254) );
  OR2X1 U1161 ( .A(n1257), .B(n1258), .Y(\xgmii_tx.TXD [11]) );
  OR2X1 U1162 ( .A(n1827), .B(n1256), .Y(n1258) );
  OR2X1 U1163 ( .A(n1261), .B(n1262), .Y(\xgmii_tx.TXD [12]) );
  OR2X1 U1164 ( .A(n1833), .B(n1260), .Y(n1262) );
  OR2X1 U1165 ( .A(n1265), .B(n1266), .Y(\xgmii_tx.TXD [13]) );
  OR2X1 U1166 ( .A(n1839), .B(n1264), .Y(n1266) );
  OR2X1 U1167 ( .A(n1268), .B(n1269), .Y(\xgmii_tx.TXD [14]) );
  OR2X1 U1168 ( .A(n1845), .B(n1846), .Y(n1269) );
  OR2X1 U1169 ( .A(n1273), .B(n1274), .Y(\xgmii_tx.TXD [16]) );
  OR2X1 U1170 ( .A(n1271), .B(n1272), .Y(n1274) );
  OR2X1 U1171 ( .A(n1278), .B(n1279), .Y(\xgmii_tx.TXD [17]) );
  OR2X1 U1172 ( .A(n1276), .B(n1277), .Y(n1279) );
  OR2X1 U1173 ( .A(n1283), .B(n1284), .Y(\xgmii_tx.TXD [18]) );
  OR2X1 U1174 ( .A(n1281), .B(n1282), .Y(n1284) );
  OR2X1 U1175 ( .A(n1288), .B(n1289), .Y(\xgmii_tx.TXD [19]) );
  OR2X1 U1176 ( .A(n1286), .B(n1287), .Y(n1289) );
  OR2X1 U1177 ( .A(n1293), .B(n1294), .Y(\xgmii_tx.TXD [20]) );
  OR2X1 U1178 ( .A(n1291), .B(n1292), .Y(n1294) );
  OR2X1 U1179 ( .A(n1298), .B(n1299), .Y(\xgmii_tx.TXD [21]) );
  OR2X1 U1180 ( .A(n1296), .B(n1297), .Y(n1299) );
  OR2X1 U1181 ( .A(n1303), .B(n1304), .Y(\xgmii_tx.TXD [22]) );
  OR2X1 U1182 ( .A(n1301), .B(n1302), .Y(n1304) );
  OR2X1 U1183 ( .A(n1308), .B(n1309), .Y(\xgmii_tx.TXD [23]) );
  OR2X1 U1184 ( .A(n1306), .B(n1307), .Y(n1309) );
  OR2X1 U1185 ( .A(n1313), .B(n1314), .Y(\xgmii_tx.TXD [24]) );
  OR2X1 U1186 ( .A(n1311), .B(n1312), .Y(n1314) );
  OR2X1 U1187 ( .A(n1317), .B(n1318), .Y(\xgmii_tx.TXD [25]) );
  OR2X1 U1188 ( .A(n1316), .B(n1923), .Y(n1318) );
  OR2X1 U1189 ( .A(n1322), .B(n1323), .Y(\xgmii_tx.TXD [26]) );
  OR2X1 U1190 ( .A(n1320), .B(n1321), .Y(n1323) );
  OR2X1 U1191 ( .A(n1327), .B(n1328), .Y(\xgmii_tx.TXD [27]) );
  OR2X1 U1192 ( .A(n1325), .B(n1326), .Y(n1328) );
  OR2X1 U1193 ( .A(n1332), .B(n1333), .Y(\xgmii_tx.TXD [28]) );
  OR2X1 U1194 ( .A(n1330), .B(n1331), .Y(n1333) );
  OR2X1 U1195 ( .A(n1337), .B(n1338), .Y(\xgmii_tx.TXD [29]) );
  OR2X1 U1196 ( .A(n1335), .B(n1336), .Y(n1338) );
  OR2X1 U1197 ( .A(n1342), .B(n1343), .Y(\xgmii_tx.TXD [30]) );
  OR2X1 U1198 ( .A(n1340), .B(n1341), .Y(n1343) );
  OR2X1 U1199 ( .A(n1347), .B(n1348), .Y(\xgmii_tx.TXD [31]) );
  OR2X1 U1200 ( .A(n1345), .B(n1346), .Y(n1348) );
  OR2X1 U1201 ( .A(n1386), .B(n1387), .Y(n1384) );
  OR2X1 U1202 ( .A(n2268), .B(n1385), .Y(n1387) );
  OR2X1 U1203 ( .A(n1754), .B(n1511), .Y(n1510) );
  INVX1 U1204 ( .A(n1510), .Y(n1018) );
  OR2X1 U1205 ( .A(n1713), .B(n1470), .Y(n1511) );
  OR2X1 U1206 ( .A(n1077), .B(n1082), .Y(n2105) );
  OR2X1 U1207 ( .A(n1587), .B(n1588), .Y(\xgmii_tx.TXC [3]) );
  OR2X1 U1208 ( .A(n1722), .B(n1586), .Y(n1588) );
  OR2X1 U1209 ( .A(n1509), .B(n1703), .Y(n1701) );
  OR2X1 U1210 ( .A(n807), .B(n1702), .Y(n1703) );
  OR2X1 U1211 ( .A(n1353), .B(n1707), .Y(n1706) );
  OR2X1 U1212 ( .A(n2276), .B(n1524), .Y(n1707) );
  OR2X1 U1213 ( .A(n1509), .B(n807), .Y(n1713) );
  AND2X1 U1214 ( .A(n1378), .B(n1710), .Y(n1749) );
  AND2X1 U1215 ( .A(n1602), .B(n1526), .Y(n1759) );
  AND2X1 U1216 ( .A(n1595), .B(n1854), .Y(n1808) );
  AND2X1 U1217 ( .A(n1596), .B(n1854), .Y(n1814) );
  OR2X1 U1218 ( .A(n1820), .B(n1081), .Y(n1823) );
  AND2X1 U1219 ( .A(n1597), .B(n1854), .Y(n1821) );
  AND2X1 U1220 ( .A(n1598), .B(n1854), .Y(n1827) );
  AND2X1 U1221 ( .A(n1600), .B(n1848), .Y(n1833) );
  AND2X1 U1222 ( .A(n1599), .B(n1854), .Y(n1839) );
  AND2X1 U1223 ( .A(n1601), .B(n1848), .Y(n1845) );
  BUFX2 U1224 ( .A(n1856), .Y(n1019) );
  BUFX2 U1225 ( .A(n1986), .Y(n1020) );
  BUFX2 U1226 ( .A(xgmii_txd_d[2]), .Y(n1021) );
  BUFX2 U1227 ( .A(xgmii_txd_d[3]), .Y(n1022) );
  BUFX2 U1228 ( .A(xgmii_txd_d[4]), .Y(n1023) );
  BUFX2 U1229 ( .A(xgmii_txd_d[5]), .Y(n1024) );
  BUFX2 U1230 ( .A(xgmii_txd_d[6]), .Y(n1025) );
  BUFX2 U1231 ( .A(xgmii_txd_d[7]), .Y(n1026) );
  BUFX2 U1232 ( .A(n2058), .Y(n1027) );
  BUFX2 U1233 ( .A(n2065), .Y(n1028) );
  BUFX2 U1234 ( .A(n2080), .Y(n1029) );
  BUFX2 U1235 ( .A(n2119), .Y(n1030) );
  BUFX2 U1236 ( .A(n1862), .Y(n1031) );
  BUFX2 U1237 ( .A(n1884), .Y(n1032) );
  BUFX2 U1238 ( .A(n1894), .Y(n1033) );
  BUFX2 U1239 ( .A(n1937), .Y(n1034) );
  BUFX2 U1240 ( .A(n1947), .Y(n1035) );
  BUFX2 U1241 ( .A(xgmii_txc_d[2]), .Y(n1036) );
  BUFX2 U1242 ( .A(n1855), .Y(n1037) );
  AND2X1 U1243 ( .A(n2268), .B(n1568), .Y(n1719) );
  INVX1 U1244 ( .A(n1719), .Y(n1038) );
  INVX1 U1245 ( .A(n1720), .Y(n1039) );
  AND2X1 U1246 ( .A(n2268), .B(n1066), .Y(n1720) );
  BUFX2 U1247 ( .A(n803), .Y(n1040) );
  BUFX2 U1248 ( .A(n801), .Y(n1041) );
  BUFX2 U1249 ( .A(n799), .Y(n1042) );
  BUFX2 U1250 ( .A(n796), .Y(n1043) );
  BUFX2 U1251 ( .A(n795), .Y(n1044) );
  BUFX2 U1252 ( .A(n794), .Y(n1045) );
  BUFX2 U1253 ( .A(n765), .Y(n1046) );
  BUFX2 U1254 ( .A(n760), .Y(n1047) );
  INVX1 U1255 ( .A(n782), .Y(n1048) );
  AND2X1 U1256 ( .A(n1069), .B(n2072), .Y(n782) );
  INVX1 U1257 ( .A(n778), .Y(n1049) );
  AND2X1 U1258 ( .A(n1070), .B(n2087), .Y(n778) );
  INVX1 U1259 ( .A(n776), .Y(n1050) );
  AND2X1 U1260 ( .A(n1071), .B(n2094), .Y(n776) );
  INVX1 U1261 ( .A(n774), .Y(n1051) );
  AND2X1 U1262 ( .A(n1072), .B(n2102), .Y(n774) );
  INVX1 U1263 ( .A(n772), .Y(n1052) );
  AND2X1 U1264 ( .A(n1073), .B(n2110), .Y(n772) );
  INVX1 U1265 ( .A(n768), .Y(n1053) );
  AND2X1 U1266 ( .A(n1569), .B(n2125), .Y(n768) );
  INVX1 U1267 ( .A(n766), .Y(n1054) );
  AND2X1 U1268 ( .A(n1074), .B(n2134), .Y(n766) );
  INVX1 U1269 ( .A(n676), .Y(n1055) );
  AND2X1 U1270 ( .A(n2277), .B(n2276), .Y(n676) );
  BUFX2 U1271 ( .A(n2001), .Y(n1056) );
  BUFX2 U1272 ( .A(n2006), .Y(n1057) );
  BUFX2 U1273 ( .A(n2017), .Y(n1058) );
  BUFX2 U1274 ( .A(n2270), .Y(n1059) );
  BUFX2 U1275 ( .A(n2274), .Y(n1060) );
  INVX1 U1276 ( .A(n1984), .Y(n1061) );
  AND2X1 U1277 ( .A(n1380), .B(n2020), .Y(n1984) );
  INVX1 U1278 ( .A(n2012), .Y(n1062) );
  AND2X1 U1279 ( .A(n1443), .B(n2015), .Y(n2012) );
  INVX1 U1280 ( .A(n2148), .Y(n1063) );
  INVX1 U1281 ( .A(n2168), .Y(n1064) );
  AND2X1 U1282 ( .A(n1593), .B(n1447), .Y(n2168) );
  INVX1 U1283 ( .A(n2180), .Y(n1065) );
  BUFX2 U1284 ( .A(xgmii_txc_d[1]), .Y(n1066) );
  INVX1 U1285 ( .A(n1573), .Y(n1067) );
  AND2X1 U1286 ( .A(n1574), .B(n1918), .Y(n1573) );
  INVX1 U1287 ( .A(n1576), .Y(n1068) );
  AND2X1 U1288 ( .A(n1577), .B(n1997), .Y(n1576) );
  BUFX2 U1289 ( .A(n2073), .Y(n1069) );
  BUFX2 U1290 ( .A(n2088), .Y(n1070) );
  BUFX2 U1291 ( .A(n2095), .Y(n1071) );
  BUFX2 U1292 ( .A(n2103), .Y(n1072) );
  BUFX2 U1293 ( .A(n2111), .Y(n1073) );
  BUFX2 U1294 ( .A(n2135), .Y(n1074) );
  INVX1 U1295 ( .A(n1572), .Y(n1075) );
  AND2X1 U1296 ( .A(n1574), .B(n1512), .Y(n1572) );
  INVX1 U1297 ( .A(n1575), .Y(n1076) );
  AND2X1 U1298 ( .A(n1577), .B(n1514), .Y(n1575) );
  INVX1 U1299 ( .A(n1527), .Y(n1077) );
  OR2X1 U1300 ( .A(n2109), .B(n1529), .Y(n1527) );
  BUFX2 U1301 ( .A(n1755), .Y(n1078) );
  BUFX2 U1302 ( .A(n1728), .Y(n1079) );
  BUFX2 U1303 ( .A(n1806), .Y(n1080) );
  BUFX2 U1304 ( .A(n1819), .Y(n1081) );
  INVX1 U1305 ( .A(n1528), .Y(n1082) );
  OR2X1 U1306 ( .A(n1530), .B(n1484), .Y(n1528) );
  BUFX2 U1307 ( .A(n1744), .Y(n1083) );
  BUFX2 U1308 ( .A(n1758), .Y(n1084) );
  BUFX2 U1309 ( .A(n1764), .Y(n1085) );
  BUFX2 U1310 ( .A(n1770), .Y(n1086) );
  BUFX2 U1311 ( .A(n1777), .Y(n1087) );
  BUFX2 U1312 ( .A(n1783), .Y(n1088) );
  BUFX2 U1313 ( .A(n1790), .Y(n1089) );
  BUFX2 U1314 ( .A(n1798), .Y(n1090) );
  BUFX2 U1315 ( .A(n1813), .Y(n1091) );
  BUFX2 U1316 ( .A(n1826), .Y(n1092) );
  BUFX2 U1317 ( .A(n1832), .Y(n1093) );
  BUFX2 U1318 ( .A(n1838), .Y(n1094) );
  BUFX2 U1319 ( .A(n1853), .Y(n1095) );
  BUFX2 U1320 ( .A(n1870), .Y(n1096) );
  BUFX2 U1321 ( .A(n1875), .Y(n1097) );
  BUFX2 U1322 ( .A(n1880), .Y(n1098) );
  BUFX2 U1323 ( .A(n1890), .Y(n1099) );
  BUFX2 U1324 ( .A(n1901), .Y(n1100) );
  BUFX2 U1325 ( .A(n1928), .Y(n1101) );
  BUFX2 U1326 ( .A(n1933), .Y(n1102) );
  BUFX2 U1327 ( .A(n1943), .Y(n1103) );
  BUFX2 U1328 ( .A(n1955), .Y(n1104) );
  BUFX2 U1329 ( .A(n2162), .Y(n1105) );
  INVX1 U1330 ( .A(n1863), .Y(n1106) );
  INVX1 U1331 ( .A(n1885), .Y(n1107) );
  INVX1 U1332 ( .A(n1895), .Y(n1108) );
  INVX1 U1333 ( .A(n1938), .Y(n1109) );
  INVX1 U1334 ( .A(n1948), .Y(n1110) );
  INVX1 U1335 ( .A(n1718), .Y(n1111) );
  BUFX2 U1336 ( .A(n1757), .Y(n1112) );
  BUFX2 U1337 ( .A(n1763), .Y(n1113) );
  BUFX2 U1338 ( .A(n1769), .Y(n1114) );
  BUFX2 U1339 ( .A(n1782), .Y(n1115) );
  BUFX2 U1340 ( .A(n1789), .Y(n1116) );
  BUFX2 U1341 ( .A(n1797), .Y(n1117) );
  BUFX2 U1342 ( .A(n1805), .Y(n1118) );
  BUFX2 U1343 ( .A(n1812), .Y(n1119) );
  BUFX2 U1344 ( .A(n1818), .Y(n1120) );
  BUFX2 U1345 ( .A(n1825), .Y(n1121) );
  BUFX2 U1346 ( .A(n1837), .Y(n1122) );
  BUFX2 U1347 ( .A(n1879), .Y(n1123) );
  BUFX2 U1348 ( .A(n1889), .Y(n1124) );
  BUFX2 U1349 ( .A(n1900), .Y(n1125) );
  BUFX2 U1350 ( .A(n1911), .Y(n1126) );
  BUFX2 U1351 ( .A(n1932), .Y(n1127) );
  BUFX2 U1352 ( .A(n1942), .Y(n1128) );
  BUFX2 U1353 ( .A(n1954), .Y(n1129) );
  BUFX2 U1354 ( .A(n1994), .Y(n1130) );
  BUFX2 U1355 ( .A(n1743), .Y(n1131) );
  INVX1 U1356 ( .A(n1739), .Y(n1132) );
  AND2X1 U1357 ( .A(n1444), .B(n1362), .Y(n1739) );
  INVX1 U1358 ( .A(n1746), .Y(n1133) );
  AND2X1 U1359 ( .A(n2153), .B(n2164), .Y(n1746) );
  INVX1 U1360 ( .A(n2163), .Y(n1134) );
  OR2X1 U1361 ( .A(n1487), .B(n1508), .Y(n2163) );
  BUFX2 U1362 ( .A(n2271), .Y(n1135) );
  BUFX2 U1363 ( .A(n2176), .Y(n1136) );
  INVX1 U1364 ( .A(n2147), .Y(n1137) );
  AND2X1 U1365 ( .A(n1656), .B(n1379), .Y(n2147) );
  BUFX2 U1366 ( .A(n2009), .Y(n1138) );
  BUFX2 U1367 ( .A(n2027), .Y(n1139) );
  BUFX2 U1368 ( .A(n2165), .Y(n1140) );
  OR2X1 U1369 ( .A(n1508), .B(n1488), .Y(n1860) );
  INVX1 U1370 ( .A(n1860), .Y(n1141) );
  BUFX2 U1371 ( .A(n2146), .Y(n1142) );
  BUFX2 U1372 ( .A(xgmii_txd_d[1]), .Y(n1143) );
  BUFX2 U1373 ( .A(xgmii_txd_d[12]), .Y(n1144) );
  BUFX2 U1374 ( .A(xgmii_txd_d[14]), .Y(n1145) );
  BUFX2 U1375 ( .A(n1742), .Y(n1146) );
  BUFX2 U1376 ( .A(n1776), .Y(n1147) );
  BUFX2 U1377 ( .A(n1804), .Y(n1148) );
  BUFX2 U1378 ( .A(n1817), .Y(n1149) );
  BUFX2 U1379 ( .A(n1831), .Y(n1150) );
  BUFX2 U1380 ( .A(n1843), .Y(n1151) );
  BUFX2 U1381 ( .A(n1851), .Y(n1152) );
  BUFX2 U1382 ( .A(n1868), .Y(n1153) );
  BUFX2 U1383 ( .A(n1874), .Y(n1154) );
  BUFX2 U1384 ( .A(n1919), .Y(n1155) );
  BUFX2 U1385 ( .A(n1926), .Y(n1156) );
  BUFX2 U1386 ( .A(n1991), .Y(n1157) );
  INVX1 U1387 ( .A(n1756), .Y(n1158) );
  BUFX2 U1388 ( .A(n2018), .Y(n1159) );
  INVX1 U1389 ( .A(n2038), .Y(n1160) );
  AND2X1 U1390 ( .A(n1999), .B(n2034), .Y(n2038) );
  INVX1 U1391 ( .A(n2045), .Y(n1161) );
  AND2X1 U1392 ( .A(n1999), .B(n2041), .Y(n2045) );
  INVX1 U1393 ( .A(n2052), .Y(n1162) );
  AND2X1 U1394 ( .A(n1999), .B(n2048), .Y(n2052) );
  BUFX2 U1395 ( .A(xgmii_txd_d[0]), .Y(n1163) );
  BUFX2 U1396 ( .A(xgmii_txd_d[8]), .Y(n1164) );
  BUFX2 U1397 ( .A(xgmii_txd_d[9]), .Y(n1165) );
  BUFX2 U1398 ( .A(xgmii_txd_d[10]), .Y(n1166) );
  BUFX2 U1399 ( .A(xgmii_txd_d[16]), .Y(n1167) );
  BUFX2 U1400 ( .A(xgmii_txd_d[17]), .Y(n1168) );
  BUFX2 U1401 ( .A(xgmii_txd_d[18]), .Y(n1169) );
  BUFX2 U1402 ( .A(xgmii_txd_d[24]), .Y(n1170) );
  BUFX2 U1403 ( .A(xgmii_txd_d[25]), .Y(n1171) );
  BUFX2 U1404 ( .A(xgmii_txd_d[26]), .Y(n1172) );
  BUFX2 U1405 ( .A(xgmii_txd_d[11]), .Y(n1173) );
  BUFX2 U1406 ( .A(xgmii_txd_d[13]), .Y(n1174) );
  BUFX2 U1407 ( .A(xgmii_txd_d[15]), .Y(n1175) );
  BUFX2 U1408 ( .A(xgmii_txd_d[19]), .Y(n1176) );
  BUFX2 U1409 ( .A(xgmii_txd_d[20]), .Y(n1177) );
  BUFX2 U1410 ( .A(xgmii_txd_d[21]), .Y(n1178) );
  BUFX2 U1411 ( .A(xgmii_txd_d[22]), .Y(n1179) );
  BUFX2 U1412 ( .A(xgmii_txd_d[23]), .Y(n1180) );
  BUFX2 U1413 ( .A(xgmii_txd_d[27]), .Y(n1181) );
  BUFX2 U1414 ( .A(xgmii_txd_d[28]), .Y(n1182) );
  BUFX2 U1415 ( .A(xgmii_txd_d[29]), .Y(n1183) );
  BUFX2 U1416 ( .A(xgmii_txd_d[30]), .Y(n1184) );
  BUFX2 U1417 ( .A(xgmii_txd_d[31]), .Y(n1185) );
  BUFX2 U1418 ( .A(n1980), .Y(n1186) );
  BUFX2 U1419 ( .A(n2008), .Y(n1187) );
  BUFX2 U1420 ( .A(n2026), .Y(n1188) );
  INVX1 U1421 ( .A(n2021), .Y(n1189) );
  AND2X1 U1422 ( .A(n2025), .B(n2005), .Y(n2021) );
  BUFX2 U1423 ( .A(xgmii_txc_d[3]), .Y(n1190) );
  INVX1 U1424 ( .A(n1859), .Y(n1191) );
  OR2X1 U1425 ( .A(n1691), .B(n1493), .Y(n1859) );
  BUFX2 U1426 ( .A(n1850), .Y(n1192) );
  INVX1 U1427 ( .A(n1752), .Y(n1193) );
  AND2X1 U1428 ( .A(n1677), .B(n1849), .Y(n1752) );
  INVX1 U1429 ( .A(n1768), .Y(n1194) );
  AND2X1 U1430 ( .A(n1659), .B(n1913), .Y(n1768) );
  INVX1 U1431 ( .A(n1781), .Y(n1195) );
  AND2X1 U1432 ( .A(n1660), .B(n1913), .Y(n1781) );
  INVX1 U1433 ( .A(n1811), .Y(n1196) );
  AND2X1 U1434 ( .A(n1953), .B(n1670), .Y(n1811) );
  INVX1 U1435 ( .A(n1824), .Y(n1197) );
  AND2X1 U1436 ( .A(n1659), .B(n1953), .Y(n1824) );
  INVX1 U1437 ( .A(n1830), .Y(n1198) );
  AND2X1 U1438 ( .A(n1675), .B(n1913), .Y(n1830) );
  INVX1 U1439 ( .A(n1836), .Y(n1199) );
  AND2X1 U1440 ( .A(n1660), .B(n1953), .Y(n1836) );
  INVX1 U1441 ( .A(n1842), .Y(n1200) );
  AND2X1 U1442 ( .A(n1676), .B(n1913), .Y(n1842) );
  INVX1 U1443 ( .A(n1996), .Y(n1201) );
  AND2X1 U1444 ( .A(n1700), .B(n1995), .Y(n1996) );
  INVX1 U1445 ( .A(n2169), .Y(n1202) );
  AND2X1 U1446 ( .A(n1525), .B(n2264), .Y(n2169) );
  INVX1 U1447 ( .A(n1977), .Y(n1203) );
  AND2X1 U1448 ( .A(n1970), .B(n2099), .Y(n1977) );
  INVX1 U1449 ( .A(n1976), .Y(n1204) );
  AND2X1 U1450 ( .A(n1971), .B(n2084), .Y(n1976) );
  BUFX2 U1451 ( .A(n1912), .Y(n1205) );
  BUFX2 U1452 ( .A(n1964), .Y(n1206) );
  BUFX2 U1453 ( .A(n1969), .Y(n1207) );
  BUFX2 U1454 ( .A(n1975), .Y(n1208) );
  BUFX2 U1455 ( .A(n2266), .Y(n1209) );
  INVX1 U1456 ( .A(n1715), .Y(n1210) );
  AND2X1 U1457 ( .A(n1594), .B(n1714), .Y(n1715) );
  INVX1 U1458 ( .A(n1973), .Y(n1211) );
  AND2X1 U1459 ( .A(n1972), .B(n2131), .Y(n1973) );
  BUFX2 U1460 ( .A(n2351), .Y(\xgmii_tx.TXC [2]) );
  INVX1 U1461 ( .A(n987), .Y(n1214) );
  INVX1 U1462 ( .A(n812), .Y(n1215) );
  INVX1 U1463 ( .A(n989), .Y(n1218) );
  INVX1 U1464 ( .A(n813), .Y(n1219) );
  INVX1 U1465 ( .A(n814), .Y(n1222) );
  INVX1 U1466 ( .A(n990), .Y(n1223) );
  INVX1 U1467 ( .A(n815), .Y(n1226) );
  INVX1 U1468 ( .A(n991), .Y(n1227) );
  INVX1 U1469 ( .A(n816), .Y(n1230) );
  INVX1 U1470 ( .A(n992), .Y(n1231) );
  INVX1 U1471 ( .A(n993), .Y(n1234) );
  INVX1 U1472 ( .A(n817), .Y(n1235) );
  INVX1 U1473 ( .A(n994), .Y(n1238) );
  INVX1 U1474 ( .A(n818), .Y(n1239) );
  INVX1 U1475 ( .A(n995), .Y(n1242) );
  INVX1 U1476 ( .A(n819), .Y(n1243) );
  INVX1 U1477 ( .A(n820), .Y(n1246) );
  INVX1 U1478 ( .A(n996), .Y(n1249) );
  INVX1 U1479 ( .A(n821), .Y(n1250) );
  INVX1 U1480 ( .A(n822), .Y(n1253) );
  INVX1 U1481 ( .A(n823), .Y(n1256) );
  INVX1 U1482 ( .A(n997), .Y(n1257) );
  INVX1 U1483 ( .A(n824), .Y(n1260) );
  INVX1 U1484 ( .A(n998), .Y(n1261) );
  INVX1 U1485 ( .A(n999), .Y(n1264) );
  INVX1 U1486 ( .A(n825), .Y(n1265) );
  INVX1 U1487 ( .A(n826), .Y(n1268) );
  INVX1 U1488 ( .A(n829), .Y(n1271) );
  INVX1 U1489 ( .A(n1001), .Y(n1272) );
  INVX1 U1490 ( .A(n827), .Y(n1273) );
  INVX1 U1491 ( .A(n831), .Y(n1276) );
  INVX1 U1492 ( .A(n1002), .Y(n1277) );
  INVX1 U1493 ( .A(n830), .Y(n1278) );
  INVX1 U1494 ( .A(n833), .Y(n1281) );
  INVX1 U1495 ( .A(n1003), .Y(n1282) );
  INVX1 U1496 ( .A(n832), .Y(n1283) );
  INVX1 U1497 ( .A(n835), .Y(n1286) );
  INVX1 U1498 ( .A(n1004), .Y(n1287) );
  INVX1 U1499 ( .A(n834), .Y(n1288) );
  INVX1 U1500 ( .A(n837), .Y(n1291) );
  INVX1 U1501 ( .A(n1005), .Y(n1292) );
  INVX1 U1502 ( .A(n836), .Y(n1293) );
  INVX1 U1503 ( .A(n839), .Y(n1296) );
  INVX1 U1504 ( .A(n1006), .Y(n1297) );
  INVX1 U1505 ( .A(n838), .Y(n1298) );
  INVX1 U1506 ( .A(n841), .Y(n1301) );
  INVX1 U1507 ( .A(n1007), .Y(n1302) );
  INVX1 U1508 ( .A(n840), .Y(n1303) );
  INVX1 U1509 ( .A(n843), .Y(n1306) );
  INVX1 U1510 ( .A(n1008), .Y(n1307) );
  INVX1 U1511 ( .A(n842), .Y(n1308) );
  INVX1 U1512 ( .A(n845), .Y(n1311) );
  INVX1 U1513 ( .A(n1916), .Y(n1312) );
  INVX1 U1514 ( .A(n844), .Y(n1313) );
  INVX1 U1515 ( .A(n847), .Y(n1316) );
  INVX1 U1516 ( .A(n846), .Y(n1317) );
  INVX1 U1517 ( .A(n849), .Y(n1320) );
  INVX1 U1518 ( .A(n1010), .Y(n1321) );
  INVX1 U1519 ( .A(n848), .Y(n1322) );
  INVX1 U1520 ( .A(n851), .Y(n1325) );
  INVX1 U1521 ( .A(n1011), .Y(n1326) );
  INVX1 U1522 ( .A(n850), .Y(n1327) );
  INVX1 U1523 ( .A(n853), .Y(n1330) );
  INVX1 U1524 ( .A(n1012), .Y(n1331) );
  INVX1 U1525 ( .A(n852), .Y(n1332) );
  INVX1 U1526 ( .A(n855), .Y(n1335) );
  INVX1 U1527 ( .A(n1013), .Y(n1336) );
  INVX1 U1528 ( .A(n854), .Y(n1337) );
  INVX1 U1529 ( .A(n857), .Y(n1340) );
  INVX1 U1530 ( .A(n1014), .Y(n1341) );
  INVX1 U1531 ( .A(n856), .Y(n1342) );
  INVX1 U1532 ( .A(n859), .Y(n1345) );
  INVX1 U1533 ( .A(n1015), .Y(n1346) );
  INVX1 U1534 ( .A(n858), .Y(n1347) );
  INVX1 U1535 ( .A(n2353), .Y(\xgmii_tx.TXC [0]) );
  INVX1 U1536 ( .A(n2354), .Y(\xgmii_tx.TXD [15]) );
  BUFX2 U1537 ( .A(n2170), .Y(n1351) );
  BUFX2 U1538 ( .A(n1807), .Y(n1352) );
  BUFX2 U1539 ( .A(crc_bvalid_d[0]), .Y(n1353) );
  BUFX2 U1540 ( .A(n1753), .Y(n1354) );
  INVX1 U1541 ( .A(n1729), .Y(n1355) );
  BUFX2 U1542 ( .A(n2003), .Y(n1356) );
  BUFX2 U1543 ( .A(n1914), .Y(n1357) );
  INVX1 U1544 ( .A(n1802), .Y(n1358) );
  AND2X1 U1545 ( .A(n2151), .B(n1497), .Y(n1802) );
  AND2X1 U1546 ( .A(n1754), .B(n1774), .Y(n1961) );
  INVX1 U1547 ( .A(n1961), .Y(n1359) );
  INVX1 U1548 ( .A(n1361), .Y(n1360) );
  BUFX2 U1549 ( .A(n1727), .Y(n1361) );
  INVX1 U1550 ( .A(n2150), .Y(n1362) );
  AND2X1 U1551 ( .A(n1371), .B(n1441), .Y(n2150) );
  BUFX2 U1552 ( .A(n2161), .Y(n1363) );
  BUFX2 U1553 ( .A(n1724), .Y(n1364) );
  BUFX2 U1554 ( .A(n1906), .Y(n1365) );
  OR2X1 U1555 ( .A(n1485), .B(n810), .Y(n2109) );
  INVX1 U1556 ( .A(n2109), .Y(n1366) );
  INVX1 U1557 ( .A(n1722), .Y(n1367) );
  AND2X1 U1558 ( .A(n2175), .B(n1524), .Y(n1722) );
  INVX1 U1559 ( .A(n1369), .Y(n1368) );
  BUFX2 U1560 ( .A(n2007), .Y(n1369) );
  AND2X1 U1561 ( .A(lpi), .B(n2010), .Y(n2005) );
  INVX1 U1562 ( .A(n2005), .Y(n1370) );
  INVX1 U1563 ( .A(n1989), .Y(n1371) );
  OR2X1 U1564 ( .A(n2160), .B(n1738), .Y(n1989) );
  INVX1 U1565 ( .A(n1740), .Y(n1372) );
  OR2X1 U1566 ( .A(n1459), .B(n1442), .Y(n2016) );
  INVX1 U1567 ( .A(n2016), .Y(n1373) );
  INVX1 U1568 ( .A(n1907), .Y(n1374) );
  AND2X1 U1569 ( .A(n2164), .B(n1733), .Y(n1907) );
  INVX1 U1570 ( .A(n1803), .Y(n1375) );
  AND2X1 U1571 ( .A(n2164), .B(n1738), .Y(n1803) );
  BUFX2 U1572 ( .A(n2139), .Y(n1376) );
  INVX1 U1573 ( .A(n1726), .Y(n1377) );
  AND2X1 U1574 ( .A(n1496), .B(n1725), .Y(n1726) );
  BUFX2 U1575 ( .A(xgmii_tx_hold[24]), .Y(n1378) );
  INVX1 U1576 ( .A(n2143), .Y(n1379) );
  OR2X1 U1577 ( .A(n2141), .B(n2140), .Y(n2143) );
  INVX1 U1578 ( .A(n1992), .Y(n1380) );
  BUFX2 U1579 ( .A(n2029), .Y(n1381) );
  BUFX2 U1580 ( .A(nxt_state[2]), .Y(n1382) );
  INVX1 U1581 ( .A(n2138), .Y(n1383) );
  AND2X1 U1582 ( .A(n2136), .B(n1651), .Y(n2138) );
  INVX1 U1583 ( .A(n860), .Y(n1385) );
  INVX1 U1584 ( .A(n1016), .Y(n1386) );
  INVX1 U1585 ( .A(n2152), .Y(n1388) );
  OR2X1 U1586 ( .A(n1492), .B(n1445), .Y(n2152) );
  BUFX2 U1587 ( .A(nxt_state[1]), .Y(n1389) );
  BUFX2 U1588 ( .A(pkt_ctrl_d[3]), .Y(n1390) );
  BUFX2 U1589 ( .A(n1788), .Y(n1391) );
  INVX1 U1590 ( .A(n2056), .Y(n1392) );
  OR2X1 U1591 ( .A(n1669), .B(n810), .Y(n2056) );
  INVX1 U1592 ( .A(n2063), .Y(n1393) );
  OR2X1 U1593 ( .A(n1678), .B(n810), .Y(n2063) );
  OR2X1 U1594 ( .A(n1679), .B(n810), .Y(n2071) );
  INVX1 U1595 ( .A(n2071), .Y(n1394) );
  INVX1 U1596 ( .A(n2078), .Y(n1395) );
  OR2X1 U1597 ( .A(n1674), .B(n810), .Y(n2078) );
  INVX1 U1598 ( .A(n2086), .Y(n1396) );
  OR2X1 U1599 ( .A(n1681), .B(n810), .Y(n2086) );
  INVX1 U1600 ( .A(n2101), .Y(n1397) );
  OR2X1 U1601 ( .A(n1682), .B(n810), .Y(n2101) );
  INVX1 U1602 ( .A(n2124), .Y(n1398) );
  OR2X1 U1603 ( .A(n1680), .B(n810), .Y(n2124) );
  INVX1 U1604 ( .A(n2133), .Y(n1399) );
  OR2X1 U1605 ( .A(n1683), .B(n810), .Y(n2133) );
  INVX1 U1606 ( .A(n2272), .Y(n1400) );
  AND2X1 U1607 ( .A(n1961), .B(n1658), .Y(n2272) );
  BUFX2 U1608 ( .A(xgmii_tx_hold[62]), .Y(n1401) );
  BUFX2 U1609 ( .A(xgmii_tx_hold[61]), .Y(n1402) );
  BUFX2 U1610 ( .A(xgmii_tx_hold[60]), .Y(n1403) );
  BUFX2 U1611 ( .A(xgmii_tx_hold[59]), .Y(n1404) );
  BUFX2 U1612 ( .A(xgmii_tx_hold[58]), .Y(n1405) );
  BUFX2 U1613 ( .A(xgmii_tx_hold[15]), .Y(n1406) );
  BUFX2 U1614 ( .A(xgmii_tx_hold[14]), .Y(n1407) );
  BUFX2 U1615 ( .A(xgmii_tx_hold[13]), .Y(n1408) );
  BUFX2 U1616 ( .A(xgmii_tx_hold[12]), .Y(n1409) );
  BUFX2 U1617 ( .A(xgmii_tx_hold[11]), .Y(n1410) );
  BUFX2 U1618 ( .A(xgmii_tx_hold[10]), .Y(n1411) );
  BUFX2 U1619 ( .A(xgmii_tx_hold[9]), .Y(n1412) );
  BUFX2 U1620 ( .A(xgmii_tx_hold[8]), .Y(n1413) );
  BUFX2 U1621 ( .A(xgmii_tx_hold[63]), .Y(n1414) );
  INVX1 U1622 ( .A(n2042), .Y(n1415) );
  OR2X1 U1623 ( .A(n1667), .B(n810), .Y(n2042) );
  INVX1 U1624 ( .A(n2049), .Y(n1416) );
  OR2X1 U1625 ( .A(n1668), .B(n810), .Y(n2049) );
  BUFX2 U1626 ( .A(xgmii_tx_hold[31]), .Y(n1417) );
  BUFX2 U1627 ( .A(xgmii_tx_hold[30]), .Y(n1418) );
  BUFX2 U1628 ( .A(xgmii_tx_hold[29]), .Y(n1419) );
  BUFX2 U1629 ( .A(xgmii_tx_hold[28]), .Y(n1420) );
  BUFX2 U1630 ( .A(xgmii_tx_hold[27]), .Y(n1421) );
  BUFX2 U1631 ( .A(xgmii_tx_hold[26]), .Y(n1422) );
  BUFX2 U1632 ( .A(xgmii_tx_hold[25]), .Y(n1423) );
  BUFX2 U1633 ( .A(n2002), .Y(n1424) );
  BUFX2 U1634 ( .A(crc_left_d[24]), .Y(n1425) );
  BUFX2 U1635 ( .A(crc_left_d[31]), .Y(n1426) );
  BUFX2 U1636 ( .A(crc_left_d[30]), .Y(n1427) );
  BUFX2 U1637 ( .A(crc_left_d[29]), .Y(n1428) );
  BUFX2 U1638 ( .A(crc_left_d[28]), .Y(n1429) );
  BUFX2 U1639 ( .A(crc_left_d[27]), .Y(n1430) );
  BUFX2 U1640 ( .A(crc_left_d[26]), .Y(n1431) );
  BUFX2 U1641 ( .A(crc_left_d[25]), .Y(n1432) );
  INVX1 U1642 ( .A(n2035), .Y(n1433) );
  OR2X1 U1643 ( .A(n1446), .B(n810), .Y(n2035) );
  BUFX2 U1644 ( .A(pkt_ctrl_d[7]), .Y(n1434) );
  BUFX2 U1645 ( .A(pkt_ctrl_d[5]), .Y(n1435) );
  OR2X1 U1646 ( .A(n1522), .B(n1489), .Y(n2267) );
  INVX1 U1647 ( .A(n2267), .Y(n1436) );
  BUFX2 U1648 ( .A(pkt_ctrl_d[1]), .Y(n1437) );
  INVX1 U1649 ( .A(n2157), .Y(n1438) );
  OR2X1 U1650 ( .A(n1705), .B(n1508), .Y(n2157) );
  BUFX2 U1651 ( .A(wakeuptimer_d[31]), .Y(n1439) );
  INVX1 U1652 ( .A(n2151), .Y(n1440) );
  INVX1 U1653 ( .A(n1987), .Y(n1441) );
  OR2X1 U1654 ( .A(n1570), .B(n2153), .Y(n1987) );
  INVX1 U1655 ( .A(n1443), .Y(n1442) );
  BUFX2 U1656 ( .A(cnt128_d[3]), .Y(n1443) );
  BUFX2 U1657 ( .A(bvalid[7]), .Y(n1444) );
  INVX1 U1658 ( .A(n2160), .Y(n1445) );
  AND2X1 U1659 ( .A(n1691), .B(n1726), .Y(n2160) );
  BUFX2 U1660 ( .A(wakeuptimer_d[1]), .Y(n1446) );
  INVX1 U1661 ( .A(n2167), .Y(n1447) );
  INVX1 U1662 ( .A(n1449), .Y(n1448) );
  BUFX2 U1663 ( .A(cnt128_d[6]), .Y(n1449) );
  BUFX2 U1664 ( .A(n2173), .Y(n1450) );
  BUFX2 U1665 ( .A(crc_left_d[23]), .Y(n1451) );
  BUFX2 U1666 ( .A(crc_left_d[22]), .Y(n1452) );
  BUFX2 U1667 ( .A(crc_left_d[20]), .Y(n1453) );
  BUFX2 U1668 ( .A(crc_left_d[18]), .Y(n1454) );
  INVX1 U1669 ( .A(n2172), .Y(n1455) );
  AND2X1 U1670 ( .A(n1700), .B(n1909), .Y(n2172) );
  INVX1 U1671 ( .A(n1747), .Y(n1456) );
  INVX1 U1672 ( .A(gclk_en), .Y(n1457) );
  OR2X1 U1673 ( .A(n2032), .B(n2137), .Y(gclk_en) );
  INVX1 U1674 ( .A(n2275), .Y(n1458) );
  BUFX2 U1675 ( .A(n2014), .Y(n1459) );
  BUFX2 U1676 ( .A(bvalid[3]), .Y(n1460) );
  BUFX2 U1677 ( .A(crc_left_d[16]), .Y(n1461) );
  BUFX2 U1678 ( .A(crc_tx_d[15]), .Y(n1462) );
  BUFX2 U1679 ( .A(crc_tx_d[14]), .Y(n1463) );
  BUFX2 U1680 ( .A(crc_tx_d[13]), .Y(n1464) );
  BUFX2 U1681 ( .A(crc_tx_d[12]), .Y(n1465) );
  BUFX2 U1682 ( .A(crc_tx_d[11]), .Y(n1466) );
  BUFX2 U1683 ( .A(crc_tx_d[10]), .Y(n1467) );
  BUFX2 U1684 ( .A(crc_tx_d[9]), .Y(n1468) );
  BUFX2 U1685 ( .A(crc_tx_d[8]), .Y(n1469) );
  INVX1 U1686 ( .A(n1471), .Y(n1470) );
  BUFX2 U1687 ( .A(cur_state[0]), .Y(n1471) );
  INVX1 U1688 ( .A(n1473), .Y(n1472) );
  BUFX2 U1689 ( .A(wakeuptimer_d[24]), .Y(n1473) );
  INVX1 U1690 ( .A(n1475), .Y(n1474) );
  BUFX2 U1691 ( .A(wakeuptimer_d[10]), .Y(n1475) );
  INVX1 U1692 ( .A(n1477), .Y(n1476) );
  BUFX2 U1693 ( .A(wakeuptimer_d[8]), .Y(n1477) );
  INVX1 U1694 ( .A(n1479), .Y(n1478) );
  BUFX2 U1695 ( .A(wakeuptimer_d[26]), .Y(n1479) );
  INVX1 U1696 ( .A(n1481), .Y(n1480) );
  BUFX2 U1697 ( .A(wakeuptimer_d[18]), .Y(n1481) );
  INVX1 U1698 ( .A(n1483), .Y(n1482) );
  BUFX2 U1699 ( .A(wakeuptimer_d[14]), .Y(n1483) );
  INVX1 U1700 ( .A(n1485), .Y(n1484) );
  BUFX2 U1701 ( .A(wakeuptimer_d[21]), .Y(n1485) );
  BUFX2 U1702 ( .A(n1925), .Y(n1486) );
  INVX1 U1703 ( .A(n1488), .Y(n1487) );
  BUFX2 U1704 ( .A(bvalid[1]), .Y(n1488) );
  BUFX2 U1705 ( .A(n1983), .Y(n1489) );
  INVX1 U1706 ( .A(n1491), .Y(n1490) );
  BUFX2 U1707 ( .A(cnt128_d[1]), .Y(n1491) );
  INVX1 U1708 ( .A(n1493), .Y(n1492) );
  BUFX2 U1709 ( .A(bvalid[4]), .Y(n1493) );
  INVX1 U1710 ( .A(n1495), .Y(n1494) );
  BUFX2 U1711 ( .A(cnt128_d[2]), .Y(n1495) );
  BUFX2 U1712 ( .A(bvalid[6]), .Y(n1496) );
  INVX1 U1713 ( .A(n1988), .Y(n1497) );
  OR2X1 U1714 ( .A(n1708), .B(n1745), .Y(n1988) );
  BUFX2 U1715 ( .A(wakeuptimer_d[17]), .Y(n1498) );
  BUFX2 U1716 ( .A(n2265), .Y(n1499) );
  BUFX2 U1717 ( .A(crc_tx_d[16]), .Y(n1500) );
  BUFX2 U1718 ( .A(crc_tx_d[23]), .Y(n1501) );
  BUFX2 U1719 ( .A(crc_tx_d[22]), .Y(n1502) );
  BUFX2 U1720 ( .A(crc_tx_d[21]), .Y(n1503) );
  BUFX2 U1721 ( .A(crc_tx_d[20]), .Y(n1504) );
  BUFX2 U1722 ( .A(crc_tx_d[19]), .Y(n1505) );
  BUFX2 U1723 ( .A(crc_tx_d[18]), .Y(n1506) );
  BUFX2 U1724 ( .A(crc_tx_d[17]), .Y(n1507) );
  INVX1 U1725 ( .A(n2156), .Y(n1508) );
  AND2X1 U1726 ( .A(n2149), .B(n1730), .Y(n2156) );
  INVX1 U1727 ( .A(n808), .Y(n1509) );
  INVX1 U1728 ( .A(n1513), .Y(n1512) );
  BUFX2 U1729 ( .A(crc_left_d[6]), .Y(n1513) );
  INVX1 U1730 ( .A(n1515), .Y(n1514) );
  BUFX2 U1731 ( .A(crc_left_d[1]), .Y(n1515) );
  BUFX2 U1732 ( .A(crc_left_d[0]), .Y(n1516) );
  BUFX2 U1733 ( .A(crc_left_d[4]), .Y(n1517) );
  BUFX2 U1734 ( .A(crc_left_d[2]), .Y(n1518) );
  BUFX2 U1735 ( .A(crc_left_d[7]), .Y(n1519) );
  BUFX2 U1736 ( .A(crc_left_d[5]), .Y(n1520) );
  BUFX2 U1737 ( .A(crc_left_d[3]), .Y(n1521) );
  INVX1 U1738 ( .A(n807), .Y(n1522) );
  BUFX2 U1739 ( .A(n1867), .Y(n1523) );
  INVX1 U1740 ( .A(n1525), .Y(n1524) );
  BUFX2 U1741 ( .A(crc_bvalid_d[1]), .Y(n1525) );
  INVX1 U1742 ( .A(n1795), .Y(n1526) );
  INVX1 U1743 ( .A(n2106), .Y(n1529) );
  INVX1 U1744 ( .A(n2108), .Y(n1530) );
  AND2X1 U1745 ( .A(n2104), .B(n1653), .Y(n2106) );
  BUFX2 U1746 ( .A(n2178), .Y(n1531) );
  BUFX2 U1747 ( .A(n2182), .Y(n1532) );
  BUFX2 U1748 ( .A(n2188), .Y(n1533) );
  BUFX2 U1749 ( .A(n2192), .Y(n1534) );
  BUFX2 U1750 ( .A(n2194), .Y(n1535) );
  BUFX2 U1751 ( .A(n2204), .Y(n1536) );
  BUFX2 U1752 ( .A(n2205), .Y(n1537) );
  BUFX2 U1753 ( .A(n2206), .Y(n1538) );
  BUFX2 U1754 ( .A(n2207), .Y(n1539) );
  BUFX2 U1755 ( .A(n2220), .Y(n1540) );
  BUFX2 U1756 ( .A(n2227), .Y(n1541) );
  BUFX2 U1757 ( .A(n2258), .Y(n1542) );
  BUFX2 U1758 ( .A(n2259), .Y(n1543) );
  BUFX2 U1759 ( .A(n2260), .Y(n1544) );
  BUFX2 U1760 ( .A(n2262), .Y(n1545) );
  BUFX2 U1761 ( .A(n2327), .Y(n1546) );
  BUFX2 U1762 ( .A(n2328), .Y(n1547) );
  BUFX2 U1763 ( .A(n2329), .Y(n1548) );
  BUFX2 U1764 ( .A(n2330), .Y(n1549) );
  BUFX2 U1765 ( .A(n2331), .Y(n1550) );
  BUFX2 U1766 ( .A(n2332), .Y(n1551) );
  BUFX2 U1767 ( .A(n2333), .Y(n1552) );
  BUFX2 U1768 ( .A(n2334), .Y(n1553) );
  BUFX2 U1769 ( .A(n2335), .Y(n1554) );
  BUFX2 U1770 ( .A(n2336), .Y(n1555) );
  BUFX2 U1771 ( .A(n2337), .Y(n1556) );
  BUFX2 U1772 ( .A(n2338), .Y(n1557) );
  BUFX2 U1773 ( .A(n2339), .Y(n1558) );
  BUFX2 U1774 ( .A(n2341), .Y(n1559) );
  BUFX2 U1775 ( .A(n2342), .Y(n1560) );
  BUFX2 U1776 ( .A(clk125mhz), .Y(n1561) );
  INVX1 U1777 ( .A(n786), .Y(n1562) );
  INVX1 U1778 ( .A(n784), .Y(n1563) );
  INVX1 U1779 ( .A(n780), .Y(n1564) );
  INVX1 U1780 ( .A(n770), .Y(n1565) );
  AND2X1 U1781 ( .A(bvalidin[1]), .B(pop_pkt), .Y(n2179) );
  INVX1 U1782 ( .A(n2179), .Y(n1566) );
  AND2X1 U1783 ( .A(bvalidin[4]), .B(pop_pkt), .Y(n2183) );
  INVX1 U1784 ( .A(n2183), .Y(n1567) );
  BUFX2 U1785 ( .A(xgmii_txc_d[0]), .Y(n1568) );
  BUFX2 U1786 ( .A(n2126), .Y(n1569) );
  AND2X1 U1787 ( .A(n2122), .B(n1680), .Y(n2127) );
  INVX1 U1788 ( .A(n1731), .Y(n1570) );
  BUFX2 U1789 ( .A(gclk_en_d), .Y(n1571) );
  INVX1 U1790 ( .A(n1000), .Y(n1574) );
  INVX1 U1791 ( .A(n1009), .Y(n1577) );
  AND2X1 U1792 ( .A(n2005), .B(n1442), .Y(n2013) );
  INVX1 U1793 ( .A(n2013), .Y(n1578) );
  INVX1 U1794 ( .A(n1721), .Y(n1579) );
  INVX1 U1795 ( .A(n1796), .Y(n1580) );
  INVX1 U1796 ( .A(n1787), .Y(n1581) );
  INVX1 U1797 ( .A(n1775), .Y(n1582) );
  INVX1 U1798 ( .A(n1910), .Y(n1583) );
  INVX1 U1799 ( .A(n1762), .Y(n1584) );
  INVX1 U1800 ( .A(n811), .Y(n1586) );
  INVX1 U1801 ( .A(n1869), .Y(n1587) );
  INVX1 U1802 ( .A(n2352), .Y(\xgmii_tx.TXC [1]) );
  BUFX2 U1803 ( .A(bvalid[2]), .Y(n1590) );
  BUFX2 U1804 ( .A(bvalid[0]), .Y(n1591) );
  INVX1 U1805 ( .A(nxt_state[0]), .Y(n1592) );
  BUFX2 U1806 ( .A(IDC_cnt_d[0]), .Y(n1593) );
  BUFX2 U1807 ( .A(pkt_ctrl_d[2]), .Y(n1594) );
  BUFX2 U1808 ( .A(xgmii_tx_hold[16]), .Y(n1595) );
  BUFX2 U1809 ( .A(xgmii_tx_hold[17]), .Y(n1596) );
  BUFX2 U1810 ( .A(xgmii_tx_hold[18]), .Y(n1597) );
  BUFX2 U1811 ( .A(xgmii_tx_hold[19]), .Y(n1598) );
  BUFX2 U1812 ( .A(xgmii_tx_hold[21]), .Y(n1599) );
  BUFX2 U1813 ( .A(xgmii_tx_hold[52]), .Y(n1600) );
  BUFX2 U1814 ( .A(xgmii_tx_hold[54]), .Y(n1601) );
  BUFX2 U1815 ( .A(xgmii_tx_hold[57]), .Y(n1602) );
  BUFX2 U1816 ( .A(nxt_state[3]), .Y(n1603) );
  INVX1 U1817 ( .A(n2028), .Y(n1604) );
  BUFX2 U1818 ( .A(xgmii_tx_hold[23]), .Y(n1605) );
  INVX1 U1819 ( .A(n2093), .Y(n1606) );
  BUFX2 U1820 ( .A(xgmii_tx_hold[0]), .Y(n1607) );
  BUFX2 U1821 ( .A(xgmii_tx_hold[1]), .Y(n1608) );
  BUFX2 U1822 ( .A(xgmii_tx_hold[2]), .Y(n1609) );
  BUFX2 U1823 ( .A(xgmii_tx_hold[3]), .Y(n1610) );
  BUFX2 U1824 ( .A(xgmii_tx_hold[4]), .Y(n1611) );
  BUFX2 U1825 ( .A(xgmii_tx_hold[5]), .Y(n1612) );
  BUFX2 U1826 ( .A(xgmii_tx_hold[6]), .Y(n1613) );
  BUFX2 U1827 ( .A(xgmii_tx_hold[7]), .Y(n1614) );
  BUFX2 U1828 ( .A(xgmii_tx_hold[32]), .Y(n1615) );
  BUFX2 U1829 ( .A(xgmii_tx_hold[33]), .Y(n1616) );
  BUFX2 U1830 ( .A(xgmii_tx_hold[34]), .Y(n1617) );
  BUFX2 U1831 ( .A(xgmii_tx_hold[35]), .Y(n1618) );
  BUFX2 U1832 ( .A(xgmii_tx_hold[36]), .Y(n1619) );
  BUFX2 U1833 ( .A(xgmii_tx_hold[37]), .Y(n1620) );
  BUFX2 U1834 ( .A(xgmii_tx_hold[38]), .Y(n1621) );
  BUFX2 U1835 ( .A(xgmii_tx_hold[39]), .Y(n1622) );
  BUFX2 U1836 ( .A(xgmii_tx_hold[40]), .Y(n1623) );
  BUFX2 U1837 ( .A(xgmii_tx_hold[41]), .Y(n1624) );
  BUFX2 U1838 ( .A(xgmii_tx_hold[42]), .Y(n1625) );
  BUFX2 U1839 ( .A(xgmii_tx_hold[43]), .Y(n1626) );
  BUFX2 U1840 ( .A(xgmii_tx_hold[44]), .Y(n1627) );
  BUFX2 U1841 ( .A(xgmii_tx_hold[45]), .Y(n1628) );
  BUFX2 U1842 ( .A(xgmii_tx_hold[46]), .Y(n1629) );
  BUFX2 U1843 ( .A(xgmii_tx_hold[47]), .Y(n1630) );
  BUFX2 U1844 ( .A(xgmii_tx_hold[48]), .Y(n1631) );
  BUFX2 U1845 ( .A(xgmii_tx_hold[49]), .Y(n1632) );
  BUFX2 U1846 ( .A(xgmii_tx_hold[50]), .Y(n1633) );
  BUFX2 U1847 ( .A(xgmii_tx_hold[51]), .Y(n1634) );
  BUFX2 U1848 ( .A(xgmii_tx_hold[53]), .Y(n1635) );
  BUFX2 U1849 ( .A(xgmii_tx_hold[55]), .Y(n1636) );
  BUFX2 U1850 ( .A(xgmii_tx_hold[56]), .Y(n1637) );
  BUFX2 U1851 ( .A(pkt_ctrl_d[0]), .Y(n1638) );
  BUFX2 U1852 ( .A(xgmii_tx_hold[20]), .Y(n1639) );
  BUFX2 U1853 ( .A(xgmii_tx_hold[22]), .Y(n1640) );
  BUFX2 U1854 ( .A(crc_tx_d[0]), .Y(n1641) );
  BUFX2 U1855 ( .A(crc_tx_d[1]), .Y(n1642) );
  BUFX2 U1856 ( .A(crc_tx_d[2]), .Y(n1643) );
  BUFX2 U1857 ( .A(crc_tx_d[3]), .Y(n1644) );
  BUFX2 U1858 ( .A(crc_tx_d[4]), .Y(n1645) );
  BUFX2 U1859 ( .A(crc_tx_d[5]), .Y(n1646) );
  BUFX2 U1860 ( .A(crc_tx_d[6]), .Y(n1647) );
  BUFX2 U1861 ( .A(crc_tx_d[7]), .Y(n1648) );
  BUFX2 U1862 ( .A(pkt_ctrl_d[6]), .Y(n1649) );
  BUFX2 U1863 ( .A(pkt_ctrl_d[4]), .Y(n1650) );
  BUFX2 U1864 ( .A(wakeuptimer_d[28]), .Y(n1651) );
  BUFX2 U1865 ( .A(wakeuptimer_d[16]), .Y(n1652) );
  BUFX2 U1866 ( .A(wakeuptimer_d[20]), .Y(n1653) );
  BUFX2 U1867 ( .A(wakeuptimer_d[22]), .Y(n1654) );
  INVX1 U1868 ( .A(n1858), .Y(n1655) );
  BUFX2 U1869 ( .A(wakeuptimer_d[30]), .Y(n1656) );
  BUFX2 U1870 ( .A(wakeuptimer_d[23]), .Y(n1657) );
  BUFX2 U1871 ( .A(idlernd_cnt_d[0]), .Y(n1658) );
  BUFX2 U1872 ( .A(crc_left_d[19]), .Y(n1659) );
  BUFX2 U1873 ( .A(crc_left_d[21]), .Y(n1660) );
  BUFX2 U1874 ( .A(wakeuptimer_d[2]), .Y(n1661) );
  BUFX2 U1875 ( .A(wakeuptimer_d[4]), .Y(n1662) );
  BUFX2 U1876 ( .A(wakeuptimer_d[6]), .Y(n1663) );
  BUFX2 U1877 ( .A(wakeuptimer_d[29]), .Y(n1664) );
  BUFX2 U1878 ( .A(IDC_cnt_d[1]), .Y(n1665) );
  BUFX2 U1879 ( .A(cnt128_d[4]), .Y(n1666) );
  BUFX2 U1880 ( .A(wakeuptimer_d[3]), .Y(n1667) );
  BUFX2 U1881 ( .A(wakeuptimer_d[5]), .Y(n1668) );
  BUFX2 U1882 ( .A(wakeuptimer_d[7]), .Y(n1669) );
  BUFX2 U1883 ( .A(crc_left_d[17]), .Y(n1670) );
  BUFX2 U1884 ( .A(wakeuptimer_d[12]), .Y(n1671) );
  BUFX2 U1885 ( .A(cnt128_d[5]), .Y(n1672) );
  AND2X1 U1886 ( .A(n2128), .B(n2137), .Y(n2010) );
  INVX1 U1887 ( .A(n2010), .Y(n1673) );
  BUFX2 U1888 ( .A(wakeuptimer_d[13]), .Y(n1674) );
  BUFX2 U1889 ( .A(crc_left_d[12]), .Y(n1675) );
  BUFX2 U1890 ( .A(crc_left_d[14]), .Y(n1676) );
  BUFX2 U1891 ( .A(crc_left_d[9]), .Y(n1677) );
  BUFX2 U1892 ( .A(wakeuptimer_d[9]), .Y(n1678) );
  BUFX2 U1893 ( .A(wakeuptimer_d[11]), .Y(n1679) );
  BUFX2 U1894 ( .A(wakeuptimer_d[25]), .Y(n1680) );
  BUFX2 U1895 ( .A(wakeuptimer_d[15]), .Y(n1681) );
  BUFX2 U1896 ( .A(wakeuptimer_d[19]), .Y(n1682) );
  BUFX2 U1897 ( .A(wakeuptimer_d[27]), .Y(n1683) );
  BUFX2 U1898 ( .A(crc_left_d[11]), .Y(n1684) );
  BUFX2 U1899 ( .A(crc_left_d[13]), .Y(n1685) );
  BUFX2 U1900 ( .A(crc_left_d[8]), .Y(n1686) );
  BUFX2 U1901 ( .A(crc_left_d[10]), .Y(n1687) );
  BUFX2 U1902 ( .A(crc_left_d[15]), .Y(n1688) );
  BUFX2 U1903 ( .A(idlernd_cnt_d[1]), .Y(n1689) );
  BUFX2 U1904 ( .A(wakeuptimer_d[0]), .Y(n1690) );
  BUFX2 U1905 ( .A(bvalid[5]), .Y(n1691) );
  BUFX2 U1906 ( .A(crc_tx_d[31]), .Y(n1692) );
  BUFX2 U1907 ( .A(crc_tx_d[27]), .Y(n1693) );
  BUFX2 U1908 ( .A(crc_tx_d[29]), .Y(n1694) );
  BUFX2 U1909 ( .A(crc_tx_d[25]), .Y(n1695) );
  BUFX2 U1910 ( .A(crc_tx_d[26]), .Y(n1696) );
  BUFX2 U1911 ( .A(crc_tx_d[24]), .Y(n1697) );
  BUFX2 U1912 ( .A(crc_tx_d[28]), .Y(n1698) );
  BUFX2 U1913 ( .A(crc_tx_d[30]), .Y(n1699) );
  BUFX2 U1914 ( .A(cur_state[1]), .Y(n1700) );
  INVX1 U1915 ( .A(n1717), .Y(n1702) );
  BUFX2 U1916 ( .A(cnt128_d[0]), .Y(n1704) );
  BUFX2 U1917 ( .A(cnt2_d), .Y(n1705) );
  INVX1 U1918 ( .A(n2164), .Y(n1708) );
  INVX1 U1919 ( .A(n1899), .Y(n1709) );
  INVX1 U1920 ( .A(n1794), .Y(n1710) );
  INVX1 U1921 ( .A(n1700), .Y(n1754) );
  NAND3X1 U1922 ( .A(n1471), .B(n1522), .C(n1509), .Y(n1711) );
  INVX1 U1923 ( .A(n809), .Y(n1909) );
  NOR3X1 U1924 ( .A(n1435), .B(n1437), .C(n1650), .Y(n1714) );
  NOR3X1 U1925 ( .A(n1434), .B(n1649), .C(n1210), .Y(n1716) );
  NAND3X1 U1926 ( .A(n1390), .B(n1638), .C(n1716), .Y(n1724) );
  INVX1 U1927 ( .A(n1705), .Y(n1745) );
  OAI21X1 U1928 ( .A(n1456), .B(n1745), .C(n2348), .Y(pop_pkt) );
  NAND3X1 U1929 ( .A(n1754), .B(n1470), .C(n1509), .Y(n1983) );
  NAND3X1 U1930 ( .A(n807), .B(n808), .C(n1470), .Y(n1753) );
  AND2X1 U1931 ( .A(n1754), .B(n1470), .Y(n1717) );
  AND2X1 U1932 ( .A(n809), .B(n2174), .Y(n1869) );
  OR2X1 U1933 ( .A(n1754), .B(n1111), .Y(n1993) );
  OR2X1 U1934 ( .A(n1470), .B(n1993), .Y(n2276) );
  NAND3X1 U1935 ( .A(n1869), .B(n1510), .C(n2276), .Y(n2173) );
  INVX1 U1936 ( .A(n1450), .Y(n2268) );
  INVX1 U1937 ( .A(n1353), .Y(n2166) );
  INVX1 U1938 ( .A(n2276), .Y(n2175) );
  NAND3X1 U1939 ( .A(n1524), .B(n2166), .C(n2175), .Y(n1867) );
  AND2X1 U1940 ( .A(n1869), .B(n1523), .Y(n1920) );
  NAND3X1 U1941 ( .A(n1869), .B(n1367), .C(n1579), .Y(n2351) );
  AOI22X1 U1942 ( .A(n2175), .B(n2166), .C(n2268), .D(n1190), .Y(n1723) );
  INVX1 U1943 ( .A(n1591), .Y(n2149) );
  INVX1 U1944 ( .A(n1590), .Y(n2181) );
  NAND3X1 U1945 ( .A(n2149), .B(n1487), .C(n2181), .Y(n1727) );
  OR2X1 U1946 ( .A(n1460), .B(n1361), .Y(n1736) );
  INVX1 U1947 ( .A(n1736), .Y(n1725) );
  NOR3X1 U1948 ( .A(n1493), .B(n1708), .C(n1377), .Y(n1735) );
  NAND3X1 U1949 ( .A(n1460), .B(n1496), .C(n1691), .Y(n1728) );
  NAND3X1 U1950 ( .A(n1591), .B(n1488), .C(n1730), .Y(n2161) );
  INVX1 U1951 ( .A(n1363), .Y(n2153) );
  OAI21X1 U1952 ( .A(n1441), .B(n1708), .C(n1456), .Y(n1732) );
  AOI22X1 U1953 ( .A(n2164), .B(n1388), .C(n1745), .D(n1732), .Y(n1914) );
  AND2X1 U1954 ( .A(n1492), .B(n2160), .Y(n1733) );
  AND2X1 U1955 ( .A(n1357), .B(n1374), .Y(n1734) );
  INVX1 U1956 ( .A(n1734), .Y(n1902) );
  OR2X1 U1957 ( .A(n1735), .B(n1902), .Y(n1848) );
  INVX1 U1958 ( .A(n1848), .Y(n1737) );
  NOR3X1 U1959 ( .A(n1691), .B(n1493), .C(n1736), .Y(n1738) );
  AOI21X1 U1960 ( .A(n1372), .B(n1132), .C(n2268), .Y(n1741) );
  INVX1 U1961 ( .A(n986), .Y(n1956) );
  AOI22X1 U1962 ( .A(n1637), .B(n1526), .C(n1163), .D(n1956), .Y(n1751) );
  OR2X1 U1963 ( .A(n1525), .B(n1447), .Y(n1918) );
  INVX1 U1964 ( .A(n1918), .Y(n1849) );
  INVX1 U1965 ( .A(n1706), .Y(n1913) );
  AOI21X1 U1966 ( .A(n1461), .B(n1913), .C(n1655), .Y(n1743) );
  INVX1 U1967 ( .A(n1523), .Y(n1820) );
  OR2X1 U1968 ( .A(n1524), .B(n1447), .Y(n1997) );
  INVX1 U1969 ( .A(n1997), .Y(n1953) );
  AOI22X1 U1970 ( .A(n1516), .B(n1820), .C(n1425), .D(n1953), .Y(n1742) );
  NAND3X1 U1971 ( .A(n1131), .B(n1146), .C(n2348), .Y(n1744) );
  AOI21X1 U1972 ( .A(n1686), .B(n1849), .C(n1083), .Y(n1750) );
  AOI21X1 U1973 ( .A(n1456), .B(n1133), .C(n1745), .Y(n1748) );
  INVX1 U1974 ( .A(n988), .Y(n1857) );
  AOI21X1 U1975 ( .A(n1497), .B(n2156), .C(n988), .Y(n1807) );
  AOI22X1 U1976 ( .A(n1143), .B(n1956), .C(n1423), .D(n1710), .Y(n1761) );
  AOI22X1 U1977 ( .A(n1820), .B(n1515), .C(n1953), .D(n1432), .Y(n1757) );
  NAND3X1 U1978 ( .A(n809), .B(n1701), .C(n1193), .Y(n1755) );
  INVX1 U1979 ( .A(n1354), .Y(n1774) );
  NAND3X1 U1980 ( .A(n1112), .B(n1158), .C(n1489), .Y(n1758) );
  AOI21X1 U1981 ( .A(n1913), .B(n1670), .C(n1084), .Y(n1760) );
  AOI22X1 U1982 ( .A(n1820), .B(n1518), .C(n1953), .D(n1431), .Y(n1763) );
  NAND3X1 U1983 ( .A(n1113), .B(n2174), .C(n1584), .Y(n1764) );
  AOI21X1 U1984 ( .A(n1849), .B(n1687), .C(n1085), .Y(n1767) );
  AOI22X1 U1985 ( .A(n1405), .B(n1526), .C(n1422), .D(n1710), .Y(n1766) );
  AOI22X1 U1986 ( .A(n1820), .B(n1521), .C(n1953), .D(n1430), .Y(n1769) );
  AOI21X1 U1987 ( .A(n1700), .B(n1774), .C(n1909), .Y(n2265) );
  NAND3X1 U1988 ( .A(n1114), .B(n1499), .C(n1194), .Y(n1770) );
  AOI21X1 U1989 ( .A(n1849), .B(n1684), .C(n1086), .Y(n1773) );
  AOI22X1 U1990 ( .A(n1404), .B(n1526), .C(n1421), .D(n1710), .Y(n1772) );
  AOI21X1 U1991 ( .A(n1774), .B(n1700), .C(pop_crc), .Y(n1788) );
  AOI22X1 U1992 ( .A(n1820), .B(n1517), .C(n1953), .D(n1429), .Y(n1776) );
  NAND3X1 U1993 ( .A(n1391), .B(n1147), .C(n1582), .Y(n1777) );
  AOI21X1 U1994 ( .A(n1849), .B(n1675), .C(n1087), .Y(n1780) );
  AOI22X1 U1995 ( .A(n1403), .B(n1526), .C(n1420), .D(n1710), .Y(n1779) );
  AOI22X1 U1996 ( .A(n1402), .B(n1526), .C(n1419), .D(n1710), .Y(n1786) );
  AOI22X1 U1997 ( .A(n1820), .B(n1520), .C(n1953), .D(n1428), .Y(n1782) );
  NAND3X1 U1998 ( .A(n1115), .B(n1499), .C(n1195), .Y(n1783) );
  AOI21X1 U1999 ( .A(n1849), .B(n1685), .C(n1088), .Y(n1785) );
  AOI22X1 U2000 ( .A(n1401), .B(n1526), .C(n1418), .D(n1710), .Y(n1793) );
  AOI22X1 U2001 ( .A(n1820), .B(n1513), .C(n1953), .D(n1427), .Y(n1789) );
  NAND3X1 U2002 ( .A(n1116), .B(n1391), .C(n1581), .Y(n1790) );
  AOI21X1 U2003 ( .A(n1849), .B(n1676), .C(n1089), .Y(n1792) );
  AOI22X1 U2004 ( .A(n1414), .B(n1526), .C(n1417), .D(n1710), .Y(n1801) );
  AOI22X1 U2005 ( .A(n1820), .B(n1519), .C(n1953), .D(n1426), .Y(n1797) );
  NAND3X1 U2006 ( .A(n1117), .B(n1499), .C(n1580), .Y(n1798) );
  AOI21X1 U2007 ( .A(n1849), .B(n1688), .C(n1090), .Y(n1800) );
  AOI22X1 U2008 ( .A(n1631), .B(n1848), .C(n1164), .D(n1956), .Y(n1810) );
  OAI21X1 U2009 ( .A(n1496), .B(n1375), .C(n1358), .Y(n1952) );
  AOI22X1 U2010 ( .A(n1849), .B(n1516), .C(n1697), .D(n1952), .Y(n1805) );
  AOI22X1 U2011 ( .A(n1686), .B(n1913), .C(n1953), .D(n1461), .Y(n1804) );
  NAND3X1 U2012 ( .A(n1118), .B(n1148), .C(n1858), .Y(n1806) );
  INVX1 U2013 ( .A(n1352), .Y(n1854) );
  AOI22X1 U2014 ( .A(n1632), .B(n1848), .C(n1165), .D(n1956), .Y(n1816) );
  AOI22X1 U2015 ( .A(n1849), .B(n1515), .C(n1695), .D(n1952), .Y(n1812) );
  NAND3X1 U2016 ( .A(n1119), .B(n1869), .C(n1196), .Y(n1813) );
  AOI21X1 U2017 ( .A(n1913), .B(n1677), .C(n1091), .Y(n1815) );
  AOI22X1 U2018 ( .A(n1849), .B(n1518), .C(n1696), .D(n1952), .Y(n1818) );
  AOI22X1 U2019 ( .A(n1953), .B(n1454), .C(n1913), .D(n1687), .Y(n1817) );
  NAND3X1 U2020 ( .A(n1120), .B(n1149), .C(n2174), .Y(n1819) );
  AOI22X1 U2021 ( .A(n1633), .B(n1848), .C(n1166), .D(n1956), .Y(n1822) );
  AOI22X1 U2022 ( .A(n1849), .B(n1521), .C(n1693), .D(n1952), .Y(n1825) );
  AND2X1 U2023 ( .A(n809), .B(n1523), .Y(n1852) );
  NAND3X1 U2024 ( .A(n1121), .B(n1852), .C(n1197), .Y(n1826) );
  AOI21X1 U2025 ( .A(n1913), .B(n1684), .C(n1092), .Y(n1829) );
  AOI22X1 U2026 ( .A(n1634), .B(n1848), .C(n1173), .D(n1956), .Y(n1828) );
  AOI22X1 U2027 ( .A(n1953), .B(n1453), .C(n1698), .D(n1952), .Y(n1831) );
  NAND3X1 U2028 ( .A(n1523), .B(n1150), .C(n1198), .Y(n1832) );
  AOI21X1 U2029 ( .A(n1849), .B(n1517), .C(n1093), .Y(n1835) );
  AOI22X1 U2030 ( .A(n1144), .B(n1956), .C(n1639), .D(n1854), .Y(n1834) );
  AOI22X1 U2031 ( .A(n1635), .B(n1848), .C(n1174), .D(n1956), .Y(n1841) );
  AOI22X1 U2032 ( .A(n1849), .B(n1520), .C(n1694), .D(n1952), .Y(n1837) );
  NAND3X1 U2033 ( .A(n1122), .B(n1852), .C(n1199), .Y(n1838) );
  AOI21X1 U2034 ( .A(n1913), .B(n1685), .C(n1094), .Y(n1840) );
  AOI22X1 U2035 ( .A(n1145), .B(n1956), .C(n1640), .D(n1854), .Y(n1847) );
  AOI22X1 U2036 ( .A(n1953), .B(n1452), .C(n1699), .D(n1952), .Y(n1843) );
  NAND3X1 U2037 ( .A(n1523), .B(n1151), .C(n1200), .Y(n1844) );
  AOI22X1 U2038 ( .A(n1636), .B(n1848), .C(n1175), .D(n1956), .Y(n1856) );
  AOI22X1 U2039 ( .A(n1953), .B(n1451), .C(n1913), .D(n1688), .Y(n1851) );
  AOI22X1 U2040 ( .A(n1849), .B(n1519), .C(n1692), .D(n1952), .Y(n1850) );
  NAND3X1 U2041 ( .A(n1852), .B(n1152), .C(n1192), .Y(n1853) );
  AOI21X1 U2042 ( .A(n1854), .B(n1605), .C(n1095), .Y(n1855) );
  NAND3X1 U2043 ( .A(n1488), .B(n1497), .C(n2156), .Y(n1906) );
  AOI22X1 U2044 ( .A(n1413), .B(n1709), .C(n1500), .D(n1952), .Y(n1866) );
  AOI21X1 U2045 ( .A(n2175), .B(n1524), .C(n1655), .Y(n1925) );
  AOI22X1 U2046 ( .A(n1705), .B(n1141), .C(n1726), .D(n1191), .Y(n1861) );
  INVX1 U2047 ( .A(n828), .Y(n2154) );
  AND2X1 U2048 ( .A(n2154), .B(n2164), .Y(n2290) );
  AOI22X1 U2049 ( .A(n1516), .B(n1913), .C(n1697), .D(n2290), .Y(n1862) );
  AOI21X1 U2050 ( .A(n1953), .B(n1686), .C(n1106), .Y(n1865) );
  AOI22X1 U2051 ( .A(n1623), .B(n1902), .C(n1167), .D(n1956), .Y(n1864) );
  AOI22X1 U2052 ( .A(n1412), .B(n1709), .C(n1507), .D(n1952), .Y(n1873) );
  AOI22X1 U2053 ( .A(n1953), .B(n1677), .C(n1913), .D(n1515), .Y(n1868) );
  NAND3X1 U2054 ( .A(n1869), .B(n1153), .C(n1523), .Y(n1870) );
  AOI21X1 U2055 ( .A(n1695), .B(n2290), .C(n1096), .Y(n1872) );
  AOI22X1 U2056 ( .A(n1624), .B(n1902), .C(n1168), .D(n1956), .Y(n1871) );
  AOI22X1 U2057 ( .A(n1411), .B(n1709), .C(n1506), .D(n1952), .Y(n1878) );
  AOI22X1 U2058 ( .A(n1953), .B(n1687), .C(n1913), .D(n1518), .Y(n1874) );
  NAND3X1 U2059 ( .A(n1486), .B(n1154), .C(n1701), .Y(n1875) );
  AOI21X1 U2060 ( .A(n1696), .B(n2290), .C(n1097), .Y(n1877) );
  AOI22X1 U2061 ( .A(n1625), .B(n1902), .C(n1169), .D(n1956), .Y(n1876) );
  AOI22X1 U2062 ( .A(n1410), .B(n1709), .C(n1505), .D(n1952), .Y(n1883) );
  AOI22X1 U2063 ( .A(n1953), .B(n1684), .C(n1913), .D(n1521), .Y(n1879) );
  NAND3X1 U2064 ( .A(n1123), .B(n809), .C(n1918), .Y(n1880) );
  AOI21X1 U2065 ( .A(n1693), .B(n2290), .C(n1098), .Y(n1882) );
  AOI22X1 U2066 ( .A(n1626), .B(n1902), .C(n1176), .D(n1956), .Y(n1881) );
  AOI22X1 U2067 ( .A(n1409), .B(n1709), .C(n1504), .D(n1952), .Y(n1888) );
  AOI22X1 U2068 ( .A(n1913), .B(n1517), .C(n1698), .D(n2290), .Y(n1884) );
  AOI21X1 U2069 ( .A(n1953), .B(n1675), .C(n1107), .Y(n1887) );
  AOI22X1 U2070 ( .A(n1627), .B(n1902), .C(n1177), .D(n1956), .Y(n1886) );
  AOI22X1 U2071 ( .A(n1408), .B(n1709), .C(n1503), .D(n1952), .Y(n1893) );
  AOI22X1 U2072 ( .A(n1953), .B(n1685), .C(n1913), .D(n1520), .Y(n1889) );
  NAND3X1 U2073 ( .A(n1124), .B(n809), .C(n1918), .Y(n1890) );
  AOI21X1 U2074 ( .A(n1694), .B(n2290), .C(n1099), .Y(n1892) );
  AOI22X1 U2075 ( .A(n1628), .B(n1902), .C(n1178), .D(n1956), .Y(n1891) );
  AOI22X1 U2076 ( .A(n1407), .B(n1709), .C(n1502), .D(n1952), .Y(n1898) );
  AOI22X1 U2077 ( .A(n1913), .B(n1513), .C(n1699), .D(n2290), .Y(n1894) );
  AOI21X1 U2078 ( .A(n1953), .B(n1676), .C(n1108), .Y(n1897) );
  AOI22X1 U2079 ( .A(n1629), .B(n1902), .C(n1179), .D(n1956), .Y(n1896) );
  AOI22X1 U2080 ( .A(n1406), .B(n1709), .C(n1501), .D(n1952), .Y(n1905) );
  AOI22X1 U2081 ( .A(n1953), .B(n1688), .C(n1913), .D(n1519), .Y(n1900) );
  NAND3X1 U2082 ( .A(n1125), .B(n809), .C(n1918), .Y(n1901) );
  AOI21X1 U2083 ( .A(n1692), .B(n2290), .C(n1100), .Y(n1904) );
  AOI22X1 U2084 ( .A(n1630), .B(n1902), .C(n1180), .D(n1956), .Y(n1903) );
  AND2X1 U2085 ( .A(n1374), .B(n1365), .Y(n1908) );
  INVX1 U2086 ( .A(n1908), .Y(n2289) );
  AOI22X1 U2087 ( .A(n1697), .B(n2289), .C(n1469), .D(n1952), .Y(n1917) );
  AOI22X1 U2088 ( .A(n988), .B(n1607), .C(n1500), .D(n2290), .Y(n1911) );
  NAND3X1 U2089 ( .A(n1126), .B(n1486), .C(n1583), .Y(n1912) );
  NOR3X1 U2090 ( .A(n1913), .B(n2172), .C(n1205), .Y(n1916) );
  INVX1 U2091 ( .A(n1357), .Y(n1957) );
  AOI22X1 U2092 ( .A(n1615), .B(n1957), .C(n1170), .D(n1956), .Y(n1915) );
  AOI22X1 U2093 ( .A(n1695), .B(n2289), .C(n2290), .D(n1507), .Y(n1924) );
  AOI22X1 U2094 ( .A(n988), .B(n1608), .C(n1468), .D(n1952), .Y(n1919) );
  NAND3X1 U2095 ( .A(n1920), .B(n1155), .C(n1918), .Y(n1921) );
  AOI22X1 U2096 ( .A(n1616), .B(n1957), .C(n1171), .D(n1956), .Y(n1922) );
  AOI22X1 U2097 ( .A(n1696), .B(n2289), .C(n2290), .D(n1506), .Y(n1931) );
  AOI22X1 U2098 ( .A(n988), .B(n1609), .C(n1467), .D(n1952), .Y(n1926) );
  NAND3X1 U2099 ( .A(n1927), .B(n1156), .C(n1706), .Y(n1928) );
  AOI21X1 U2100 ( .A(n1953), .B(n1518), .C(n1101), .Y(n1930) );
  AOI22X1 U2101 ( .A(n1617), .B(n1957), .C(n1172), .D(n1956), .Y(n1929) );
  AOI22X1 U2102 ( .A(n988), .B(n1610), .C(n2290), .D(n1505), .Y(n1936) );
  AOI22X1 U2103 ( .A(n1953), .B(n1521), .C(n1466), .D(n1952), .Y(n1932) );
  NAND3X1 U2104 ( .A(n1127), .B(n809), .C(n1706), .Y(n1933) );
  AOI21X1 U2105 ( .A(n1693), .B(n2289), .C(n1102), .Y(n1935) );
  AOI22X1 U2106 ( .A(n1618), .B(n1957), .C(n1181), .D(n1956), .Y(n1934) );
  AOI22X1 U2107 ( .A(n988), .B(n1611), .C(n2290), .D(n1504), .Y(n1941) );
  AOI22X1 U2108 ( .A(n1698), .B(n2289), .C(n1465), .D(n1952), .Y(n1937) );
  AOI21X1 U2109 ( .A(n1953), .B(n1517), .C(n1109), .Y(n1940) );
  AOI22X1 U2110 ( .A(n1619), .B(n1957), .C(n1182), .D(n1956), .Y(n1939) );
  AOI22X1 U2111 ( .A(n988), .B(n1612), .C(n2290), .D(n1503), .Y(n1946) );
  AOI22X1 U2112 ( .A(n1953), .B(n1520), .C(n1464), .D(n1952), .Y(n1942) );
  NAND3X1 U2113 ( .A(n1128), .B(n809), .C(n1706), .Y(n1943) );
  AOI21X1 U2114 ( .A(n1694), .B(n2289), .C(n1103), .Y(n1945) );
  AOI22X1 U2115 ( .A(n1620), .B(n1957), .C(n1183), .D(n1956), .Y(n1944) );
  AOI22X1 U2116 ( .A(n988), .B(n1613), .C(n2290), .D(n1502), .Y(n1951) );
  AOI22X1 U2117 ( .A(n1699), .B(n2289), .C(n1463), .D(n1952), .Y(n1947) );
  AOI21X1 U2118 ( .A(n1953), .B(n1513), .C(n1110), .Y(n1950) );
  AOI22X1 U2119 ( .A(n1621), .B(n1957), .C(n1184), .D(n1956), .Y(n1949) );
  AOI22X1 U2120 ( .A(n988), .B(n1614), .C(n2290), .D(n1501), .Y(n1960) );
  AOI22X1 U2121 ( .A(n1953), .B(n1519), .C(n1462), .D(n1952), .Y(n1954) );
  NAND3X1 U2122 ( .A(n1129), .B(n809), .C(n1706), .Y(n1955) );
  AOI21X1 U2123 ( .A(n1692), .B(n2289), .C(n1104), .Y(n1959) );
  AOI22X1 U2124 ( .A(n1622), .B(n1957), .C(n1185), .D(n1956), .Y(n1958) );
  INVX1 U2125 ( .A(n1561), .Y(n806) );
  NOR2X1 U2126 ( .A(n1571), .B(n806), .Y(\xgmii_tx.TXCLK ) );
  INVX1 U2127 ( .A(\clks.rst ), .Y(n1962) );
  AOI21X1 U2128 ( .A(n1436), .B(n1962), .C(n1458), .Y(n1982) );
  NOR3X1 U2129 ( .A(n1495), .B(n1443), .C(n1666), .Y(n1963) );
  INVX1 U2130 ( .A(n1672), .Y(n2024) );
  NAND3X1 U2131 ( .A(n1963), .B(n2024), .C(n1448), .Y(n1964) );
  NOR3X1 U2132 ( .A(n1491), .B(n1704), .C(n1206), .Y(n1965) );
  BUFX2 U2133 ( .A(cur_state_clk[0]), .Y(n2128) );
  INVX1 U2134 ( .A(n985), .Y(n2137) );
  NOR3X1 U2135 ( .A(lpi), .B(n1965), .C(n1673), .Y(n1966) );
  NAND3X1 U2136 ( .A(n1491), .B(n1704), .C(n1495), .Y(n2014) );
  NAND3X1 U2137 ( .A(n1672), .B(n1449), .C(n2025), .Y(n2029) );
  AOI21X1 U2138 ( .A(n1966), .B(n1381), .C(n1701), .Y(n1980) );
  NOR3X1 U2139 ( .A(n1475), .B(n1679), .C(n1967), .Y(n1968) );
  INVX1 U2140 ( .A(n1656), .Y(n2145) );
  INVX1 U2141 ( .A(n1664), .Y(n2141) );
  NAND3X1 U2142 ( .A(n1968), .B(n2145), .C(n2141), .Y(n1969) );
  NOR3X1 U2143 ( .A(n1477), .B(n1678), .C(n1207), .Y(n1979) );
  NOR3X1 U2144 ( .A(n1485), .B(n1481), .C(n1682), .Y(n1970) );
  INVX1 U2145 ( .A(n1653), .Y(n2099) );
  NOR3X1 U2146 ( .A(n1498), .B(n1483), .C(n1681), .Y(n1971) );
  INVX1 U2147 ( .A(n1652), .Y(n2084) );
  NOR3X1 U2148 ( .A(n1439), .B(n1479), .C(n1683), .Y(n1972) );
  INVX1 U2149 ( .A(n1651), .Y(n2131) );
  NOR3X1 U2150 ( .A(n1473), .B(n1680), .C(n1211), .Y(n1974) );
  INVX1 U2151 ( .A(n1654), .Y(n2107) );
  INVX1 U2152 ( .A(n1657), .Y(n2113) );
  NAND3X1 U2153 ( .A(n1974), .B(n2107), .C(n2113), .Y(n1975) );
  NOR3X1 U2154 ( .A(n1203), .B(n1204), .C(n1208), .Y(n1978) );
  NAND3X1 U2155 ( .A(n2059), .B(n1979), .C(n1978), .Y(n2002) );
  AOI22X1 U2156 ( .A(n1961), .B(n1689), .C(n1186), .D(n1424), .Y(n1981) );
  OR2X1 U2157 ( .A(n1018), .B(n1384), .Y(n1995) );
  INVX1 U2158 ( .A(lpi), .Y(n2020) );
  OAI21X1 U2159 ( .A(n1400), .B(n1689), .C(n1061), .Y(n1985) );
  AOI22X1 U2160 ( .A(n1471), .B(n1995), .C(start_transmit), .D(n1985), .Y(
        n1986) );
  AOI22X1 U2161 ( .A(n807), .B(n1384), .C(n1497), .D(n1987), .Y(n1991) );
  NAND3X1 U2162 ( .A(n1993), .B(n1157), .C(n1990), .Y(nxt_state[3]) );
  AOI22X1 U2163 ( .A(n808), .B(n1995), .C(n1380), .D(lpi), .Y(n1994) );
  NAND3X1 U2164 ( .A(n1130), .B(n1993), .C(n1455), .Y(nxt_state[2]) );
  NAND3X1 U2165 ( .A(n809), .B(n1997), .C(n1201), .Y(nxt_state[1]) );
  NOR3X1 U2166 ( .A(n1603), .B(n1382), .C(n1389), .Y(n1998) );
  INVX1 U2167 ( .A(n2128), .Y(n2032) );
  INVX1 U2168 ( .A(n1690), .Y(n2000) );
  AOI22X1 U2169 ( .A(n1690), .B(n985), .C(n810), .D(n2000), .Y(n803) );
  AOI22X1 U2170 ( .A(lpi), .B(n1457), .C(n2010), .D(n2020), .Y(n2003) );
  AOI21X1 U2171 ( .A(\clks.rst ), .B(n2137), .C(n2128), .Y(n2001) );
  OAI21X1 U2172 ( .A(n1424), .B(n2137), .C(n1056), .Y(n2031) );
  OAI21X1 U2173 ( .A(n1604), .B(n1457), .C(n1356), .Y(n802) );
  INVX1 U2174 ( .A(n1704), .Y(n2004) );
  AOI22X1 U2175 ( .A(n1704), .B(n2010), .C(n1370), .D(n2004), .Y(n801) );
  AOI21X1 U2176 ( .A(n2004), .B(lpi), .C(n1673), .Y(n2007) );
  NAND3X1 U2177 ( .A(n2005), .B(n1704), .C(n1490), .Y(n2006) );
  OAI21X1 U2178 ( .A(n1490), .B(n1369), .C(n1057), .Y(n800) );
  AOI21X1 U2179 ( .A(n2005), .B(n1490), .C(n1368), .Y(n2009) );
  NAND3X1 U2180 ( .A(n1491), .B(n1704), .C(n2005), .Y(n2008) );
  AOI22X1 U2181 ( .A(n1495), .B(n1138), .C(n1187), .D(n1494), .Y(n799) );
  AOI21X1 U2182 ( .A(n1459), .B(lpi), .C(n1673), .Y(n2011) );
  INVX1 U2183 ( .A(n1017), .Y(n2015) );
  OAI21X1 U2184 ( .A(n1459), .B(n1578), .C(n1062), .Y(n798) );
  INVX1 U2185 ( .A(n1666), .Y(n2019) );
  AOI21X1 U2186 ( .A(n2005), .B(n1442), .C(n2015), .Y(n2018) );
  NAND3X1 U2187 ( .A(n2005), .B(n1373), .C(n2019), .Y(n2017) );
  OAI21X1 U2188 ( .A(n2019), .B(n1159), .C(n1058), .Y(n797) );
  OAI21X1 U2189 ( .A(n2025), .B(n2020), .C(n2010), .Y(n2023) );
  INVX1 U2190 ( .A(n2023), .Y(n2022) );
  AOI22X1 U2191 ( .A(n1672), .B(n2022), .C(n1189), .D(n2024), .Y(n796) );
  AOI21X1 U2192 ( .A(n2005), .B(n2024), .C(n2023), .Y(n2027) );
  NAND3X1 U2193 ( .A(n1672), .B(n2025), .C(n2005), .Y(n2026) );
  AOI22X1 U2194 ( .A(n1449), .B(n1139), .C(n1188), .D(n1448), .Y(n795) );
  AOI22X1 U2195 ( .A(n2032), .B(n2031), .C(n2137), .D(n2030), .Y(n794) );
  OAI21X1 U2196 ( .A(n2128), .B(n1690), .C(n985), .Y(n2036) );
  AOI22X1 U2197 ( .A(n1446), .B(n2036), .C(n1690), .D(n1433), .Y(n2033) );
  INVX1 U2198 ( .A(n861), .Y(n793) );
  OAI21X1 U2199 ( .A(n2036), .B(n1433), .C(n1661), .Y(n2037) );
  OAI21X1 U2200 ( .A(n1661), .B(n1160), .C(n2037), .Y(n792) );
  OAI21X1 U2201 ( .A(n2128), .B(n2039), .C(n985), .Y(n2043) );
  AOI22X1 U2202 ( .A(n2039), .B(n1415), .C(n1667), .D(n2043), .Y(n2040) );
  INVX1 U2203 ( .A(n862), .Y(n791) );
  OAI21X1 U2204 ( .A(n2043), .B(n1415), .C(n1662), .Y(n2044) );
  OAI21X1 U2205 ( .A(n1662), .B(n1161), .C(n2044), .Y(n790) );
  OAI21X1 U2206 ( .A(n2128), .B(n2046), .C(n985), .Y(n2050) );
  AOI22X1 U2207 ( .A(n2046), .B(n1416), .C(n1668), .D(n2050), .Y(n2047) );
  INVX1 U2208 ( .A(n863), .Y(n789) );
  OAI21X1 U2209 ( .A(n2050), .B(n1416), .C(n1663), .Y(n2051) );
  OAI21X1 U2210 ( .A(n1663), .B(n1162), .C(n2051), .Y(n788) );
  OAI21X1 U2211 ( .A(n2128), .B(n2053), .C(n985), .Y(n2055) );
  AOI22X1 U2212 ( .A(n2053), .B(n1392), .C(n1669), .D(n2055), .Y(n2054) );
  INVX1 U2213 ( .A(n864), .Y(n787) );
  NAND3X1 U2214 ( .A(n1476), .B(n1999), .C(n2059), .Y(n2058) );
  OAI21X1 U2215 ( .A(n1392), .B(n2055), .C(n1477), .Y(n2057) );
  AND2X1 U2216 ( .A(n2059), .B(n1477), .Y(n2061) );
  OAI21X1 U2217 ( .A(n2128), .B(n2061), .C(n985), .Y(n2062) );
  AOI22X1 U2218 ( .A(n2061), .B(n1393), .C(n1678), .D(n2062), .Y(n2060) );
  INVX1 U2219 ( .A(n865), .Y(n785) );
  NAND3X1 U2220 ( .A(n1474), .B(n1999), .C(n2066), .Y(n2065) );
  OAI21X1 U2221 ( .A(n1393), .B(n2062), .C(n1475), .Y(n2064) );
  AND2X1 U2222 ( .A(n2066), .B(n1475), .Y(n2068) );
  OAI21X1 U2223 ( .A(n2128), .B(n2068), .C(n985), .Y(n2070) );
  AOI22X1 U2224 ( .A(n2068), .B(n1394), .C(n1679), .D(n2070), .Y(n2067) );
  INVX1 U2225 ( .A(n866), .Y(n783) );
  INVX1 U2226 ( .A(n1671), .Y(n2069) );
  NAND3X1 U2227 ( .A(n2069), .B(n1999), .C(n2074), .Y(n2073) );
  OAI21X1 U2228 ( .A(n1394), .B(n2070), .C(n1671), .Y(n2072) );
  OAI21X1 U2229 ( .A(n2128), .B(n2076), .C(n985), .Y(n2077) );
  AOI22X1 U2230 ( .A(n2076), .B(n1395), .C(n1674), .D(n2077), .Y(n2075) );
  INVX1 U2231 ( .A(n867), .Y(n781) );
  NAND3X1 U2232 ( .A(n1482), .B(n1999), .C(n2081), .Y(n2080) );
  OAI21X1 U2233 ( .A(n1395), .B(n2077), .C(n1483), .Y(n2079) );
  AND2X1 U2234 ( .A(n2081), .B(n1483), .Y(n2083) );
  OAI21X1 U2235 ( .A(n2128), .B(n2083), .C(n985), .Y(n2085) );
  AOI22X1 U2236 ( .A(n2083), .B(n1396), .C(n1681), .D(n2085), .Y(n2082) );
  INVX1 U2237 ( .A(n868), .Y(n779) );
  NAND3X1 U2238 ( .A(n2084), .B(n1999), .C(n2089), .Y(n2088) );
  OAI21X1 U2239 ( .A(n1396), .B(n2085), .C(n1652), .Y(n2087) );
  OAI21X1 U2240 ( .A(n2128), .B(n2091), .C(n985), .Y(n2092) );
  AOI22X1 U2241 ( .A(n2091), .B(n1606), .C(n1498), .D(n2092), .Y(n2090) );
  INVX1 U2242 ( .A(n869), .Y(n777) );
  AND2X1 U2243 ( .A(n2091), .B(n1498), .Y(n2096) );
  NAND3X1 U2244 ( .A(n1480), .B(n1999), .C(n2096), .Y(n2095) );
  OAI21X1 U2245 ( .A(n1606), .B(n2092), .C(n1481), .Y(n2094) );
  AND2X1 U2246 ( .A(n2096), .B(n1481), .Y(n2098) );
  OAI21X1 U2247 ( .A(n2128), .B(n2098), .C(n985), .Y(n2100) );
  AOI22X1 U2248 ( .A(n2098), .B(n1397), .C(n1682), .D(n2100), .Y(n2097) );
  INVX1 U2249 ( .A(n870), .Y(n775) );
  NAND3X1 U2250 ( .A(n2099), .B(n1999), .C(n2104), .Y(n2103) );
  OAI21X1 U2251 ( .A(n1397), .B(n2100), .C(n1653), .Y(n2102) );
  OAI21X1 U2252 ( .A(n2128), .B(n2106), .C(n985), .Y(n2108) );
  AND2X1 U2253 ( .A(n2106), .B(n1485), .Y(n2112) );
  NAND3X1 U2254 ( .A(n2107), .B(n1999), .C(n2112), .Y(n2111) );
  OAI21X1 U2255 ( .A(n1366), .B(n2108), .C(n1654), .Y(n2110) );
  AND2X1 U2256 ( .A(n2113), .B(n1999), .Y(n2117) );
  OAI21X1 U2257 ( .A(n2128), .B(n2115), .C(n985), .Y(n2116) );
  AOI22X1 U2258 ( .A(n2115), .B(n2117), .C(n1657), .D(n2116), .Y(n2114) );
  INVX1 U2259 ( .A(n871), .Y(n771) );
  NAND3X1 U2260 ( .A(n1472), .B(n1999), .C(n2120), .Y(n2119) );
  OAI21X1 U2261 ( .A(n2117), .B(n2116), .C(n1473), .Y(n2118) );
  AND2X1 U2262 ( .A(n2120), .B(n1473), .Y(n2122) );
  OAI21X1 U2263 ( .A(n2128), .B(n2122), .C(n985), .Y(n2123) );
  AOI22X1 U2264 ( .A(n2122), .B(n1398), .C(n1680), .D(n2123), .Y(n2121) );
  INVX1 U2265 ( .A(n872), .Y(n769) );
  NAND3X1 U2266 ( .A(n1478), .B(n1999), .C(n2127), .Y(n2126) );
  OAI21X1 U2267 ( .A(n1398), .B(n2123), .C(n1479), .Y(n2125) );
  AND2X1 U2268 ( .A(n2127), .B(n1479), .Y(n2130) );
  OAI21X1 U2269 ( .A(n2128), .B(n2130), .C(n985), .Y(n2132) );
  AOI22X1 U2270 ( .A(n2130), .B(n1399), .C(n1683), .D(n2132), .Y(n2129) );
  INVX1 U2271 ( .A(n873), .Y(n767) );
  NAND3X1 U2272 ( .A(n2131), .B(n1999), .C(n2136), .Y(n2135) );
  OAI21X1 U2273 ( .A(n1399), .B(n2132), .C(n1651), .Y(n2134) );
  AOI21X1 U2274 ( .A(n1999), .B(n1383), .C(n2137), .Y(n2139) );
  OR2X1 U2275 ( .A(n810), .B(n1383), .Y(n2140) );
  AOI22X1 U2276 ( .A(n1664), .B(n1376), .C(n2140), .D(n2141), .Y(n765) );
  OAI21X1 U2277 ( .A(n1664), .B(n810), .C(n1376), .Y(n2144) );
  AOI22X1 U2278 ( .A(n1656), .B(n2144), .C(n1379), .D(n2145), .Y(n2142) );
  INVX1 U2279 ( .A(n874), .Y(n764) );
  AOI21X1 U2280 ( .A(n1999), .B(n2145), .C(n2144), .Y(n2146) );
  MUX2X1 U2281 ( .B(n1137), .A(n1142), .S(n1439), .Y(n763) );
  OAI21X1 U2282 ( .A(n2149), .B(pop_pkt), .C(n1063), .Y(n762) );
  OAI21X1 U2283 ( .A(n1705), .B(n1440), .C(n1362), .Y(n2158) );
  NOR3X1 U2284 ( .A(n1708), .B(n2158), .C(n1438), .Y(n2278) );
  OR2X1 U2285 ( .A(n2153), .B(n1388), .Y(n2288) );
  OAI21X1 U2286 ( .A(n2154), .B(n2288), .C(n2164), .Y(n2155) );
  OAI21X1 U2287 ( .A(n2278), .B(n2166), .C(n2155), .Y(n761) );
  OAI21X1 U2288 ( .A(n2158), .B(n1438), .C(n1525), .Y(n2159) );
  NAND3X1 U2289 ( .A(n1363), .B(n1445), .C(n2159), .Y(n2162) );
  AOI21X1 U2290 ( .A(n1705), .B(n1134), .C(n1105), .Y(n2165) );
  AOI22X1 U2291 ( .A(n2164), .B(n1140), .C(n1524), .D(n1708), .Y(n760) );
  OAI21X1 U2292 ( .A(n2276), .B(n2264), .C(n1064), .Y(n759) );
  INVX1 U2293 ( .A(n1665), .Y(n2171) );
  OR2X1 U2294 ( .A(n2264), .B(n1525), .Y(n2263) );
  NAND3X1 U2295 ( .A(n2175), .B(n2263), .C(n1202), .Y(n2170) );
  MUX2X1 U2296 ( .B(n1665), .A(n2171), .S(n1351), .Y(n758) );
  NAND3X1 U2297 ( .A(n2174), .B(n1450), .C(n1455), .Y(n2176) );
  OAI21X1 U2298 ( .A(n1136), .B(n2175), .C(n1705), .Y(n2177) );
  OAI21X1 U2299 ( .A(n1705), .B(n1510), .C(n2177), .Y(n757) );
  AOI22X1 U2300 ( .A(n2257), .B(n1414), .C(pkt_data[63]), .D(pop_pkt), .Y(
        n2178) );
  INVX1 U2301 ( .A(n1531), .Y(n756) );
  OAI21X1 U2302 ( .A(n1487), .B(pop_pkt), .C(n1566), .Y(n755) );
  OAI21X1 U2303 ( .A(n2181), .B(pop_pkt), .C(n1065), .Y(n754) );
  AOI22X1 U2304 ( .A(n2248), .B(n1460), .C(bvalidin[3]), .D(pop_pkt), .Y(n2182) );
  INVX1 U2305 ( .A(n1532), .Y(n753) );
  OAI21X1 U2306 ( .A(n1492), .B(pop_pkt), .C(n1567), .Y(n752) );
  INVX1 U2307 ( .A(pop_pkt), .Y(n2248) );
  AOI22X1 U2308 ( .A(n2248), .B(n1691), .C(bvalidin[5]), .D(pop_pkt), .Y(n2184) );
  INVX1 U2309 ( .A(n875), .Y(n751) );
  AOI22X1 U2310 ( .A(n2248), .B(n1496), .C(bvalidin[6]), .D(pop_pkt), .Y(n2185) );
  INVX1 U2311 ( .A(n876), .Y(n750) );
  AOI22X1 U2312 ( .A(n2257), .B(n1444), .C(bvalidin[7]), .D(pop_pkt), .Y(n2186) );
  INVX1 U2313 ( .A(n877), .Y(n749) );
  AOI22X1 U2314 ( .A(n2257), .B(n1638), .C(pkt_ctrl[0]), .D(pop_pkt), .Y(n2187) );
  INVX1 U2315 ( .A(n878), .Y(n748) );
  AOI22X1 U2316 ( .A(n2257), .B(n1437), .C(pkt_ctrl[1]), .D(pop_pkt), .Y(n2188) );
  INVX1 U2317 ( .A(n1533), .Y(n747) );
  AOI22X1 U2318 ( .A(n2257), .B(n1594), .C(pkt_ctrl[2]), .D(pop_pkt), .Y(n2189) );
  INVX1 U2319 ( .A(n879), .Y(n746) );
  AOI22X1 U2320 ( .A(n2248), .B(n1390), .C(pkt_ctrl[3]), .D(pop_pkt), .Y(n2190) );
  INVX1 U2321 ( .A(n880), .Y(n745) );
  AOI22X1 U2322 ( .A(n2248), .B(n1650), .C(pkt_ctrl[4]), .D(pop_pkt), .Y(n2191) );
  INVX1 U2323 ( .A(n881), .Y(n744) );
  AOI22X1 U2324 ( .A(n2257), .B(n1435), .C(pkt_ctrl[5]), .D(pop_pkt), .Y(n2192) );
  INVX1 U2325 ( .A(n1534), .Y(n743) );
  AOI22X1 U2326 ( .A(n2257), .B(n1649), .C(pkt_ctrl[6]), .D(pop_pkt), .Y(n2193) );
  INVX1 U2327 ( .A(n882), .Y(n742) );
  AOI22X1 U2328 ( .A(n2248), .B(n1434), .C(pkt_ctrl[7]), .D(pop_pkt), .Y(n2194) );
  INVX1 U2329 ( .A(n1535), .Y(n741) );
  AOI22X1 U2330 ( .A(n2257), .B(n1607), .C(pkt_data[0]), .D(pop_pkt), .Y(n2195) );
  INVX1 U2331 ( .A(n883), .Y(n740) );
  AOI22X1 U2332 ( .A(n2248), .B(n1608), .C(pkt_data[1]), .D(pop_pkt), .Y(n2196) );
  INVX1 U2333 ( .A(n884), .Y(n739) );
  AOI22X1 U2334 ( .A(n2248), .B(n1609), .C(pkt_data[2]), .D(pop_pkt), .Y(n2197) );
  INVX1 U2335 ( .A(n885), .Y(n738) );
  AOI22X1 U2336 ( .A(n2257), .B(n1610), .C(pkt_data[3]), .D(pop_pkt), .Y(n2198) );
  INVX1 U2337 ( .A(n886), .Y(n737) );
  AOI22X1 U2338 ( .A(n2257), .B(n1611), .C(pkt_data[4]), .D(pop_pkt), .Y(n2199) );
  INVX1 U2339 ( .A(n887), .Y(n736) );
  AOI22X1 U2340 ( .A(n2257), .B(n1612), .C(pkt_data[5]), .D(pop_pkt), .Y(n2200) );
  INVX1 U2341 ( .A(n888), .Y(n735) );
  AOI22X1 U2342 ( .A(n2248), .B(n1613), .C(pkt_data[6]), .D(pop_pkt), .Y(n2201) );
  INVX1 U2343 ( .A(n889), .Y(n734) );
  AOI22X1 U2344 ( .A(n2248), .B(n1614), .C(pkt_data[7]), .D(pop_pkt), .Y(n2202) );
  INVX1 U2345 ( .A(n890), .Y(n733) );
  AOI22X1 U2346 ( .A(n2248), .B(n1413), .C(pkt_data[8]), .D(pop_pkt), .Y(n2203) );
  INVX1 U2347 ( .A(n891), .Y(n732) );
  AOI22X1 U2348 ( .A(n2257), .B(n1412), .C(pkt_data[9]), .D(pop_pkt), .Y(n2204) );
  INVX1 U2349 ( .A(n1536), .Y(n731) );
  AOI22X1 U2350 ( .A(n2257), .B(n1411), .C(pkt_data[10]), .D(pop_pkt), .Y(
        n2205) );
  INVX1 U2351 ( .A(n1537), .Y(n730) );
  AOI22X1 U2352 ( .A(n2257), .B(n1410), .C(pkt_data[11]), .D(pop_pkt), .Y(
        n2206) );
  INVX1 U2353 ( .A(n1538), .Y(n729) );
  AOI22X1 U2354 ( .A(n2257), .B(n1409), .C(pkt_data[12]), .D(pop_pkt), .Y(
        n2207) );
  INVX1 U2355 ( .A(n1539), .Y(n728) );
  AOI22X1 U2356 ( .A(n2248), .B(n1408), .C(pkt_data[13]), .D(pop_pkt), .Y(
        n2208) );
  INVX1 U2357 ( .A(n892), .Y(n727) );
  AOI22X1 U2358 ( .A(n2248), .B(n1407), .C(pkt_data[14]), .D(pop_pkt), .Y(
        n2209) );
  INVX1 U2359 ( .A(n893), .Y(n726) );
  INVX1 U2360 ( .A(n2257), .Y(n2240) );
  AOI22X1 U2361 ( .A(n2257), .B(n1406), .C(pkt_data[15]), .D(n2240), .Y(n2210)
         );
  INVX1 U2362 ( .A(n894), .Y(n725) );
  INVX1 U2363 ( .A(n2257), .Y(n2219) );
  AOI22X1 U2364 ( .A(n2257), .B(n1595), .C(pkt_data[16]), .D(n2219), .Y(n2211)
         );
  INVX1 U2365 ( .A(n895), .Y(n724) );
  AOI22X1 U2366 ( .A(n2257), .B(n1596), .C(pkt_data[17]), .D(n2233), .Y(n2212)
         );
  INVX1 U2367 ( .A(n896), .Y(n723) );
  AOI22X1 U2368 ( .A(n2248), .B(n1597), .C(pkt_data[18]), .D(n2240), .Y(n2213)
         );
  INVX1 U2369 ( .A(n897), .Y(n722) );
  AOI22X1 U2370 ( .A(n2248), .B(n1598), .C(pkt_data[19]), .D(n2219), .Y(n2214)
         );
  INVX1 U2371 ( .A(n898), .Y(n721) );
  AOI22X1 U2372 ( .A(n2248), .B(n1639), .C(pkt_data[20]), .D(n2233), .Y(n2215)
         );
  INVX1 U2373 ( .A(n899), .Y(n720) );
  AOI22X1 U2374 ( .A(n2257), .B(n1599), .C(pkt_data[21]), .D(n2219), .Y(n2216)
         );
  INVX1 U2375 ( .A(n900), .Y(n719) );
  AOI22X1 U2376 ( .A(n2257), .B(n1640), .C(pkt_data[22]), .D(n2219), .Y(n2217)
         );
  INVX1 U2377 ( .A(n901), .Y(n718) );
  AOI22X1 U2378 ( .A(n2257), .B(n1605), .C(pkt_data[23]), .D(n2240), .Y(n2218)
         );
  INVX1 U2379 ( .A(n902), .Y(n717) );
  AOI22X1 U2380 ( .A(n2248), .B(n1378), .C(pkt_data[24]), .D(n2219), .Y(n2220)
         );
  INVX1 U2381 ( .A(n1540), .Y(n716) );
  AOI22X1 U2382 ( .A(n2248), .B(n1423), .C(pkt_data[25]), .D(n2219), .Y(n2221)
         );
  INVX1 U2383 ( .A(n903), .Y(n715) );
  AOI22X1 U2384 ( .A(n2248), .B(n1422), .C(pkt_data[26]), .D(n2219), .Y(n2222)
         );
  INVX1 U2385 ( .A(n904), .Y(n714) );
  AOI22X1 U2386 ( .A(n2257), .B(n1421), .C(pkt_data[27]), .D(n2233), .Y(n2223)
         );
  INVX1 U2387 ( .A(n905), .Y(n713) );
  INVX1 U2388 ( .A(n2257), .Y(n2233) );
  AOI22X1 U2389 ( .A(n2257), .B(n1420), .C(pkt_data[28]), .D(n2233), .Y(n2224)
         );
  INVX1 U2390 ( .A(n906), .Y(n712) );
  AOI22X1 U2391 ( .A(n2248), .B(n1419), .C(pkt_data[29]), .D(n2233), .Y(n2225)
         );
  INVX1 U2392 ( .A(n907), .Y(n711) );
  AOI22X1 U2393 ( .A(n2257), .B(n1418), .C(pkt_data[30]), .D(n2240), .Y(n2226)
         );
  INVX1 U2394 ( .A(n908), .Y(n710) );
  AOI22X1 U2395 ( .A(n2248), .B(n1417), .C(pkt_data[31]), .D(n2233), .Y(n2227)
         );
  INVX1 U2396 ( .A(n1541), .Y(n709) );
  AOI22X1 U2397 ( .A(n2248), .B(n1615), .C(pkt_data[32]), .D(n2219), .Y(n2228)
         );
  INVX1 U2398 ( .A(n909), .Y(n708) );
  AOI22X1 U2399 ( .A(n2257), .B(n1616), .C(pkt_data[33]), .D(n2233), .Y(n2229)
         );
  INVX1 U2400 ( .A(n910), .Y(n707) );
  AOI22X1 U2401 ( .A(n2257), .B(n1617), .C(pkt_data[34]), .D(n2233), .Y(n2230)
         );
  INVX1 U2402 ( .A(n911), .Y(n706) );
  AOI22X1 U2403 ( .A(n2257), .B(n1618), .C(pkt_data[35]), .D(n2240), .Y(n2231)
         );
  INVX1 U2404 ( .A(n912), .Y(n705) );
  AOI22X1 U2405 ( .A(n2248), .B(n1619), .C(pkt_data[36]), .D(n2233), .Y(n2232)
         );
  INVX1 U2406 ( .A(n913), .Y(n704) );
  AOI22X1 U2407 ( .A(n2248), .B(n1620), .C(pkt_data[37]), .D(n2233), .Y(n2234)
         );
  INVX1 U2408 ( .A(n914), .Y(n703) );
  AOI22X1 U2409 ( .A(n2248), .B(n1621), .C(pkt_data[38]), .D(pop_pkt), .Y(
        n2235) );
  INVX1 U2410 ( .A(n915), .Y(n702) );
  AOI22X1 U2411 ( .A(n2257), .B(n1622), .C(pkt_data[39]), .D(pop_pkt), .Y(
        n2236) );
  INVX1 U2412 ( .A(n916), .Y(n701) );
  AOI22X1 U2413 ( .A(n2257), .B(n1623), .C(pkt_data[40]), .D(pop_pkt), .Y(
        n2237) );
  INVX1 U2414 ( .A(n917), .Y(n700) );
  AOI22X1 U2415 ( .A(n2257), .B(n1624), .C(pkt_data[41]), .D(n2240), .Y(n2238)
         );
  INVX1 U2416 ( .A(n918), .Y(n699) );
  AOI22X1 U2417 ( .A(n2248), .B(n1625), .C(pkt_data[42]), .D(pop_pkt), .Y(
        n2239) );
  INVX1 U2418 ( .A(n919), .Y(n698) );
  AOI22X1 U2419 ( .A(n2248), .B(n1626), .C(pkt_data[43]), .D(n2240), .Y(n2241)
         );
  INVX1 U2420 ( .A(n920), .Y(n697) );
  AOI22X1 U2421 ( .A(n2248), .B(n1627), .C(pkt_data[44]), .D(n2240), .Y(n2242)
         );
  INVX1 U2422 ( .A(n921), .Y(n696) );
  AOI22X1 U2423 ( .A(n2257), .B(n1628), .C(pkt_data[45]), .D(n2240), .Y(n2243)
         );
  INVX1 U2424 ( .A(n922), .Y(n695) );
  AOI22X1 U2425 ( .A(n2257), .B(n1629), .C(pkt_data[46]), .D(pop_pkt), .Y(
        n2244) );
  INVX1 U2426 ( .A(n923), .Y(n694) );
  AOI22X1 U2427 ( .A(n2257), .B(n1630), .C(pkt_data[47]), .D(n2233), .Y(n2245)
         );
  INVX1 U2428 ( .A(n924), .Y(n693) );
  AOI22X1 U2429 ( .A(n2248), .B(n1631), .C(pkt_data[48]), .D(n2233), .Y(n2246)
         );
  INVX1 U2430 ( .A(n925), .Y(n692) );
  AOI22X1 U2431 ( .A(n2248), .B(n1632), .C(pkt_data[49]), .D(pop_pkt), .Y(
        n2247) );
  INVX1 U2432 ( .A(n926), .Y(n691) );
  AOI22X1 U2433 ( .A(n2248), .B(n1633), .C(pkt_data[50]), .D(pop_pkt), .Y(
        n2249) );
  INVX1 U2434 ( .A(n927), .Y(n690) );
  AOI22X1 U2435 ( .A(n2257), .B(n1634), .C(pkt_data[51]), .D(n2219), .Y(n2250)
         );
  INVX1 U2436 ( .A(n928), .Y(n689) );
  AOI22X1 U2437 ( .A(n2257), .B(n1600), .C(pkt_data[52]), .D(n2219), .Y(n2251)
         );
  INVX1 U2438 ( .A(n929), .Y(n688) );
  AOI22X1 U2439 ( .A(n2257), .B(n1635), .C(pkt_data[53]), .D(n2240), .Y(n2252)
         );
  INVX1 U2440 ( .A(n930), .Y(n687) );
  AOI22X1 U2441 ( .A(n2257), .B(n1601), .C(pkt_data[54]), .D(n2233), .Y(n2253)
         );
  INVX1 U2442 ( .A(n931), .Y(n686) );
  AOI22X1 U2443 ( .A(n2248), .B(n1636), .C(pkt_data[55]), .D(n2219), .Y(n2254)
         );
  INVX1 U2444 ( .A(n932), .Y(n685) );
  AOI22X1 U2445 ( .A(n2248), .B(n1637), .C(pkt_data[56]), .D(pop_pkt), .Y(
        n2255) );
  INVX1 U2446 ( .A(n933), .Y(n684) );
  AOI22X1 U2447 ( .A(n2257), .B(n1602), .C(pkt_data[57]), .D(n2240), .Y(n2256)
         );
  INVX1 U2448 ( .A(n934), .Y(n683) );
  AOI22X1 U2449 ( .A(n2257), .B(n1405), .C(pkt_data[58]), .D(n2240), .Y(n2258)
         );
  INVX1 U2450 ( .A(n1542), .Y(n682) );
  AOI22X1 U2451 ( .A(n2257), .B(n1404), .C(pkt_data[59]), .D(pop_pkt), .Y(
        n2259) );
  INVX1 U2452 ( .A(n1543), .Y(n681) );
  AOI22X1 U2453 ( .A(n2257), .B(n1403), .C(pkt_data[60]), .D(n2219), .Y(n2260)
         );
  INVX1 U2454 ( .A(n1544), .Y(n680) );
  AOI22X1 U2455 ( .A(n2248), .B(n1402), .C(pkt_data[61]), .D(pop_pkt), .Y(
        n2261) );
  INVX1 U2456 ( .A(n935), .Y(n679) );
  AOI22X1 U2457 ( .A(n2248), .B(n1401), .C(pkt_data[62]), .D(pop_pkt), .Y(
        n2262) );
  INVX1 U2458 ( .A(n1545), .Y(n678) );
  AOI22X1 U2459 ( .A(n1525), .B(n2264), .C(n1665), .D(n2263), .Y(n2271) );
  NAND3X1 U2460 ( .A(n1499), .B(n1510), .C(n1701), .Y(n2266) );
  NOR3X1 U2461 ( .A(n2268), .B(n1436), .C(n1209), .Y(n2273) );
  INVX1 U2462 ( .A(n2273), .Y(n2269) );
  AOI21X1 U2463 ( .A(n1658), .B(n2269), .C(n1458), .Y(n2270) );
  OAI21X1 U2464 ( .A(n1135), .B(n2276), .C(n1059), .Y(n677) );
  NAND3X1 U2465 ( .A(n2273), .B(n1400), .C(n1689), .Y(n2274) );
  OAI21X1 U2466 ( .A(n1689), .B(n1458), .C(n1060), .Y(n2277) );
  INVX1 U2467 ( .A(n2278), .Y(n2279) );
  AOI22X1 U2468 ( .A(n1516), .B(n2279), .C(n1641), .D(n2278), .Y(n2280) );
  INVX1 U2469 ( .A(n936), .Y(n675) );
  AOI22X1 U2470 ( .A(n1515), .B(n2279), .C(n1642), .D(n2278), .Y(n2281) );
  INVX1 U2471 ( .A(n937), .Y(n674) );
  AOI22X1 U2472 ( .A(n1518), .B(n2279), .C(n1643), .D(n2278), .Y(n2282) );
  INVX1 U2473 ( .A(n938), .Y(n673) );
  AOI22X1 U2474 ( .A(n1521), .B(n2279), .C(n1644), .D(n2278), .Y(n2283) );
  INVX1 U2475 ( .A(n939), .Y(n672) );
  AOI22X1 U2476 ( .A(n1517), .B(n2279), .C(n1645), .D(n2278), .Y(n2284) );
  INVX1 U2477 ( .A(n940), .Y(n671) );
  AOI22X1 U2478 ( .A(n1520), .B(n2279), .C(n1646), .D(n2278), .Y(n2285) );
  INVX1 U2479 ( .A(n941), .Y(n670) );
  AOI22X1 U2480 ( .A(n1513), .B(n2279), .C(n1647), .D(n2278), .Y(n2286) );
  INVX1 U2481 ( .A(n942), .Y(n669) );
  AOI22X1 U2482 ( .A(n1519), .B(n2279), .C(n1648), .D(n2278), .Y(n2287) );
  INVX1 U2483 ( .A(n943), .Y(n668) );
  AND2X1 U2484 ( .A(n2164), .B(n2288), .Y(n2316) );
  OR2X1 U2485 ( .A(n2289), .B(n2316), .Y(n2307) );
  OR2X1 U2486 ( .A(n2290), .B(n2307), .Y(n2298) );
  AOI22X1 U2487 ( .A(n1686), .B(n2279), .C(n1469), .D(n2298), .Y(n2291) );
  INVX1 U2488 ( .A(n944), .Y(n667) );
  AOI22X1 U2489 ( .A(n1677), .B(n2279), .C(n1468), .D(n2298), .Y(n2292) );
  INVX1 U2490 ( .A(n945), .Y(n666) );
  AOI22X1 U2491 ( .A(n1687), .B(n2279), .C(n1467), .D(n2298), .Y(n2293) );
  INVX1 U2492 ( .A(n946), .Y(n665) );
  AOI22X1 U2493 ( .A(n1684), .B(n2279), .C(n1466), .D(n2298), .Y(n2294) );
  INVX1 U2494 ( .A(n947), .Y(n664) );
  AOI22X1 U2495 ( .A(n1675), .B(n2279), .C(n1465), .D(n2298), .Y(n2295) );
  INVX1 U2496 ( .A(n948), .Y(n663) );
  AOI22X1 U2497 ( .A(n1685), .B(n2279), .C(n1464), .D(n2298), .Y(n2296) );
  INVX1 U2498 ( .A(n949), .Y(n662) );
  AOI22X1 U2499 ( .A(n1676), .B(n2279), .C(n1463), .D(n2298), .Y(n2297) );
  INVX1 U2500 ( .A(n950), .Y(n661) );
  AOI22X1 U2501 ( .A(n1688), .B(n2279), .C(n1462), .D(n2298), .Y(n2299) );
  INVX1 U2502 ( .A(n951), .Y(n660) );
  AOI22X1 U2503 ( .A(n1461), .B(n2279), .C(n1500), .D(n2307), .Y(n2300) );
  INVX1 U2504 ( .A(n952), .Y(n659) );
  AOI22X1 U2505 ( .A(n1670), .B(n2279), .C(n1507), .D(n2307), .Y(n2301) );
  INVX1 U2506 ( .A(n953), .Y(n658) );
  AOI22X1 U2507 ( .A(n1454), .B(n2279), .C(n1506), .D(n2307), .Y(n2302) );
  INVX1 U2508 ( .A(n954), .Y(n657) );
  AOI22X1 U2509 ( .A(n1659), .B(n2279), .C(n1505), .D(n2307), .Y(n2303) );
  INVX1 U2510 ( .A(n955), .Y(n656) );
  AOI22X1 U2511 ( .A(n1453), .B(n2279), .C(n1504), .D(n2307), .Y(n2304) );
  INVX1 U2512 ( .A(n956), .Y(n655) );
  AOI22X1 U2513 ( .A(n1660), .B(n2279), .C(n1503), .D(n2307), .Y(n2305) );
  INVX1 U2514 ( .A(n957), .Y(n654) );
  AOI22X1 U2515 ( .A(n1452), .B(n2279), .C(n1502), .D(n2307), .Y(n2306) );
  INVX1 U2516 ( .A(n958), .Y(n653) );
  AOI22X1 U2517 ( .A(n1451), .B(n2279), .C(n1501), .D(n2307), .Y(n2308) );
  INVX1 U2518 ( .A(n959), .Y(n652) );
  AOI22X1 U2519 ( .A(n1425), .B(n2279), .C(n1697), .D(n2316), .Y(n2309) );
  INVX1 U2520 ( .A(n960), .Y(n651) );
  AOI22X1 U2521 ( .A(n1432), .B(n2279), .C(n1695), .D(n2316), .Y(n2310) );
  INVX1 U2522 ( .A(n961), .Y(n650) );
  AOI22X1 U2523 ( .A(n1431), .B(n2279), .C(n1696), .D(n2316), .Y(n2311) );
  INVX1 U2524 ( .A(n962), .Y(n649) );
  AOI22X1 U2525 ( .A(n1430), .B(n2279), .C(n1693), .D(n2316), .Y(n2312) );
  INVX1 U2526 ( .A(n963), .Y(n648) );
  AOI22X1 U2527 ( .A(n1429), .B(n2279), .C(n1698), .D(n2316), .Y(n2313) );
  INVX1 U2528 ( .A(n964), .Y(n647) );
  AOI22X1 U2529 ( .A(n1428), .B(n2279), .C(n1694), .D(n2316), .Y(n2314) );
  INVX1 U2530 ( .A(n965), .Y(n646) );
  AOI22X1 U2531 ( .A(n1427), .B(n2279), .C(n1699), .D(n2316), .Y(n2315) );
  INVX1 U2532 ( .A(n966), .Y(n645) );
  AOI22X1 U2533 ( .A(n1426), .B(n2279), .C(n1692), .D(n2316), .Y(n2317) );
  INVX1 U2534 ( .A(n967), .Y(n644) );
  AOI22X1 U2535 ( .A(pop_crc), .B(pkt_crc[31]), .C(n1692), .D(n2348), .Y(n2318) );
  INVX1 U2536 ( .A(n968), .Y(n643) );
  AOI22X1 U2537 ( .A(pop_crc), .B(pkt_crc[0]), .C(n1641), .D(n2348), .Y(n2319)
         );
  INVX1 U2538 ( .A(n969), .Y(n642) );
  AOI22X1 U2539 ( .A(pop_crc), .B(pkt_crc[1]), .C(n1642), .D(n2348), .Y(n2320)
         );
  INVX1 U2540 ( .A(n970), .Y(n641) );
  AOI22X1 U2541 ( .A(pop_crc), .B(pkt_crc[2]), .C(n1643), .D(n2348), .Y(n2321)
         );
  INVX1 U2542 ( .A(n971), .Y(n640) );
  AOI22X1 U2543 ( .A(pop_crc), .B(pkt_crc[3]), .C(n1644), .D(n2348), .Y(n2322)
         );
  INVX1 U2544 ( .A(n972), .Y(n639) );
  AOI22X1 U2545 ( .A(pop_crc), .B(pkt_crc[4]), .C(n1645), .D(n2348), .Y(n2323)
         );
  INVX1 U2546 ( .A(n973), .Y(n638) );
  AOI22X1 U2547 ( .A(pop_crc), .B(pkt_crc[5]), .C(n1646), .D(n2348), .Y(n2324)
         );
  INVX1 U2548 ( .A(n974), .Y(n637) );
  AOI22X1 U2549 ( .A(pop_crc), .B(pkt_crc[6]), .C(n1647), .D(n2348), .Y(n2325)
         );
  INVX1 U2550 ( .A(n975), .Y(n636) );
  AOI22X1 U2551 ( .A(pop_crc), .B(pkt_crc[7]), .C(n1648), .D(n2348), .Y(n2326)
         );
  INVX1 U2552 ( .A(n976), .Y(n635) );
  AOI22X1 U2553 ( .A(pop_crc), .B(pkt_crc[8]), .C(n1469), .D(n2348), .Y(n2327)
         );
  INVX1 U2554 ( .A(n1546), .Y(n634) );
  AOI22X1 U2555 ( .A(pop_crc), .B(pkt_crc[9]), .C(n1468), .D(n2348), .Y(n2328)
         );
  INVX1 U2556 ( .A(n1547), .Y(n633) );
  AOI22X1 U2557 ( .A(pop_crc), .B(pkt_crc[10]), .C(n1467), .D(n2348), .Y(n2329) );
  INVX1 U2558 ( .A(n1548), .Y(n632) );
  AOI22X1 U2559 ( .A(pop_crc), .B(pkt_crc[11]), .C(n1466), .D(n2348), .Y(n2330) );
  INVX1 U2560 ( .A(n1549), .Y(n631) );
  AOI22X1 U2561 ( .A(pop_crc), .B(pkt_crc[12]), .C(n1465), .D(n2348), .Y(n2331) );
  INVX1 U2562 ( .A(n1550), .Y(n630) );
  AOI22X1 U2563 ( .A(pop_crc), .B(pkt_crc[13]), .C(n1464), .D(n2348), .Y(n2332) );
  INVX1 U2564 ( .A(n1551), .Y(n629) );
  AOI22X1 U2565 ( .A(pop_crc), .B(pkt_crc[14]), .C(n1463), .D(n2348), .Y(n2333) );
  INVX1 U2566 ( .A(n1552), .Y(n628) );
  AOI22X1 U2567 ( .A(pop_crc), .B(pkt_crc[15]), .C(n1462), .D(n2348), .Y(n2334) );
  INVX1 U2568 ( .A(n1553), .Y(n627) );
  AOI22X1 U2569 ( .A(pop_crc), .B(pkt_crc[16]), .C(n1500), .D(n2348), .Y(n2335) );
  INVX1 U2570 ( .A(n1554), .Y(n626) );
  AOI22X1 U2571 ( .A(pop_crc), .B(pkt_crc[17]), .C(n1507), .D(n2348), .Y(n2336) );
  INVX1 U2572 ( .A(n1555), .Y(n625) );
  AOI22X1 U2573 ( .A(pop_crc), .B(pkt_crc[18]), .C(n1506), .D(n2348), .Y(n2337) );
  INVX1 U2574 ( .A(n1556), .Y(n624) );
  AOI22X1 U2575 ( .A(pop_crc), .B(pkt_crc[19]), .C(n1505), .D(n2348), .Y(n2338) );
  INVX1 U2576 ( .A(n1557), .Y(n623) );
  AOI22X1 U2577 ( .A(pop_crc), .B(pkt_crc[20]), .C(n1504), .D(n2348), .Y(n2339) );
  INVX1 U2578 ( .A(n1558), .Y(n622) );
  INVX1 U2579 ( .A(pop_crc), .Y(n2348) );
  AOI22X1 U2580 ( .A(pop_crc), .B(pkt_crc[21]), .C(n1503), .D(n2348), .Y(n2340) );
  INVX1 U2581 ( .A(n977), .Y(n621) );
  AOI22X1 U2582 ( .A(pop_crc), .B(pkt_crc[22]), .C(n1502), .D(n2348), .Y(n2341) );
  INVX1 U2583 ( .A(n1559), .Y(n620) );
  AOI22X1 U2584 ( .A(pop_crc), .B(pkt_crc[23]), .C(n1501), .D(n2348), .Y(n2342) );
  INVX1 U2585 ( .A(n1560), .Y(n619) );
  AOI22X1 U2586 ( .A(pop_crc), .B(pkt_crc[24]), .C(n1697), .D(n2348), .Y(n2343) );
  INVX1 U2587 ( .A(n978), .Y(n618) );
  AOI22X1 U2588 ( .A(pop_crc), .B(pkt_crc[25]), .C(n1695), .D(n2348), .Y(n2344) );
  INVX1 U2589 ( .A(n979), .Y(n617) );
  AOI22X1 U2590 ( .A(pop_crc), .B(pkt_crc[26]), .C(n1696), .D(n2348), .Y(n2345) );
  INVX1 U2591 ( .A(n980), .Y(n616) );
  AOI22X1 U2592 ( .A(pop_crc), .B(pkt_crc[27]), .C(n1693), .D(n2348), .Y(n2346) );
  INVX1 U2593 ( .A(n981), .Y(n615) );
  AOI22X1 U2594 ( .A(pop_crc), .B(pkt_crc[28]), .C(n1698), .D(n2348), .Y(n2347) );
  INVX1 U2595 ( .A(n982), .Y(n614) );
  AOI22X1 U2596 ( .A(pop_crc), .B(pkt_crc[29]), .C(n1694), .D(n2348), .Y(n2349) );
  INVX1 U2597 ( .A(n983), .Y(n613) );
  AOI22X1 U2599 ( .A(pop_crc), .B(pkt_crc[30]), .C(n1699), .D(n2348), .Y(n2350) );
  INVX1 U2600 ( .A(n984), .Y(n612) );
endmodule

