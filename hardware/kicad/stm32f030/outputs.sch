EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:button
LIBS:con-wago
LIBS:gdt
LIBS:irlz44nto220v
LIBS:jumpers
LIBS:relay
LIBS:transformer
LIBS:stm32
LIBS:stm32f030-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L R_Small R18
U 1 1 575F77FE
P 2450 3100
F 0 "R18" V 2350 2950 50  0000 L CNN
F 1 "1K" V 2350 3150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0000 C CNN
	1    2450 3100
	0    1    1    0   
$EndComp
$Comp
L R_Small R19
U 1 1 575F7805
P 2900 3100
F 0 "R19" V 2800 2900 50  0000 L CNN
F 1 "4.7K" V 2800 3100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2900 3100 50  0001 C CNN
F 3 "" H 2900 3100 50  0000 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
$Comp
L R_Small R17
U 1 1 575F780C
P 2900 2850
F 0 "R17" V 2800 2650 50  0000 L CNN
F 1 "4.7K" V 2800 2850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2900 2850 50  0001 C CNN
F 3 "" H 2900 2850 50  0000 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR28
U 1 1 575F7813
P 4550 3550
F 0 "#PWR28" H 4550 3300 50  0001 C CNN
F 1 "GND" H 4550 3400 50  0000 C CNN
F 2 "" H 4550 3550 50  0000 C CNN
F 3 "" H 4550 3550 50  0000 C CNN
	1    4550 3550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 575F7820
P 4150 1800
F 0 "R15" H 4180 1820 50  0000 L CNN
F 1 "1k" H 4180 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4150 1800 50  0001 C CNN
F 3 "" H 4150 1800 50  0000 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P5
U 1 1 575F7827
P 4800 2550
F 0 "P5" H 4800 2750 50  0000 C CNN
F 1 "TTL OUT 1" V 4900 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4800 2550 50  0001 C CNN
F 3 "" H 4800 2550 50  0000 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
$Comp
L RELAY_1RT K1
U 1 1 575F782E
P 3400 1900
F 0 "K1" H 3400 2050 50  0000 C CNN
F 1 "RELAY_1RT" H 3550 1400 50  0000 C CNN
F 2 "cardetector:SRD-SL-C" H 3350 1900 50  0001 C CNN
F 3 "" H 3350 1900 50  0000 C CNN
	1    3400 1900
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR26
U 1 1 575F7835
P 4150 1500
F 0 "#PWR26" H 4150 1350 50  0001 C CNN
F 1 "+5V" H 4150 1640 50  0000 C CNN
F 2 "" H 4150 1500 50  0000 C CNN
F 3 "" H 4150 1500 50  0000 C CNN
	1    4150 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 575F783B
P 3150 1450
F 0 "P4" H 3150 1650 50  0000 C CNN
F 1 "RELAY OUT 1" V 3250 1450 50  0000 C CNN
F 2 "Connectors:bornier3" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0000 C CNN
	1    3150 1450
	0    1    -1   0   
$EndComp
$Comp
L TACTILE_SW SW1
U 1 1 575F7842
P 2400 2550
F 0 "SW1" H 2550 2660 50  0000 C CNN
F 1 "TACTILE_SW" H 2420 2410 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2400 2550 50  0001 C CNN
F 3 "" H 2400 2550 50  0000 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3100 2800 3100
Wire Wire Line
	2650 2550 2650 3100
Wire Wire Line
	2650 2850 2800 2850
Connection ~ 2650 3100
Wire Wire Line
	3000 2850 3850 2850
Wire Wire Line
	4150 2200 4150 2650
Wire Wire Line
	4150 2000 4150 1900
Wire Wire Line
	3750 1600 4550 1600
Wire Wire Line
	4150 1500 4150 1700
Wire Wire Line
	4600 2550 4150 2550
Connection ~ 4150 2550
Wire Wire Line
	3750 2900 3750 2250
Wire Wire Line
	3750 2150 3750 1600
Connection ~ 4150 1600
Wire Wire Line
	3250 1650 3250 1850
Wire Wire Line
	3150 1650 3150 1950
Wire Wire Line
	3150 1950 3250 1950
Wire Wire Line
	3050 1650 3050 2050
Wire Wire Line
	3050 2050 3250 2050
Wire Wire Line
	1900 3100 2350 3100
Wire Wire Line
	4550 2650 4550 3550
Wire Wire Line
	4550 2650 4600 2650
Wire Wire Line
	4550 2450 4600 2450
Wire Wire Line
	3750 3450 3750 3300
Wire Wire Line
	4150 3050 4150 3450
Wire Wire Line
	2600 2550 2650 2550
Connection ~ 2650 2850
Wire Wire Line
	2600 2650 2650 2650
Connection ~ 2650 2650
Wire Wire Line
	2150 2650 2200 2650
Wire Wire Line
	2150 2000 2150 2650
Wire Wire Line
	2150 2550 2200 2550
