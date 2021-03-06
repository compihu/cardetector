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
LIBS:stm32f103-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4500 2750 800  450 
U 58848B3A
F0 "colpitts" 60
F1 "colpitts.sch" 60
F2 "osc1" O R 5300 2900 60 
F3 "osc2" O R 5300 3050 60 
$EndSheet
$Comp
L CONN_01X02 P1
U 1 1 5884B3BB
P 4700 4500
F 0 "P1" H 4700 4650 50  0000 C CNN
F 1 "5VIN" V 4800 4500 50  0000 C CNN
F 2 "Connectors:bornier2" H 4700 4500 50  0001 C CNN
F 3 "" H 4700 4500 50  0000 C CNN
	1    4700 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5884B3C2
P 5000 5000
F 0 "#PWR01" H 5000 4750 50  0001 C CNN
F 1 "GND" H 5000 4850 50  0000 C CNN
F 2 "" H 5000 5000 50  0000 C CNN
F 3 "" H 5000 5000 50  0000 C CNN
	1    5000 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5884B3C8
P 5000 4100
F 0 "#PWR02" H 5000 3950 50  0001 C CNN
F 1 "+5V" H 5000 4240 50  0000 C CNN
F 2 "" H 5000 4100 50  0000 C CNN
F 3 "" H 5000 4100 50  0000 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U1
U 1 1 5884B3D9
P 5750 4500
F 0 "U1" H 5850 4250 50  0000 C CNN
F 1 "LM1117-3.3" H 5750 4750 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5750 4500 50  0001 C CNN
F 3 "" H 5750 4500 50  0000 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5884B8B0
P 5750 5000
F 0 "#PWR03" H 5750 4750 50  0001 C CNN
F 1 "GND" H 5750 4850 50  0000 C CNN
F 2 "" H 5750 5000 50  0000 C CNN
F 3 "" H 5750 5000 50  0000 C CNN
	1    5750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4800 5750 5000
$Comp
L +5V #PWR04
U 1 1 5884B8D9
P 5400 4100
F 0 "#PWR04" H 5400 3950 50  0001 C CNN
F 1 "+5V" H 5400 4240 50  0000 C CNN
F 2 "" H 5400 4100 50  0000 C CNN
F 3 "" H 5400 4100 50  0000 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4100 5400 4600
Wire Wire Line
	5400 4500 5450 4500
$Comp
L +3.3V #PWR05
U 1 1 5884B903
P 6100 4100
F 0 "#PWR05" H 6100 3950 50  0001 C CNN
F 1 "+3.3V" H 6100 4240 50  0000 C CNN
F 2 "" H 6100 4100 50  0000 C CNN
F 3 "" H 6100 4100 50  0000 C CNN
	1    6100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4100 6100 4600
Wire Wire Line
	6100 4500 6050 4500
$Comp
L C_Small C2
U 1 1 5884B95B
P 5400 4700
F 0 "C2" H 5410 4770 50  0000 L CNN
F 1 "100n" H 5410 4620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5400 4700 50  0001 C CNN
F 3 "" H 5400 4700 50  0000 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5884BA0C
P 6100 4700
F 0 "C3" H 6110 4770 50  0000 L CNN
F 1 "100n" H 6110 4620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6100 4700 50  0001 C CNN
F 3 "" H 6100 4700 50  0000 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5884BA4E
P 6100 5000
F 0 "#PWR06" H 6100 4750 50  0001 C CNN
F 1 "GND" H 6100 4850 50  0000 C CNN
F 2 "" H 6100 5000 50  0000 C CNN
F 3 "" H 6100 5000 50  0000 C CNN
	1    6100 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5884BA71
P 5400 5000
F 0 "#PWR07" H 5400 4750 50  0001 C CNN
F 1 "GND" H 5400 4850 50  0000 C CNN
F 2 "" H 5400 5000 50  0000 C CNN
F 3 "" H 5400 5000 50  0000 C CNN
	1    5400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5000 5400 4800
Wire Wire Line
	6100 5000 6100 4800
Connection ~ 6100 4500
Connection ~ 5400 4500
$Sheet
S 6700 2750 800  300 
U 5884BC52
F0 "outputs" 60
F1 "outputs.sch" 60
F2 "active1" I L 6700 2850 60 
F3 "active2" I L 6700 2950 60 
$EndSheet
Wire Wire Line
	5300 2900 5600 2900
Wire Wire Line
	5300 3050 5600 3050
Wire Wire Line
	6400 2850 6700 2850
Wire Wire Line
	6400 2950 6700 2950
Wire Wire Line
	4900 4550 5000 4550
Wire Wire Line
	5000 4550 5000 5000
Wire Wire Line
	5000 4450 4900 4450
Wire Wire Line
	5000 4100 5000 4450
$Comp
L CP_Small C1
U 1 1 5884F011
P 5100 4500
F 0 "C1" H 5110 4570 50  0000 L CNN
F 1 "10u" H 5110 4420 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-B_EIA-3528-21_Hand" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0000 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5100 4350
Wire Wire Line
	5100 4350 5000 4350
Connection ~ 5000 4350
Wire Wire Line
	5100 4600 5100 4650
Wire Wire Line
	5100 4650 5000 4650
Connection ~ 5000 4650
$Sheet
S 5600 2750 800  800 
U 5884C938
F0 "MCU" 60
F1 "mcu.sch" 60
F2 "active1" O R 6400 2950 60 
F3 "active2" O R 6400 2850 60 
F4 "osc1" I L 5600 3050 60 
F5 "osc2" I L 5600 2900 60 
F6 "scl" O R 6400 3400 60 
F7 "sda" B R 6400 3500 60 
$EndSheet
$Sheet
S 6750 3300 750  300 
U 589C1D7A
F0 "EEPROM" 60
F1 "eeprom.sch" 60
F2 "scl" I L 6750 3400 60 
F3 "sda" B L 6750 3500 60 
$EndSheet
Wire Wire Line
	6400 3400 6750 3400
Wire Wire Line
	6400 3500 6750 3500
$EndSCHEMATC
