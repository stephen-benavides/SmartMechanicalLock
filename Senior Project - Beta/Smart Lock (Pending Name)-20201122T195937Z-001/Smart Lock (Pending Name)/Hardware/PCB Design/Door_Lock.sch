EESchema Schematic File Version 4
LIBS:Door_Lock-cache
EELAYER 26 0
EELAYER END
$Descr User 5906 6299
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L My_Lib:TIP102 Q1
U 1 1 5C93E8B4
P 4950 3475
F 0 "Q1" H 5107 3521 50  0000 L CNN
F 1 "TIP102" H 5107 3430 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4650 3425 50  0001 C CNN
F 3 "" H 4650 3425 50  0001 C CNN
	1    4950 3475
	1    0    0    -1  
$EndComp
$Comp
L My_Lib:BoostConverter U2
U 1 1 5C93EF63
P 3075 3125
F 0 "U2" H 3100 3400 50  0000 C CNN
F 1 "BoostConverter" H 3100 3309 50  0000 C CNN
F 2 "Boost:BoostConverter" H 3075 3125 50  0001 C CNN
F 3 "" H 3075 3125 50  0001 C CNN
	1    3075 3125
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4004 D1
U 1 1 5C93F11B
P 4000 2650
F 0 "D1" H 4000 2866 50  0000 C CNN
F 1 "1N4004" H 4000 2775 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_AnodeUp" H 4000 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4000 2650 50  0001 C CNN
	1    4000 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J3
U 1 1 5C93F62B
P 3950 3075
F 0 "J3" H 4000 3292 50  0000 C CNN
F 1 "JST-PH" H 4000 3201 50  0000 C CNN
F 2 "Boost:JST-PH" H 3950 3075 50  0001 C CNN
F 3 "~" H 3950 3075 50  0001 C CNN
	1    3950 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5C9459E0
P 4400 3475
F 0 "R1" V 4195 3475 50  0000 C CNN
F 1 "1K" V 4286 3475 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4440 3465 50  0001 C CNN
F 3 "~" H 4400 3475 50  0001 C CNN
	1    4400 3475
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3475 4700 3475
Text GLabel 2300 1600 0    50   BiDi ~ 0
IO17
Text GLabel 4000 3475 0    50   Input ~ 0
IO17
Wire Wire Line
	4000 3475 4250 3475
Wire Wire Line
	5000 3075 5000 3275
Wire Wire Line
	3625 3175 3475 3175
Wire Wire Line
	5000 3675 5000 3775
Wire Wire Line
	5000 3775 3625 3775
$Comp
L power:GND #PWR02
U 1 1 5C95DFC7
P 3625 3975
F 0 "#PWR02" H 3625 3725 50  0001 C CNN
F 1 "GND" H 3630 3802 50  0000 C CNN
F 2 "" H 3625 3975 50  0001 C CNN
F 3 "" H 3625 3975 50  0001 C CNN
	1    3625 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 3175 3625 3775
Connection ~ 3625 3775
Wire Wire Line
	3625 3775 3625 3975
$Comp
L power:GND #PWR03
U 1 1 5C96150F
P 1375 4200
F 0 "#PWR03" H 1375 3950 50  0001 C CNN
F 1 "GND" H 1380 4027 50  0000 C CNN
F 2 "" H 1375 4200 50  0001 C CNN
F 3 "" H 1375 4200 50  0001 C CNN
	1    1375 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 4200 1375 4100
Wire Wire Line
	1375 3575 1525 3575
Wire Wire Line
	1525 3775 1375 3775
Connection ~ 1375 3775
Wire Wire Line
	1375 3775 1375 3575
Wire Wire Line
	1525 3975 1375 3975
Connection ~ 1375 3975
Wire Wire Line
	1375 3975 1375 3775
Wire Wire Line
	2225 3575 2350 3575
Wire Wire Line
	2350 3575 2350 3775
Wire Wire Line
	2350 4100 1375 4100
Connection ~ 1375 4100
Wire Wire Line
	1375 4100 1375 3975
Wire Wire Line
	2225 3975 2350 3975
Connection ~ 2350 3975
Wire Wire Line
	2350 3975 2350 4100
Wire Wire Line
	2225 3775 2350 3775
Connection ~ 2350 3775
Wire Wire Line
	2350 3775 2350 3975
NoConn ~ 2225 3875
NoConn ~ 2225 3675
NoConn ~ 1525 3675
NoConn ~ 1525 3875
Wire Wire Line
	2225 3475 2325 3475