$Comp
L +5V #PWR27
U 1 1 575F7873
P 2150 2000
F 0 "#PWR27" H 2150 1850 50  0001 C CNN
F 1 "+5V" H 2150 2140 50  0000 C CNN
F 2 "" H 2150 2000 50  0000 C CNN
F 3 "" H 2150 2000 50  0000 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
Connection ~ 2150 2550
$Comp
L R_Small R16
U 1 1 575F787A
P 4350 1800
F 0 "R16" H 4380 1820 50  0000 L CNN
F 1 "10k" H 4380 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0000 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1600
Connection ~ 4350 1600
Wire Wire Line
	4350 1900 4350 2250
Wire Wire Line
	4350 2250 4150 2250
Connection ~ 4150 2250
Wire Wire Line
	3750 2150 3600 2150
Wire Wire Line
	3750 2250 3600 2250
$Comp
L BC817-40 Q6
U 1 1 575F7888
P 3650 3100
F 0 "Q6" H 3500 3250 50  0000 L CNN
F 1 "BC817-40" H 3300 2850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3850 3025 50  0001 L CIN
F 3 "" H 3650 3100 50  0000 L CNN
	1    3650 3100
	1    0    0    -1  
$EndComp
$Comp
L BC817-40 Q5
U 1 1 575F788F
P 4050 2850
F 0 "Q5" H 3900 3000 50  0000 L CNN
F 1 "BC817-40" H 3950 2650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4250 2775 50  0001 L CIN
F 3 "" H 4050 2850 50  0000 L CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3100 3450 3100
Wire Wire Line
	4550 1600 4550 2450
Wire Wire Line
	3750 3450 4550 3450
Connection ~ 4550 3450
Connection ~ 4150 3450
Text HLabel 1900 3100 0    50   Input ~ 0
active1
$Comp
L LED_Small LED1
U 1 1 5884BDFE
P 4150 2100
F 0 "LED1" H 4050 2000 50  0000 L CNN
F 1 "LED_Small" H 3975 2000 50  0001 L CNN
F 2 "LEDs:LED_0805" V 4150 2100 50  0001 C CNN
F 3 "" V 4150 2100 50  0000 C CNN
	1    4150 2100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R23
U 1 1 5884C487
P 2450 5750
F 0 "R23" V 2350 5600 50  0000 L CNN
F 1 "1K" V 2350 5800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2450 5750 50  0001 C CNN
F 3 "" H 2450 5750 50  0000 C CNN
	1    2450 5750
	0    1    1    0   
$EndComp
$Comp
L R_Small R24
U 1 1 5884C48D
P 2900 5750
F 0 "R24" V 2800 5550 50  0000 L CNN
F 1 "4.7K" V 2800 5750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2900 5750 50  0001 C CNN
F 3 "" H 2900 5750 50  0000 C CNN
	1    2900 5750
	0    1    1    0   
$EndComp
$Comp
L R_Small R22
U 1 1 5884C493
P 2900 5500
F 0 "R22" V 2800 5300 50  0000 L CNN
F 1 "4.7K" V 2800 5500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2900 5500 50  0001 C CNN
F 3 "" H 2900 5500 50  0000 C CNN
	1    2900 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR31
U 1 1 5884C499
P 4550 6200
F 0 "#PWR31" H 4550 5950 50  0001 C CNN
F 1 "GND" H 4550 6050 50  0000 C CNN
F 2 "" H 4550 6200 50  0000 C CNN
F 3 "" H 4550 6200 50  0000 C CNN
	1    4550 6200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 5884C49F
P 4150 4450
F 0 "R20" H 4180 4470 50  0000 L CNN
F 1 "1k" H 4180 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0000 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P7
U 1 1 5884C4A5
P 4800 5200
F 0 "P7" H 4800 5400 50  0000 C CNN
F 1 "TTL OUT 2" V 4900 5200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0000 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$Comp
L RELAY_1RT K2
U 1 1 5884C4AB
P 3400 4550
F 0 "K2" H 3400 4700 50  0000 C CNN
F 1 "RELAY_1RT" H 3550 4050 50  0000 C CNN
F 2 "cardetector:SRD-SL-C" H 3350 4550 50  0001 C CNN
F 3 "" H 3350 4550 50  0000 C CNN
	1    3400 4550
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR29
U 1 1 5884C4B1
P 4150 4150
F 0 "#PWR29" H 4150 4000 50  0001 C CNN
F 1 "+5V" H 4150 4290 50  0000 C CNN
F 2 "" H 4150 4150 50  0000 C CNN
F 3 "" H 4150 4150 50  0000 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P6
U 1 1 5884C4B7
P 3150 4100
F 0 "P6" H 3150 4300 50  0000 C CNN
F 1 "RELAY OUT 2" V 3250 4100 50  0000 C CNN
F 2 "Connectors:bornier3" H 3150 4100 50  0001 C CNN
F 3 "" H 3150 4100 50  0000 C CNN
	1    3150 4100
	0    1    -1   0   
$EndComp
$Comp
L TACTILE_SW SW2
U 1 1 5884C4BD
P 2400 5200
F 0 "SW2" H 2550 5310 50  0000 C CNN
F 1 "TACTILE_SW" H 2420 5060 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2400 5200 50  0001 C CNN
F 3 "" H 2400 5200 50  0000 C CNN
	1    2400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5750 2800 5750
