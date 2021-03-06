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
LIBS:transformer
LIBS:gdt
LIBS:button
LIBS:jumpers
LIBS:cardetector_328p-au-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L CONN_02X03 P2
U 1 1 575B93EF
P 2650 2000
F 0 "P2" H 2650 2200 50  0000 C CNN
F 1 "ISP" H 2650 1800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03" H 2650 800 50  0001 C CNN
F 3 "" H 2650 800 50  0000 C CNN
	1    2650 2000
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-A IC1
U 1 1 575B942C
P 2400 4100
F 0 "IC1" H 1650 5350 50  0000 L BNN
F 1 "ATMEGA328-A" H 2800 2700 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2400 4100 50  0001 C CIN
F 3 "" H 2400 4100 50  0000 C CNN
	1    2400 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 575B9487
P 1500 6050
F 0 "#PWR01" H 1500 5800 50  0001 C CNN
F 1 "GND" H 1500 5900 50  0000 C CNN
F 2 "" H 1500 6050 50  0000 C CNN
F 3 "" H 1500 6050 50  0000 C CNN
	1    1500 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 575B94BB
P 1500 1750
F 0 "#PWR02" H 1500 1600 50  0001 C CNN
F 1 "+5V" H 1500 1890 50  0000 C CNN
F 2 "" H 1500 1750 50  0000 C CNN
F 3 "" H 1500 1750 50  0000 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 575B94DE
P 4750 5650
F 0 "Y1" H 4750 5750 50  0000 C CNN
F 1 "16MHz" H 4750 5800 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 4750 5650 50  0001 C CNN
F 3 "" H 4750 5650 50  0000 C CNN
	1    4750 5650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 575B9571
P 4650 5850
F 0 "C7" H 4660 5920 50  0000 L CNN
F 1 "22p" H 4660 5770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4650 5850 50  0001 C CNN
F 3 "" H 4650 5850 50  0000 C CNN
	1    4650 5850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 575B95CA
P 4850 5850
F 0 "C8" H 4860 5920 50  0000 L CNN
F 1 "22p" H 4860 5770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4850 5850 50  0001 C CNN
F 3 "" H 4850 5850 50  0000 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 575B9607
P 4650 6050
F 0 "#PWR03" H 4650 5800 50  0001 C CNN
F 1 "GND" H 4650 5900 50  0000 C CNN
F 2 "" H 4650 6050 50  0000 C CNN
F 3 "" H 4650 6050 50  0000 C CNN
	1    4650 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 575B9621
P 4850 6050
F 0 "#PWR04" H 4850 5800 50  0001 C CNN
F 1 "GND" H 4850 5900 50  0000 C CNN
F 2 "" H 4850 6050 50  0000 C CNN
F 3 "" H 4850 6050 50  0000 C CNN
	1    4850 6050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 575B98DE
P 5050 5500
F 0 "R15" H 5080 5520 50  0000 L CNN
F 1 "1k" H 5080 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5050 5500 50  0001 C CNN
F 3 "" H 5050 5500 50  0000 C CNN
	1    5050 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 575B9ABC
P 5300 5500
F 0 "R17" H 5330 5520 50  0000 L CNN
F 1 "1k" H 5330 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5300 5500 50  0001 C CNN
F 3 "" H 5300 5500 50  0000 C CNN
	1    5300 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 575B9AE9
P 5550 5500
F 0 "R18" H 5580 5520 50  0000 L CNN
F 1 "1k" H 5580 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5550 5500 50  0001 C CNN
F 3 "" H 5550 5500 50  0000 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 575B9B15
P 5800 5500
F 0 "R19" H 5830 5520 50  0000 L CNN
F 1 "1k" H 5830 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5800 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0000 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 575B9B44
P 6050 5500
F 0 "R20" H 6080 5520 50  0000 L CNN
F 1 "1k" H 6080 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6050 5500 50  0001 C CNN
F 3 "" H 6050 5500 50  0000 C CNN
	1    6050 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R21
