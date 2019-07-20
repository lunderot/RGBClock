EESchema Schematic File Version 4
LIBS:RGB-clock-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
L Device:R R4
U 1 1 58A755D9
P 7000 3500
F 0 "R4" V 7080 3500 50  0000 C CNN
F 1 "10k" V 7000 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6930 3500 50  0001 C CNN
F 3 "" H 7000 3500 50  0000 C CNN
	1    7000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 58A7564E
P 6750 4000
F 0 "R3" V 6830 4000 50  0000 C CNN
F 1 "10k" V 6750 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0000 C CNN
	1    6750 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 58A756C8
P 4500 3350
F 0 "R2" V 4580 3350 50  0000 C CNN
F 1 "10k" V 4500 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3350 50  0001 C CNN
F 3 "" H 4500 3350 50  0000 C CNN
	1    4500 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 58A75703
P 4500 3150
F 0 "R1" V 4580 3150 50  0000 C CNN
F 1 "10k" V 4500 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3150 50  0001 C CNN
F 3 "" H 4500 3150 50  0000 C CNN
	1    4500 3150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 58A75922
P 4300 2650
F 0 "#PWR06" H 4300 2500 50  0001 C CNN
F 1 "+3.3V" H 4300 2790 50  0000 C CNN
F 2 "" H 4300 2650 50  0000 C CNN
F 3 "" H 4300 2650 50  0000 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 58A75940
P 7000 4750
F 0 "#PWR09" H 7000 4500 50  0001 C CNN
F 1 "GND" H 7000 4600 50  0000 C CNN
F 2 "" H 7000 4750 50  0000 C CNN
F 3 "" H 7000 4750 50  0000 C CNN
	1    7000 4750
	1    0    0    -1  
$EndComp
$Comp
L RGB-clock-rescue:CONN_01X06 P1
U 1 1 58A759A4
P 7750 3300
F 0 "P1" H 7750 3650 50  0000 C CNN
F 1 "FTDI" V 7850 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 7750 3300 50  0001 C CNN
F 3 "" H 7750 3300 50  0000 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 58A75D2B
P 7000 2650
F 0 "#PWR08" H 7000 2500 50  0001 C CNN
F 1 "+3.3V" H 7000 2790 50  0000 C CNN
F 2 "" H 7000 2650 50  0000 C CNN
F 3 "" H 7000 2650 50  0000 C CNN
	1    7000 2650
	1    0    0    -1  
$EndComp
$Comp
L RGB-clock-rescue:SW_PUSH SW2
U 1 1 58A76453
P 7000 4150
F 0 "SW2" H 7150 4260 50  0000 C CNN
F 1 "Flash" H 7000 4070 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_REED_CT05-XXXX-G1" H 7000 4150 50  0001 C CNN
F 3 "" H 7000 4150 50  0000 C CNN
	1    7000 4150
	0    1    1    0   
$EndComp
$Comp
L RGB-clock-rescue:SW_PUSH SW1
U 1 1 58A765D4
P 4750 4300
F 0 "SW1" H 4900 4410 50  0000 C CNN
F 1 "Reset" H 4750 4220 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_REED_CT05-XXXX-G1" H 4750 4300 50  0001 C CNN
F 3 "" H 4750 4300 50  0000 C CNN
	1    4750 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3150 6600 3150
Wire Wire Line
	7550 3250 6600 3250
Wire Wire Line
	4300 2650 4300 2750
Wire Wire Line
	4300 3350 4350 3350
Wire Wire Line
	4300 3150 4350 3150
Connection ~ 4300 3150
Wire Wire Line
	4650 3150 4750 3150
Wire Wire Line
	4650 3350 4800 3350
Connection ~ 4300 3350
Wire Wire Line
	4750 4000 4750 3150
Connection ~ 4750 3150
Wire Wire Line
	6600 3750 6750 3750
Wire Wire Line
	6750 3750 6750 3850
Wire Wire Line
	6600 4650 6750 4650
Wire Wire Line
	7000 4450 7000 4650
Wire Wire Line
	6750 4650 6750 4150
Connection ~ 6750 4650
$Comp
L power:GND #PWR07
U 1 1 58A77741
P 4750 4750
F 0 "#PWR07" H 4750 4500 50  0001 C CNN
F 1 "GND" H 4750 4600 50  0000 C CNN
F 2 "" H 4750 4750 50  0000 C CNN
F 3 "" H 4750 4750 50  0000 C CNN
	1    4750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4750 4750 4600
NoConn ~ 6600 3650
NoConn ~ 4800 3750
NoConn ~ 4800 3650
NoConn ~ 4800 3450
NoConn ~ 4800 3250
NoConn ~ 6600 3450
NoConn ~ 7550 3450
NoConn ~ 7550 3050
Wire Wire Line
	7000 3350 7550 3350
Wire Wire Line
	7000 3350 7000 2650
