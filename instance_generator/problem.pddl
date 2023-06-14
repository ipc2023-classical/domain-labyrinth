(define (problem size-40-shifts-2-seed-0)
(:domain moving-labyrinth)
(:objects
	pos0 pos1 pos2 pos3 pos4 pos5 pos6 pos7 pos8 pos9 pos10 pos11 pos12 pos13 pos14 pos15 pos16 pos17 pos18 pos19 pos20 pos21 pos22 pos23 pos24 pos25 pos26 pos27 pos28 pos29 pos30 pos31 pos32 pos33 pos34 pos35 pos36 pos37 pos38 pos39  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15 card16 card17 card18 card19 card20 card21 card22 card23 card24 card25 card26 card27 card28 card29 card30 card31 card32 card33 card34 card35 card36 card37 card38 card39 card40 card41 card42 card43 card44 card45 card46 card47 card48 card49 card50 card51 card52 card53 card54 card55 card56 card57 card58 card59 card60 card61 card62 card63 card64 card65 card66 card67 card68 card69 card70 card71 card72 card73 card74 card75 card76 card77 card78 card79 card80 card81 card82 card83 card84 card85 card86 card87 card88 card89 card90 card91 card92 card93 card94 card95 card96 card97 card98 card99 card100 card101 card102 card103 card104 card105 card106 card107 card108 card109 card110 card111 card112 card113 card114 card115 card116 card117 card118 card119 card120 card121 card122 card123 card124 card125 card126 card127 card128 card129 card130 card131 card132 card133 card134 card135 card136 card137 card138 card139 card140 card141 card142 card143 card144 card145 card146 card147 card148 card149 card150 card151 card152 card153 card154 card155 card156 card157 card158 card159 card160 card161 card162 card163 card164 card165 card166 card167 card168 card169 card170 card171 card172 card173 card174 card175 card176 card177 card178 card179 card180 card181 card182 card183 card184 card185 card186 card187 card188 card189 card190 card191 card192 card193 card194 card195 card196 card197 card198 card199 card200 card201 card202 card203 card204 card205 card206 card207 card208 card209 card210 card211 card212 card213 card214 card215 card216 card217 card218 card219 card220 card221 card222 card223 card224 card225 card226 card227 card228 card229 card230 card231 card232 card233 card234 card235 card236 card237 card238 card239 card240 card241 card242 card243 card244 card245 card246 card247 card248 card249 card250 card251 card252 card253 card254 card255 card256 card257 card258 card259 card260 card261 card262 card263 card264 card265 card266 card267 card268 card269 card270 card271 card272 card273 card274 card275 card276 card277 card278 card279 card280 card281 card282 card283 card284 card285 card286 card287 card288 card289 card290 card291 card292 card293 card294 card295 card296 card297 card298 card299 card300 card301 card302 card303 card304 card305 card306 card307 card308 card309 card310 card311 card312 card313 card314 card315 card316 card317 card318 card319 card320 card321 card322 card323 card324 card325 card326 card327 card328 card329 card330 card331 card332 card333 card334 card335 card336 card337 card338 card339 card340 card341 card342 card343 card344 card345 card346 card347 card348 card349 card350 card351 card352 card353 card354 card355 card356 card357 card358 card359 card360 card361 card362 card363 card364 card365 card366 card367 card368 card369 card370 card371 card372 card373 card374 card375 card376 card377 card378 card379 card380 card381 card382 card383 card384 card385 card386 card387 card388 card389 card390 card391 card392 card393 card394 card395 card396 card397 card398 card399 card400 card401 card402 card403 card404 card405 card406 card407 card408 card409 card410 card411 card412 card413 card414 card415 card416 card417 card418 card419 card420 card421 card422 card423 card424 card425 card426 card427 card428 card429 card430 card431 card432 card433 card434 card435 card436 card437 card438 card439 card440 card441 card442 card443 card444 card445 card446 card447 card448 card449 card450 card451 card452 card453 card454 card455 card456 card457 card458 card459 card460 card461 card462 card463 card464 card465 card466 card467 card468 card469 card470 card471 card472 card473 card474 card475 card476 card477 card478 card479 card480 card481 card482 card483 card484 card485 card486 card487 card488 card489 card490 card491 card492 card493 card494 card495 card496 card497 card498 card499 card500 card501 card502 card503 card504 card505 card506 card507 card508 card509 card510 card511 card512 card513 card514 card515 card516 card517 card518 card519 card520 card521 card522 card523 card524 card525 card526 card527 card528 card529 card530 card531 card532 card533 card534 card535 card536 card537 card538 card539 card540 card541 card542 card543 card544 card545 card546 card547 card548 card549 card550 card551 card552 card553 card554 card555 card556 card557 card558 card559 card560 card561 card562 card563 card564 card565 card566 card567 card568 card569 card570 card571 card572 card573 card574 card575 card576 card577 card578 card579 card580 card581 card582 card583 card584 card585 card586 card587 card588 card589 card590 card591 card592 card593 card594 card595 card596 card597 card598 card599 card600 card601 card602 card603 card604 card605 card606 card607 card608 card609 card610 card611 card612 card613 card614 card615 card616 card617 card618 card619 card620 card621 card622 card623 card624 card625 card626 card627 card628 card629 card630 card631 card632 card633 card634 card635 card636 card637 card638 card639 card640 card641 card642 card643 card644 card645 card646 card647 card648 card649 card650 card651 card652 card653 card654 card655 card656 card657 card658 card659 card660 card661 card662 card663 card664 card665 card666 card667 card668 card669 card670 card671 card672 card673 card674 card675 card676 card677 card678 card679 card680 card681 card682 card683 card684 card685 card686 card687 card688 card689 card690 card691 card692 card693 card694 card695 card696 card697 card698 card699 card700 card701 card702 card703 card704 card705 card706 card707 card708 card709 card710 card711 card712 card713 card714 card715 card716 card717 card718 card719 card720 card721 card722 card723 card724 card725 card726 card727 card728 card729 card730 card731 card732 card733 card734 card735 card736 card737 card738 card739 card740 card741 card742 card743 card744 card745 card746 card747 card748 card749 card750 card751 card752 card753 card754 card755 card756 card757 card758 card759 card760 card761 card762 card763 card764 card765 card766 card767 card768 card769 card770 card771 card772 card773 card774 card775 card776 card777 card778 card779 card780 card781 card782 card783 card784 card785 card786 card787 card788 card789 card790 card791 card792 card793 card794 card795 card796 card797 card798 card799 card800 card801 card802 card803 card804 card805 card806 card807 card808 card809 card810 card811 card812 card813 card814 card815 card816 card817 card818 card819 card820 card821 card822 card823 card824 card825 card826 card827 card828 card829 card830 card831 card832 card833 card834 card835 card836 card837 card838 card839 card840 card841 card842 card843 card844 card845 card846 card847 card848 card849 card850 card851 card852 card853 card854 card855 card856 card857 card858 card859 card860 card861 card862 card863 card864 card865 card866 card867 card868 card869 card870 card871 card872 card873 card874 card875 card876 card877 card878 card879 card880 card881 card882 card883 card884 card885 card886 card887 card888 card889 card890 card891 card892 card893 card894 card895 card896 card897 card898 card899 card900 card901 card902 card903 card904 card905 card906 card907 card908 card909 card910 card911 card912 card913 card914 card915 card916 card917 card918 card919 card920 card921 card922 card923 card924 card925 card926 card927 card928 card929 card930 card931 card932 card933 card934 card935 card936 card937 card938 card939 card940 card941 card942 card943 card944 card945 card946 card947 card948 card949 card950 card951 card952 card953 card954 card955 card956 card957 card958 card959 card960 card961 card962 card963 card964 card965 card966 card967 card968 card969 card970 card971 card972 card973 card974 card975 card976 card977 card978 card979 card980 card981 card982 card983 card984 card985 card986 card987 card988 card989 card990 card991 card992 card993 card994 card995 card996 card997 card998 card999 card1000 card1001 card1002 card1003 card1004 card1005 card1006 card1007 card1008 card1009 card1010 card1011 card1012 card1013 card1014 card1015 card1016 card1017 card1018 card1019 card1020 card1021 card1022 card1023 card1024 card1025 card1026 card1027 card1028 card1029 card1030 card1031 card1032 card1033 card1034 card1035 card1036 card1037 card1038 card1039 card1040 card1041 card1042 card1043 card1044 card1045 card1046 card1047 card1048 card1049 card1050 card1051 card1052 card1053 card1054 card1055 card1056 card1057 card1058 card1059 card1060 card1061 card1062 card1063 card1064 card1065 card1066 card1067 card1068 card1069 card1070 card1071 card1072 card1073 card1074 card1075 card1076 card1077 card1078 card1079 card1080 card1081 card1082 card1083 card1084 card1085 card1086 card1087 card1088 card1089 card1090 card1091 card1092 card1093 card1094 card1095 card1096 card1097 card1098 card1099 card1100 card1101 card1102 card1103 card1104 card1105 card1106 card1107 card1108 card1109 card1110 card1111 card1112 card1113 card1114 card1115 card1116 card1117 card1118 card1119 card1120 card1121 card1122 card1123 card1124 card1125 card1126 card1127 card1128 card1129 card1130 card1131 card1132 card1133 card1134 card1135 card1136 card1137 card1138 card1139 card1140 card1141 card1142 card1143 card1144 card1145 card1146 card1147 card1148 card1149 card1150 card1151 card1152 card1153 card1154 card1155 card1156 card1157 card1158 card1159 card1160 card1161 card1162 card1163 card1164 card1165 card1166 card1167 card1168 card1169 card1170 card1171 card1172 card1173 card1174 card1175 card1176 card1177 card1178 card1179 card1180 card1181 card1182 card1183 card1184 card1185 card1186 card1187 card1188 card1189 card1190 card1191 card1192 card1193 card1194 card1195 card1196 card1197 card1198 card1199 card1200 card1201 card1202 card1203 card1204 card1205 card1206 card1207 card1208 card1209 card1210 card1211 card1212 card1213 card1214 card1215 card1216 card1217 card1218 card1219 card1220 card1221 card1222 card1223 card1224 card1225 card1226 card1227 card1228 card1229 card1230 card1231 card1232 card1233 card1234 card1235 card1236 card1237 card1238 card1239 card1240 card1241 card1242 card1243 card1244 card1245 card1246 card1247 card1248 card1249 card1250 card1251 card1252 card1253 card1254 card1255 card1256 card1257 card1258 card1259 card1260 card1261 card1262 card1263 card1264 card1265 card1266 card1267 card1268 card1269 card1270 card1271 card1272 card1273 card1274 card1275 card1276 card1277 card1278 card1279 card1280 card1281 card1282 card1283 card1284 card1285 card1286 card1287 card1288 card1289 card1290 card1291 card1292 card1293 card1294 card1295 card1296 card1297 card1298 card1299 card1300 card1301 card1302 card1303 card1304 card1305 card1306 card1307 card1308 card1309 card1310 card1311 card1312 card1313 card1314 card1315 card1316 card1317 card1318 card1319 card1320 card1321 card1322 card1323 card1324 card1325 card1326 card1327 card1328 card1329 card1330 card1331 card1332 card1333 card1334 card1335 card1336 card1337 card1338 card1339 card1340 card1341 card1342 card1343 card1344 card1345 card1346 card1347 card1348 card1349 card1350 card1351 card1352 card1353 card1354 card1355 card1356 card1357 card1358 card1359 card1360 card1361 card1362 card1363 card1364 card1365 card1366 card1367 card1368 card1369 card1370 card1371 card1372 card1373 card1374 card1375 card1376 card1377 card1378 card1379 card1380 card1381 card1382 card1383 card1384 card1385 card1386 card1387 card1388 card1389 card1390 card1391 card1392 card1393 card1394 card1395 card1396 card1397 card1398 card1399 card1400 card1401 card1402 card1403 card1404 card1405 card1406 card1407 card1408 card1409 card1410 card1411 card1412 card1413 card1414 card1415 card1416 card1417 card1418 card1419 card1420 card1421 card1422 card1423 card1424 card1425 card1426 card1427 card1428 card1429 card1430 card1431 card1432 card1433 card1434 card1435 card1436 card1437 card1438 card1439 card1440 card1441 card1442 card1443 card1444 card1445 card1446 card1447 card1448 card1449 card1450 card1451 card1452 card1453 card1454 card1455 card1456 card1457 card1458 card1459 card1460 card1461 card1462 card1463 card1464 card1465 card1466 card1467 card1468 card1469 card1470 card1471 card1472 card1473 card1474 card1475 card1476 card1477 card1478 card1479 card1480 card1481 card1482 card1483 card1484 card1485 card1486 card1487 card1488 card1489 card1490 card1491 card1492 card1493 card1494 card1495 card1496 card1497 card1498 card1499 card1500 card1501 card1502 card1503 card1504 card1505 card1506 card1507 card1508 card1509 card1510 card1511 card1512 card1513 card1514 card1515 card1516 card1517 card1518 card1519 card1520 card1521 card1522 card1523 card1524 card1525 card1526 card1527 card1528 card1529 card1530 card1531 card1532 card1533 card1534 card1535 card1536 card1537 card1538 card1539 card1540 card1541 card1542 card1543 card1544 card1545 card1546 card1547 card1548 card1549 card1550 card1551 card1552 card1553 card1554 card1555 card1556 card1557 card1558 card1559 card1560 card1561 card1562 card1563 card1564 card1565 card1566 card1567 card1568 card1569 card1570 card1571 card1572 card1573 card1574 card1575 card1576 card1577 card1578 card1579 card1580 card1581 card1582 card1583 card1584 card1585 card1586 card1587 card1588 card1589 card1590 card1591 card1592 card1593 card1594 card1595 card1596 card1597 card1598 card1599  - card
)
(:init
	(max-pos pos39)
	(min-pos pos0)

	(next pos1 pos0)
	(next pos2 pos1)
	(next pos3 pos2)
	(next pos4 pos3)
	(next pos5 pos4)
	(next pos6 pos5)
	(next pos7 pos6)
	(next pos8 pos7)
	(next pos9 pos8)
	(next pos10 pos9)
	(next pos11 pos10)
	(next pos12 pos11)
	(next pos13 pos12)
	(next pos14 pos13)
	(next pos15 pos14)
	(next pos16 pos15)
	(next pos17 pos16)
	(next pos18 pos17)
	(next pos19 pos18)
	(next pos20 pos19)
	(next pos21 pos20)
	(next pos22 pos21)
	(next pos23 pos22)
	(next pos24 pos23)
	(next pos25 pos24)
	(next pos26 pos25)
	(next pos27 pos26)
	(next pos28 pos27)
	(next pos29 pos28)
	(next pos30 pos29)
	(next pos31 pos30)
	(next pos32 pos31)
	(next pos33 pos32)
	(next pos34 pos33)
	(next pos35 pos34)
	(next pos36 pos35)
	(next pos37 pos36)
	(next pos38 pos37)
	(next pos39 pos38)

	(card-at card0 pos0 pos0)
	(card-at card41 pos0 pos1)
	(card-at card2 pos0 pos2)
	(card-at card3 pos0 pos3)
	(card-at card4 pos0 pos4)
	(card-at card5 pos0 pos5)
	(card-at card6 pos0 pos6)
	(card-at card7 pos0 pos7)
	(card-at card8 pos0 pos8)
	(card-at card9 pos0 pos9)
	(card-at card10 pos0 pos10)
	(card-at card11 pos0 pos11)
	(card-at card12 pos0 pos12)
	(card-at card13 pos0 pos13)
	(card-at card14 pos0 pos14)
	(card-at card15 pos0 pos15)
	(card-at card16 pos0 pos16)
	(card-at card17 pos0 pos17)
	(card-at card18 pos0 pos18)
	(card-at card19 pos0 pos19)
	(card-at card20 pos0 pos20)
	(card-at card21 pos0 pos21)
	(card-at card22 pos0 pos22)
	(card-at card23 pos0 pos23)
	(card-at card24 pos0 pos24)
	(card-at card25 pos0 pos25)
	(card-at card26 pos0 pos26)
	(card-at card27 pos0 pos27)
	(card-at card28 pos0 pos28)
	(card-at card29 pos0 pos29)
	(card-at card30 pos0 pos30)
	(card-at card31 pos0 pos31)
	(card-at card32 pos0 pos32)
	(card-at card33 pos0 pos33)
	(card-at card34 pos0 pos34)
	(card-at card35 pos0 pos35)
	(card-at card76 pos0 pos36)
	(card-at card37 pos0 pos37)
	(card-at card38 pos0 pos38)
	(card-at card39 pos0 pos39)
	(card-at card40 pos1 pos0)
	(card-at card81 pos1 pos1)
	(card-at card42 pos1 pos2)
	(card-at card43 pos1 pos3)
	(card-at card44 pos1 pos4)
	(card-at card45 pos1 pos5)
	(card-at card46 pos1 pos6)
	(card-at card47 pos1 pos7)
	(card-at card48 pos1 pos8)
	(card-at card49 pos1 pos9)
	(card-at card50 pos1 pos10)
	(card-at card51 pos1 pos11)
	(card-at card52 pos1 pos12)
	(card-at card53 pos1 pos13)
	(card-at card54 pos1 pos14)
	(card-at card55 pos1 pos15)
	(card-at card56 pos1 pos16)
	(card-at card57 pos1 pos17)
	(card-at card58 pos1 pos18)
	(card-at card59 pos1 pos19)
	(card-at card60 pos1 pos20)
	(card-at card61 pos1 pos21)
	(card-at card62 pos1 pos22)
	(card-at card63 pos1 pos23)
	(card-at card64 pos1 pos24)
	(card-at card65 pos1 pos25)
	(card-at card66 pos1 pos26)
	(card-at card67 pos1 pos27)
	(card-at card68 pos1 pos28)
	(card-at card69 pos1 pos29)
	(card-at card70 pos1 pos30)
	(card-at card71 pos1 pos31)
	(card-at card72 pos1 pos32)
	(card-at card73 pos1 pos33)
	(card-at card74 pos1 pos34)
	(card-at card75 pos1 pos35)
	(card-at card116 pos1 pos36)
	(card-at card77 pos1 pos37)
	(card-at card78 pos1 pos38)
	(card-at card79 pos1 pos39)
	(card-at card80 pos2 pos0)
	(card-at card121 pos2 pos1)
	(card-at card82 pos2 pos2)
	(card-at card83 pos2 pos3)
	(card-at card84 pos2 pos4)
	(card-at card85 pos2 pos5)
	(card-at card86 pos2 pos6)
	(card-at card87 pos2 pos7)
	(card-at card88 pos2 pos8)
	(card-at card89 pos2 pos9)
	(card-at card90 pos2 pos10)
	(card-at card91 pos2 pos11)
	(card-at card92 pos2 pos12)
	(card-at card93 pos2 pos13)
	(card-at card94 pos2 pos14)
	(card-at card95 pos2 pos15)
	(card-at card96 pos2 pos16)
	(card-at card97 pos2 pos17)
	(card-at card98 pos2 pos18)
	(card-at card99 pos2 pos19)
	(card-at card100 pos2 pos20)
	(card-at card101 pos2 pos21)
	(card-at card102 pos2 pos22)
	(card-at card103 pos2 pos23)
	(card-at card104 pos2 pos24)
	(card-at card105 pos2 pos25)
	(card-at card106 pos2 pos26)
	(card-at card107 pos2 pos27)
	(card-at card108 pos2 pos28)
	(card-at card109 pos2 pos29)
	(card-at card110 pos2 pos30)
	(card-at card111 pos2 pos31)
	(card-at card112 pos2 pos32)
	(card-at card113 pos2 pos33)
	(card-at card114 pos2 pos34)
	(card-at card115 pos2 pos35)
	(card-at card156 pos2 pos36)
	(card-at card117 pos2 pos37)
	(card-at card118 pos2 pos38)
	(card-at card119 pos2 pos39)
	(card-at card120 pos3 pos0)
	(card-at card161 pos3 pos1)
	(card-at card122 pos3 pos2)
	(card-at card123 pos3 pos3)
	(card-at card124 pos3 pos4)
	(card-at card125 pos3 pos5)
	(card-at card126 pos3 pos6)
	(card-at card127 pos3 pos7)
	(card-at card128 pos3 pos8)
	(card-at card129 pos3 pos9)
	(card-at card130 pos3 pos10)
	(card-at card131 pos3 pos11)
	(card-at card132 pos3 pos12)
	(card-at card133 pos3 pos13)
	(card-at card134 pos3 pos14)
	(card-at card135 pos3 pos15)
	(card-at card136 pos3 pos16)
	(card-at card137 pos3 pos17)
	(card-at card138 pos3 pos18)
	(card-at card139 pos3 pos19)
	(card-at card140 pos3 pos20)
	(card-at card141 pos3 pos21)
	(card-at card142 pos3 pos22)
	(card-at card143 pos3 pos23)
	(card-at card144 pos3 pos24)
	(card-at card145 pos3 pos25)
	(card-at card146 pos3 pos26)
	(card-at card147 pos3 pos27)
	(card-at card148 pos3 pos28)
	(card-at card149 pos3 pos29)
	(card-at card150 pos3 pos30)
	(card-at card151 pos3 pos31)
	(card-at card152 pos3 pos32)
	(card-at card153 pos3 pos33)
	(card-at card154 pos3 pos34)
	(card-at card155 pos3 pos35)
	(card-at card196 pos3 pos36)
	(card-at card157 pos3 pos37)
	(card-at card158 pos3 pos38)
	(card-at card159 pos3 pos39)
	(card-at card160 pos4 pos0)
	(card-at card201 pos4 pos1)
	(card-at card162 pos4 pos2)
	(card-at card163 pos4 pos3)
	(card-at card164 pos4 pos4)
	(card-at card165 pos4 pos5)
	(card-at card166 pos4 pos6)
	(card-at card167 pos4 pos7)
	(card-at card168 pos4 pos8)
	(card-at card169 pos4 pos9)
	(card-at card170 pos4 pos10)
	(card-at card171 pos4 pos11)
	(card-at card172 pos4 pos12)
	(card-at card173 pos4 pos13)
	(card-at card174 pos4 pos14)
	(card-at card175 pos4 pos15)
	(card-at card176 pos4 pos16)
	(card-at card177 pos4 pos17)
	(card-at card178 pos4 pos18)
	(card-at card179 pos4 pos19)
	(card-at card180 pos4 pos20)
	(card-at card181 pos4 pos21)
	(card-at card182 pos4 pos22)
	(card-at card183 pos4 pos23)
	(card-at card184 pos4 pos24)
	(card-at card185 pos4 pos25)
	(card-at card186 pos4 pos26)
	(card-at card187 pos4 pos27)
	(card-at card188 pos4 pos28)
	(card-at card189 pos4 pos29)
	(card-at card190 pos4 pos30)
	(card-at card191 pos4 pos31)
	(card-at card192 pos4 pos32)
	(card-at card193 pos4 pos33)
	(card-at card194 pos4 pos34)
	(card-at card195 pos4 pos35)
	(card-at card236 pos4 pos36)
	(card-at card197 pos4 pos37)
	(card-at card198 pos4 pos38)
	(card-at card199 pos4 pos39)
	(card-at card200 pos5 pos0)
	(card-at card241 pos5 pos1)
	(card-at card202 pos5 pos2)
	(card-at card203 pos5 pos3)
	(card-at card204 pos5 pos4)
	(card-at card205 pos5 pos5)
	(card-at card206 pos5 pos6)
	(card-at card207 pos5 pos7)
	(card-at card208 pos5 pos8)
	(card-at card209 pos5 pos9)
	(card-at card210 pos5 pos10)
	(card-at card211 pos5 pos11)
	(card-at card212 pos5 pos12)
	(card-at card213 pos5 pos13)
	(card-at card214 pos5 pos14)
	(card-at card215 pos5 pos15)
	(card-at card216 pos5 pos16)
	(card-at card217 pos5 pos17)
	(card-at card218 pos5 pos18)
	(card-at card219 pos5 pos19)
	(card-at card220 pos5 pos20)
	(card-at card221 pos5 pos21)
	(card-at card222 pos5 pos22)
	(card-at card223 pos5 pos23)
	(card-at card224 pos5 pos24)
	(card-at card225 pos5 pos25)
	(card-at card226 pos5 pos26)
	(card-at card227 pos5 pos27)
	(card-at card228 pos5 pos28)
	(card-at card229 pos5 pos29)
	(card-at card230 pos5 pos30)
	(card-at card231 pos5 pos31)
	(card-at card232 pos5 pos32)
	(card-at card233 pos5 pos33)
	(card-at card234 pos5 pos34)
	(card-at card235 pos5 pos35)
	(card-at card276 pos5 pos36)
	(card-at card237 pos5 pos37)
	(card-at card238 pos5 pos38)
	(card-at card239 pos5 pos39)
	(card-at card240 pos6 pos0)
	(card-at card281 pos6 pos1)
	(card-at card242 pos6 pos2)
	(card-at card243 pos6 pos3)
	(card-at card244 pos6 pos4)
	(card-at card245 pos6 pos5)
	(card-at card246 pos6 pos6)
	(card-at card247 pos6 pos7)
	(card-at card248 pos6 pos8)
	(card-at card249 pos6 pos9)
	(card-at card250 pos6 pos10)
	(card-at card251 pos6 pos11)
	(card-at card252 pos6 pos12)
	(card-at card253 pos6 pos13)
	(card-at card254 pos6 pos14)
	(card-at card255 pos6 pos15)
	(card-at card256 pos6 pos16)
	(card-at card257 pos6 pos17)
	(card-at card258 pos6 pos18)
	(card-at card259 pos6 pos19)
	(card-at card260 pos6 pos20)
	(card-at card261 pos6 pos21)
	(card-at card262 pos6 pos22)
	(card-at card263 pos6 pos23)
	(card-at card264 pos6 pos24)
	(card-at card265 pos6 pos25)
	(card-at card266 pos6 pos26)
	(card-at card267 pos6 pos27)
	(card-at card268 pos6 pos28)
	(card-at card269 pos6 pos29)
	(card-at card270 pos6 pos30)
	(card-at card271 pos6 pos31)
	(card-at card272 pos6 pos32)
	(card-at card273 pos6 pos33)
	(card-at card274 pos6 pos34)
	(card-at card275 pos6 pos35)
	(card-at card316 pos6 pos36)
	(card-at card277 pos6 pos37)
	(card-at card278 pos6 pos38)
	(card-at card279 pos6 pos39)
	(card-at card280 pos7 pos0)
	(card-at card321 pos7 pos1)
	(card-at card282 pos7 pos2)
	(card-at card283 pos7 pos3)
	(card-at card284 pos7 pos4)
	(card-at card285 pos7 pos5)
	(card-at card286 pos7 pos6)
	(card-at card287 pos7 pos7)
	(card-at card288 pos7 pos8)
	(card-at card289 pos7 pos9)
	(card-at card290 pos7 pos10)
	(card-at card291 pos7 pos11)
	(card-at card292 pos7 pos12)
	(card-at card293 pos7 pos13)
	(card-at card294 pos7 pos14)
	(card-at card295 pos7 pos15)
	(card-at card296 pos7 pos16)
	(card-at card297 pos7 pos17)
	(card-at card298 pos7 pos18)
	(card-at card299 pos7 pos19)
	(card-at card300 pos7 pos20)
	(card-at card301 pos7 pos21)
	(card-at card302 pos7 pos22)
	(card-at card303 pos7 pos23)
	(card-at card304 pos7 pos24)
	(card-at card305 pos7 pos25)
	(card-at card306 pos7 pos26)
	(card-at card307 pos7 pos27)
	(card-at card308 pos7 pos28)
	(card-at card309 pos7 pos29)
	(card-at card310 pos7 pos30)
	(card-at card311 pos7 pos31)
	(card-at card312 pos7 pos32)
	(card-at card313 pos7 pos33)
	(card-at card314 pos7 pos34)
	(card-at card315 pos7 pos35)
	(card-at card356 pos7 pos36)
	(card-at card317 pos7 pos37)
	(card-at card318 pos7 pos38)
	(card-at card319 pos7 pos39)
	(card-at card320 pos8 pos0)
	(card-at card361 pos8 pos1)
	(card-at card322 pos8 pos2)
	(card-at card323 pos8 pos3)
	(card-at card324 pos8 pos4)
	(card-at card325 pos8 pos5)
	(card-at card326 pos8 pos6)
	(card-at card327 pos8 pos7)
	(card-at card328 pos8 pos8)
	(card-at card329 pos8 pos9)
	(card-at card330 pos8 pos10)
	(card-at card331 pos8 pos11)
	(card-at card332 pos8 pos12)
	(card-at card333 pos8 pos13)
	(card-at card334 pos8 pos14)
	(card-at card335 pos8 pos15)
	(card-at card336 pos8 pos16)
	(card-at card337 pos8 pos17)
	(card-at card338 pos8 pos18)
	(card-at card339 pos8 pos19)
	(card-at card340 pos8 pos20)
	(card-at card341 pos8 pos21)
	(card-at card342 pos8 pos22)
	(card-at card343 pos8 pos23)
	(card-at card344 pos8 pos24)
	(card-at card345 pos8 pos25)
	(card-at card346 pos8 pos26)
	(card-at card347 pos8 pos27)
	(card-at card348 pos8 pos28)
	(card-at card349 pos8 pos29)
	(card-at card350 pos8 pos30)
	(card-at card351 pos8 pos31)
	(card-at card352 pos8 pos32)
	(card-at card353 pos8 pos33)
	(card-at card354 pos8 pos34)
	(card-at card355 pos8 pos35)
	(card-at card396 pos8 pos36)
	(card-at card357 pos8 pos37)
	(card-at card358 pos8 pos38)
	(card-at card359 pos8 pos39)
	(card-at card360 pos9 pos0)
	(card-at card401 pos9 pos1)
	(card-at card362 pos9 pos2)
	(card-at card363 pos9 pos3)
	(card-at card364 pos9 pos4)
	(card-at card365 pos9 pos5)
	(card-at card366 pos9 pos6)
	(card-at card367 pos9 pos7)
	(card-at card368 pos9 pos8)
	(card-at card369 pos9 pos9)
	(card-at card370 pos9 pos10)
	(card-at card371 pos9 pos11)
	(card-at card372 pos9 pos12)
	(card-at card373 pos9 pos13)
	(card-at card374 pos9 pos14)
	(card-at card375 pos9 pos15)
	(card-at card376 pos9 pos16)
	(card-at card377 pos9 pos17)
	(card-at card378 pos9 pos18)
	(card-at card379 pos9 pos19)
	(card-at card380 pos9 pos20)
	(card-at card381 pos9 pos21)
	(card-at card382 pos9 pos22)
	(card-at card383 pos9 pos23)
	(card-at card384 pos9 pos24)
	(card-at card385 pos9 pos25)
	(card-at card386 pos9 pos26)
	(card-at card387 pos9 pos27)
	(card-at card388 pos9 pos28)
	(card-at card389 pos9 pos29)
	(card-at card390 pos9 pos30)
	(card-at card391 pos9 pos31)
	(card-at card392 pos9 pos32)
	(card-at card393 pos9 pos33)
	(card-at card394 pos9 pos34)
	(card-at card395 pos9 pos35)
	(card-at card436 pos9 pos36)
	(card-at card397 pos9 pos37)
	(card-at card398 pos9 pos38)
	(card-at card399 pos9 pos39)
	(card-at card400 pos10 pos0)
	(card-at card441 pos10 pos1)
	(card-at card402 pos10 pos2)
	(card-at card403 pos10 pos3)
	(card-at card404 pos10 pos4)
	(card-at card405 pos10 pos5)
	(card-at card406 pos10 pos6)
	(card-at card407 pos10 pos7)
	(card-at card408 pos10 pos8)
	(card-at card409 pos10 pos9)
	(card-at card410 pos10 pos10)
	(card-at card411 pos10 pos11)
	(card-at card412 pos10 pos12)
	(card-at card413 pos10 pos13)
	(card-at card414 pos10 pos14)
	(card-at card415 pos10 pos15)
	(card-at card416 pos10 pos16)
	(card-at card417 pos10 pos17)
	(card-at card418 pos10 pos18)
	(card-at card419 pos10 pos19)
	(card-at card420 pos10 pos20)
	(card-at card421 pos10 pos21)
	(card-at card422 pos10 pos22)
	(card-at card423 pos10 pos23)
	(card-at card424 pos10 pos24)
	(card-at card425 pos10 pos25)
	(card-at card426 pos10 pos26)
	(card-at card427 pos10 pos27)
	(card-at card428 pos10 pos28)
	(card-at card429 pos10 pos29)
	(card-at card430 pos10 pos30)
	(card-at card431 pos10 pos31)
	(card-at card432 pos10 pos32)
	(card-at card433 pos10 pos33)
	(card-at card434 pos10 pos34)
	(card-at card435 pos10 pos35)
	(card-at card476 pos10 pos36)
	(card-at card437 pos10 pos37)
	(card-at card438 pos10 pos38)
	(card-at card439 pos10 pos39)
	(card-at card440 pos11 pos0)
	(card-at card481 pos11 pos1)
	(card-at card442 pos11 pos2)
	(card-at card443 pos11 pos3)
	(card-at card444 pos11 pos4)
	(card-at card445 pos11 pos5)
	(card-at card446 pos11 pos6)
	(card-at card447 pos11 pos7)
	(card-at card448 pos11 pos8)
	(card-at card449 pos11 pos9)
	(card-at card450 pos11 pos10)
	(card-at card451 pos11 pos11)
	(card-at card452 pos11 pos12)
	(card-at card453 pos11 pos13)
	(card-at card454 pos11 pos14)
	(card-at card455 pos11 pos15)
	(card-at card456 pos11 pos16)
	(card-at card457 pos11 pos17)
	(card-at card458 pos11 pos18)
	(card-at card459 pos11 pos19)
	(card-at card460 pos11 pos20)
	(card-at card461 pos11 pos21)
	(card-at card462 pos11 pos22)
	(card-at card463 pos11 pos23)
	(card-at card464 pos11 pos24)
	(card-at card465 pos11 pos25)
	(card-at card466 pos11 pos26)
	(card-at card467 pos11 pos27)
	(card-at card468 pos11 pos28)
	(card-at card469 pos11 pos29)
	(card-at card470 pos11 pos30)
	(card-at card471 pos11 pos31)
	(card-at card472 pos11 pos32)
	(card-at card473 pos11 pos33)
	(card-at card474 pos11 pos34)
	(card-at card475 pos11 pos35)
	(card-at card516 pos11 pos36)
	(card-at card477 pos11 pos37)
	(card-at card478 pos11 pos38)
	(card-at card479 pos11 pos39)
	(card-at card480 pos12 pos0)
	(card-at card521 pos12 pos1)
	(card-at card482 pos12 pos2)
	(card-at card483 pos12 pos3)
	(card-at card484 pos12 pos4)
	(card-at card485 pos12 pos5)
	(card-at card486 pos12 pos6)
	(card-at card487 pos12 pos7)
	(card-at card488 pos12 pos8)
	(card-at card489 pos12 pos9)
	(card-at card490 pos12 pos10)
	(card-at card491 pos12 pos11)
	(card-at card492 pos12 pos12)
	(card-at card493 pos12 pos13)
	(card-at card494 pos12 pos14)
	(card-at card495 pos12 pos15)
	(card-at card496 pos12 pos16)
	(card-at card497 pos12 pos17)
	(card-at card498 pos12 pos18)
	(card-at card499 pos12 pos19)
	(card-at card500 pos12 pos20)
	(card-at card501 pos12 pos21)
	(card-at card502 pos12 pos22)
	(card-at card503 pos12 pos23)
	(card-at card504 pos12 pos24)
	(card-at card505 pos12 pos25)
	(card-at card506 pos12 pos26)
	(card-at card507 pos12 pos27)
	(card-at card508 pos12 pos28)
	(card-at card509 pos12 pos29)
	(card-at card510 pos12 pos30)
	(card-at card511 pos12 pos31)
	(card-at card512 pos12 pos32)
	(card-at card513 pos12 pos33)
	(card-at card514 pos12 pos34)
	(card-at card515 pos12 pos35)
	(card-at card556 pos12 pos36)
	(card-at card517 pos12 pos37)
	(card-at card518 pos12 pos38)
	(card-at card519 pos12 pos39)
	(card-at card520 pos13 pos0)
	(card-at card561 pos13 pos1)
	(card-at card522 pos13 pos2)
	(card-at card523 pos13 pos3)
	(card-at card524 pos13 pos4)
	(card-at card525 pos13 pos5)
	(card-at card526 pos13 pos6)
	(card-at card527 pos13 pos7)
	(card-at card528 pos13 pos8)
	(card-at card529 pos13 pos9)
	(card-at card530 pos13 pos10)
	(card-at card531 pos13 pos11)
	(card-at card532 pos13 pos12)
	(card-at card533 pos13 pos13)
	(card-at card534 pos13 pos14)
	(card-at card535 pos13 pos15)
	(card-at card536 pos13 pos16)
	(card-at card537 pos13 pos17)
	(card-at card538 pos13 pos18)
	(card-at card539 pos13 pos19)
	(card-at card540 pos13 pos20)
	(card-at card541 pos13 pos21)
	(card-at card542 pos13 pos22)
	(card-at card543 pos13 pos23)
	(card-at card544 pos13 pos24)
	(card-at card545 pos13 pos25)
	(card-at card546 pos13 pos26)
	(card-at card547 pos13 pos27)
	(card-at card548 pos13 pos28)
	(card-at card549 pos13 pos29)
	(card-at card550 pos13 pos30)
	(card-at card551 pos13 pos31)
	(card-at card552 pos13 pos32)
	(card-at card553 pos13 pos33)
	(card-at card554 pos13 pos34)
	(card-at card555 pos13 pos35)
	(card-at card596 pos13 pos36)
	(card-at card557 pos13 pos37)
	(card-at card558 pos13 pos38)
	(card-at card559 pos13 pos39)
	(card-at card560 pos14 pos0)
	(card-at card601 pos14 pos1)
	(card-at card562 pos14 pos2)
	(card-at card563 pos14 pos3)
	(card-at card564 pos14 pos4)
	(card-at card565 pos14 pos5)
	(card-at card566 pos14 pos6)
	(card-at card567 pos14 pos7)
	(card-at card568 pos14 pos8)
	(card-at card569 pos14 pos9)
	(card-at card570 pos14 pos10)
	(card-at card571 pos14 pos11)
	(card-at card572 pos14 pos12)
	(card-at card573 pos14 pos13)
	(card-at card574 pos14 pos14)
	(card-at card575 pos14 pos15)
	(card-at card576 pos14 pos16)
	(card-at card577 pos14 pos17)
	(card-at card578 pos14 pos18)
	(card-at card579 pos14 pos19)
	(card-at card580 pos14 pos20)
	(card-at card581 pos14 pos21)
	(card-at card582 pos14 pos22)
	(card-at card583 pos14 pos23)
	(card-at card584 pos14 pos24)
	(card-at card585 pos14 pos25)
	(card-at card586 pos14 pos26)
	(card-at card587 pos14 pos27)
	(card-at card588 pos14 pos28)
	(card-at card589 pos14 pos29)
	(card-at card590 pos14 pos30)
	(card-at card591 pos14 pos31)
	(card-at card592 pos14 pos32)
	(card-at card593 pos14 pos33)
	(card-at card594 pos14 pos34)
	(card-at card595 pos14 pos35)
	(card-at card636 pos14 pos36)
	(card-at card597 pos14 pos37)
	(card-at card598 pos14 pos38)
	(card-at card599 pos14 pos39)
	(card-at card600 pos15 pos0)
	(card-at card641 pos15 pos1)
	(card-at card602 pos15 pos2)
	(card-at card603 pos15 pos3)
	(card-at card604 pos15 pos4)
	(card-at card605 pos15 pos5)
	(card-at card606 pos15 pos6)
	(card-at card607 pos15 pos7)
	(card-at card608 pos15 pos8)
	(card-at card609 pos15 pos9)
	(card-at card610 pos15 pos10)
	(card-at card611 pos15 pos11)
	(card-at card612 pos15 pos12)
	(card-at card613 pos15 pos13)
	(card-at card614 pos15 pos14)
	(card-at card615 pos15 pos15)
	(card-at card616 pos15 pos16)
	(card-at card617 pos15 pos17)
	(card-at card618 pos15 pos18)
	(card-at card619 pos15 pos19)
	(card-at card620 pos15 pos20)
	(card-at card621 pos15 pos21)
	(card-at card622 pos15 pos22)
	(card-at card623 pos15 pos23)
	(card-at card624 pos15 pos24)
	(card-at card625 pos15 pos25)
	(card-at card626 pos15 pos26)
	(card-at card627 pos15 pos27)
	(card-at card628 pos15 pos28)
	(card-at card629 pos15 pos29)
	(card-at card630 pos15 pos30)
	(card-at card631 pos15 pos31)
	(card-at card632 pos15 pos32)
	(card-at card633 pos15 pos33)
	(card-at card634 pos15 pos34)
	(card-at card635 pos15 pos35)
	(card-at card676 pos15 pos36)
	(card-at card637 pos15 pos37)
	(card-at card638 pos15 pos38)
	(card-at card639 pos15 pos39)
	(card-at card640 pos16 pos0)
	(card-at card681 pos16 pos1)
	(card-at card642 pos16 pos2)
	(card-at card643 pos16 pos3)
	(card-at card644 pos16 pos4)
	(card-at card645 pos16 pos5)
	(card-at card646 pos16 pos6)
	(card-at card647 pos16 pos7)
	(card-at card648 pos16 pos8)
	(card-at card649 pos16 pos9)
	(card-at card650 pos16 pos10)
	(card-at card651 pos16 pos11)
	(card-at card652 pos16 pos12)
	(card-at card653 pos16 pos13)
	(card-at card654 pos16 pos14)
	(card-at card655 pos16 pos15)
	(card-at card656 pos16 pos16)
	(card-at card657 pos16 pos17)
	(card-at card658 pos16 pos18)
	(card-at card659 pos16 pos19)
	(card-at card660 pos16 pos20)
	(card-at card661 pos16 pos21)
	(card-at card662 pos16 pos22)
	(card-at card663 pos16 pos23)
	(card-at card664 pos16 pos24)
	(card-at card665 pos16 pos25)
	(card-at card666 pos16 pos26)
	(card-at card667 pos16 pos27)
	(card-at card668 pos16 pos28)
	(card-at card669 pos16 pos29)
	(card-at card670 pos16 pos30)
	(card-at card671 pos16 pos31)
	(card-at card672 pos16 pos32)
	(card-at card673 pos16 pos33)
	(card-at card674 pos16 pos34)
	(card-at card675 pos16 pos35)
	(card-at card716 pos16 pos36)
	(card-at card677 pos16 pos37)
	(card-at card678 pos16 pos38)
	(card-at card679 pos16 pos39)
	(card-at card680 pos17 pos0)
	(card-at card721 pos17 pos1)
	(card-at card682 pos17 pos2)
	(card-at card683 pos17 pos3)
	(card-at card684 pos17 pos4)
	(card-at card685 pos17 pos5)
	(card-at card686 pos17 pos6)
	(card-at card687 pos17 pos7)
	(card-at card688 pos17 pos8)
	(card-at card689 pos17 pos9)
	(card-at card690 pos17 pos10)
	(card-at card691 pos17 pos11)
	(card-at card692 pos17 pos12)
	(card-at card693 pos17 pos13)
	(card-at card694 pos17 pos14)
	(card-at card695 pos17 pos15)
	(card-at card696 pos17 pos16)
	(card-at card697 pos17 pos17)
	(card-at card698 pos17 pos18)
	(card-at card699 pos17 pos19)
	(card-at card700 pos17 pos20)
	(card-at card701 pos17 pos21)
	(card-at card702 pos17 pos22)
	(card-at card703 pos17 pos23)
	(card-at card704 pos17 pos24)
	(card-at card705 pos17 pos25)
	(card-at card706 pos17 pos26)
	(card-at card707 pos17 pos27)
	(card-at card708 pos17 pos28)
	(card-at card709 pos17 pos29)
	(card-at card710 pos17 pos30)
	(card-at card711 pos17 pos31)
	(card-at card712 pos17 pos32)
	(card-at card713 pos17 pos33)
	(card-at card714 pos17 pos34)
	(card-at card715 pos17 pos35)
	(card-at card756 pos17 pos36)
	(card-at card717 pos17 pos37)
	(card-at card718 pos17 pos38)
	(card-at card719 pos17 pos39)
	(card-at card720 pos18 pos0)
	(card-at card761 pos18 pos1)
	(card-at card722 pos18 pos2)
	(card-at card723 pos18 pos3)
	(card-at card724 pos18 pos4)
	(card-at card725 pos18 pos5)
	(card-at card726 pos18 pos6)
	(card-at card727 pos18 pos7)
	(card-at card728 pos18 pos8)
	(card-at card729 pos18 pos9)
	(card-at card730 pos18 pos10)
	(card-at card731 pos18 pos11)
	(card-at card732 pos18 pos12)
	(card-at card733 pos18 pos13)
	(card-at card734 pos18 pos14)
	(card-at card735 pos18 pos15)
	(card-at card736 pos18 pos16)
	(card-at card737 pos18 pos17)
	(card-at card738 pos18 pos18)
	(card-at card739 pos18 pos19)
	(card-at card740 pos18 pos20)
	(card-at card741 pos18 pos21)
	(card-at card742 pos18 pos22)
	(card-at card743 pos18 pos23)
	(card-at card744 pos18 pos24)
	(card-at card745 pos18 pos25)
	(card-at card746 pos18 pos26)
	(card-at card747 pos18 pos27)
	(card-at card748 pos18 pos28)
	(card-at card749 pos18 pos29)
	(card-at card750 pos18 pos30)
	(card-at card751 pos18 pos31)
	(card-at card752 pos18 pos32)
	(card-at card753 pos18 pos33)
	(card-at card754 pos18 pos34)
	(card-at card755 pos18 pos35)
	(card-at card796 pos18 pos36)
	(card-at card757 pos18 pos37)
	(card-at card758 pos18 pos38)
	(card-at card759 pos18 pos39)
	(card-at card760 pos19 pos0)
	(card-at card801 pos19 pos1)
	(card-at card762 pos19 pos2)
	(card-at card763 pos19 pos3)
	(card-at card764 pos19 pos4)
	(card-at card765 pos19 pos5)
	(card-at card766 pos19 pos6)
	(card-at card767 pos19 pos7)
	(card-at card768 pos19 pos8)
	(card-at card769 pos19 pos9)
	(card-at card770 pos19 pos10)
	(card-at card771 pos19 pos11)
	(card-at card772 pos19 pos12)
	(card-at card773 pos19 pos13)
	(card-at card774 pos19 pos14)
	(card-at card775 pos19 pos15)
	(card-at card776 pos19 pos16)
	(card-at card777 pos19 pos17)
	(card-at card778 pos19 pos18)
	(card-at card779 pos19 pos19)
	(card-at card780 pos19 pos20)
	(card-at card781 pos19 pos21)
	(card-at card782 pos19 pos22)
	(card-at card783 pos19 pos23)
	(card-at card784 pos19 pos24)
	(card-at card785 pos19 pos25)
	(card-at card786 pos19 pos26)
	(card-at card787 pos19 pos27)
	(card-at card788 pos19 pos28)
	(card-at card789 pos19 pos29)
	(card-at card790 pos19 pos30)
	(card-at card791 pos19 pos31)
	(card-at card792 pos19 pos32)
	(card-at card793 pos19 pos33)
	(card-at card794 pos19 pos34)
	(card-at card795 pos19 pos35)
	(card-at card836 pos19 pos36)
	(card-at card797 pos19 pos37)
	(card-at card798 pos19 pos38)
	(card-at card799 pos19 pos39)
	(card-at card800 pos20 pos0)
	(card-at card841 pos20 pos1)
	(card-at card802 pos20 pos2)
	(card-at card803 pos20 pos3)
	(card-at card804 pos20 pos4)
	(card-at card805 pos20 pos5)
	(card-at card806 pos20 pos6)
	(card-at card807 pos20 pos7)
	(card-at card808 pos20 pos8)
	(card-at card809 pos20 pos9)
	(card-at card810 pos20 pos10)
	(card-at card811 pos20 pos11)
	(card-at card812 pos20 pos12)
	(card-at card813 pos20 pos13)
	(card-at card814 pos20 pos14)
	(card-at card815 pos20 pos15)
	(card-at card816 pos20 pos16)
	(card-at card817 pos20 pos17)
	(card-at card818 pos20 pos18)
	(card-at card819 pos20 pos19)
	(card-at card820 pos20 pos20)
	(card-at card821 pos20 pos21)
	(card-at card822 pos20 pos22)
	(card-at card823 pos20 pos23)
	(card-at card824 pos20 pos24)
	(card-at card825 pos20 pos25)
	(card-at card826 pos20 pos26)
	(card-at card827 pos20 pos27)
	(card-at card828 pos20 pos28)
	(card-at card829 pos20 pos29)
	(card-at card830 pos20 pos30)
	(card-at card831 pos20 pos31)
	(card-at card832 pos20 pos32)
	(card-at card833 pos20 pos33)
	(card-at card834 pos20 pos34)
	(card-at card835 pos20 pos35)
	(card-at card876 pos20 pos36)
	(card-at card837 pos20 pos37)
	(card-at card838 pos20 pos38)
	(card-at card839 pos20 pos39)
	(card-at card840 pos21 pos0)
	(card-at card881 pos21 pos1)
	(card-at card842 pos21 pos2)
	(card-at card843 pos21 pos3)
	(card-at card844 pos21 pos4)
	(card-at card845 pos21 pos5)
	(card-at card846 pos21 pos6)
	(card-at card847 pos21 pos7)
	(card-at card848 pos21 pos8)
	(card-at card849 pos21 pos9)
	(card-at card850 pos21 pos10)
	(card-at card851 pos21 pos11)
	(card-at card852 pos21 pos12)
	(card-at card853 pos21 pos13)
	(card-at card854 pos21 pos14)
	(card-at card855 pos21 pos15)
	(card-at card856 pos21 pos16)
	(card-at card857 pos21 pos17)
	(card-at card858 pos21 pos18)
	(card-at card859 pos21 pos19)
	(card-at card860 pos21 pos20)
	(card-at card861 pos21 pos21)
	(card-at card862 pos21 pos22)
	(card-at card863 pos21 pos23)
	(card-at card864 pos21 pos24)
	(card-at card865 pos21 pos25)
	(card-at card866 pos21 pos26)
	(card-at card867 pos21 pos27)
	(card-at card868 pos21 pos28)
	(card-at card869 pos21 pos29)
	(card-at card870 pos21 pos30)
	(card-at card871 pos21 pos31)
	(card-at card872 pos21 pos32)
	(card-at card873 pos21 pos33)
	(card-at card874 pos21 pos34)
	(card-at card875 pos21 pos35)
	(card-at card916 pos21 pos36)
	(card-at card877 pos21 pos37)
	(card-at card878 pos21 pos38)
	(card-at card879 pos21 pos39)
	(card-at card880 pos22 pos0)
	(card-at card921 pos22 pos1)
	(card-at card882 pos22 pos2)
	(card-at card883 pos22 pos3)
	(card-at card884 pos22 pos4)
	(card-at card885 pos22 pos5)
	(card-at card886 pos22 pos6)
	(card-at card887 pos22 pos7)
	(card-at card888 pos22 pos8)
	(card-at card889 pos22 pos9)
	(card-at card890 pos22 pos10)
	(card-at card891 pos22 pos11)
	(card-at card892 pos22 pos12)
	(card-at card893 pos22 pos13)
	(card-at card894 pos22 pos14)
	(card-at card895 pos22 pos15)
	(card-at card896 pos22 pos16)
	(card-at card897 pos22 pos17)
	(card-at card898 pos22 pos18)
	(card-at card899 pos22 pos19)
	(card-at card900 pos22 pos20)
	(card-at card901 pos22 pos21)
	(card-at card902 pos22 pos22)
	(card-at card903 pos22 pos23)
	(card-at card904 pos22 pos24)
	(card-at card905 pos22 pos25)
	(card-at card906 pos22 pos26)
	(card-at card907 pos22 pos27)
	(card-at card908 pos22 pos28)
	(card-at card909 pos22 pos29)
	(card-at card910 pos22 pos30)
	(card-at card911 pos22 pos31)
	(card-at card912 pos22 pos32)
	(card-at card913 pos22 pos33)
	(card-at card914 pos22 pos34)
	(card-at card915 pos22 pos35)
	(card-at card956 pos22 pos36)
	(card-at card917 pos22 pos37)
	(card-at card918 pos22 pos38)
	(card-at card919 pos22 pos39)
	(card-at card920 pos23 pos0)
	(card-at card961 pos23 pos1)
	(card-at card922 pos23 pos2)
	(card-at card923 pos23 pos3)
	(card-at card924 pos23 pos4)
	(card-at card925 pos23 pos5)
	(card-at card926 pos23 pos6)
	(card-at card927 pos23 pos7)
	(card-at card928 pos23 pos8)
	(card-at card929 pos23 pos9)
	(card-at card930 pos23 pos10)
	(card-at card931 pos23 pos11)
	(card-at card932 pos23 pos12)
	(card-at card933 pos23 pos13)
	(card-at card934 pos23 pos14)
	(card-at card935 pos23 pos15)
	(card-at card936 pos23 pos16)
	(card-at card937 pos23 pos17)
	(card-at card938 pos23 pos18)
	(card-at card939 pos23 pos19)
	(card-at card940 pos23 pos20)
	(card-at card941 pos23 pos21)
	(card-at card942 pos23 pos22)
	(card-at card943 pos23 pos23)
	(card-at card944 pos23 pos24)
	(card-at card945 pos23 pos25)
	(card-at card946 pos23 pos26)
	(card-at card947 pos23 pos27)
	(card-at card948 pos23 pos28)
	(card-at card949 pos23 pos29)
	(card-at card950 pos23 pos30)
	(card-at card951 pos23 pos31)
	(card-at card952 pos23 pos32)
	(card-at card953 pos23 pos33)
	(card-at card954 pos23 pos34)
	(card-at card955 pos23 pos35)
	(card-at card996 pos23 pos36)
	(card-at card957 pos23 pos37)
	(card-at card958 pos23 pos38)
	(card-at card959 pos23 pos39)
	(card-at card960 pos24 pos0)
	(card-at card1001 pos24 pos1)
	(card-at card962 pos24 pos2)
	(card-at card963 pos24 pos3)
	(card-at card964 pos24 pos4)
	(card-at card965 pos24 pos5)
	(card-at card966 pos24 pos6)
	(card-at card967 pos24 pos7)
	(card-at card968 pos24 pos8)
	(card-at card969 pos24 pos9)
	(card-at card970 pos24 pos10)
	(card-at card971 pos24 pos11)
	(card-at card972 pos24 pos12)
	(card-at card973 pos24 pos13)
	(card-at card974 pos24 pos14)
	(card-at card975 pos24 pos15)
	(card-at card976 pos24 pos16)
	(card-at card977 pos24 pos17)
	(card-at card978 pos24 pos18)
	(card-at card979 pos24 pos19)
	(card-at card980 pos24 pos20)
	(card-at card981 pos24 pos21)
	(card-at card982 pos24 pos22)
	(card-at card983 pos24 pos23)
	(card-at card984 pos24 pos24)
	(card-at card985 pos24 pos25)
	(card-at card986 pos24 pos26)
	(card-at card987 pos24 pos27)
	(card-at card988 pos24 pos28)
	(card-at card989 pos24 pos29)
	(card-at card990 pos24 pos30)
	(card-at card991 pos24 pos31)
	(card-at card992 pos24 pos32)
	(card-at card993 pos24 pos33)
	(card-at card994 pos24 pos34)
	(card-at card995 pos24 pos35)
	(card-at card1036 pos24 pos36)
	(card-at card997 pos24 pos37)
	(card-at card998 pos24 pos38)
	(card-at card999 pos24 pos39)
	(card-at card1000 pos25 pos0)
	(card-at card1041 pos25 pos1)
	(card-at card1002 pos25 pos2)
	(card-at card1003 pos25 pos3)
	(card-at card1004 pos25 pos4)
	(card-at card1005 pos25 pos5)
	(card-at card1006 pos25 pos6)
	(card-at card1007 pos25 pos7)
	(card-at card1008 pos25 pos8)
	(card-at card1009 pos25 pos9)
	(card-at card1010 pos25 pos10)
	(card-at card1011 pos25 pos11)
	(card-at card1012 pos25 pos12)
	(card-at card1013 pos25 pos13)
	(card-at card1014 pos25 pos14)
	(card-at card1015 pos25 pos15)
	(card-at card1016 pos25 pos16)
	(card-at card1017 pos25 pos17)
	(card-at card1018 pos25 pos18)
	(card-at card1019 pos25 pos19)
	(card-at card1020 pos25 pos20)
	(card-at card1021 pos25 pos21)
	(card-at card1022 pos25 pos22)
	(card-at card1023 pos25 pos23)
	(card-at card1024 pos25 pos24)
	(card-at card1025 pos25 pos25)
	(card-at card1026 pos25 pos26)
	(card-at card1027 pos25 pos27)
	(card-at card1028 pos25 pos28)
	(card-at card1029 pos25 pos29)
	(card-at card1030 pos25 pos30)
	(card-at card1031 pos25 pos31)
	(card-at card1032 pos25 pos32)
	(card-at card1033 pos25 pos33)
	(card-at card1034 pos25 pos34)
	(card-at card1035 pos25 pos35)
	(card-at card1076 pos25 pos36)
	(card-at card1037 pos25 pos37)
	(card-at card1038 pos25 pos38)
	(card-at card1039 pos25 pos39)
	(card-at card1040 pos26 pos0)
	(card-at card1081 pos26 pos1)
	(card-at card1042 pos26 pos2)
	(card-at card1043 pos26 pos3)
	(card-at card1044 pos26 pos4)
	(card-at card1045 pos26 pos5)
	(card-at card1046 pos26 pos6)
	(card-at card1047 pos26 pos7)
	(card-at card1048 pos26 pos8)
	(card-at card1049 pos26 pos9)
	(card-at card1050 pos26 pos10)
	(card-at card1051 pos26 pos11)
	(card-at card1052 pos26 pos12)
	(card-at card1053 pos26 pos13)
	(card-at card1054 pos26 pos14)
	(card-at card1055 pos26 pos15)
	(card-at card1056 pos26 pos16)
	(card-at card1057 pos26 pos17)
	(card-at card1058 pos26 pos18)
	(card-at card1059 pos26 pos19)
	(card-at card1060 pos26 pos20)
	(card-at card1061 pos26 pos21)
	(card-at card1062 pos26 pos22)
	(card-at card1063 pos26 pos23)
	(card-at card1064 pos26 pos24)
	(card-at card1065 pos26 pos25)
	(card-at card1066 pos26 pos26)
	(card-at card1067 pos26 pos27)
	(card-at card1068 pos26 pos28)
	(card-at card1069 pos26 pos29)
	(card-at card1070 pos26 pos30)
	(card-at card1071 pos26 pos31)
	(card-at card1072 pos26 pos32)
	(card-at card1073 pos26 pos33)
	(card-at card1074 pos26 pos34)
	(card-at card1075 pos26 pos35)
	(card-at card1116 pos26 pos36)
	(card-at card1077 pos26 pos37)
	(card-at card1078 pos26 pos38)
	(card-at card1079 pos26 pos39)
	(card-at card1080 pos27 pos0)
	(card-at card1121 pos27 pos1)
	(card-at card1082 pos27 pos2)
	(card-at card1083 pos27 pos3)
	(card-at card1084 pos27 pos4)
	(card-at card1085 pos27 pos5)
	(card-at card1086 pos27 pos6)
	(card-at card1087 pos27 pos7)
	(card-at card1088 pos27 pos8)
	(card-at card1089 pos27 pos9)
	(card-at card1090 pos27 pos10)
	(card-at card1091 pos27 pos11)
	(card-at card1092 pos27 pos12)
	(card-at card1093 pos27 pos13)
	(card-at card1094 pos27 pos14)
	(card-at card1095 pos27 pos15)
	(card-at card1096 pos27 pos16)
	(card-at card1097 pos27 pos17)
	(card-at card1098 pos27 pos18)
	(card-at card1099 pos27 pos19)
	(card-at card1100 pos27 pos20)
	(card-at card1101 pos27 pos21)
	(card-at card1102 pos27 pos22)
	(card-at card1103 pos27 pos23)
	(card-at card1104 pos27 pos24)
	(card-at card1105 pos27 pos25)
	(card-at card1106 pos27 pos26)
	(card-at card1107 pos27 pos27)
	(card-at card1108 pos27 pos28)
	(card-at card1109 pos27 pos29)
	(card-at card1110 pos27 pos30)
	(card-at card1111 pos27 pos31)
	(card-at card1112 pos27 pos32)
	(card-at card1113 pos27 pos33)
	(card-at card1114 pos27 pos34)
	(card-at card1115 pos27 pos35)
	(card-at card1156 pos27 pos36)
	(card-at card1117 pos27 pos37)
	(card-at card1118 pos27 pos38)
	(card-at card1119 pos27 pos39)
	(card-at card1120 pos28 pos0)
	(card-at card1161 pos28 pos1)
	(card-at card1122 pos28 pos2)
	(card-at card1123 pos28 pos3)
	(card-at card1124 pos28 pos4)
	(card-at card1125 pos28 pos5)
	(card-at card1126 pos28 pos6)
	(card-at card1127 pos28 pos7)
	(card-at card1128 pos28 pos8)
	(card-at card1129 pos28 pos9)
	(card-at card1130 pos28 pos10)
	(card-at card1131 pos28 pos11)
	(card-at card1132 pos28 pos12)
	(card-at card1133 pos28 pos13)
	(card-at card1134 pos28 pos14)
	(card-at card1135 pos28 pos15)
	(card-at card1136 pos28 pos16)
	(card-at card1137 pos28 pos17)
	(card-at card1138 pos28 pos18)
	(card-at card1139 pos28 pos19)
	(card-at card1140 pos28 pos20)
	(card-at card1141 pos28 pos21)
	(card-at card1142 pos28 pos22)
	(card-at card1143 pos28 pos23)
	(card-at card1144 pos28 pos24)
	(card-at card1145 pos28 pos25)
	(card-at card1146 pos28 pos26)
	(card-at card1147 pos28 pos27)
	(card-at card1148 pos28 pos28)
	(card-at card1149 pos28 pos29)
	(card-at card1150 pos28 pos30)
	(card-at card1151 pos28 pos31)
	(card-at card1152 pos28 pos32)
	(card-at card1153 pos28 pos33)
	(card-at card1154 pos28 pos34)
	(card-at card1155 pos28 pos35)
	(card-at card1196 pos28 pos36)
	(card-at card1157 pos28 pos37)
	(card-at card1158 pos28 pos38)
	(card-at card1159 pos28 pos39)
	(card-at card1160 pos29 pos0)
	(card-at card1201 pos29 pos1)
	(card-at card1162 pos29 pos2)
	(card-at card1163 pos29 pos3)
	(card-at card1164 pos29 pos4)
	(card-at card1165 pos29 pos5)
	(card-at card1166 pos29 pos6)
	(card-at card1167 pos29 pos7)
	(card-at card1168 pos29 pos8)
	(card-at card1169 pos29 pos9)
	(card-at card1170 pos29 pos10)
	(card-at card1171 pos29 pos11)
	(card-at card1172 pos29 pos12)
	(card-at card1173 pos29 pos13)
	(card-at card1174 pos29 pos14)
	(card-at card1175 pos29 pos15)
	(card-at card1176 pos29 pos16)
	(card-at card1177 pos29 pos17)
	(card-at card1178 pos29 pos18)
	(card-at card1179 pos29 pos19)
	(card-at card1180 pos29 pos20)
	(card-at card1181 pos29 pos21)
	(card-at card1182 pos29 pos22)
	(card-at card1183 pos29 pos23)
	(card-at card1184 pos29 pos24)
	(card-at card1185 pos29 pos25)
	(card-at card1186 pos29 pos26)
	(card-at card1187 pos29 pos27)
	(card-at card1188 pos29 pos28)
	(card-at card1189 pos29 pos29)
	(card-at card1190 pos29 pos30)
	(card-at card1191 pos29 pos31)
	(card-at card1192 pos29 pos32)
	(card-at card1193 pos29 pos33)
	(card-at card1194 pos29 pos34)
	(card-at card1195 pos29 pos35)
	(card-at card1236 pos29 pos36)
	(card-at card1197 pos29 pos37)
	(card-at card1198 pos29 pos38)
	(card-at card1199 pos29 pos39)
	(card-at card1200 pos30 pos0)
	(card-at card1241 pos30 pos1)
	(card-at card1202 pos30 pos2)
	(card-at card1203 pos30 pos3)
	(card-at card1204 pos30 pos4)
	(card-at card1205 pos30 pos5)
	(card-at card1206 pos30 pos6)
	(card-at card1207 pos30 pos7)
	(card-at card1208 pos30 pos8)
	(card-at card1209 pos30 pos9)
	(card-at card1210 pos30 pos10)
	(card-at card1211 pos30 pos11)
	(card-at card1212 pos30 pos12)
	(card-at card1213 pos30 pos13)
	(card-at card1214 pos30 pos14)
	(card-at card1215 pos30 pos15)
	(card-at card1216 pos30 pos16)
	(card-at card1217 pos30 pos17)
	(card-at card1218 pos30 pos18)
	(card-at card1219 pos30 pos19)
	(card-at card1220 pos30 pos20)
	(card-at card1221 pos30 pos21)
	(card-at card1222 pos30 pos22)
	(card-at card1223 pos30 pos23)
	(card-at card1224 pos30 pos24)
	(card-at card1225 pos30 pos25)
	(card-at card1226 pos30 pos26)
	(card-at card1227 pos30 pos27)
	(card-at card1228 pos30 pos28)
	(card-at card1229 pos30 pos29)
	(card-at card1230 pos30 pos30)
	(card-at card1231 pos30 pos31)
	(card-at card1232 pos30 pos32)
	(card-at card1233 pos30 pos33)
	(card-at card1234 pos30 pos34)
	(card-at card1235 pos30 pos35)
	(card-at card1276 pos30 pos36)
	(card-at card1237 pos30 pos37)
	(card-at card1238 pos30 pos38)
	(card-at card1239 pos30 pos39)
	(card-at card1240 pos31 pos0)
	(card-at card1281 pos31 pos1)
	(card-at card1242 pos31 pos2)
	(card-at card1243 pos31 pos3)
	(card-at card1244 pos31 pos4)
	(card-at card1245 pos31 pos5)
	(card-at card1246 pos31 pos6)
	(card-at card1247 pos31 pos7)
	(card-at card1248 pos31 pos8)
	(card-at card1249 pos31 pos9)
	(card-at card1250 pos31 pos10)
	(card-at card1251 pos31 pos11)
	(card-at card1252 pos31 pos12)
	(card-at card1253 pos31 pos13)
	(card-at card1254 pos31 pos14)
	(card-at card1255 pos31 pos15)
	(card-at card1256 pos31 pos16)
	(card-at card1257 pos31 pos17)
	(card-at card1258 pos31 pos18)
	(card-at card1259 pos31 pos19)
	(card-at card1260 pos31 pos20)
	(card-at card1261 pos31 pos21)
	(card-at card1262 pos31 pos22)
	(card-at card1263 pos31 pos23)
	(card-at card1264 pos31 pos24)
	(card-at card1265 pos31 pos25)
	(card-at card1266 pos31 pos26)
	(card-at card1267 pos31 pos27)
	(card-at card1268 pos31 pos28)
	(card-at card1269 pos31 pos29)
	(card-at card1270 pos31 pos30)
	(card-at card1271 pos31 pos31)
	(card-at card1272 pos31 pos32)
	(card-at card1273 pos31 pos33)
	(card-at card1274 pos31 pos34)
	(card-at card1275 pos31 pos35)
	(card-at card1316 pos31 pos36)
	(card-at card1277 pos31 pos37)
	(card-at card1278 pos31 pos38)
	(card-at card1279 pos31 pos39)
	(card-at card1280 pos32 pos0)
	(card-at card1321 pos32 pos1)
	(card-at card1282 pos32 pos2)
	(card-at card1283 pos32 pos3)
	(card-at card1284 pos32 pos4)
	(card-at card1285 pos32 pos5)
	(card-at card1286 pos32 pos6)
	(card-at card1287 pos32 pos7)
	(card-at card1288 pos32 pos8)
	(card-at card1289 pos32 pos9)
	(card-at card1290 pos32 pos10)
	(card-at card1291 pos32 pos11)
	(card-at card1292 pos32 pos12)
	(card-at card1293 pos32 pos13)
	(card-at card1294 pos32 pos14)
	(card-at card1295 pos32 pos15)
	(card-at card1296 pos32 pos16)
	(card-at card1297 pos32 pos17)
	(card-at card1298 pos32 pos18)
	(card-at card1299 pos32 pos19)
	(card-at card1300 pos32 pos20)
	(card-at card1301 pos32 pos21)
	(card-at card1302 pos32 pos22)
	(card-at card1303 pos32 pos23)
	(card-at card1304 pos32 pos24)
	(card-at card1305 pos32 pos25)
	(card-at card1306 pos32 pos26)
	(card-at card1307 pos32 pos27)
	(card-at card1308 pos32 pos28)
	(card-at card1309 pos32 pos29)
	(card-at card1310 pos32 pos30)
	(card-at card1311 pos32 pos31)
	(card-at card1312 pos32 pos32)
	(card-at card1313 pos32 pos33)
	(card-at card1314 pos32 pos34)
	(card-at card1315 pos32 pos35)
	(card-at card1356 pos32 pos36)
	(card-at card1317 pos32 pos37)
	(card-at card1318 pos32 pos38)
	(card-at card1319 pos32 pos39)
	(card-at card1320 pos33 pos0)
	(card-at card1361 pos33 pos1)
	(card-at card1322 pos33 pos2)
	(card-at card1323 pos33 pos3)
	(card-at card1324 pos33 pos4)
	(card-at card1325 pos33 pos5)
	(card-at card1326 pos33 pos6)
	(card-at card1327 pos33 pos7)
	(card-at card1328 pos33 pos8)
	(card-at card1329 pos33 pos9)
	(card-at card1330 pos33 pos10)
	(card-at card1331 pos33 pos11)
	(card-at card1332 pos33 pos12)
	(card-at card1333 pos33 pos13)
	(card-at card1334 pos33 pos14)
	(card-at card1335 pos33 pos15)
	(card-at card1336 pos33 pos16)
	(card-at card1337 pos33 pos17)
	(card-at card1338 pos33 pos18)
	(card-at card1339 pos33 pos19)
	(card-at card1340 pos33 pos20)
	(card-at card1341 pos33 pos21)
	(card-at card1342 pos33 pos22)
	(card-at card1343 pos33 pos23)
	(card-at card1344 pos33 pos24)
	(card-at card1345 pos33 pos25)
	(card-at card1346 pos33 pos26)
	(card-at card1347 pos33 pos27)
	(card-at card1348 pos33 pos28)
	(card-at card1349 pos33 pos29)
	(card-at card1350 pos33 pos30)
	(card-at card1351 pos33 pos31)
	(card-at card1352 pos33 pos32)
	(card-at card1353 pos33 pos33)
	(card-at card1354 pos33 pos34)
	(card-at card1355 pos33 pos35)
	(card-at card1396 pos33 pos36)
	(card-at card1357 pos33 pos37)
	(card-at card1358 pos33 pos38)
	(card-at card1359 pos33 pos39)
	(card-at card1360 pos34 pos0)
	(card-at card1401 pos34 pos1)
	(card-at card1362 pos34 pos2)
	(card-at card1363 pos34 pos3)
	(card-at card1364 pos34 pos4)
	(card-at card1365 pos34 pos5)
	(card-at card1366 pos34 pos6)
	(card-at card1367 pos34 pos7)
	(card-at card1368 pos34 pos8)
	(card-at card1369 pos34 pos9)
	(card-at card1370 pos34 pos10)
	(card-at card1371 pos34 pos11)
	(card-at card1372 pos34 pos12)
	(card-at card1373 pos34 pos13)
	(card-at card1374 pos34 pos14)
	(card-at card1375 pos34 pos15)
	(card-at card1376 pos34 pos16)
	(card-at card1377 pos34 pos17)
	(card-at card1378 pos34 pos18)
	(card-at card1379 pos34 pos19)
	(card-at card1380 pos34 pos20)
	(card-at card1381 pos34 pos21)
	(card-at card1382 pos34 pos22)
	(card-at card1383 pos34 pos23)
	(card-at card1384 pos34 pos24)
	(card-at card1385 pos34 pos25)
	(card-at card1386 pos34 pos26)
	(card-at card1387 pos34 pos27)
	(card-at card1388 pos34 pos28)
	(card-at card1389 pos34 pos29)
	(card-at card1390 pos34 pos30)
	(card-at card1391 pos34 pos31)
	(card-at card1392 pos34 pos32)
	(card-at card1393 pos34 pos33)
	(card-at card1394 pos34 pos34)
	(card-at card1395 pos34 pos35)
	(card-at card1436 pos34 pos36)
	(card-at card1397 pos34 pos37)
	(card-at card1398 pos34 pos38)
	(card-at card1399 pos34 pos39)
	(card-at card1400 pos35 pos0)
	(card-at card1441 pos35 pos1)
	(card-at card1402 pos35 pos2)
	(card-at card1403 pos35 pos3)
	(card-at card1404 pos35 pos4)
	(card-at card1405 pos35 pos5)
	(card-at card1406 pos35 pos6)
	(card-at card1407 pos35 pos7)
	(card-at card1408 pos35 pos8)
	(card-at card1409 pos35 pos9)
	(card-at card1410 pos35 pos10)
	(card-at card1411 pos35 pos11)
	(card-at card1412 pos35 pos12)
	(card-at card1413 pos35 pos13)
	(card-at card1414 pos35 pos14)
	(card-at card1415 pos35 pos15)
	(card-at card1416 pos35 pos16)
	(card-at card1417 pos35 pos17)
	(card-at card1418 pos35 pos18)
	(card-at card1419 pos35 pos19)
	(card-at card1420 pos35 pos20)
	(card-at card1421 pos35 pos21)
	(card-at card1422 pos35 pos22)
	(card-at card1423 pos35 pos23)
	(card-at card1424 pos35 pos24)
	(card-at card1425 pos35 pos25)
	(card-at card1426 pos35 pos26)
	(card-at card1427 pos35 pos27)
	(card-at card1428 pos35 pos28)
	(card-at card1429 pos35 pos29)
	(card-at card1430 pos35 pos30)
	(card-at card1431 pos35 pos31)
	(card-at card1432 pos35 pos32)
	(card-at card1433 pos35 pos33)
	(card-at card1434 pos35 pos34)
	(card-at card1435 pos35 pos35)
	(card-at card1476 pos35 pos36)
	(card-at card1437 pos35 pos37)
	(card-at card1438 pos35 pos38)
	(card-at card1439 pos35 pos39)
	(card-at card1440 pos36 pos0)
	(card-at card1481 pos36 pos1)
	(card-at card1442 pos36 pos2)
	(card-at card1443 pos36 pos3)
	(card-at card1444 pos36 pos4)
	(card-at card1445 pos36 pos5)
	(card-at card1446 pos36 pos6)
	(card-at card1447 pos36 pos7)
	(card-at card1448 pos36 pos8)
	(card-at card1449 pos36 pos9)
	(card-at card1450 pos36 pos10)
	(card-at card1451 pos36 pos11)
	(card-at card1452 pos36 pos12)
	(card-at card1453 pos36 pos13)
	(card-at card1454 pos36 pos14)
	(card-at card1455 pos36 pos15)
	(card-at card1456 pos36 pos16)
	(card-at card1457 pos36 pos17)
	(card-at card1458 pos36 pos18)
	(card-at card1459 pos36 pos19)
	(card-at card1460 pos36 pos20)
	(card-at card1461 pos36 pos21)
	(card-at card1462 pos36 pos22)
	(card-at card1463 pos36 pos23)
	(card-at card1464 pos36 pos24)
	(card-at card1465 pos36 pos25)
	(card-at card1466 pos36 pos26)
	(card-at card1467 pos36 pos27)
	(card-at card1468 pos36 pos28)
	(card-at card1469 pos36 pos29)
	(card-at card1470 pos36 pos30)
	(card-at card1471 pos36 pos31)
	(card-at card1472 pos36 pos32)
	(card-at card1473 pos36 pos33)
	(card-at card1474 pos36 pos34)
	(card-at card1475 pos36 pos35)
	(card-at card1516 pos36 pos36)
	(card-at card1477 pos36 pos37)
	(card-at card1478 pos36 pos38)
	(card-at card1479 pos36 pos39)
	(card-at card1480 pos37 pos0)
	(card-at card1521 pos37 pos1)
	(card-at card1482 pos37 pos2)
	(card-at card1483 pos37 pos3)
	(card-at card1484 pos37 pos4)
	(card-at card1485 pos37 pos5)
	(card-at card1486 pos37 pos6)
	(card-at card1487 pos37 pos7)
	(card-at card1488 pos37 pos8)
	(card-at card1489 pos37 pos9)
	(card-at card1490 pos37 pos10)
	(card-at card1491 pos37 pos11)
	(card-at card1492 pos37 pos12)
	(card-at card1493 pos37 pos13)
	(card-at card1494 pos37 pos14)
	(card-at card1495 pos37 pos15)
	(card-at card1496 pos37 pos16)
	(card-at card1497 pos37 pos17)
	(card-at card1498 pos37 pos18)
	(card-at card1499 pos37 pos19)
	(card-at card1500 pos37 pos20)
	(card-at card1501 pos37 pos21)
	(card-at card1502 pos37 pos22)
	(card-at card1503 pos37 pos23)
	(card-at card1504 pos37 pos24)
	(card-at card1505 pos37 pos25)
	(card-at card1506 pos37 pos26)
	(card-at card1507 pos37 pos27)
	(card-at card1508 pos37 pos28)
	(card-at card1509 pos37 pos29)
	(card-at card1510 pos37 pos30)
	(card-at card1511 pos37 pos31)
	(card-at card1512 pos37 pos32)
	(card-at card1513 pos37 pos33)
	(card-at card1514 pos37 pos34)
	(card-at card1515 pos37 pos35)
	(card-at card1556 pos37 pos36)
	(card-at card1517 pos37 pos37)
	(card-at card1518 pos37 pos38)
	(card-at card1519 pos37 pos39)
	(card-at card1520 pos38 pos0)
	(card-at card1561 pos38 pos1)
	(card-at card1522 pos38 pos2)
	(card-at card1523 pos38 pos3)
	(card-at card1524 pos38 pos4)
	(card-at card1525 pos38 pos5)
	(card-at card1526 pos38 pos6)
	(card-at card1527 pos38 pos7)
	(card-at card1528 pos38 pos8)
	(card-at card1529 pos38 pos9)
	(card-at card1530 pos38 pos10)
	(card-at card1531 pos38 pos11)
	(card-at card1532 pos38 pos12)
	(card-at card1533 pos38 pos13)
	(card-at card1534 pos38 pos14)
	(card-at card1535 pos38 pos15)
	(card-at card1536 pos38 pos16)
	(card-at card1537 pos38 pos17)
	(card-at card1538 pos38 pos18)
	(card-at card1539 pos38 pos19)
	(card-at card1540 pos38 pos20)
	(card-at card1541 pos38 pos21)
	(card-at card1542 pos38 pos22)
	(card-at card1543 pos38 pos23)
	(card-at card1544 pos38 pos24)
	(card-at card1545 pos38 pos25)
	(card-at card1546 pos38 pos26)
	(card-at card1547 pos38 pos27)
	(card-at card1548 pos38 pos28)
	(card-at card1549 pos38 pos29)
	(card-at card1550 pos38 pos30)
	(card-at card1551 pos38 pos31)
	(card-at card1552 pos38 pos32)
	(card-at card1553 pos38 pos33)
	(card-at card1554 pos38 pos34)
	(card-at card1555 pos38 pos35)
	(card-at card1596 pos38 pos36)
	(card-at card1557 pos38 pos37)
	(card-at card1558 pos38 pos38)
	(card-at card1559 pos38 pos39)
	(card-at card1560 pos39 pos0)
	(card-at card1 pos39 pos1)
	(card-at card1562 pos39 pos2)
	(card-at card1563 pos39 pos3)
	(card-at card1564 pos39 pos4)
	(card-at card1565 pos39 pos5)
	(card-at card1566 pos39 pos6)
	(card-at card1567 pos39 pos7)
	(card-at card1568 pos39 pos8)
	(card-at card1569 pos39 pos9)
	(card-at card1570 pos39 pos10)
	(card-at card1571 pos39 pos11)
	(card-at card1572 pos39 pos12)
	(card-at card1573 pos39 pos13)
	(card-at card1574 pos39 pos14)
	(card-at card1575 pos39 pos15)
	(card-at card1576 pos39 pos16)
	(card-at card1577 pos39 pos17)
	(card-at card1578 pos39 pos18)
	(card-at card1579 pos39 pos19)
	(card-at card1580 pos39 pos20)
	(card-at card1581 pos39 pos21)
	(card-at card1582 pos39 pos22)
	(card-at card1583 pos39 pos23)
	(card-at card1584 pos39 pos24)
	(card-at card1585 pos39 pos25)
	(card-at card1586 pos39 pos26)
	(card-at card1587 pos39 pos27)
	(card-at card1588 pos39 pos28)
	(card-at card1589 pos39 pos29)
	(card-at card1590 pos39 pos30)
	(card-at card1591 pos39 pos31)
	(card-at card1592 pos39 pos32)
	(card-at card1593 pos39 pos33)
	(card-at card1594 pos39 pos34)
	(card-at card1595 pos39 pos35)
	(card-at card36 pos39 pos36)
	(card-at card1597 pos39 pos37)
	(card-at card1598 pos39 pos38)
	(card-at card1599 pos39 pos39)

	(blocked card0 E)

	(blocked card41 S)

	(blocked card2 N)
	(blocked card2 S)

	(blocked card3 N)
	(blocked card3 S)

	(blocked card4 N)
	(blocked card4 S)

	(blocked card5 S)

	(blocked card6 N)
	(blocked card6 S)

	(blocked card7 N)
	(blocked card7 E)

	(blocked card8 N)
	(blocked card8 S)

	(blocked card9 N)
	(blocked card9 W)

	(blocked card10 E)
	(blocked card10 S)

	(blocked card11 E)
	(blocked card11 S)

	(blocked card12 E)
	(blocked card12 S)

	(blocked card13 E)

	(blocked card14 E)
	(blocked card14 W)

	(blocked card15 S)
	(blocked card15 W)

	(blocked card16 E)
	(blocked card16 S)

	(blocked card17 N)

	(blocked card18 E)
	(blocked card18 S)

	(blocked card19 N)
	(blocked card19 W)

	(blocked card20 N)
	(blocked card20 S)

	(blocked card21 N)
	(blocked card21 E)

	(blocked card22 S)
	(blocked card22 W)

	(blocked card23 E)
	(blocked card23 W)

	(blocked card24 E)

	(blocked card25 N)
	(blocked card25 S)

	(blocked card26 E)

	(blocked card27 S)

	(blocked card28 E)
	(blocked card28 W)

	(blocked card29 N)
	(blocked card29 E)

	(blocked card30 E)
	(blocked card30 W)

	(blocked card31 W)

	(blocked card32 S)
	(blocked card32 W)

	(blocked card33 N)
	(blocked card33 W)

	(blocked card34 N)
	(blocked card34 W)

	(blocked card35 N)
	(blocked card35 E)

	(blocked card76 S)
	(blocked card76 W)

	(blocked card37 N)
	(blocked card37 S)

	(blocked card38 S)
	(blocked card38 W)

	(blocked card39 N)
	(blocked card39 E)

	(blocked card40 S)

	(blocked card81 N)
	(blocked card81 W)

	(blocked card42 N)

	(blocked card43 S)
	(blocked card43 W)

	(blocked card44 E)

	(blocked card45 E)
	(blocked card45 S)

	(blocked card46 N)
	(blocked card46 W)

	(blocked card47 W)

	(blocked card48 E)

	(blocked card49 N)
	(blocked card49 S)

	(blocked card50 N)
	(blocked card50 S)

	(blocked card51 E)
	(blocked card51 W)

	(blocked card52 N)

	(blocked card53 E)
	(blocked card53 W)

	(blocked card54 S)
	(blocked card54 W)

	(blocked card55 N)
	(blocked card55 E)

	(blocked card56 N)
	(blocked card56 W)

	(blocked card57 W)

	(blocked card58 E)
	(blocked card58 W)

	(blocked card59 N)
	(blocked card59 S)

	(blocked card60 N)
	(blocked card60 W)

	(blocked card61 E)

	(blocked card62 N)
	(blocked card62 S)

	(blocked card63 E)
	(blocked card63 S)

	(blocked card64 N)
	(blocked card64 E)

	(blocked card65 S)
	(blocked card65 W)

	(blocked card66 N)
	(blocked card66 E)

	(blocked card67 E)
	(blocked card67 S)

	(blocked card68 N)
	(blocked card68 S)

	(blocked card69 S)
	(blocked card69 W)

	(blocked card70 N)
	(blocked card70 E)

	(blocked card71 S)
	(blocked card71 W)

	(blocked card72 N)

	(blocked card73 N)
	(blocked card73 E)

	(blocked card74 E)
	(blocked card74 W)

	(blocked card75 S)
	(blocked card75 W)

	(blocked card116 N)

	(blocked card77 N)
	(blocked card77 E)

	(blocked card78 N)
	(blocked card78 S)


	(blocked card80 N)

	(blocked card121 E)
	(blocked card121 W)

	(blocked card82 N)

	(blocked card83 N)
	(blocked card83 W)

	(blocked card84 N)
	(blocked card84 S)

	(blocked card85 N)
	(blocked card85 S)

	(blocked card86 E)
	(blocked card86 W)

	(blocked card87 E)
	(blocked card87 W)

	(blocked card88 E)
	(blocked card88 W)

	(blocked card89 N)
	(blocked card89 W)

	(blocked card90 S)
	(blocked card90 W)

	(blocked card91 N)
	(blocked card91 E)

	(blocked card92 E)
	(blocked card92 W)

	(blocked card93 S)

	(blocked card94 W)

	(blocked card95 N)
	(blocked card95 W)

	(blocked card96 E)
	(blocked card96 S)

	(blocked card97 S)
	(blocked card97 W)

	(blocked card98 E)

	(blocked card99 S)
	(blocked card99 W)

	(blocked card100 E)
	(blocked card100 W)

	(blocked card101 E)
	(blocked card101 S)


	(blocked card103 W)

	(blocked card104 N)
	(blocked card104 S)

	(blocked card105 S)
	(blocked card105 W)

	(blocked card106 W)

	(blocked card107 N)
	(blocked card107 S)

	(blocked card108 N)

	(blocked card109 E)
	(blocked card109 W)

	(blocked card110 N)
	(blocked card110 S)

	(blocked card111 E)
	(blocked card111 S)

	(blocked card112 E)
	(blocked card112 W)

	(blocked card113 E)
	(blocked card113 S)

	(blocked card114 N)
	(blocked card114 E)

	(blocked card115 E)

	(blocked card156 N)
	(blocked card156 W)

	(blocked card117 E)
	(blocked card117 S)

	(blocked card118 N)
	(blocked card118 S)

	(blocked card119 N)
	(blocked card119 S)

	(blocked card120 N)
	(blocked card120 E)

	(blocked card161 S)

	(blocked card122 W)

	(blocked card123 E)
	(blocked card123 W)

	(blocked card124 N)
	(blocked card124 W)

	(blocked card125 N)
	(blocked card125 W)

	(blocked card126 N)
	(blocked card126 S)

	(blocked card127 N)
	(blocked card127 S)

	(blocked card128 E)
	(blocked card128 S)

	(blocked card129 N)
	(blocked card129 S)

	(blocked card130 W)

	(blocked card131 N)
	(blocked card131 S)

	(blocked card132 S)
	(blocked card132 W)

	(blocked card133 E)

	(blocked card134 E)
	(blocked card134 W)

	(blocked card135 S)
	(blocked card135 W)

	(blocked card136 N)
	(blocked card136 W)

	(blocked card137 W)

	(blocked card138 N)
	(blocked card138 E)

	(blocked card139 E)
	(blocked card139 S)

	(blocked card140 N)
	(blocked card140 E)

	(blocked card141 S)
	(blocked card141 W)

	(blocked card142 N)
	(blocked card142 W)

	(blocked card143 E)
	(blocked card143 S)

	(blocked card144 E)
	(blocked card144 W)

	(blocked card145 N)
	(blocked card145 W)

	(blocked card146 S)
	(blocked card146 W)

	(blocked card147 S)
	(blocked card147 W)

	(blocked card148 N)
	(blocked card148 W)

	(blocked card149 E)
	(blocked card149 S)

	(blocked card150 S)
	(blocked card150 W)

	(blocked card151 N)
	(blocked card151 S)

	(blocked card152 E)
	(blocked card152 W)

	(blocked card153 N)
	(blocked card153 W)

	(blocked card154 N)
	(blocked card154 S)

	(blocked card155 N)

	(blocked card196 E)
	(blocked card196 S)

	(blocked card157 N)
	(blocked card157 S)

	(blocked card158 S)
	(blocked card158 W)

	(blocked card159 N)
	(blocked card159 W)

	(blocked card160 W)

	(blocked card201 N)
	(blocked card201 S)

	(blocked card162 N)
	(blocked card162 E)

	(blocked card163 N)
	(blocked card163 E)

	(blocked card164 N)
	(blocked card164 W)

	(blocked card165 S)

	(blocked card166 E)
	(blocked card166 S)

	(blocked card167 S)

	(blocked card168 E)
	(blocked card168 S)

	(blocked card169 E)
	(blocked card169 W)

	(blocked card170 S)

	(blocked card171 N)
	(blocked card171 W)

	(blocked card172 E)
	(blocked card172 W)

	(blocked card173 N)

	(blocked card174 N)
	(blocked card174 S)

	(blocked card175 N)
	(blocked card175 S)

	(blocked card176 E)
	(blocked card176 W)


	(blocked card178 E)

	(blocked card179 N)
	(blocked card179 E)

	(blocked card180 N)

	(blocked card181 E)

	(blocked card182 E)
	(blocked card182 W)

	(blocked card183 N)
	(blocked card183 S)

	(blocked card184 N)

	(blocked card185 N)
	(blocked card185 W)

	(blocked card186 N)
	(blocked card186 W)

	(blocked card187 S)

	(blocked card188 E)
	(blocked card188 S)

	(blocked card189 E)

	(blocked card190 E)
	(blocked card190 W)

	(blocked card191 E)
	(blocked card191 S)

	(blocked card192 N)
	(blocked card192 S)

	(blocked card193 W)

	(blocked card194 E)
	(blocked card194 S)

	(blocked card195 E)
	(blocked card195 S)

	(blocked card236 N)
	(blocked card236 W)

	(blocked card197 N)

	(blocked card198 E)
	(blocked card198 S)

	(blocked card199 E)
	(blocked card199 S)

	(blocked card200 E)
	(blocked card200 W)

	(blocked card241 N)
	(blocked card241 S)

	(blocked card202 S)
	(blocked card202 W)

	(blocked card203 S)

	(blocked card204 E)
	(blocked card204 S)

	(blocked card205 N)
	(blocked card205 E)

	(blocked card206 S)

	(blocked card207 N)
	(blocked card207 E)

	(blocked card208 E)
	(blocked card208 W)

	(blocked card209 N)
	(blocked card209 S)

	(blocked card210 N)
	(blocked card210 W)

	(blocked card211 S)

	(blocked card212 E)
	(blocked card212 W)

	(blocked card213 E)
	(blocked card213 W)

	(blocked card214 S)
	(blocked card214 W)

	(blocked card215 S)

	(blocked card216 N)
	(blocked card216 W)

	(blocked card217 N)
	(blocked card217 W)

	(blocked card218 N)
	(blocked card218 W)

	(blocked card219 N)
	(blocked card219 S)

	(blocked card220 E)
	(blocked card220 W)

	(blocked card221 N)
	(blocked card221 W)

	(blocked card222 N)
	(blocked card222 E)

	(blocked card223 E)
	(blocked card223 S)

	(blocked card224 E)

	(blocked card225 N)
	(blocked card225 W)

	(blocked card226 N)
	(blocked card226 W)

	(blocked card227 N)
	(blocked card227 E)

	(blocked card228 N)
	(blocked card228 E)

	(blocked card229 W)

	(blocked card230 S)
	(blocked card230 W)

	(blocked card231 S)

	(blocked card232 W)

	(blocked card233 E)


	(blocked card235 E)
	(blocked card235 W)

	(blocked card276 E)
	(blocked card276 S)

	(blocked card237 S)
	(blocked card237 W)

	(blocked card238 N)
	(blocked card238 S)

	(blocked card239 N)
	(blocked card239 W)

	(blocked card240 W)

	(blocked card281 S)
	(blocked card281 W)


	(blocked card243 N)
	(blocked card243 E)

	(blocked card244 N)
	(blocked card244 E)

	(blocked card245 N)

	(blocked card246 E)

	(blocked card247 N)

	(blocked card248 E)

	(blocked card249 N)

	(blocked card250 S)
	(blocked card250 W)

	(blocked card251 N)


	(blocked card253 N)
	(blocked card253 S)

	(blocked card254 N)
	(blocked card254 E)

	(blocked card255 S)
	(blocked card255 W)

	(blocked card256 E)
	(blocked card256 W)

	(blocked card257 E)

	(blocked card258 S)

	(blocked card259 S)
	(blocked card259 W)

	(blocked card260 N)
	(blocked card260 W)

	(blocked card261 S)
	(blocked card261 W)

	(blocked card262 N)
	(blocked card262 S)

	(blocked card263 N)
	(blocked card263 E)

	(blocked card264 W)

	(blocked card265 N)
	(blocked card265 E)

	(blocked card266 S)
	(blocked card266 W)

	(blocked card267 N)
	(blocked card267 S)

	(blocked card268 E)

	(blocked card269 S)

	(blocked card270 N)
	(blocked card270 E)

	(blocked card271 E)
	(blocked card271 S)

	(blocked card272 N)
	(blocked card272 E)

	(blocked card273 E)
	(blocked card273 W)

	(blocked card274 N)

	(blocked card275 S)

	(blocked card316 E)
	(blocked card316 W)

	(blocked card277 N)
	(blocked card277 W)

	(blocked card278 E)
	(blocked card278 S)

	(blocked card279 W)

	(blocked card280 N)
	(blocked card280 W)

	(blocked card321 E)
	(blocked card321 S)

	(blocked card282 S)
	(blocked card282 W)

	(blocked card283 E)
	(blocked card283 W)

	(blocked card284 N)
	(blocked card284 E)

	(blocked card285 N)
	(blocked card285 E)

	(blocked card286 E)
	(blocked card286 W)

	(blocked card287 N)
	(blocked card287 W)

	(blocked card288 S)
	(blocked card288 W)

	(blocked card289 S)
	(blocked card289 W)

	(blocked card290 S)

	(blocked card291 N)
	(blocked card291 S)

	(blocked card292 N)

	(blocked card293 W)

	(blocked card294 N)
	(blocked card294 E)

	(blocked card295 E)

	(blocked card296 N)
	(blocked card296 E)

	(blocked card297 N)
	(blocked card297 S)

	(blocked card298 S)
	(blocked card298 W)

	(blocked card299 E)
	(blocked card299 S)

	(blocked card300 S)
	(blocked card300 W)

	(blocked card301 N)
	(blocked card301 W)

	(blocked card302 S)

	(blocked card303 S)
	(blocked card303 W)

	(blocked card304 E)
	(blocked card304 S)

	(blocked card305 N)
	(blocked card305 S)

	(blocked card306 E)
	(blocked card306 S)


	(blocked card308 N)
	(blocked card308 E)

	(blocked card309 N)
	(blocked card309 E)

	(blocked card310 N)
	(blocked card310 S)

	(blocked card311 N)
	(blocked card311 S)

	(blocked card312 N)
	(blocked card312 S)

	(blocked card313 S)
	(blocked card313 W)

	(blocked card314 S)
	(blocked card314 W)

	(blocked card315 S)

	(blocked card356 N)
	(blocked card356 E)

	(blocked card317 N)
	(blocked card317 W)

	(blocked card318 N)

	(blocked card319 W)

	(blocked card320 N)
	(blocked card320 S)

	(blocked card361 E)

	(blocked card322 N)
	(blocked card322 W)

	(blocked card323 E)
	(blocked card323 S)

	(blocked card324 N)
	(blocked card324 E)

	(blocked card325 S)
	(blocked card325 W)

	(blocked card326 E)

	(blocked card327 E)
	(blocked card327 W)

	(blocked card328 E)
	(blocked card328 W)

	(blocked card329 N)
	(blocked card329 E)

	(blocked card330 E)
	(blocked card330 S)

	(blocked card331 S)
	(blocked card331 W)

	(blocked card332 N)
	(blocked card332 E)

	(blocked card333 S)
	(blocked card333 W)

	(blocked card334 E)
	(blocked card334 W)

	(blocked card335 N)

	(blocked card336 E)
	(blocked card336 S)

	(blocked card337 E)
	(blocked card337 S)

	(blocked card338 N)
	(blocked card338 E)

	(blocked card339 S)

	(blocked card340 N)
	(blocked card340 W)

	(blocked card341 E)
	(blocked card341 W)

	(blocked card342 W)

	(blocked card343 N)

	(blocked card344 S)
	(blocked card344 W)

	(blocked card345 E)
	(blocked card345 W)

	(blocked card346 W)

	(blocked card347 N)
	(blocked card347 W)

	(blocked card348 W)

	(blocked card349 E)
	(blocked card349 S)

	(blocked card350 N)

	(blocked card351 S)
	(blocked card351 W)

	(blocked card352 N)
	(blocked card352 E)

	(blocked card353 E)
	(blocked card353 W)

	(blocked card354 E)
	(blocked card354 W)

	(blocked card355 E)
	(blocked card355 S)

	(blocked card396 E)

	(blocked card357 E)

	(blocked card358 S)
	(blocked card358 W)

	(blocked card359 N)
	(blocked card359 E)

	(blocked card360 E)

	(blocked card401 N)
	(blocked card401 W)

	(blocked card362 E)

	(blocked card363 N)
	(blocked card363 E)

	(blocked card364 E)

	(blocked card365 E)
	(blocked card365 W)

	(blocked card366 S)
	(blocked card366 W)

	(blocked card367 E)
	(blocked card367 W)

	(blocked card368 N)

	(blocked card369 E)
	(blocked card369 S)

	(blocked card370 W)

	(blocked card371 E)
	(blocked card371 W)

	(blocked card372 N)
	(blocked card372 E)

	(blocked card373 E)
	(blocked card373 W)

	(blocked card374 N)
	(blocked card374 W)

	(blocked card375 E)
	(blocked card375 S)

	(blocked card376 S)
	(blocked card376 W)

	(blocked card377 N)
	(blocked card377 W)

	(blocked card378 N)
	(blocked card378 E)

	(blocked card379 E)

	(blocked card380 E)
	(blocked card380 W)

	(blocked card381 S)
	(blocked card381 W)

	(blocked card382 E)
	(blocked card382 S)

	(blocked card383 E)

	(blocked card384 E)
	(blocked card384 S)

	(blocked card385 N)
	(blocked card385 W)


	(blocked card387 N)
	(blocked card387 S)

	(blocked card388 N)

	(blocked card389 S)
	(blocked card389 W)

	(blocked card390 E)
	(blocked card390 S)

	(blocked card391 W)

	(blocked card392 N)
	(blocked card392 E)

	(blocked card393 E)
	(blocked card393 S)

	(blocked card394 N)
	(blocked card394 S)

	(blocked card395 N)
	(blocked card395 E)

	(blocked card436 E)

	(blocked card397 N)
	(blocked card397 S)

	(blocked card398 N)
	(blocked card398 W)

	(blocked card399 E)
	(blocked card399 W)

	(blocked card400 N)
	(blocked card400 E)


	(blocked card402 S)

	(blocked card403 S)

	(blocked card404 S)
	(blocked card404 W)

	(blocked card405 S)
	(blocked card405 W)

	(blocked card406 N)
	(blocked card406 S)

	(blocked card407 E)
	(blocked card407 S)

	(blocked card408 N)
	(blocked card408 E)

	(blocked card409 N)
	(blocked card409 W)

	(blocked card410 N)
	(blocked card410 E)

	(blocked card411 S)

	(blocked card412 E)
	(blocked card412 S)

	(blocked card413 E)
	(blocked card413 W)

	(blocked card414 N)
	(blocked card414 E)

	(blocked card415 W)

	(blocked card416 E)
	(blocked card416 W)

	(blocked card417 N)
	(blocked card417 S)

	(blocked card418 S)

	(blocked card419 E)
	(blocked card419 W)

	(blocked card420 N)
	(blocked card420 S)

	(blocked card421 E)
	(blocked card421 S)

	(blocked card422 W)


	(blocked card424 N)
	(blocked card424 E)

	(blocked card425 E)

	(blocked card426 E)

	(blocked card427 N)
	(blocked card427 S)

	(blocked card428 E)
	(blocked card428 S)

	(blocked card429 N)
	(blocked card429 W)

	(blocked card430 N)
	(blocked card430 S)

	(blocked card431 E)
	(blocked card431 S)

	(blocked card432 E)

	(blocked card433 E)
	(blocked card433 W)

	(blocked card434 W)

	(blocked card435 N)
	(blocked card435 W)

	(blocked card476 N)

	(blocked card437 S)
	(blocked card437 W)

	(blocked card438 N)
	(blocked card438 E)

	(blocked card439 E)
	(blocked card439 S)

	(blocked card440 N)
	(blocked card440 E)

	(blocked card481 N)

	(blocked card442 N)
	(blocked card442 S)

	(blocked card443 N)
	(blocked card443 E)

	(blocked card444 N)
	(blocked card444 S)

	(blocked card445 E)
	(blocked card445 W)

	(blocked card446 E)
	(blocked card446 S)

	(blocked card447 W)

	(blocked card448 N)
	(blocked card448 W)

	(blocked card449 N)

	(blocked card450 E)
	(blocked card450 W)

	(blocked card451 N)
	(blocked card451 S)

	(blocked card452 N)
	(blocked card452 W)

	(blocked card453 S)
	(blocked card453 W)

	(blocked card454 E)
	(blocked card454 S)

	(blocked card455 S)

	(blocked card456 S)
	(blocked card456 W)

	(blocked card457 E)

	(blocked card458 E)
	(blocked card458 S)

	(blocked card459 E)
	(blocked card459 W)

	(blocked card460 E)

	(blocked card461 N)
	(blocked card461 E)

	(blocked card462 N)
	(blocked card462 W)

	(blocked card463 S)
	(blocked card463 W)

	(blocked card464 S)
	(blocked card464 W)

	(blocked card465 N)

	(blocked card466 N)
	(blocked card466 E)

	(blocked card467 E)

	(blocked card468 E)
	(blocked card468 W)

	(blocked card469 N)
	(blocked card469 E)

	(blocked card470 E)
	(blocked card470 S)

	(blocked card471 S)

	(blocked card472 N)
	(blocked card472 E)

	(blocked card473 N)
	(blocked card473 W)

	(blocked card474 E)

	(blocked card475 N)
	(blocked card475 E)

	(blocked card516 N)
	(blocked card516 E)

	(blocked card477 N)
	(blocked card477 S)

	(blocked card478 E)
	(blocked card478 S)

	(blocked card479 N)
	(blocked card479 W)

	(blocked card480 N)
	(blocked card480 W)

	(blocked card521 N)
	(blocked card521 S)

	(blocked card482 N)
	(blocked card482 S)

	(blocked card483 E)
	(blocked card483 S)

	(blocked card484 E)
	(blocked card484 S)

	(blocked card485 E)
	(blocked card485 S)

	(blocked card486 S)
	(blocked card486 W)

	(blocked card487 N)
	(blocked card487 W)

	(blocked card488 N)
	(blocked card488 W)

	(blocked card489 N)
	(blocked card489 S)

	(blocked card490 E)
	(blocked card490 W)

	(blocked card491 N)
	(blocked card491 W)

	(blocked card492 N)

	(blocked card493 N)
	(blocked card493 W)

	(blocked card494 N)

	(blocked card495 N)
	(blocked card495 E)

	(blocked card496 E)
	(blocked card496 W)

	(blocked card497 S)

	(blocked card498 S)
	(blocked card498 W)


	(blocked card500 N)
	(blocked card500 E)

	(blocked card501 E)
	(blocked card501 S)

	(blocked card502 N)

	(blocked card503 S)
	(blocked card503 W)

	(blocked card504 S)
	(blocked card504 W)

	(blocked card505 N)

	(blocked card506 S)
	(blocked card506 W)

	(blocked card507 N)
	(blocked card507 E)

	(blocked card508 N)
	(blocked card508 E)

	(blocked card509 N)
	(blocked card509 W)

	(blocked card510 S)
	(blocked card510 W)

	(blocked card511 N)
	(blocked card511 S)

	(blocked card512 E)
	(blocked card512 W)

	(blocked card513 N)
	(blocked card513 S)

	(blocked card514 E)
	(blocked card514 S)

	(blocked card515 S)
	(blocked card515 W)

	(blocked card556 N)
	(blocked card556 E)

	(blocked card517 N)
	(blocked card517 W)

	(blocked card518 E)
	(blocked card518 W)

	(blocked card519 W)

	(blocked card520 E)
	(blocked card520 W)

	(blocked card561 S)
	(blocked card561 W)

	(blocked card522 E)
	(blocked card522 S)

	(blocked card523 E)
	(blocked card523 W)

	(blocked card524 N)
	(blocked card524 W)

	(blocked card525 S)
	(blocked card525 W)


	(blocked card527 E)
	(blocked card527 S)

	(blocked card528 N)
	(blocked card528 E)

	(blocked card529 N)
	(blocked card529 S)

	(blocked card530 N)
	(blocked card530 S)

	(blocked card531 N)
	(blocked card531 E)

	(blocked card532 N)
	(blocked card532 E)

	(blocked card533 W)

	(blocked card534 N)
	(blocked card534 S)

	(blocked card535 E)
	(blocked card535 S)

	(blocked card536 E)

	(blocked card537 E)
	(blocked card537 W)

	(blocked card538 E)
	(blocked card538 S)

	(blocked card539 N)

	(blocked card540 S)
	(blocked card540 W)

	(blocked card541 N)
	(blocked card541 S)

	(blocked card542 N)
	(blocked card542 S)

	(blocked card543 N)
	(blocked card543 W)

	(blocked card544 N)
	(blocked card544 W)

	(blocked card545 N)
	(blocked card545 W)

	(blocked card546 N)
	(blocked card546 S)

	(blocked card547 E)
	(blocked card547 S)

	(blocked card548 N)
	(blocked card548 S)

	(blocked card549 N)
	(blocked card549 E)

	(blocked card550 E)
	(blocked card550 W)

	(blocked card551 N)
	(blocked card551 S)

	(blocked card552 N)
	(blocked card552 S)

	(blocked card553 S)
	(blocked card553 W)

	(blocked card554 N)
	(blocked card554 E)


	(blocked card596 N)
	(blocked card596 E)

	(blocked card557 N)
	(blocked card557 W)

	(blocked card558 E)
	(blocked card558 S)

	(blocked card559 W)

	(blocked card560 W)

	(blocked card601 E)
	(blocked card601 S)

	(blocked card562 W)

	(blocked card563 N)
	(blocked card563 E)

	(blocked card564 N)
	(blocked card564 E)

	(blocked card565 E)
	(blocked card565 S)

	(blocked card566 N)
	(blocked card566 W)

	(blocked card567 E)
	(blocked card567 S)

	(blocked card568 N)
	(blocked card568 E)

	(blocked card569 N)
	(blocked card569 E)

	(blocked card570 N)
	(blocked card570 S)

	(blocked card571 N)
	(blocked card571 S)

	(blocked card572 S)
	(blocked card572 W)

	(blocked card573 E)

	(blocked card574 E)
	(blocked card574 W)

	(blocked card575 E)
	(blocked card575 W)

	(blocked card576 E)
	(blocked card576 W)

	(blocked card577 S)

	(blocked card578 N)

	(blocked card579 N)
	(blocked card579 E)

	(blocked card580 S)

	(blocked card581 N)
	(blocked card581 E)

	(blocked card582 N)
	(blocked card582 E)

	(blocked card583 N)
	(blocked card583 E)

	(blocked card584 E)
	(blocked card584 S)

	(blocked card585 E)
	(blocked card585 S)

	(blocked card586 N)
	(blocked card586 W)


	(blocked card588 N)
	(blocked card588 W)

	(blocked card589 E)
	(blocked card589 W)

	(blocked card590 N)
	(blocked card590 S)

	(blocked card591 N)
	(blocked card591 E)

	(blocked card592 E)
	(blocked card592 S)

	(blocked card593 E)
	(blocked card593 W)

	(blocked card594 S)

	(blocked card595 N)
	(blocked card595 W)

	(blocked card636 E)
	(blocked card636 W)

	(blocked card597 E)
	(blocked card597 S)

	(blocked card598 N)
	(blocked card598 W)

	(blocked card599 E)
	(blocked card599 S)

	(blocked card600 E)
	(blocked card600 W)

	(blocked card641 E)
	(blocked card641 S)

	(blocked card602 W)

	(blocked card603 E)
	(blocked card603 W)

	(blocked card604 S)
	(blocked card604 W)

	(blocked card605 S)
	(blocked card605 W)

	(blocked card606 S)
	(blocked card606 W)

	(blocked card607 N)
	(blocked card607 E)

	(blocked card608 E)
	(blocked card608 S)

	(blocked card609 N)
	(blocked card609 S)

	(blocked card610 N)
	(blocked card610 W)

	(blocked card611 E)
	(blocked card611 S)

	(blocked card612 W)

	(blocked card613 E)
	(blocked card613 W)

	(blocked card614 E)
	(blocked card614 S)

	(blocked card615 N)
	(blocked card615 S)

	(blocked card616 W)

	(blocked card617 N)
	(blocked card617 E)

	(blocked card618 N)
	(blocked card618 E)

	(blocked card619 E)
	(blocked card619 S)


	(blocked card621 N)
	(blocked card621 S)

	(blocked card622 E)

	(blocked card623 N)
	(blocked card623 S)

	(blocked card624 S)
	(blocked card624 W)

	(blocked card625 N)

	(blocked card626 S)
	(blocked card626 W)

	(blocked card627 E)
	(blocked card627 S)

	(blocked card628 N)
	(blocked card628 E)

	(blocked card629 N)
	(blocked card629 W)

	(blocked card630 W)

	(blocked card631 E)
	(blocked card631 W)

	(blocked card632 N)
	(blocked card632 E)

	(blocked card633 N)
	(blocked card633 W)

	(blocked card634 S)
	(blocked card634 W)

	(blocked card635 N)
	(blocked card635 S)

	(blocked card676 E)
	(blocked card676 W)

	(blocked card637 N)
	(blocked card637 S)

	(blocked card638 S)
	(blocked card638 W)

	(blocked card639 W)

	(blocked card640 E)

	(blocked card681 N)
	(blocked card681 W)

	(blocked card642 E)
	(blocked card642 W)

	(blocked card643 N)
	(blocked card643 E)

	(blocked card644 N)
	(blocked card644 E)

	(blocked card645 N)
	(blocked card645 S)

	(blocked card646 E)
	(blocked card646 S)

	(blocked card647 N)
	(blocked card647 S)

	(blocked card648 E)
	(blocked card648 S)

	(blocked card649 E)
	(blocked card649 W)

	(blocked card650 E)
	(blocked card650 S)

	(blocked card651 N)
	(blocked card651 S)

	(blocked card652 E)

	(blocked card653 E)
	(blocked card653 W)

	(blocked card654 N)
	(blocked card654 S)

	(blocked card655 S)

	(blocked card656 S)
	(blocked card656 W)

	(blocked card657 E)
	(blocked card657 W)

	(blocked card658 N)
	(blocked card658 W)

	(blocked card659 S)
	(blocked card659 W)

	(blocked card660 E)
	(blocked card660 W)

	(blocked card661 S)

	(blocked card662 N)
	(blocked card662 W)

	(blocked card663 S)
	(blocked card663 W)

	(blocked card664 N)
	(blocked card664 W)

	(blocked card665 N)
	(blocked card665 W)

	(blocked card666 N)
	(blocked card666 W)

	(blocked card667 S)

	(blocked card668 N)
	(blocked card668 E)

	(blocked card669 S)
	(blocked card669 W)

	(blocked card670 E)
	(blocked card670 W)

	(blocked card671 E)
	(blocked card671 S)

	(blocked card672 N)
	(blocked card672 E)

	(blocked card673 E)
	(blocked card673 S)

	(blocked card674 N)

	(blocked card675 N)

	(blocked card716 N)
	(blocked card716 S)

	(blocked card677 W)

	(blocked card678 N)
	(blocked card678 S)

	(blocked card679 S)
	(blocked card679 W)

	(blocked card680 E)
	(blocked card680 W)

	(blocked card721 E)
	(blocked card721 S)

	(blocked card682 N)

	(blocked card683 N)
	(blocked card683 E)

	(blocked card684 N)
	(blocked card684 E)

	(blocked card685 E)
	(blocked card685 S)

	(blocked card686 N)

	(blocked card687 N)
	(blocked card687 S)

	(blocked card688 N)

	(blocked card689 N)
	(blocked card689 E)

	(blocked card690 E)
	(blocked card690 S)


	(blocked card692 N)
	(blocked card692 E)

	(blocked card693 N)
	(blocked card693 S)

	(blocked card694 N)
	(blocked card694 E)

	(blocked card695 S)

	(blocked card696 E)
	(blocked card696 W)

	(blocked card697 E)
	(blocked card697 S)

	(blocked card698 S)

	(blocked card699 E)
	(blocked card699 W)

	(blocked card700 N)

	(blocked card701 E)

	(blocked card702 N)
	(blocked card702 W)

	(blocked card703 N)
	(blocked card703 S)

	(blocked card704 S)
	(blocked card704 W)

	(blocked card705 N)
	(blocked card705 W)

	(blocked card706 S)

	(blocked card707 N)
	(blocked card707 S)

	(blocked card708 E)

	(blocked card709 E)
	(blocked card709 S)

	(blocked card710 N)
	(blocked card710 S)

	(blocked card711 E)
	(blocked card711 S)

	(blocked card712 N)
	(blocked card712 S)

	(blocked card713 S)
	(blocked card713 W)

	(blocked card714 E)
	(blocked card714 W)

	(blocked card715 N)
	(blocked card715 W)

	(blocked card756 N)
	(blocked card756 S)

	(blocked card717 N)

	(blocked card718 N)
	(blocked card718 S)

	(blocked card719 N)
	(blocked card719 E)

	(blocked card720 W)

	(blocked card761 S)

	(blocked card722 W)

	(blocked card723 N)
	(blocked card723 E)

	(blocked card724 W)

	(blocked card725 N)
	(blocked card725 S)

	(blocked card726 E)

	(blocked card727 E)
	(blocked card727 S)

	(blocked card728 N)

	(blocked card729 E)
	(blocked card729 W)

	(blocked card730 E)
	(blocked card730 S)

	(blocked card731 N)
	(blocked card731 E)

	(blocked card732 W)

	(blocked card733 N)
	(blocked card733 W)

	(blocked card734 E)
	(blocked card734 S)

	(blocked card735 S)
	(blocked card735 W)

	(blocked card736 E)

	(blocked card737 W)

	(blocked card738 S)

	(blocked card739 S)
	(blocked card739 W)

	(blocked card740 S)
	(blocked card740 W)

	(blocked card741 E)
	(blocked card741 W)

	(blocked card742 E)

	(blocked card743 S)
	(blocked card743 W)

	(blocked card744 W)

	(blocked card745 N)
	(blocked card745 E)

	(blocked card746 S)
	(blocked card746 W)

	(blocked card747 N)
	(blocked card747 S)

	(blocked card748 N)
	(blocked card748 E)

	(blocked card749 N)
	(blocked card749 W)


	(blocked card751 E)
	(blocked card751 S)

	(blocked card752 S)
	(blocked card752 W)

	(blocked card753 E)
	(blocked card753 S)

	(blocked card754 E)
	(blocked card754 W)

	(blocked card755 N)
	(blocked card755 S)

	(blocked card796 N)
	(blocked card796 E)

	(blocked card757 N)
	(blocked card757 S)

	(blocked card758 E)

	(blocked card759 S)
	(blocked card759 W)

	(blocked card760 E)
	(blocked card760 W)

	(blocked card801 E)
	(blocked card801 W)

	(blocked card762 E)
	(blocked card762 S)

	(blocked card763 E)
	(blocked card763 W)

	(blocked card764 S)
	(blocked card764 W)


	(blocked card766 E)
	(blocked card766 W)

	(blocked card767 N)
	(blocked card767 S)

	(blocked card768 N)

	(blocked card769 N)
	(blocked card769 W)

	(blocked card770 N)
	(blocked card770 E)

	(blocked card771 E)

	(blocked card772 S)
	(blocked card772 W)

	(blocked card773 E)

	(blocked card774 E)
	(blocked card774 W)


	(blocked card776 N)
	(blocked card776 W)

	(blocked card777 E)
	(blocked card777 S)

	(blocked card778 E)

	(blocked card779 E)
	(blocked card779 S)

	(blocked card780 S)
	(blocked card780 W)

	(blocked card781 E)

	(blocked card782 N)

	(blocked card783 E)
	(blocked card783 W)

	(blocked card784 N)
	(blocked card784 W)

	(blocked card785 N)
	(blocked card785 S)

	(blocked card786 N)
	(blocked card786 W)

	(blocked card787 N)
	(blocked card787 S)

	(blocked card788 N)
	(blocked card788 S)

	(blocked card789 E)
	(blocked card789 S)

	(blocked card790 N)
	(blocked card790 E)

	(blocked card791 E)
	(blocked card791 S)

	(blocked card792 N)

	(blocked card793 W)

	(blocked card794 N)

	(blocked card795 W)

	(blocked card836 N)
	(blocked card836 E)

	(blocked card797 N)
	(blocked card797 W)

	(blocked card798 N)
	(blocked card798 W)

	(blocked card799 N)
	(blocked card799 W)

	(blocked card800 N)
	(blocked card800 W)

	(blocked card841 E)
	(blocked card841 W)

	(blocked card802 E)

	(blocked card803 S)

	(blocked card804 N)
	(blocked card804 S)

	(blocked card805 S)

	(blocked card806 N)

	(blocked card807 N)
	(blocked card807 E)

	(blocked card808 E)
	(blocked card808 W)


	(blocked card810 N)
	(blocked card810 E)

	(blocked card811 S)

	(blocked card812 S)

	(blocked card813 E)

	(blocked card814 S)
	(blocked card814 W)

	(blocked card815 E)

	(blocked card816 S)
	(blocked card816 W)

	(blocked card817 N)
	(blocked card817 E)

	(blocked card818 E)
	(blocked card818 S)

	(blocked card819 N)
	(blocked card819 W)

	(blocked card820 N)
	(blocked card820 W)

	(blocked card821 N)
	(blocked card821 E)

	(blocked card822 W)

	(blocked card823 W)

	(blocked card824 E)
	(blocked card824 S)

	(blocked card825 E)
	(blocked card825 W)

	(blocked card826 E)
	(blocked card826 S)

	(blocked card827 S)
	(blocked card827 W)

	(blocked card828 W)

	(blocked card829 N)
	(blocked card829 E)

	(blocked card830 N)
	(blocked card830 W)

	(blocked card831 E)

	(blocked card832 N)
	(blocked card832 S)

	(blocked card833 E)
	(blocked card833 S)

	(blocked card834 N)

	(blocked card835 N)

	(blocked card876 N)

	(blocked card837 W)

	(blocked card838 E)
	(blocked card838 S)

	(blocked card839 S)
	(blocked card839 W)

	(blocked card840 N)
	(blocked card840 W)

	(blocked card881 E)
	(blocked card881 S)

	(blocked card842 E)
	(blocked card842 S)

	(blocked card843 S)

	(blocked card844 N)
	(blocked card844 E)

	(blocked card845 N)
	(blocked card845 W)


	(blocked card847 W)

	(blocked card848 E)
	(blocked card848 S)

	(blocked card849 N)
	(blocked card849 E)

	(blocked card850 E)

	(blocked card851 N)

	(blocked card852 E)
	(blocked card852 S)

	(blocked card853 N)

	(blocked card854 N)
	(blocked card854 W)

	(blocked card855 S)
	(blocked card855 W)

	(blocked card856 N)
	(blocked card856 E)

	(blocked card857 N)
	(blocked card857 E)

	(blocked card858 E)
	(blocked card858 W)

	(blocked card859 N)
	(blocked card859 S)

	(blocked card860 N)
	(blocked card860 S)

	(blocked card861 S)

	(blocked card862 S)
	(blocked card862 W)

	(blocked card863 W)

	(blocked card864 S)

	(blocked card865 E)

	(blocked card866 E)

	(blocked card867 N)
	(blocked card867 E)

	(blocked card868 N)
	(blocked card868 E)

	(blocked card869 S)

	(blocked card870 N)
	(blocked card870 E)

	(blocked card871 E)
	(blocked card871 W)

	(blocked card872 E)
	(blocked card872 S)

	(blocked card873 E)

	(blocked card874 S)
	(blocked card874 W)

	(blocked card875 E)
	(blocked card875 S)

	(blocked card916 E)
	(blocked card916 S)

	(blocked card877 N)
	(blocked card877 E)

	(blocked card878 S)
	(blocked card878 W)

	(blocked card879 E)

	(blocked card880 E)
	(blocked card880 S)

	(blocked card921 E)
	(blocked card921 W)

	(blocked card882 E)
	(blocked card882 S)

	(blocked card883 N)
	(blocked card883 S)

	(blocked card884 N)
	(blocked card884 S)

	(blocked card885 N)
	(blocked card885 S)

	(blocked card886 E)
	(blocked card886 W)


	(blocked card888 N)
	(blocked card888 E)

	(blocked card889 N)

	(blocked card890 W)

	(blocked card891 E)
	(blocked card891 W)

	(blocked card892 E)
	(blocked card892 W)

	(blocked card893 N)

	(blocked card894 N)
	(blocked card894 E)

	(blocked card895 N)
	(blocked card895 W)

	(blocked card896 N)
	(blocked card896 S)

	(blocked card897 N)
	(blocked card897 E)

	(blocked card898 E)
	(blocked card898 S)

	(blocked card899 E)
	(blocked card899 S)

	(blocked card900 N)
	(blocked card900 W)

	(blocked card901 W)

	(blocked card902 S)
	(blocked card902 W)

	(blocked card903 E)
	(blocked card903 S)

	(blocked card904 N)

	(blocked card905 E)
	(blocked card905 W)

	(blocked card906 S)

	(blocked card907 E)
	(blocked card907 S)

	(blocked card908 N)

	(blocked card909 S)
	(blocked card909 W)

	(blocked card910 E)
	(blocked card910 W)

	(blocked card911 E)
	(blocked card911 W)

	(blocked card912 E)
	(blocked card912 W)

	(blocked card913 S)
	(blocked card913 W)

	(blocked card914 E)
	(blocked card914 S)

	(blocked card915 S)
	(blocked card915 W)

	(blocked card956 N)

	(blocked card917 E)
	(blocked card917 S)

	(blocked card918 N)
	(blocked card918 E)

	(blocked card919 N)
	(blocked card919 S)

	(blocked card920 S)
	(blocked card920 W)

	(blocked card961 N)
	(blocked card961 S)

	(blocked card922 N)
	(blocked card922 S)

	(blocked card923 S)
	(blocked card923 W)

	(blocked card924 E)
	(blocked card924 S)

	(blocked card925 E)
	(blocked card925 S)

	(blocked card926 W)

	(blocked card927 E)
	(blocked card927 S)

	(blocked card928 S)
	(blocked card928 W)

	(blocked card929 N)
	(blocked card929 E)

	(blocked card930 E)
	(blocked card930 W)

	(blocked card931 W)

	(blocked card932 N)
	(blocked card932 S)

	(blocked card933 W)

	(blocked card934 N)
	(blocked card934 S)

	(blocked card935 E)
	(blocked card935 S)

	(blocked card936 E)
	(blocked card936 S)

	(blocked card937 E)

	(blocked card938 N)
	(blocked card938 S)

	(blocked card939 N)
	(blocked card939 E)

	(blocked card940 E)
	(blocked card940 S)

	(blocked card941 N)
	(blocked card941 S)

	(blocked card942 N)
	(blocked card942 W)

	(blocked card943 E)
	(blocked card943 S)

	(blocked card944 E)

	(blocked card945 S)
	(blocked card945 W)

	(blocked card946 N)
	(blocked card946 W)

	(blocked card947 N)
	(blocked card947 S)

	(blocked card948 N)
	(blocked card948 S)

	(blocked card949 N)
	(blocked card949 W)

	(blocked card950 E)
	(blocked card950 W)

	(blocked card951 E)
	(blocked card951 W)

	(blocked card952 N)
	(blocked card952 W)

	(blocked card953 N)
	(blocked card953 S)

	(blocked card954 N)
	(blocked card954 E)

	(blocked card955 N)
	(blocked card955 S)

	(blocked card996 S)
	(blocked card996 W)

	(blocked card957 N)
	(blocked card957 S)

	(blocked card958 S)
	(blocked card958 W)

	(blocked card959 N)
	(blocked card959 E)

	(blocked card960 N)

	(blocked card1001 N)
	(blocked card1001 W)

	(blocked card962 W)

	(blocked card963 S)
	(blocked card963 W)

	(blocked card964 E)
	(blocked card964 S)

	(blocked card965 S)
	(blocked card965 W)

	(blocked card966 N)
	(blocked card966 E)

	(blocked card967 N)
	(blocked card967 E)

	(blocked card968 E)
	(blocked card968 S)

	(blocked card969 S)
	(blocked card969 W)

	(blocked card970 N)
	(blocked card970 S)

	(blocked card971 N)
	(blocked card971 S)

	(blocked card972 S)

	(blocked card973 E)
	(blocked card973 S)

	(blocked card974 N)
	(blocked card974 E)

	(blocked card975 N)
	(blocked card975 W)

	(blocked card976 E)
	(blocked card976 S)

	(blocked card977 S)

	(blocked card978 N)
	(blocked card978 E)

	(blocked card979 N)
	(blocked card979 E)

	(blocked card980 E)
	(blocked card980 W)

	(blocked card981 S)
	(blocked card981 W)

	(blocked card982 E)
	(blocked card982 S)

	(blocked card983 N)
	(blocked card983 S)

	(blocked card984 S)
	(blocked card984 W)


	(blocked card986 E)

	(blocked card987 E)
	(blocked card987 S)

	(blocked card988 E)
	(blocked card988 S)


	(blocked card990 E)
	(blocked card990 W)

	(blocked card991 N)
	(blocked card991 S)

	(blocked card992 E)
	(blocked card992 W)

	(blocked card993 E)
	(blocked card993 W)

	(blocked card994 N)

	(blocked card995 E)

	(blocked card1036 W)

	(blocked card997 E)
	(blocked card997 S)

	(blocked card998 E)
	(blocked card998 S)

	(blocked card999 N)
	(blocked card999 E)

	(blocked card1000 S)

	(blocked card1041 S)
	(blocked card1041 W)

	(blocked card1002 E)
	(blocked card1002 W)

	(blocked card1003 N)
	(blocked card1003 W)

	(blocked card1004 W)

	(blocked card1005 N)
	(blocked card1005 E)

	(blocked card1006 N)
	(blocked card1006 S)

	(blocked card1007 N)
	(blocked card1007 S)

	(blocked card1008 N)
	(blocked card1008 W)

	(blocked card1009 N)

	(blocked card1010 N)

	(blocked card1011 N)
	(blocked card1011 E)


	(blocked card1013 E)
	(blocked card1013 S)

	(blocked card1014 N)
	(blocked card1014 W)

	(blocked card1015 N)
	(blocked card1015 S)

	(blocked card1016 N)

	(blocked card1017 N)
	(blocked card1017 S)

	(blocked card1018 E)

	(blocked card1019 N)
	(blocked card1019 W)

	(blocked card1020 E)
	(blocked card1020 S)

	(blocked card1021 N)
	(blocked card1021 E)

	(blocked card1022 E)

	(blocked card1023 N)
	(blocked card1023 W)

	(blocked card1024 N)
	(blocked card1024 S)

	(blocked card1025 S)
	(blocked card1025 W)

	(blocked card1026 E)
	(blocked card1026 W)

	(blocked card1027 E)
	(blocked card1027 W)

	(blocked card1028 W)

	(blocked card1029 N)

	(blocked card1030 E)
	(blocked card1030 S)

	(blocked card1031 E)

	(blocked card1032 E)

	(blocked card1033 E)
	(blocked card1033 S)

	(blocked card1034 S)
	(blocked card1034 W)

	(blocked card1035 S)

	(blocked card1076 N)
	(blocked card1076 S)

	(blocked card1037 N)


	(blocked card1039 E)
	(blocked card1039 W)

	(blocked card1040 E)
	(blocked card1040 S)

	(blocked card1081 N)
	(blocked card1081 S)

	(blocked card1042 S)
	(blocked card1042 W)

	(blocked card1043 E)
	(blocked card1043 W)

	(blocked card1044 N)
	(blocked card1044 E)

	(blocked card1045 N)
	(blocked card1045 E)

	(blocked card1046 S)
	(blocked card1046 W)

	(blocked card1047 E)
	(blocked card1047 S)

	(blocked card1048 W)

	(blocked card1049 N)
	(blocked card1049 W)

	(blocked card1050 W)

	(blocked card1051 E)
	(blocked card1051 S)

	(blocked card1052 N)

	(blocked card1053 N)
	(blocked card1053 W)

	(blocked card1054 E)

	(blocked card1055 S)
	(blocked card1055 W)

	(blocked card1056 E)
	(blocked card1056 W)

	(blocked card1057 N)
	(blocked card1057 W)

	(blocked card1058 N)
	(blocked card1058 E)

	(blocked card1059 E)
	(blocked card1059 S)

	(blocked card1060 N)
	(blocked card1060 S)

	(blocked card1061 N)
	(blocked card1061 E)

	(blocked card1062 N)
	(blocked card1062 W)

	(blocked card1063 N)
	(blocked card1063 W)

	(blocked card1064 E)
	(blocked card1064 S)

	(blocked card1065 W)

	(blocked card1066 N)

	(blocked card1067 S)
	(blocked card1067 W)

	(blocked card1068 N)
	(blocked card1068 S)

	(blocked card1069 E)

	(blocked card1070 E)
	(blocked card1070 W)

	(blocked card1071 N)
	(blocked card1071 W)

	(blocked card1072 E)
	(blocked card1072 W)

	(blocked card1073 N)
	(blocked card1073 W)

	(blocked card1074 E)
	(blocked card1074 S)

	(blocked card1075 N)
	(blocked card1075 S)

	(blocked card1116 E)
	(blocked card1116 S)

	(blocked card1077 E)
	(blocked card1077 S)

	(blocked card1078 N)

	(blocked card1079 E)

	(blocked card1080 W)


	(blocked card1082 N)
	(blocked card1082 W)

	(blocked card1083 N)

	(blocked card1084 N)
	(blocked card1084 E)

	(blocked card1085 N)
	(blocked card1085 E)

	(blocked card1086 S)
	(blocked card1086 W)

	(blocked card1087 E)
	(blocked card1087 W)

	(blocked card1088 N)
	(blocked card1088 W)

	(blocked card1089 E)

	(blocked card1090 E)
	(blocked card1090 W)

	(blocked card1091 N)
	(blocked card1091 W)

	(blocked card1092 S)

	(blocked card1093 W)

	(blocked card1094 N)
	(blocked card1094 E)

	(blocked card1095 N)
	(blocked card1095 E)

	(blocked card1096 E)
	(blocked card1096 W)

	(blocked card1097 N)
	(blocked card1097 W)

	(blocked card1098 N)
	(blocked card1098 S)

	(blocked card1099 E)
	(blocked card1099 S)

	(blocked card1100 E)
	(blocked card1100 W)


	(blocked card1102 S)

	(blocked card1103 N)
	(blocked card1103 W)

	(blocked card1104 E)

	(blocked card1105 N)
	(blocked card1105 E)

	(blocked card1106 N)
	(blocked card1106 E)

	(blocked card1107 N)
	(blocked card1107 S)

	(blocked card1108 E)
	(blocked card1108 W)

	(blocked card1109 E)
	(blocked card1109 S)

	(blocked card1110 S)
	(blocked card1110 W)

	(blocked card1111 N)
	(blocked card1111 E)

	(blocked card1112 E)
	(blocked card1112 S)

	(blocked card1113 E)
	(blocked card1113 W)

	(blocked card1114 N)
	(blocked card1114 S)

	(blocked card1115 S)
	(blocked card1115 W)

	(blocked card1156 N)

	(blocked card1117 S)
	(blocked card1117 W)

	(blocked card1118 N)
	(blocked card1118 S)

	(blocked card1119 N)
	(blocked card1119 S)

	(blocked card1120 S)

	(blocked card1161 N)
	(blocked card1161 E)

	(blocked card1122 E)

	(blocked card1123 S)
	(blocked card1123 W)

	(blocked card1124 N)

	(blocked card1125 E)
	(blocked card1125 S)

	(blocked card1126 S)
	(blocked card1126 W)

	(blocked card1127 E)
	(blocked card1127 S)

	(blocked card1128 N)
	(blocked card1128 W)

	(blocked card1129 E)
	(blocked card1129 W)

	(blocked card1130 S)

	(blocked card1131 N)
	(blocked card1131 S)

	(blocked card1132 S)

	(blocked card1133 S)
	(blocked card1133 W)

	(blocked card1134 N)
	(blocked card1134 S)

	(blocked card1135 N)
	(blocked card1135 S)

	(blocked card1136 E)

	(blocked card1137 N)

	(blocked card1138 N)
	(blocked card1138 S)

	(blocked card1139 E)
	(blocked card1139 W)

	(blocked card1140 S)
	(blocked card1140 W)

	(blocked card1141 N)
	(blocked card1141 E)

	(blocked card1142 E)
	(blocked card1142 W)

	(blocked card1143 E)

	(blocked card1144 E)
	(blocked card1144 W)

	(blocked card1145 S)
	(blocked card1145 W)


	(blocked card1147 S)

	(blocked card1148 N)
	(blocked card1148 E)

	(blocked card1149 E)
	(blocked card1149 S)

	(blocked card1150 N)
	(blocked card1150 S)

	(blocked card1151 N)
	(blocked card1151 E)

	(blocked card1152 E)
	(blocked card1152 S)

	(blocked card1153 N)
	(blocked card1153 W)

	(blocked card1154 E)
	(blocked card1154 W)


	(blocked card1196 W)

	(blocked card1157 S)
	(blocked card1157 W)

	(blocked card1158 N)
	(blocked card1158 E)

	(blocked card1159 N)
	(blocked card1159 W)

	(blocked card1160 W)

	(blocked card1201 S)
	(blocked card1201 W)

	(blocked card1162 E)
	(blocked card1162 W)

	(blocked card1163 N)
	(blocked card1163 S)

	(blocked card1164 S)

	(blocked card1165 S)

	(blocked card1166 E)
	(blocked card1166 S)

	(blocked card1167 N)
	(blocked card1167 E)

	(blocked card1168 W)

	(blocked card1169 N)
	(blocked card1169 E)

	(blocked card1170 N)
	(blocked card1170 E)

	(blocked card1171 E)

	(blocked card1172 E)
	(blocked card1172 W)

	(blocked card1173 N)
	(blocked card1173 S)

	(blocked card1174 E)
	(blocked card1174 S)

	(blocked card1175 W)

	(blocked card1176 E)
	(blocked card1176 S)

	(blocked card1177 E)
	(blocked card1177 W)

	(blocked card1178 E)
	(blocked card1178 W)

	(blocked card1179 E)
	(blocked card1179 S)

	(blocked card1180 E)
	(blocked card1180 W)

	(blocked card1181 S)
	(blocked card1181 W)

	(blocked card1182 N)
	(blocked card1182 E)


	(blocked card1184 N)
	(blocked card1184 E)

	(blocked card1185 W)

	(blocked card1186 W)

	(blocked card1187 S)
	(blocked card1187 W)

	(blocked card1188 S)
	(blocked card1188 W)

	(blocked card1189 W)

	(blocked card1190 S)
	(blocked card1190 W)

	(blocked card1191 N)
	(blocked card1191 W)

	(blocked card1192 N)
	(blocked card1192 S)

	(blocked card1193 E)
	(blocked card1193 W)

	(blocked card1194 N)
	(blocked card1194 E)

	(blocked card1195 E)
	(blocked card1195 S)

	(blocked card1236 E)
	(blocked card1236 W)

	(blocked card1197 N)
	(blocked card1197 S)

	(blocked card1198 E)
	(blocked card1198 S)

	(blocked card1199 E)
	(blocked card1199 S)

	(blocked card1200 E)

	(blocked card1241 N)
	(blocked card1241 S)

	(blocked card1202 S)

	(blocked card1203 E)
	(blocked card1203 W)

	(blocked card1204 N)
	(blocked card1204 W)

	(blocked card1205 S)
	(blocked card1205 W)

	(blocked card1206 N)
	(blocked card1206 S)

	(blocked card1207 N)
	(blocked card1207 S)

	(blocked card1208 N)
	(blocked card1208 E)

	(blocked card1209 E)
	(blocked card1209 W)

	(blocked card1210 E)
	(blocked card1210 S)

	(blocked card1211 N)

	(blocked card1212 S)
	(blocked card1212 W)

	(blocked card1213 E)
	(blocked card1213 W)

	(blocked card1214 E)
	(blocked card1214 W)

	(blocked card1215 W)

	(blocked card1216 E)
	(blocked card1216 W)

	(blocked card1217 S)
	(blocked card1217 W)

	(blocked card1218 N)
	(blocked card1218 E)

	(blocked card1219 N)

	(blocked card1220 E)
	(blocked card1220 W)

	(blocked card1221 S)
	(blocked card1221 W)

	(blocked card1222 N)

	(blocked card1223 W)

	(blocked card1224 E)
	(blocked card1224 S)

	(blocked card1225 E)
	(blocked card1225 S)

	(blocked card1226 S)
	(blocked card1226 W)

	(blocked card1227 S)
	(blocked card1227 W)

	(blocked card1228 E)
	(blocked card1228 W)

	(blocked card1229 E)
	(blocked card1229 S)

	(blocked card1230 N)
	(blocked card1230 W)

	(blocked card1231 N)
	(blocked card1231 E)

	(blocked card1232 N)
	(blocked card1232 E)

	(blocked card1233 N)
	(blocked card1233 S)

	(blocked card1234 N)

	(blocked card1235 N)

	(blocked card1276 E)
	(blocked card1276 W)

	(blocked card1237 E)
	(blocked card1237 S)

	(blocked card1238 S)
	(blocked card1238 W)

	(blocked card1239 S)

	(blocked card1240 S)
	(blocked card1240 W)

	(blocked card1281 N)
	(blocked card1281 E)

	(blocked card1242 N)
	(blocked card1242 W)

	(blocked card1243 N)
	(blocked card1243 E)

	(blocked card1244 N)
	(blocked card1244 S)

	(blocked card1245 N)
	(blocked card1245 S)

	(blocked card1246 W)

	(blocked card1247 S)
	(blocked card1247 W)

	(blocked card1248 S)
	(blocked card1248 W)

	(blocked card1249 N)
	(blocked card1249 S)

	(blocked card1250 E)
	(blocked card1250 S)

	(blocked card1251 N)
	(blocked card1251 E)

	(blocked card1252 E)
	(blocked card1252 W)

	(blocked card1253 N)
	(blocked card1253 S)

	(blocked card1254 N)
	(blocked card1254 S)

	(blocked card1255 S)
	(blocked card1255 W)

	(blocked card1256 N)

	(blocked card1257 N)
	(blocked card1257 E)

	(blocked card1258 N)
	(blocked card1258 S)

	(blocked card1259 N)
	(blocked card1259 E)

	(blocked card1260 N)
	(blocked card1260 E)

	(blocked card1261 N)
	(blocked card1261 E)

	(blocked card1262 N)

	(blocked card1263 W)

	(blocked card1264 N)
	(blocked card1264 W)

	(blocked card1265 E)
	(blocked card1265 W)

	(blocked card1266 E)
	(blocked card1266 W)

	(blocked card1267 N)

	(blocked card1268 E)

	(blocked card1269 N)
	(blocked card1269 E)

	(blocked card1270 N)
	(blocked card1270 S)

	(blocked card1271 S)
	(blocked card1271 W)

	(blocked card1272 S)

	(blocked card1273 N)
	(blocked card1273 S)

	(blocked card1274 S)

	(blocked card1275 N)
	(blocked card1275 E)

	(blocked card1316 E)
	(blocked card1316 S)

	(blocked card1277 N)
	(blocked card1277 E)

	(blocked card1278 N)
	(blocked card1278 W)

	(blocked card1279 N)
	(blocked card1279 E)

	(blocked card1280 N)
	(blocked card1280 S)

	(blocked card1321 N)
	(blocked card1321 E)

	(blocked card1282 N)
	(blocked card1282 W)

	(blocked card1283 W)

	(blocked card1284 S)
	(blocked card1284 W)

	(blocked card1285 N)
	(blocked card1285 W)

	(blocked card1286 E)
	(blocked card1286 S)

	(blocked card1287 E)
	(blocked card1287 S)

	(blocked card1288 N)
	(blocked card1288 W)

	(blocked card1289 N)
	(blocked card1289 E)

	(blocked card1290 E)
	(blocked card1290 S)

	(blocked card1291 N)
	(blocked card1291 W)

	(blocked card1292 E)

	(blocked card1293 E)
	(blocked card1293 W)

	(blocked card1294 S)

	(blocked card1295 E)
	(blocked card1295 W)

	(blocked card1296 E)

	(blocked card1297 S)
	(blocked card1297 W)

	(blocked card1298 E)
	(blocked card1298 S)

	(blocked card1299 E)
	(blocked card1299 W)

	(blocked card1300 E)

	(blocked card1301 N)
	(blocked card1301 E)

	(blocked card1302 N)
	(blocked card1302 S)

	(blocked card1303 W)

	(blocked card1304 N)
	(blocked card1304 W)

	(blocked card1305 S)
	(blocked card1305 W)

	(blocked card1306 N)
	(blocked card1306 E)

	(blocked card1307 W)

	(blocked card1308 S)
	(blocked card1308 W)

	(blocked card1309 N)

	(blocked card1310 W)

	(blocked card1311 E)
	(blocked card1311 W)

	(blocked card1312 E)
	(blocked card1312 W)

	(blocked card1313 S)
	(blocked card1313 W)

	(blocked card1314 S)
	(blocked card1314 W)

	(blocked card1315 E)
	(blocked card1315 S)

	(blocked card1356 E)
	(blocked card1356 S)

	(blocked card1317 E)
	(blocked card1317 S)

	(blocked card1318 N)
	(blocked card1318 E)

	(blocked card1319 E)
	(blocked card1319 S)


	(blocked card1361 E)
	(blocked card1361 W)

	(blocked card1322 E)

	(blocked card1323 E)
	(blocked card1323 W)

	(blocked card1324 E)

	(blocked card1325 N)
	(blocked card1325 E)

	(blocked card1326 S)
	(blocked card1326 W)

	(blocked card1327 E)
	(blocked card1327 W)

	(blocked card1328 S)
	(blocked card1328 W)

	(blocked card1329 S)
	(blocked card1329 W)

	(blocked card1330 N)
	(blocked card1330 S)

	(blocked card1331 S)

	(blocked card1332 N)
	(blocked card1332 S)

	(blocked card1333 N)

	(blocked card1334 S)
	(blocked card1334 W)

	(blocked card1335 N)
	(blocked card1335 W)

	(blocked card1336 E)
	(blocked card1336 W)

	(blocked card1337 N)
	(blocked card1337 S)

	(blocked card1338 N)
	(blocked card1338 E)

	(blocked card1339 E)

	(blocked card1340 E)
	(blocked card1340 W)

	(blocked card1341 E)
	(blocked card1341 S)

	(blocked card1342 N)
	(blocked card1342 W)

	(blocked card1343 E)
	(blocked card1343 W)

	(blocked card1344 W)

	(blocked card1345 N)

	(blocked card1346 E)
	(blocked card1346 W)

	(blocked card1347 N)

	(blocked card1348 W)

	(blocked card1349 N)
	(blocked card1349 W)

	(blocked card1350 N)
	(blocked card1350 E)

	(blocked card1351 S)
	(blocked card1351 W)

	(blocked card1352 N)
	(blocked card1352 W)

	(blocked card1353 N)
	(blocked card1353 E)

	(blocked card1354 N)
	(blocked card1354 E)

	(blocked card1355 E)
	(blocked card1355 S)

	(blocked card1396 N)
	(blocked card1396 E)

	(blocked card1357 S)
	(blocked card1357 W)

	(blocked card1358 N)
	(blocked card1358 E)

	(blocked card1359 E)
	(blocked card1359 W)

	(blocked card1360 E)
	(blocked card1360 S)

	(blocked card1401 S)
	(blocked card1401 W)

	(blocked card1362 S)
	(blocked card1362 W)

	(blocked card1363 N)
	(blocked card1363 E)

	(blocked card1364 S)
	(blocked card1364 W)

	(blocked card1365 E)
	(blocked card1365 W)

	(blocked card1366 N)
	(blocked card1366 S)

	(blocked card1367 N)

	(blocked card1368 N)
	(blocked card1368 W)

	(blocked card1369 N)
	(blocked card1369 S)

	(blocked card1370 S)

	(blocked card1371 W)

	(blocked card1372 N)

	(blocked card1373 N)
	(blocked card1373 S)

	(blocked card1374 N)
	(blocked card1374 S)

	(blocked card1375 S)
	(blocked card1375 W)

	(blocked card1376 E)
	(blocked card1376 W)

	(blocked card1377 S)

	(blocked card1378 N)
	(blocked card1378 E)

	(blocked card1379 E)
	(blocked card1379 S)

	(blocked card1380 E)
	(blocked card1380 S)

	(blocked card1381 N)
	(blocked card1381 S)

	(blocked card1382 E)
	(blocked card1382 W)

	(blocked card1383 S)
	(blocked card1383 W)

	(blocked card1384 E)
	(blocked card1384 W)

	(blocked card1385 N)

	(blocked card1386 E)

	(blocked card1387 S)
	(blocked card1387 W)

	(blocked card1388 W)

	(blocked card1389 E)
	(blocked card1389 W)

	(blocked card1390 N)

	(blocked card1391 E)
	(blocked card1391 W)

	(blocked card1392 N)
	(blocked card1392 E)

	(blocked card1393 N)
	(blocked card1393 W)

	(blocked card1394 E)
	(blocked card1394 S)

	(blocked card1395 N)

	(blocked card1436 W)

	(blocked card1397 E)
	(blocked card1397 W)

	(blocked card1398 E)
	(blocked card1398 W)

	(blocked card1399 E)

	(blocked card1400 N)
	(blocked card1400 W)

	(blocked card1441 E)
	(blocked card1441 W)

	(blocked card1402 N)

	(blocked card1403 S)
	(blocked card1403 W)

	(blocked card1404 E)
	(blocked card1404 W)

	(blocked card1405 E)
	(blocked card1405 S)

	(blocked card1406 E)
	(blocked card1406 S)

	(blocked card1407 N)
	(blocked card1407 W)

	(blocked card1408 N)
	(blocked card1408 E)

	(blocked card1409 N)
	(blocked card1409 W)

	(blocked card1410 S)
	(blocked card1410 W)

	(blocked card1411 S)
	(blocked card1411 W)

	(blocked card1412 N)
	(blocked card1412 S)

	(blocked card1413 N)
	(blocked card1413 W)

	(blocked card1414 N)

	(blocked card1415 N)
	(blocked card1415 W)

	(blocked card1416 S)

	(blocked card1417 S)
	(blocked card1417 W)

	(blocked card1418 N)
	(blocked card1418 W)

	(blocked card1419 E)
	(blocked card1419 S)

	(blocked card1420 N)
	(blocked card1420 S)

	(blocked card1421 N)

	(blocked card1422 N)
	(blocked card1422 E)

	(blocked card1423 N)
	(blocked card1423 W)

	(blocked card1424 S)
	(blocked card1424 W)

	(blocked card1425 S)
	(blocked card1425 W)


	(blocked card1427 N)
	(blocked card1427 S)

	(blocked card1428 N)
	(blocked card1428 E)

	(blocked card1429 S)

	(blocked card1430 N)
	(blocked card1430 E)

	(blocked card1431 N)
	(blocked card1431 W)

	(blocked card1432 E)

	(blocked card1433 N)
	(blocked card1433 W)

	(blocked card1434 E)
	(blocked card1434 W)

	(blocked card1435 N)
	(blocked card1435 E)

	(blocked card1476 E)
	(blocked card1476 S)

	(blocked card1437 E)
	(blocked card1437 S)

	(blocked card1438 S)
	(blocked card1438 W)

	(blocked card1439 N)
	(blocked card1439 W)

	(blocked card1440 S)
	(blocked card1440 W)

	(blocked card1481 W)


	(blocked card1443 S)
	(blocked card1443 W)

	(blocked card1444 S)
	(blocked card1444 W)

	(blocked card1445 W)

	(blocked card1446 N)
	(blocked card1446 E)

	(blocked card1447 E)


	(blocked card1449 E)
	(blocked card1449 S)

	(blocked card1450 N)
	(blocked card1450 W)

	(blocked card1451 E)

	(blocked card1452 N)
	(blocked card1452 E)

	(blocked card1453 N)
	(blocked card1453 W)

	(blocked card1454 E)
	(blocked card1454 W)

	(blocked card1455 E)
	(blocked card1455 W)

	(blocked card1456 N)
	(blocked card1456 E)

	(blocked card1457 N)
	(blocked card1457 E)

	(blocked card1458 E)

	(blocked card1459 N)
	(blocked card1459 E)

	(blocked card1460 N)
	(blocked card1460 W)

	(blocked card1461 E)
	(blocked card1461 W)

	(blocked card1462 W)

	(blocked card1463 N)
	(blocked card1463 E)

	(blocked card1464 S)

	(blocked card1465 N)

	(blocked card1466 W)

	(blocked card1467 E)
	(blocked card1467 W)

	(blocked card1468 N)
	(blocked card1468 W)

	(blocked card1469 E)
	(blocked card1469 S)

	(blocked card1470 N)
	(blocked card1470 W)

	(blocked card1471 N)

	(blocked card1472 E)
	(blocked card1472 S)

	(blocked card1473 N)
	(blocked card1473 S)

	(blocked card1474 N)

	(blocked card1475 N)
	(blocked card1475 E)

	(blocked card1516 N)

	(blocked card1477 E)

	(blocked card1478 E)
	(blocked card1478 S)

	(blocked card1479 N)
	(blocked card1479 S)

	(blocked card1480 N)
	(blocked card1480 W)

	(blocked card1521 E)
	(blocked card1521 S)

	(blocked card1482 N)
	(blocked card1482 S)

	(blocked card1483 E)
	(blocked card1483 W)

	(blocked card1484 N)
	(blocked card1484 S)

	(blocked card1485 N)
	(blocked card1485 E)

	(blocked card1486 E)
	(blocked card1486 S)

	(blocked card1487 N)
	(blocked card1487 E)

	(blocked card1488 E)
	(blocked card1488 S)

	(blocked card1489 N)
	(blocked card1489 W)

	(blocked card1490 E)

	(blocked card1491 E)
	(blocked card1491 S)

	(blocked card1492 E)
	(blocked card1492 S)

	(blocked card1493 N)
	(blocked card1493 W)


	(blocked card1495 E)


	(blocked card1497 N)

	(blocked card1498 N)
	(blocked card1498 S)

	(blocked card1499 E)
	(blocked card1499 S)

	(blocked card1500 N)

	(blocked card1501 E)
	(blocked card1501 W)

	(blocked card1502 E)
	(blocked card1502 S)

	(blocked card1503 E)
	(blocked card1503 W)



	(blocked card1506 E)
	(blocked card1506 W)

	(blocked card1507 S)

	(blocked card1508 S)
	(blocked card1508 W)

	(blocked card1509 S)

	(blocked card1510 S)
	(blocked card1510 W)

	(blocked card1511 E)
	(blocked card1511 W)

	(blocked card1512 E)
	(blocked card1512 W)

	(blocked card1513 W)

	(blocked card1514 S)
	(blocked card1514 W)

	(blocked card1515 N)
	(blocked card1515 W)

	(blocked card1556 N)
	(blocked card1556 E)

	(blocked card1517 N)
	(blocked card1517 S)

	(blocked card1518 N)

	(blocked card1519 W)

	(blocked card1520 S)
	(blocked card1520 W)

	(blocked card1561 N)
	(blocked card1561 E)

	(blocked card1522 S)
	(blocked card1522 W)

	(blocked card1523 E)
	(blocked card1523 W)

	(blocked card1524 S)
	(blocked card1524 W)

	(blocked card1525 N)
	(blocked card1525 W)

	(blocked card1526 S)
	(blocked card1526 W)

	(blocked card1527 N)
	(blocked card1527 E)

	(blocked card1528 S)
	(blocked card1528 W)

	(blocked card1529 N)
	(blocked card1529 E)

	(blocked card1530 E)

	(blocked card1531 S)

	(blocked card1532 S)
	(blocked card1532 W)


	(blocked card1534 N)
	(blocked card1534 S)

	(blocked card1535 S)

	(blocked card1536 S)

	(blocked card1537 N)
	(blocked card1537 S)

	(blocked card1538 N)
	(blocked card1538 S)


	(blocked card1540 N)
	(blocked card1540 E)

	(blocked card1541 E)
	(blocked card1541 W)

	(blocked card1542 E)
	(blocked card1542 S)

	(blocked card1543 W)

	(blocked card1544 S)
	(blocked card1544 W)

	(blocked card1545 E)
	(blocked card1545 S)


	(blocked card1547 N)
	(blocked card1547 S)

	(blocked card1548 N)
	(blocked card1548 W)

	(blocked card1549 N)
	(blocked card1549 W)

	(blocked card1550 E)

	(blocked card1551 E)
	(blocked card1551 S)


	(blocked card1553 N)
	(blocked card1553 W)

	(blocked card1554 N)
	(blocked card1554 S)

	(blocked card1555 E)
	(blocked card1555 S)

	(blocked card1596 E)

	(blocked card1557 E)
	(blocked card1557 S)

	(blocked card1558 S)
	(blocked card1558 W)

	(blocked card1559 E)

	(blocked card1560 S)
	(blocked card1560 W)

	(blocked card1 N)
	(blocked card1 W)

	(blocked card1562 E)
	(blocked card1562 S)

	(blocked card1563 E)

	(blocked card1564 E)
	(blocked card1564 W)

	(blocked card1565 S)
	(blocked card1565 W)

	(blocked card1566 W)

	(blocked card1567 E)
	(blocked card1567 W)

	(blocked card1568 S)
	(blocked card1568 W)

	(blocked card1569 W)

	(blocked card1570 N)
	(blocked card1570 W)

	(blocked card1571 E)
	(blocked card1571 S)

	(blocked card1572 E)
	(blocked card1572 W)

	(blocked card1573 N)

	(blocked card1574 E)
	(blocked card1574 W)

	(blocked card1575 N)
	(blocked card1575 S)

	(blocked card1576 S)

	(blocked card1577 N)
	(blocked card1577 W)

	(blocked card1578 N)
	(blocked card1578 W)

	(blocked card1579 W)

	(blocked card1580 S)
	(blocked card1580 W)

	(blocked card1581 E)
	(blocked card1581 S)

	(blocked card1582 N)
	(blocked card1582 S)

	(blocked card1583 S)
	(blocked card1583 W)

	(blocked card1584 S)

	(blocked card1585 N)
	(blocked card1585 S)

	(blocked card1586 N)
	(blocked card1586 S)

	(blocked card1587 N)
	(blocked card1587 S)

	(blocked card1588 N)


	(blocked card1590 S)

	(blocked card1591 N)
	(blocked card1591 S)

	(blocked card1592 N)
	(blocked card1592 S)

	(blocked card1593 E)

	(blocked card1594 N)
	(blocked card1594 S)

	(blocked card1595 E)
	(blocked card1595 W)

	(blocked card36 N)
	(blocked card36 E)

	(blocked card1597 S)

	(blocked card1598 S)
	(blocked card1598 W)

	(blocked card1599 E)
	(blocked card1599 W)


	(robot-at card0)

	(= (total-cost) 0)
	(= (move-robot-cost) 1)
	(= (move-card) 1)
)
(:goal
	(and
		(left)
	)
)
	(:metric minimize (total-cost))
)