U 1 1 575B9B76
P 6300 5500
F 0 "R21" H 6330 5520 50  0000 L CNN
F 1 "1k" H 6330 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6300 5500 50  0001 C CNN
F 3 "" H 6300 5500 50  0000 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R12
U 1 1 575B9BAB
P 6550 5500
F 0 "R12" H 6580 5520 50  0000 L CNN
F 1 "1k" H 6580 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6550 5500 50  0001 C CNN
F 3 "" H 6550 5500 50  0000 C CNN
	1    6550 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 575B9BE3
P 6800 5500
F 0 "R11" H 6830 5520 50  0000 L CNN
F 1 "1k" H 6830 5460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6800 5500 50  0001 C CNN
F 3 "" H 6800 5500 50  0000 C CNN
	1    6800 5500
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D13
U 1 1 575B9D7B
P 5050 5800
F 0 "D13" V 5150 5650 50  0000 L CNN
F 1 "G" V 5000 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 5050 5800 50  0001 C CNN
F 3 "" V 5050 5800 50  0000 C CNN
	1    5050 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 575B9E23
P 5050 6050
F 0 "#PWR05" H 5050 5800 50  0001 C CNN
F 1 "GND" H 5050 5900 50  0000 C CNN
F 2 "" H 5050 6050 50  0000 C CNN
F 3 "" H 5050 6050 50  0000 C CNN
	1    5050 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D12
U 1 1 575BA857
P 5300 5800
F 0 "D12" V 5400 5650 50  0000 L CNN
F 1 "G" V 5250 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 5300 5800 50  0001 C CNN
F 3 "" V 5300 5800 50  0000 C CNN
	1    5300 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 575BA85E
P 5300 6050
F 0 "#PWR06" H 5300 5800 50  0001 C CNN
F 1 "GND" H 5300 5900 50  0000 C CNN
F 2 "" H 5300 6050 50  0000 C CNN
F 3 "" H 5300 6050 50  0000 C CNN
	1    5300 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D11
U 1 1 575BA893
P 5550 5800
F 0 "D11" V 5650 5650 50  0000 L CNN
F 1 "Y" V 5500 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 5550 5800 50  0001 C CNN
F 3 "" V 5550 5800 50  0000 C CNN
	1    5550 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 575BA89A
P 5550 6050
F 0 "#PWR07" H 5550 5800 50  0001 C CNN
F 1 "GND" H 5550 5900 50  0000 C CNN
F 2 "" H 5550 6050 50  0000 C CNN
F 3 "" H 5550 6050 50  0000 C CNN
	1    5550 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D10
U 1 1 575BA8D8
P 5800 5800
F 0 "D10" V 5900 5650 50  0000 L CNN
F 1 "Y" V 5750 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 5800 5800 50  0001 C CNN
F 3 "" V 5800 5800 50  0000 C CNN
	1    5800 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 575BA8DF
P 5800 6050
F 0 "#PWR08" H 5800 5800 50  0001 C CNN
F 1 "GND" H 5800 5900 50  0000 C CNN
F 2 "" H 5800 6050 50  0000 C CNN
F 3 "" H 5800 6050 50  0000 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D9
U 1 1 575BA922
P 6050 5800
F 0 "D9" V 6150 5700 50  0000 L CNN
F 1 "Y" V 6000 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 6050 5800 50  0001 C CNN
F 3 "" V 6050 5800 50  0000 C CNN
	1    6050 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 575BA929
P 6050 6050
F 0 "#PWR09" H 6050 5800 50  0001 C CNN
F 1 "GND" H 6050 5900 50  0000 C CNN
F 2 "" H 6050 6050 50  0000 C CNN
F 3 "" H 6050 6050 50  0000 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D8
U 1 1 575BA965
P 6300 5800
F 0 "D8" V 6400 5700 50  0000 L CNN
F 1 "Y" V 6250 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 6300 5800 50  0001 C CNN
F 3 "" V 6300 5800 50  0000 C CNN
	1    6300 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 575BA96C