Wire Wire Line
	2325 3475 2325 3175
Wire Wire Line
	2725 3175 2575 3175
Wire Wire Line
	2575 3175 2575 3575
Wire Wire Line
	2575 3575 2425 3575
Connection ~ 2350 3575
NoConn ~ 2125 2575
NoConn ~ 2125 2875
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C982C4A
P 2650 4100
F 0 "#FLG0101" H 2650 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 4274 50  0000 C CNN
F 2 "" H 2650 4100 50  0001 C CNN
F 3 "~" H 2650 4100 50  0001 C CNN
	1    2650 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RCGB D2
U 1 1 5C98A1C5
P 1825 1900
F 0 "D2" H 1825 2350 50  0000 C CNN
F 1 "LED_RCGB" H 1825 2275 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB_Staggered_Pins" H 1825 1850 50  0001 C CNN
F 3 "~" H 1825 1850 50  0001 C CNN
	1    1825 1900
	1    0    0    -1  
$EndComp
$Comp
L My_Lib:Battery B1
U 1 1 5C93E91C
P 1875 3725
F 0 "B1" H 1875 4200 50  0000 C CNN
F 1 "Battery" H 1875 4100 50  0000 C CNN
F 2 "Boost:Battery_Supply" H 1475 3875 50  0001 C CNN
F 3 "" H 1475 3875 50  0001 C CNN
	1    1875 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 2975 1325 2975
Wire Wire Line
	1225 2675 1325 2675
$Comp
L My_Lib:SPDT SW1
U 1 1 5C95D142
P 1675 2825
F 0 "SW1" H 1725 3300 50  0000 C CNN
F 1 "SPDT" H 1725 3209 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 1675 3075 50  0001 C CNN
F 3 "" H 1675 3075 50  0001 C CNN
	1    1675 2825
	1    0    0    -1  
$EndComp
Connection ~ 2350 4100
Wire Wire Line
	2650 4100 2350 4100
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5C92D467
P 3800 1700
F 0 "J2" H 3750 2200 50  0000 L CNN
F 1 "Keypad" H 3625 2125 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3800 1700 50  0001 C CNN
F 3 "~" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	2725 3075 2125 3075
Wire Wire Line
	1225 3175 1225 2675
Wire Wire Line
	1225 3175 2325 3175
Wire Wire Line
	1125 3475 1125 2975
Wire Wire Line
	1125 3475 1525 3475
$Comp
L Device:R_US R2
U 1 1 5C9514AA
P 1250 1900
F 0 "R2" V 1050 1900 50  0000 C CNN
F 1 "1K" V 1136 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1290 1890 50  0001 C CNN
F 3 "~" H 1250 1900 50  0001 C CNN
	1    1250 1900
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C9533E5
P 950 2050
F 0 "#PWR04" H 950 1800 50  0001 C CNN
F 1 "GND" H 955 1877 50  0000 C CNN
F 2 "" H 950 2050 50  0001 C CNN
F 3 "" H 950 2050 50  0001 C CNN
	1    950  2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1025 875  950  875 
Wire Wire Line
	1025 1475 950  1475
Wire Wire Line
	950  875  950  1475
Connection ~ 950  1475
Text Notes 1550 5550 0    71   ~ 0
Door Lock
Text Notes 2325 5675 0    50   ~ 0
3/20/2019
Text Notes 4800 5675 0    50   ~ 0
1
Text Notes 1225 5125 0    118  ~ 0
Diego Ramos
$Comp
L My_Lib:ESP32R U1
U 1 1 5C93E785
P 2775 650
F 0 "U1" H 2950 765 50  0000 C CNN
F 1 "ESP32R" H 2950 674 50  0000 C CNN
F 2 "Boost:ESP32_Diego" H 2775 650 50  0001 C CNN
F 3 "" H 2775 650 50  0001 C CNN
	1    2775 650 
	1    0    0    -1  
$EndComp
NoConn ~ 2475 900 
NoConn ~ 2475 1000
NoConn ~ 2475 1100
NoConn ~ 2475 1300
NoConn ~ 2475 2500
NoConn ~ 2475 2400
NoConn ~ 2475 2300
NoConn ~ 3425 2500
NoConn ~ 3425 2400
NoConn ~ 3425 2300
NoConn ~ 3425 2200
NoConn ~ 3425 2100
NoConn ~ 3425 1100
NoConn ~ 3425 1000
NoConn ~ 3425 900 
NoConn ~ 3425 800 
Wire Wire Line
	3425 2000 3600 2000