Wire Wire Line
	2650 5200 2650 5750
Wire Wire Line
	2650 5500 2800 5500
Connection ~ 2650 5750
Wire Wire Line
	3000 5500 3850 5500
Wire Wire Line
	4150 4850 4150 5300
Wire Wire Line
	4150 4650 4150 4550
Wire Wire Line
	3750 4250 4550 4250
Wire Wire Line
	4150 4150 4150 4350
Wire Wire Line
	4600 5200 4150 5200
Connection ~ 4150 5200
Wire Wire Line
	3750 5550 3750 4900
Wire Wire Line
	3750 4800 3750 4250
Connection ~ 4150 4250
Wire Wire Line
	3250 4300 3250 4500
Wire Wire Line
	3150 4300 3150 4600
Wire Wire Line
	3150 4600 3250 4600
Wire Wire Line
	3050 4300 3050 4700
Wire Wire Line
	3050 4700 3250 4700
Wire Wire Line
	1900 5750 2350 5750
Wire Wire Line
	4550 5300 4550 6200
Wire Wire Line
	4550 5300 4600 5300
Wire Wire Line
	4550 5100 4600 5100
Wire Wire Line
	3750 6100 3750 5950
Wire Wire Line
	4150 5700 4150 6100
Wire Wire Line
	2600 5200 2650 5200
Connection ~ 2650 5500
Wire Wire Line
	2600 5300 2650 5300
Connection ~ 2650 5300
Wire Wire Line
	2150 5300 2200 5300
Wire Wire Line
	2150 4650 2150 5300
Wire Wire Line
	2150 5200 2200 5200
$Comp
L +5V #PWR30
U 1 1 5884C4ED
P 2150 4650
F 0 "#PWR30" H 2150 4500 50  0001 C CNN
F 1 "+5V" H 2150 4790 50  0000 C CNN
F 2 "" H 2150 4650 50  0000 C CNN
F 3 "" H 2150 4650 50  0000 C CNN
	1    2150 4650
	1    0    0    -1  
$EndComp
Connection ~ 2150 5200
$Comp
L R_Small R21
U 1 1 5884C4F4
P 4350 4450
F 0 "R21" H 4380 4470 50  0000 L CNN
F 1 "10k" H 4380 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0000 C CNN
	1    4350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4350 4350 4250
Connection ~ 4350 4250
Wire Wire Line
	4350 4550 4350 4900
Wire Wire Line
	4350 4900 4150 4900
Connection ~ 4150 4900
Wire Wire Line
	3750 4800 3600 4800
Wire Wire Line
	3750 4900 3600 4900
$Comp
L BC817-40 Q8
U 1 1 5884C501
P 3650 5750
F 0 "Q8" H 3500 5900 50  0000 L CNN
F 1 "BC817-40" H 3300 5500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3850 5675 50  0001 L CIN
F 3 "" H 3650 5750 50  0000 L CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
$Comp
L BC817-40 Q7
U 1 1 5884C507
P 4050 5500
F 0 "Q7" H 3900 5650 50  0000 L CNN
F 1 "BC817-40" H 3950 5300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4250 5425 50  0001 L CIN
F 3 "" H 4050 5500 50  0000 L CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5750 3450 5750
Wire Wire Line
	4550 4250 4550 5100
Wire Wire Line
	3750 6100 4550 6100
Connection ~ 4550 6100
Connection ~ 4150 6100
Text HLabel 1900 5750 0    50   Input ~ 0
active2
$Comp
L LED_Small LED2
U 1 1 5884C514
P 4150 4750
F 0 "LED2" H 4050 4650 50  0000 L CNN
F 1 "LED_Small" H 3975 4650 50  0001 L CNN
F 2 "LEDs:LED_0805" V 4150 4750 50  0001 C CNN
F 3 "" V 4150 4750 50  0000 C CNN
	1    4150 4750
	0    -1   -1   0   
$EndComp
$Comp
L D_Small D2
U 1 1 588501DD
P 3900 4850
F 0 "D2" H 3850 4930 50  0000 L CNN
F 1 "D_Small" H 3750 4770 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 3900 4850 50  0001 C CNN
F 3 "" V 3900 4850 50  0000 C CNN
	1    3900 4850
	0    1    1    0   
$EndComp
$Comp
L D_Small D1
U 1 1 5885052E
P 3900 2200
F 0 "D1" H 3850 2280 50  0000 L CNN
F 1 "D_Small" H 3750 2120 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 3900 2200 50  0001 C CNN
F 3 "" V 3900 2200 50  0000 C CNN
	1    3900 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4950 3900 5150
Wire Wire Line
	3900 5150 3750 5150
Connection ~ 3750 5150
Wire Wire Line
	3900 4750 3900 4550
Wire Wire Line
	3900 4550 3750 4550
Connection ~ 3750 4550
Wire Wire Line
	3900 2100 3900 1900
Wire Wire Line
	3900 1900 3750 1900
Connection ~ 3750 1900
Wire Wire Line
	3900 2300 3900 2500
Wire Wire Line
	3900 2500 3750 2500
Connection ~ 3750 2500
$EndSCHEMATC