P 6300 6050
F 0 "#PWR010" H 6300 5800 50  0001 C CNN
F 1 "GND" H 6300 5900 50  0000 C CNN
F 2 "" H 6300 6050 50  0000 C CNN
F 3 "" H 6300 6050 50  0000 C CNN
	1    6300 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D7
U 1 1 575BA9B9
P 6550 5800
F 0 "D7" V 6650 5700 50  0000 L CNN
F 1 "R" V 6500 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 6550 5800 50  0001 C CNN
F 3 "" V 6550 5800 50  0000 C CNN
	1    6550 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 575BA9C0
P 6550 6050
F 0 "#PWR011" H 6550 5800 50  0001 C CNN
F 1 "GND" H 6550 5900 50  0000 C CNN
F 2 "" H 6550 6050 50  0000 C CNN
F 3 "" H 6550 6050 50  0000 C CNN
	1    6550 6050
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D6
U 1 1 575BAA22
P 6800 5800
F 0 "D6" V 6900 5700 50  0000 L CNN
F 1 "R" V 6750 5700 50  0000 L CNN
F 2 "gate433:SOD80C" V 6800 5800 50  0001 C CNN
F 3 "" V 6800 5800 50  0000 C CNN
	1    6800 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 575BAA29
P 6800 6050
F 0 "#PWR012" H 6800 5800 50  0001 C CNN
F 1 "GND" H 6800 5900 50  0000 C CNN
F 2 "" H 6800 6050 50  0000 C CNN
F 3 "" H 6800 6050 50  0000 C CNN
	1    6800 6050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P5
U 1 1 575BAD1D
P 6800 4200
F 0 "P5" H 6800 4450 50  0000 C CNN
F 1 "I2C" V 6900 4200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0000 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
NoConn ~ 1500 3600
NoConn ~ 1500 4350
NoConn ~ 1500 4450
$Comp
L R_Small R14
U 1 1 575BB4D4
P 2650 2300
F 0 "R14" H 2680 2320 50  0000 L CNN
F 1 "10k" H 2680 2260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2650 2300 50  0001 C CNN
F 3 "" H 2650 2300 50  0000 C CNN
	1    2650 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 575BB670
P 2900 2350
F 0 "#PWR013" H 2900 2100 50  0001 C CNN
F 1 "GND" H 2900 2200 50  0000 C CNN
F 2 "" H 2900 2350 50  0000 C CNN
F 3 "" H 2900 2350 50  0000 C CNN
	1    2900 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 575BB79A
P 3150 2000
F 0 "C6" H 3160 2070 50  0000 L CNN
F 1 "1u" H 3160 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3150 2000 50  0001 C CNN
F 3 "" H 3150 2000 50  0000 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 575BB913
P 3150 1750
F 0 "#PWR014" H 3150 1600 50  0001 C CNN
F 1 "+5V" H 3150 1890 50  0000 C CNN
F 2 "" H 3150 1750 50  0000 C CNN
F 3 "" H 3150 1750 50  0000 C CNN
	1    3150 1750
	1    0    0    -1  
$EndComp
$Comp
L TACTILE_SW SW1
U 1 1 575E99FC
P 3350 2300
F 0 "SW1" H 3500 2410 50  0000 C CNN
F 1 "TACTILE_SW" H 3370 2160 50  0001 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_TH_Tactile_Omron_B3F-10xx" H 3350 2300 50  0001 C CNN
F 3 "" H 3350 2300 50  0000 C CNN
	1    3350 2300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R23
U 1 1 575F357D
P 6050 4050
F 0 "R23" H 6080 4070 50  0000 L CNN
F 1 "10k" H 6080 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6050 4050 50  0001 C CNN
F 3 "" H 6050 4050 50  0000 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R22
U 1 1 575F369C
P 6300 4050
F 0 "R22" H 6330 4070 50  0000 L CNN
F 1 "10k" H 6330 4010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6300 4050 50  0001 C CNN
F 3 "" H 6300 4050 50  0000 C CNN
	1    6300 4050
	1    0    0    -1  