Wire Wire Line
	3425 1900 3600 1900
Wire Wire Line
	3425 1800 3600 1800
Wire Wire Line
	3425 1700 3600 1700
Wire Wire Line
	3425 1600 3600 1600
Wire Wire Line
	3425 1500 3600 1500
Wire Wire Line
	3425 1400 3600 1400
Wire Wire Line
	3600 1300 3575 1300
Wire Wire Line
	3575 1300 3575 1200
Wire Wire Line
	3575 1200 3425 1200
$Comp
L power:GND #PWR01
U 1 1 5C94537D
P 4050 1200
F 0 "#PWR01" H 4050 950 50  0001 C CNN
F 1 "GND" H 4055 1027 50  0000 C CNN
F 2 "" H 4050 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1200 4050 1150
Wire Wire Line
	4050 1150 3475 1150
Wire Wire Line
	3475 1150 3475 1300
Wire Wire Line
	3475 1300 3425 1300
Wire Wire Line
	2475 2600 2425 2600
Wire Wire Line
	2425 2600 2425 3575
Connection ~ 2425 3575
Wire Wire Line
	2425 3575 2350 3575
Wire Wire Line
	2475 2000 2425 2000
Wire Wire Line
	2425 2000 2425 2600
Connection ~ 2425 2600
Wire Wire Line
	2475 1600 2300 1600
Wire Wire Line
	2475 1700 2025 1700
Wire Wire Line
	2475 1800 2150 1800
Wire Wire Line
	2150 1800 2150 1900
Wire Wire Line
	2150 1900 2025 1900
Wire Wire Line
	2475 1900 2225 1900
Wire Wire Line
	2225 1900 2225 2100
Wire Wire Line
	2225 2100 2025 2100
Wire Wire Line
	2475 1500 2325 1500
Wire Wire Line
	2325 1500 2325 1350
Wire Wire Line
	1400 1900 1625 1900
Wire Wire Line
	1100 1900 950  1900
Wire Wire Line
	950  1475 950  1900
Connection ~ 950  1900
Wire Wire Line
	950  1900 950  2050
Wire Wire Line
	2325 1350 1425 1350
Wire Wire Line
	1425 1350 1425 1475
Wire Wire Line
	2125 2775 3475 2775
Wire Wire Line
	3475 2775 3475 2600
Wire Wire Line
	3475 2600 3425 2600
NoConn ~ 2475 800 
NoConn ~ 2475 1200
NoConn ~ 2475 2100
NoConn ~ 2475 2200
Wire Wire Line
	2475 1400 2375 1400
Wire Wire Line
	2375 1400 2375 875 
Wire Wire Line
	2375 875  1425 875 
Wire Wire Line
	3475 3075 3625 3075
Wire Wire Line
	4250 3075 4400 3075
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C951B30
P 4700 2775
F 0 "J1" H 4675 2975 50  0000 L CNN
F 1 "Backup" H 4575 2875 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 2775 50  0001 C CNN
F 3 "~" H 4700 2775 50  0001 C CNN
	1    4700 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2650 3625 2650
Wire Wire Line
	3625 2650 3625 2775
Connection ~ 3625 3075
Wire Wire Line
	3625 3075 3750 3075
Wire Wire Line
	4150 2650 4400 2650
Wire Wire Line
	4400 2650 4400 2875
Connection ~ 4400 3075
Wire Wire Line
	4400 3075 5000 3075
Wire Wire Line
	4500 2875 4400 2875
Connection ~ 4400 2875
Wire Wire Line
	4400 2875 4400 3075
Wire Wire Line
	4500 2775 3625 2775
Connection ~ 3625 2775
Wire Wire Line
	3625 2775 3625 3075
$Comp
L Switch:SW_Push SW2
U 1 1 5C95276E
P 1225 875
F 0 "SW2" H 1225 1160 50  0000 C CNN
F 1 "SW_Push" H 1225 1069 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1225 1075 50  0001 C CNN
F 3 "" H 1225 1075 50  0001 C CNN
	1    1225 875 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5C9527D4
P 1225 1475
F 0 "SW3" H 1225 1760 50  0000 C CNN
F 1 "SW_Push" H 1225 1669 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1225 1675 50  0001 C CNN
F 3 "" H 1225 1675 50  0001 C CNN
	1    1225 1475
	1    0    0    -1  
$EndComp
$EndSCHEMATC
