EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Micro SD card adapter"
Date "2016-02-26"
Rev "1"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L usd-plug:usd-plug J1
U 1 1 561E06AA
P 5650 3000
F 0 "J1" H 5850 3250 60  0000 C CNN
F 1 "usd-plug" H 5800 2350 60  0000 C CNN
F 2 "connectors:usd" H 5650 3000 60  0001 C CNN
F 3 "" H 5650 3000 60  0000 C CNN
	1    5650 3000
	-1   0    0    -1  
$EndComp
Text Label 5850 2850 0    50   ~ 0
D2
Text Label 5850 2950 0    50   ~ 0
D3
Text Label 5850 3050 0    50   ~ 0
CMD
Text Label 5850 3150 0    50   ~ 0
VDD
Text Label 5850 3250 0    50   ~ 0
CLK
Text Label 5850 3350 0    50   ~ 0
VSS
Text Label 5850 3450 0    50   ~ 0
D0
Text Label 5850 3550 0    50   ~ 0
D1
Text Label 6550 3000 0    50   ~ 0
VDD
Text Label 6550 3400 0    50   ~ 0
VSS
Wire Wire Line
	6550 3400 6700 3400
Wire Wire Line
	6700 3000 6550 3000
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 61697345
P 6900 3200
F 0 "J2" H 6950 3617 50  0000 C CNN
F 1 "AVRISP" H 6950 3526 50  0000 C CNN
F 2 "connectors:Side_2x5_Connector_SMD" H 6900 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3300
NoConn ~ 6700 3200
NoConn ~ 6700 3100
Text Label 7200 3300 0    50   ~ 0
CLK
$Comp
L Connector:TestPoint TP1
U 1 1 61699AE4
P 6750 3750
F 0 "TP1" V 6555 3822 50  0000 C CNN
F 1 "CS/D3" V 6646 3822 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6950 3750 50  0001 C CNN
F 3 "~" H 6950 3750 50  0001 C CNN
	1    6750 3750
	0    -1   1    0   
$EndComp
Text Label 6750 3750 0    50   ~ 0
D3
$Comp
L Connector:TestPoint TP2
U 1 1 6169A74D
P 7150 3750
F 0 "TP2" V 6955 3822 50  0000 C CNN
F 1 "D2" V 7046 3822 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7350 3750 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7150 3750
	0    -1   1    0   
$EndComp
Text Label 7150 3750 0    50   ~ 0
D2
Text Label 7200 3200 0    50   ~ 0
D1
Text Label 7200 3400 0    50   ~ 0
D0
Text Label 7200 3000 0    50   ~ 0
CMD
$EndSCHEMATC