$EndComp
$Sheet
S 3850 2800 700  200 
U 575F44D8
F0 "output" 60
F1 "output.sch" 60
F2 "active" I L 3850 2900 60 
$EndSheet
$Comp
L GND #PWR015
U 1 1 575F55C2
P 6550 4500
F 0 "#PWR015" H 6550 4250 50  0001 C CNN
F 1 "GND" H 6550 4350 50  0000 C CNN
F 2 "" H 6550 4500 50  0000 C CNN
F 3 "" H 6550 4500 50  0000 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 575F5994
P 6500 3650
F 0 "#PWR016" H 6500 3500 50  0001 C CNN
F 1 "+5V" H 6500 3790 50  0000 C CNN
F 2 "" H 6500 3650 50  0000 C CNN
F 3 "" H 6500 3650 50  0000 C CNN
	1    6500 3650
	1    0    0    -1  
$EndComp
$Sheet
S 2100 5550 750  250 
U 575EBC94
F0 "coplpitts" 60
F1 "colpitts.sch" 60
F2 "osc" I R 2850 5700 60 
$EndSheet
$Comp
L TACTILE_SW SW4
U 1 1 576AFB84
P 4250 4750
F 0 "SW4" H 4250 4650 50  0000 C CNN
F 1 "TACTILE_SW" H 4270 4610 50  0001 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_TH_Tactile_Omron_B3F-10xx" H 4250 4750 50  0001 C CNN
F 3 "" H 4250 4750 50  0000 C CNN
	1    4250 4750
	1    0    0    -1  
$EndComp
$Comp
L TACTILE_SW SW3
U 1 1 576AFC8E
P 4250 4500
F 0 "SW3" H 4250 4400 50  0000 C CNN
F 1 "TACTILE_SW" H 4270 4360 50  0001 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_TH_Tactile_Omron_B3F-10xx" H 4250 4500 50  0001 C CNN
F 3 "" H 4250 4500 50  0000 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 576B0961
P 4500 6050
F 0 "#PWR017" H 4500 5800 50  0001 C CNN
F 1 "GND" H 4500 5900 50  0000 C CNN
F 2 "" H 4500 6050 50  0000 C CNN
F 3 "" H 4500 6050 50  0000 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 576B09CF
P 3550 6050
F 0 "#PWR018" H 3550 5800 50  0001 C CNN
F 1 "GND" H 3550 5900 50  0000 C CNN
F 2 "" H 3550 6050 50  0000 C CNN
F 3 "" H 3550 6050 50  0000 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
$Comp
L TACTILE_SW SW5
U 1 1 576B11B7
P 4250 5000
F 0 "SW5" H 4250 4900 50  0000 C CNN
F 1 "TACTILE_SW" H 4270 4860 50  0001 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_TH_Tactile_Omron_B3F-10xx" H 4250 5000 50  0001 C CNN
F 3 "" H 4250 5000 50  0000 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5100 1500 5200
Wire Wire Line
	1500 5200 1500 5300
Wire Wire Line
	1500 5300 1500 6050
Connection ~ 1500 5300
Connection ~ 1500 5200
Wire Wire Line
	1500 1750 1500 3000
Wire Wire Line
	1500 3000 1500 3100
Wire Wire Line
	1500 3100 1500 3300
Connection ~ 1500 3100
Connection ~ 1500 3000
Wire Wire Line
	4650 3700 4650 5650
Wire Wire Line
	4650 5650 4650 5750
Wire Wire Line
	4850 3600 4850 5650
Wire Wire Line
	4850 5650 4850 5750
Wire Wire Line
	4650 5950 4650 6050
Wire Wire Line
	4850 5950 4850 6050
Wire Wire Line
	4650 3700 3400 3700
Connection ~ 4650 5650
Wire Wire Line
	3400 3600 4850 3600