Connection ~ 7000 3350
Wire Wire Line
	7000 3650 7000 3850
Wire Wire Line
	7000 3650 6750 3650
Wire Wire Line
	6750 3650 6750 3550
Wire Wire Line
	6750 3550 6600 3550
NoConn ~ 6600 3350
$Comp
L Device:C C1
U 1 1 58A78796
P 4300 4300
F 0 "C1" H 4325 4400 50  0000 L CNN
F 1 "100n" H 4325 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4338 4150 50  0001 C CNN
F 3 "" H 4300 4300 50  0000 C CNN
	1    4300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4450 4300 4600
Wire Wire Line
	4300 4600 4750 4600
Connection ~ 7000 4650
$Comp
L power:+3.3V #PWR03
U 1 1 58A79336
P 2950 2600
F 0 "#PWR03" H 2950 2450 50  0001 C CNN
F 1 "+3.3V" H 2950 2740 50  0000 C CNN
F 2 "" H 2950 2600 50  0000 C CNN
F 3 "" H 2950 2600 50  0000 C CNN
	1    2950 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58A7935C
P 2150 2600
F 0 "#PWR01" H 2150 2350 50  0001 C CNN
F 1 "GND" H 2150 2450 50  0000 C CNN
F 2 "" H 2150 2600 50  0000 C CNN
F 3 "" H 2150 2600 50  0000 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 58A79477
P 2150 2450
F 0 "#FLG01" H 2150 2545 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 2630 50  0000 C CNN
F 2 "" H 2150 2450 50  0000 C CNN
F 3 "" H 2150 2450 50  0000 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 58A7952D
P 2950 2450
F 0 "#FLG03" H 2950 2545 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 2630 50  0000 C CNN
F 2 "" H 2950 2450 50  0000 C CNN
F 3 "" H 2950 2450 50  0000 C CNN
	1    2950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2450 2950 2600
Wire Wire Line
	2150 2450 2150 2600
Wire Wire Line
	7550 4650 7550 3550
$Comp
L RGB-clock-rescue:CONN_01X03 P2
U 1 1 5B7338E4
P 3450 3550
F 0 "P2" H 3450 3750 50  0000 C CNN
F 1 "Display" V 3550 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3450 3550 50  0001 C CNN
F 3 "" H 3450 3550 50  0000 C CNN
	1    3450 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 3550 4800 3550
$Comp
L power:+5V #PWR04
U 1 1 5B733A1B
P 3750 3300
F 0 "#PWR04" H 3750 3150 50  0001 C CNN
F 1 "+5V" H 3750 3440 50  0000 C CNN
F 2 "" H 3750 3300 50  0000 C CNN
F 3 "" H 3750 3300 50  0000 C CNN
	1    3750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 3750 3450
Wire Wire Line
	3750 3450 3650 3450
$Comp
L power:+5V #PWR02
U 1 1 5B733A72
P 2550 2600
F 0 "#PWR02" H 2550 2450 50  0001 C CNN
F 1 "+5V" H 2550 2740 50  0000 C CNN
F 2 "" H 2550 2600 50  0000 C CNN
F 3 "" H 2550 2600 50  0000 C CNN
	1    2550 2600
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5B733AA2
P 2550 2450
F 0 "#FLG02" H 2550 2545 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 2630 50  0000 C CNN
F 2 "" H 2550 2450 50  0000 C CNN
F 3 "" H 2550 2450 50  0000 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2450 2550 2600
$Comp
L power:GND #PWR05
U 1 1 5B733B06
P 3750 3800
F 0 "#PWR05" H 3750 3550 50  0001 C CNN
F 1 "GND" H 3750 3650 50  0000 C CNN
F 2 "" H 3750 3800 50  0000 C CNN
F 3 "" H 3750 3800 50  0000 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3650 3750 3650
Wire Wire Line
	3750 3650 3750 3800
$Comp
L ESP8266:ESP-12 U1
U 1 1 5B7354DD
P 5700 3450
F 0 "U1" H 5700 3350 50  0000 C CNN
F 1 "ESP-12" H 5700 3550 50  0000 C CNN
F 2 "ESP8266:ESP-12" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4350 6600 4350
Wire Wire Line
	6600 4350 6600 4650
Wire Wire Line
	4300 2750 5500 2750
Wire Wire Line
	5500 2750 5500 2550
Wire Wire Line
	5500 2550 5700 2550
Connection ~ 4300 2750
Wire Wire Line
	4300 3150 4300 3350
Wire Wire Line
	4750 3150 4800 3150
Wire Wire Line
	6750 4650 7000 4650
Wire Wire Line
	7000 4650 7000 4750
Wire Wire Line
	7000 4650 7550 4650
Wire Wire Line
	4300 2750 4300 3150
Wire Wire Line
	4300 3350 4300 4150
$EndSCHEMATC