Connection ~ 4850 5650
Wire Wire Line
	5050 5400 5050 3850
Wire Wire Line
	5050 3850 3400 3850
Wire Wire Line
	5300 5400 5300 3950
Wire Wire Line
	5300 3950 3400 3950
Wire Wire Line
	5550 5400 5550 4050
Wire Wire Line
	5550 4050 3400 4050
Wire Wire Line
	5800 5400 5800 4150
Wire Wire Line
	5800 4150 3400 4150
Wire Wire Line
	6050 5400 6050 5200
Wire Wire Line
	6050 5200 3400 5200
Wire Wire Line
	6300 5400 6300 5300
Wire Wire Line
	6300 5300 3400 5300
Wire Wire Line
	5850 3100 3400 3100
Wire Wire Line
	5900 3200 3400 3200
Wire Wire Line
	5050 5700 5050 5600
Wire Wire Line
	5050 5900 5050 6050
Wire Wire Line
	5300 5700 5300 5600
Wire Wire Line
	5300 5900 5300 6050
Wire Wire Line
	5550 5700 5550 5600
Wire Wire Line
	5550 5900 5550 6050
Wire Wire Line
	5800 5700 5800 5600
Wire Wire Line
	5800 5900 5800 6050
Wire Wire Line
	6050 5700 6050 5600
Wire Wire Line
	6050 5900 6050 6050
Wire Wire Line
	6300 5700 6300 5600
Wire Wire Line
	6300 5900 6300 6050
Wire Wire Line
	6550 5700 6550 5600
Wire Wire Line
	6550 5900 6550 6050
Wire Wire Line
	6800 5700 6800 5600
Wire Wire Line
	6800 5900 6800 6050
Wire Wire Line
	2400 2100 2400 2300
Wire Wire Line
	2400 2300 2400 2850
Wire Wire Line
	2400 2300 2550 2300
Wire Wire Line
	2750 2300 2900 2300
Wire Wire Line
	2900 2300 3100 2300
Wire Wire Line
	3100 2300 3150 2300
Wire Wire Line
	2900 2100 2900 2300
Wire Wire Line
	2900 2300 2900 2350
Connection ~ 2900 2300
Wire Wire Line
	2400 2850 3550 2850
Wire Wire Line
	3550 2850 3550 4450
Wire Wire Line
	3550 4450 3400 4450
Connection ~ 2400 2300
Wire Wire Line
	2900 2100 3150 2100
Wire Wire Line
	2900 1900 3150 1900
Wire Wire Line
	3150 1900 3150 1750
Connection ~ 3150 1900
Wire Wire Line
	2400 1900 2300 1900
Wire Wire Line
	2300 1900 2300 2800
Wire Wire Line
	2300 2800 3650 2800
Wire Wire Line
	3650 2800 3650 3400
Wire Wire Line
	3650 3400 3400 3400
Wire Wire Line
	2400 2000 2350 2000
Wire Wire Line
	2350 2000 2350 2750
Wire Wire Line
	2350 2750 3700 2750
Wire Wire Line
	3700 2750 3700 3500
Wire Wire Line
	3700 3500 3400 3500
Wire Wire Line
	3400 3000 3750 3000
Wire Wire Line
	3400 4350 5700 4350
Wire Wire Line
	5700 4350 5700 4350
Wire Wire Line
	5750 4250 5750 4250
Wire Wire Line
	5750 4250 3400 4250
Wire Wire Line
	3450 5700 3450 5000
Wire Wire Line
	3450 5000 3400 5000
Wire Wire Line
	2900 2000 3000 2000
Wire Wire Line
	3000 2000 3000 2700
Wire Wire Line
	3000 2700 3600 2700
Wire Wire Line
	3600 2300 3600 2400
Wire Wire Line
	3600 2400 3600 2700
Wire Wire Line
	3600 2700 3600 3300
Wire Wire Line
	3600 3300 3400 3300
Wire Wire Line
	3550 2300 3600 2300
Wire Wire Line
	3550 2400 3600 2400
Wire Wire Line
	3150 2400 3100 2400
Wire Wire Line
	3100 2400 3100 2300
Connection ~ 3100 2300
Wire Wire Line
	2850 5700 3450 5700
Wire Wire Line
	5850 3100 5850 5100
Wire Wire Line
	5850 5100 6550 5100
Wire Wire Line
	6550 5100 6550 5400
Wire Wire Line
	5900 3200 5900 5000
Wire Wire Line
	5900 5000 6800 5000
Wire Wire Line
	6800 5000 6800 5400
Wire Wire Line
	5700 4350 6600 4350
Wire Wire Line
	5750 4250 6050 4250
Wire Wire Line
	6050 4250 6300 4250
Wire Wire Line
	6300 4250 6600 4250
Wire Wire Line
	6600 4050 6550 4050
Wire Wire Line
	6550 4050 6550 4500
Wire Wire Line
	6500 4150 6600 4150
Wire Wire Line
	6500 3650 6500 3850
Wire Wire Line
	6500 3850 6500 4150
Wire Wire Line
	6050 4150 6050 4250
Connection ~ 6050 4250
Wire Wire Line
	6300 4150 6300 4250
Connection ~ 6300 4250
Wire Wire Line
	6050 3950 6050 3850
Wire Wire Line
	6050 3850 6300 3850
Wire Wire Line
	6300 3850 6500 3850
Connection ~ 6500 3850
Wire Wire Line
	6300 3950 6300 3850
Connection ~ 6300 3850
Wire Wire Line
	4000 4850 4050 4850
Wire Wire Line
	4000 4750 4050 4750
Wire Wire Line
	4500 4500 4500 4600
Wire Wire Line
	4500 4600 4500 4750
Wire Wire Line
	4500 4750 4500 4850
Wire Wire Line
	4500 4850 4500 5000
Wire Wire Line
	4500 5000 4500 5100
Wire Wire Line
	4500 5100 4500 6050
Wire Wire Line
	4500 4750 4450 4750
Wire Wire Line
	4450 4850 4500 4850
Connection ~ 4500 4850
Wire Wire Line
	4450 5000 4500 5000
Connection ~ 4500 5000
Wire Wire Line
	4450 5100 4500 5100
Connection ~ 4500 5100
Wire Wire Line
	3400 5100 4000 5100
Wire Wire Line
	4000 5100 4050 5100
Wire Wire Line
	4000 5100 4000 5000
Wire Wire Line
	4000 5000 4050 5000
Connection ~ 4000 5100
Wire Wire Line
	3750 3000 3750 2900
Wire Wire Line
	3750 2900 3850 2900
Wire Wire Line
	4000 4900 3400 4900
Wire Wire Line
	4000 4750 4000 4850
Wire Wire Line
	4000 4850 4000 4900
Connection ~ 4000 4850
Wire Wire Line
	3950 4800 3400 4800
Wire Wire Line
	3950 4500 3950 4600
Wire Wire Line
	3950 4600 3950 4800
Wire Wire Line
	3950 4600 4050 4600
Wire Wire Line
	3950 4500 4050 4500
Connection ~ 3950 4600
Wire Wire Line
	4450 4500 4500 4500
Wire Wire Line
	4500 4600 4450 4600
Connection ~ 4500 4750
Connection ~ 4500 4600
$Comp
L CONN_01X03 P6
U 1 1 576B2E0F
P 3750 4600
F 0 "P6" H 3750 4800 50  0000 C CNN
F 1 "SERIAL" V 3850 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3750 4600 50  0001 C CNN
F 3 "" H 3750 4600 50  0000 C CNN
	1    3750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4600 3450 4600
Wire Wire Line
	3450 4600 3450 4500
Wire Wire Line
	3450 4500 3550 4500
Wire Wire Line
	3400 4700 3550 4700
Wire Wire Line
	3550 4600 3550 6050
Connection ~ 3600 2400
Connection ~ 3600 2700
$EndSCHEMATC
