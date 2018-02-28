EESchema Schematic File Version 2
LIBS:BAI1-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:arduino
LIBS:ESP8266
LIBS:SHIFT LEVEL
LIBS:BAI1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PCB LED MAIN CONTROL"
Date ""
Rev "111217"
Comp "ASTI CORP."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Arduino_Mega2560_Shield ARD1
U 1 1 5A2DF855
P 2200 3150
F 0 "ARD1" V 2300 3150 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" V 2100 3150 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 2900 5900 60  0001 C CNN
F 3 "" H 2900 5900 60  0001 C CNN
	1    2200 3150
	1    0    0    -1  
$EndComp
$Comp
L MAX7219-RESCUE-BAI1 U1
U 1 1 5A2DF8D4
P 7000 800
F 0 "U1" H 7050 -400 60  0000 C CNN
F 1 "MAX7219" H 7300 900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-24W_7.5x15.4mm_Pitch1.27mm" H 8100 1100 60  0001 C CNN
F 3 "" H 8100 1100 60  0001 C CNN
	1    7000 800 
	1    0    0    -1  
$EndComp
$Comp
L MAX7219-RESCUE-BAI1 U3
U 1 1 5A2DF92D
P 9250 800
F 0 "U3" H 9300 -400 60  0000 C CNN
F 1 "MAX7219" H 9550 900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-24W_7.5x15.4mm_Pitch1.27mm" H 10350 1100 60  0001 C CNN
F 3 "" H 10350 1100 60  0001 C CNN
	1    9250 800 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x08 J7
U 1 1 5A2DFD45
P 750 7000
F 0 "J7" H 750 7400 50  0000 C CNN
F 1 "Conn_01x08" H 750 6500 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 750 7000 50  0001 C CNN
F 3 "" H 750 7000 50  0001 C CNN
	1    750  7000
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x06 J3
U 1 1 5A2E0063
P 6650 3850
F 0 "J3" H 6650 4150 50  0000 C CNN
F 1 "Conn_01x06" H 6650 3450 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 6650 3850 50  0001 C CNN
F 3 "" H 6650 3850 50  0001 C CNN
	1    6650 3850
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x06 J1
U 1 1 5A2E0119
P 6100 3850
F 0 "J1" H 6100 4150 50  0000 C CNN
F 1 "Conn_01x06" H 6100 3450 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 6100 3850 50  0001 C CNN
F 3 "" H 6100 3850 50  0001 C CNN
	1    6100 3850
	-1   0    0    -1  
$EndComp
$Comp
L ESP-12E U2
U 1 1 5A2E06B3
P 8800 5450
F 0 "U2" H 8800 5350 50  0000 C CNN
F 1 "ESP-12E" H 8800 5550 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 8800 5450 50  0001 C CNN
F 3 "" H 8800 5450 50  0001 C CNN
	1    8800 5450
	1    0    0    -1  
$EndComp
$Comp
L logic_level U4
U 1 1 5A2E0A53
P 10600 4300
F 0 "U4" H 10650 3700 60  0000 C CNN
F 1 "logic_level" H 10800 4450 60  0000 C CNN
F 2 "Arduino:SHIFTLEVEL" H 10000 4600 60  0001 C CNN
F 3 "" H 10000 4600 60  0001 C CNN
	1    10600 4300
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A2E138B
P 10450 1400
F 0 "R6" V 10530 1400 50  0000 C CNN
F 1 "10k" V 10450 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10380 1400 50  0001 C CNN
F 3 "" H 10450 1400 50  0001 C CNN
	1    10450 1400
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5A2E153C
P 10650 1550
F 0 "C4" H 10675 1650 50  0000 L CNN
F 1 "100n" H 10675 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10688 1400 50  0001 C CNN
F 3 "" H 10650 1550 50  0001 C CNN
	1    10650 1550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A2E18FF
P 8250 1400
F 0 "R2" V 8330 1400 50  0000 C CNN
F 1 "10K" V 8250 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8180 1400 50  0001 C CNN
F 3 "" H 8250 1400 50  0001 C CNN
	1    8250 1400
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5A2E1905
P 8500 1600
F 0 "C3" H 8525 1700 50  0000 L CNN
F 1 "100n" H 8525 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8538 1450 50  0001 C CNN
F 3 "" H 8500 1600 50  0001 C CNN
	1    8500 1600
	1    0    0    -1  
$EndComp
Text Label 6550 900  0    60   ~ 0
1-R1
$Comp
L Conn_02x08_Odd_Even J11
U 1 1 5A2E49D8
P 8950 2500
F 0 "J11" H 9000 2900 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9000 2000 50  0000 C CNN
F 2 "Arduino:IDC-Header_2x08_P2.54mm_Vertical" H 8950 2500 50  0001 C CNN
F 3 "" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
Text Label 8450 2600 0    60   ~ 0
1-R1
Text Label 6550 800  0    60   ~ 0
DIN_M
Text Label 6550 1000 0    60   ~ 0
1-R5
Text Label 6550 1200 0    60   ~ 0
1-R7
Text Label 6550 1300 0    60   ~ 0
1-R3
Text Label 6550 1400 0    60   ~ 0
1-R4
Text Label 6550 1500 0    60   ~ 0
1-R8
Text Label 6550 1700 0    60   ~ 0
1-R6
Text Label 6550 1800 0    60   ~ 0
1-R2
Text Label 6550 1900 0    60   ~ 0
SC_M
Text Label 7850 900  0    60   ~ 0
1-C5
Text Label 7850 1000 0    60   ~ 0
1-C1
Text Label 7850 1100 0    60   ~ 0
1-C6
Text Label 7850 1200 0    60   ~ 0
1-C4
Text Label 7850 1500 0    60   ~ 0
1-C8
Text Label 7850 1600 0    60   ~ 0
1-C3
Text Label 7850 1700 0    60   ~ 0
1-C7
Text Label 7850 1800 0    60   ~ 0
1-C2
Text Label 7850 1900 0    60   ~ 0
CLK_M
Text Label 8450 2200 0    60   ~ 0
1-C1
Text Label 8450 2300 0    60   ~ 0
1-C3
Text Label 8450 2400 0    60   ~ 0
1-C5
Text Label 8450 2500 0    60   ~ 0
1-C7
Text Label 8450 2700 0    60   ~ 0
1-R3
Text Label 8450 2800 0    60   ~ 0
1-R5
Text Label 8450 2900 0    60   ~ 0
1-R7
Text Label 9250 2200 0    60   ~ 0
1-C2
Text Label 9250 2300 0    60   ~ 0
1-C4
Text Label 9250 2400 0    60   ~ 0
1-C6
Text Label 9250 2500 0    60   ~ 0
1-C8
Text Label 9250 2600 0    60   ~ 0
1-R2
Text Label 9250 2700 0    60   ~ 0
1-R4
Text Label 9250 2800 0    60   ~ 0
1-R6
Text Label 9250 2900 0    60   ~ 0
1-R8
Text Label 8850 900  0    60   ~ 0
2-R1
Text Label 8850 1000 0    60   ~ 0
2-R5
Text Label 8850 1200 0    60   ~ 0
2-R7
Text Label 8850 1300 0    60   ~ 0
2-R3
Text Label 8850 1400 0    60   ~ 0
2-R4
Text Label 8850 1500 0    60   ~ 0
2-R8
Text Label 8850 1700 0    60   ~ 0
2-R6
Text Label 8850 1800 0    60   ~ 0
2-R2
Text Label 8850 1900 0    60   ~ 0
SC_M
Text Label 10100 1500 0    60   ~ 0
2-C8
Text Label 10100 1600 0    60   ~ 0
2-C3
Text Label 10100 1700 0    60   ~ 0
2-C7
Text Label 10100 1800 0    60   ~ 0
2-C2
Text Label 10100 1900 0    60   ~ 0
CLK_M
Text Label 10100 900  0    60   ~ 0
2-C5
Text Label 10100 1000 0    60   ~ 0
2-C1
Text Label 10100 1100 0    60   ~ 0
2-C6
Text Label 10100 1200 0    60   ~ 0
2-C4
$Comp
L Conn_02x08_Odd_Even J12
U 1 1 5A2E745F
P 10150 2500
F 0 "J12" H 10200 2900 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 10200 2000 50  0000 C CNN
F 2 "Arduino:IDC-Header_2x08_P2.54mm_Vertical" H 10150 2500 50  0001 C CNN
F 3 "" H 10150 2500 50  0001 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
Text Label 9650 2600 0    60   ~ 0
2-R1
Text Label 9650 2200 0    60   ~ 0
2-C1
Text Label 9650 2300 0    60   ~ 0
2-C3
Text Label 9650 2400 0    60   ~ 0
2-C5
Text Label 9650 2500 0    60   ~ 0
2-C7
Text Label 9650 2700 0    60   ~ 0
2-R3
Text Label 9650 2800 0    60   ~ 0
2-R5
Text Label 9650 2900 0    60   ~ 0
2-R7
Text Label 10450 2200 0    60   ~ 0
2-C2
Text Label 10450 2300 0    60   ~ 0
2-C4
Text Label 10450 2400 0    60   ~ 0
2-C6
Text Label 10450 2500 0    60   ~ 0
2-C8
Text Label 10450 2600 0    60   ~ 0
2-R2
Text Label 10450 2700 0    60   ~ 0
2-R4
Text Label 10450 2800 0    60   ~ 0
2-R6
Text Label 10450 2900 0    60   ~ 0
2-R8
$Comp
L R R3
U 1 1 5A2E9842
P 7700 5150
F 0 "R3" V 7780 5150 50  0000 C CNN
F 1 "10K" V 7700 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7630 5150 50  0001 C CNN
F 3 "" H 7700 5150 50  0001 C CNN
	1    7700 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5A2E991F
P 7700 5350
F 0 "R4" V 7780 5350 50  0000 C CNN
F 1 "10K" V 7700 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7630 5350 50  0001 C CNN
F 3 "" H 7700 5350 50  0001 C CNN
	1    7700 5350
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A2EA21C
P 7700 4900
F 0 "SW1" H 7750 5000 50  0000 L CNN
F 1 "SW_Push" H 7700 4840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_DIP_x1_W7.62mm_Slide" H 7700 5100 50  0001 C CNN
F 3 "" H 7700 5100 50  0001 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A2EAFF2
P 10100 5900
F 0 "R7" V 10180 5900 50  0000 C CNN
F 1 "10k" V 10100 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10030 5900 50  0001 C CNN
F 3 "" H 10100 5900 50  0001 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A2EB0A1
P 9900 5900
F 0 "R5" V 9980 5900 50  0000 C CNN
F 1 "10k" V 9900 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9830 5900 50  0001 C CNN
F 3 "" H 9900 5900 50  0001 C CNN
	1    9900 5900
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A2EB558
P 10300 5900
F 0 "R8" V 10380 5900 50  0000 C CNN
F 1 "10k" V 10300 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10230 5900 50  0001 C CNN
F 3 "" H 10300 5900 50  0001 C CNN
	1    10300 5900
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A2ED612
P 7300 5500
F 0 "C1" H 7325 5600 50  0000 L CNN
F 1 "100n" H 7325 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 5350 50  0001 C CNN
F 3 "" H 7300 5500 50  0001 C CNN
	1    7300 5500
	1    0    0    -1  
$EndComp
Text Label 3600 2200 0    60   ~ 0
DIN_M
Text Label 3600 2300 0    60   ~ 0
SC_M
Text Label 3600 2400 0    60   ~ 0
CLK_M
Text Label 3600 2500 0    60   ~ 0
DIN
Text Label 3500 2600 0    60   ~ 0
SCK
Text Label 3500 2700 0    60   ~ 0
SC1
Text Label 3500 2800 0    60   ~ 0
SC2
Text Label 3500 2900 0    60   ~ 0
SW1
Text Label 3500 3000 0    60   ~ 0
SW2
Text Label 3500 3100 0    60   ~ 0
SW3
Text Label 3500 3200 0    60   ~ 0
SW4
Text Label 3500 3300 0    60   ~ 0
SW5
Text Label 3500 3400 0    60   ~ 0
SW6
Text Label 3500 3500 0    60   ~ 0
SW7
Text Label 3500 3600 0    60   ~ 0
SW8
Text Label 3500 3700 0    60   ~ 0
SW9
Text Label 3500 3800 0    60   ~ 0
SW10
Text Label 3500 3900 0    60   ~ 0
SW11
Text Label 3500 4000 0    60   ~ 0
SW12
Text Label 3500 4100 0    60   ~ 0
SW13
Text Label 3500 4200 0    60   ~ 0
SW14
Text Label 3500 4300 0    60   ~ 0
SW15
Text Label 3500 4400 0    60   ~ 0
SW16
Text Label 10900 4700 0    60   ~ 0
TXD1
Text Label 10900 4800 0    60   ~ 0
RXD1
Text Label 650  1300 0    60   ~ 0
TXD1
Text Label 650  1200 0    60   ~ 0
RXD1
Text Label 950  6700 0    60   ~ 0
SW1
Text Label 950  6800 0    60   ~ 0
SW2
Text Label 950  6900 0    60   ~ 0
SW3
Text Label 950  7000 0    60   ~ 0
SW4
Text Label 950  7100 0    60   ~ 0
SW5
Text Label 950  7200 0    60   ~ 0
SW6
Text Label 950  7300 0    60   ~ 0
SW7
Text Label 950  7400 0    60   ~ 0
SW8
Text Label 2800 6700 0    60   ~ 0
SW9
Text Label 2800 6800 0    60   ~ 0
SW10
Text Label 2800 6900 0    60   ~ 0
SW11
Text Label 2800 7000 0    60   ~ 0
SW12
Text Label 2800 7100 0    60   ~ 0
SW13
Text Label 2800 7200 0    60   ~ 0
SW14
Text Label 2800 7300 0    60   ~ 0
SW15
Text Label 2800 7400 0    60   ~ 0
SW16
$Comp
L 2SC1815 Q1
U 1 1 5A2F9746
P 5350 3500
F 0 "Q1" H 5550 3575 50  0000 L CNN
F 1 "2SC1815" H 5550 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5550 3425 50  0001 L CIN
F 3 "" H 5350 3500 50  0001 L CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A2F9B34
P 4950 3250
F 0 "R1" V 5030 3250 50  0000 C CNN
F 1 "1K" V 4950 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4880 3250 50  0001 C CNN
F 3 "" H 4950 3250 50  0001 C CNN
	1    4950 3250
	-1   0    0    1   
$EndComp
Text Label 4950 2850 0    60   ~ 0
BUZ
Text Label 6300 3850 0    60   ~ 0
DIN
Text Label 6300 3950 0    60   ~ 0
SC1
Text Label 6300 4050 0    60   ~ 0
SCK
Text Label 6850 4050 0    60   ~ 0
SCK
Text Label 6850 3950 0    60   ~ 0
SC2
Text Label 6850 3850 0    60   ~ 0
DIN
Text Label 3900 1350 0    60   ~ 0
SET
Text Label 3500 1100 0    60   ~ 0
NEXT
Text Label 3500 1200 0    60   ~ 0
BACK
Text Label 3500 1300 0    60   ~ 0
HOME
$Comp
L Conn_01x08 J15
U 1 1 5A2E53DB
P 6700 5300
F 0 "J15" H 6700 5700 50  0000 C CNN
F 1 "Conn_01x08" H 6700 4800 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 6700 5300 50  0001 C CNN
F 3 "" H 6700 5300 50  0001 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A2E5C9B
P 5650 4700
F 0 "C5" H 5675 4800 50  0000 L CNN
F 1 "100n" H 5675 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5688 4550 50  0001 C CNN
F 3 "" H 5650 4700 50  0001 C CNN
	1    5650 4700
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A2E5E04
P 5900 4700
F 0 "C6" H 5925 4800 50  0000 L CNN
F 1 "100n" H 5925 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5938 4550 50  0001 C CNN
F 3 "" H 5900 4700 50  0001 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A2E5E80
P 6100 4700
F 0 "C7" H 6125 4800 50  0000 L CNN
F 1 "100n" H 6125 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6138 4550 50  0001 C CNN
F 3 "" H 6100 4700 50  0001 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A2E5E86
P 6350 4700
F 0 "C8" H 6375 4800 50  0000 L CNN
F 1 "100n" H 6375 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6388 4550 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5A2E70B9
P 5400 4700
F 0 "R12" V 5480 4700 50  0000 C CNN
F 1 "10k" V 5400 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5330 4700 50  0001 C CNN
F 3 "" H 5400 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5A2E7279
P 5250 4700
F 0 "R11" V 5330 4700 50  0000 C CNN
F 1 "10k" V 5250 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5180 4700 50  0001 C CNN
F 3 "" H 5250 4700 50  0001 C CNN
	1    5250 4700
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A2E72F5
P 5100 4700
F 0 "R10" V 5180 4700 50  0000 C CNN
F 1 "10k" V 5100 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5030 4700 50  0001 C CNN
F 3 "" H 5100 4700 50  0001 C CNN
	1    5100 4700
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A2E72FB
P 4950 4700
F 0 "R9" V 5030 4700 50  0000 C CNN
F 1 "10k" V 4950 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4880 4700 50  0001 C CNN
F 3 "" H 4950 4700 50  0001 C CNN
	1    4950 4700
	1    0    0    -1  
$EndComp
Text Label 4650 5000 0    60   ~ 0
NEXT
Text Label 4650 5200 0    60   ~ 0
BACK
Text Label 4650 5400 0    60   ~ 0
HOME
Text Label 4650 5600 0    60   ~ 0
SET
$Comp
L Conn_01x08 J14
U 1 1 5A2EC13F
P 4200 1700
F 0 "J14" H 4200 2100 50  0000 C CNN
F 1 "Conn_01x08" H 4200 1200 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 4200 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J16
U 1 1 5A2F504C
P 8150 3500
F 0 "J16" H 8150 3700 50  0000 C CNN
F 1 "Conn_01x04" H 8150 3200 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 8150 3500 50  0001 C CNN
F 3 "" H 8150 3500 50  0001 C CNN
	1    8150 3500
	1    0    0    -1  
$EndComp
NoConn ~ 900  2100
NoConn ~ 900  2000
NoConn ~ 900  1700
NoConn ~ 900  1600
NoConn ~ 900  1500
NoConn ~ 900  1400
NoConn ~ 900  3600
NoConn ~ 900  3700
NoConn ~ 900  3800
NoConn ~ 900  3900
NoConn ~ 900  4100
NoConn ~ 900  4200
NoConn ~ 900  4900
NoConn ~ 900  5100
NoConn ~ 900  5200
NoConn ~ 10000 4500
NoConn ~ 10000 4600
NoConn ~ 8550 6350
NoConn ~ 8650 6350
NoConn ~ 8750 6350
NoConn ~ 8850 6350
NoConn ~ 8950 6350
NoConn ~ 9050 6350
NoConn ~ 7900 5250
NoConn ~ 7900 5450
NoConn ~ 7900 5550
NoConn ~ 7900 5650
NoConn ~ 7900 5750
NoConn ~ 10100 800 
NoConn ~ 1950 550 
NoConn ~ 2050 550 
NoConn ~ 2150 550 
NoConn ~ 2250 550 
NoConn ~ 2350 550 
NoConn ~ 2450 550 
NoConn ~ 900  1000
NoConn ~ 900  1100
NoConn ~ 6850 4150
NoConn ~ 6300 4150
$Comp
L C C10
U 1 1 5A355237
P 10350 3650
F 0 "C10" H 10375 3750 50  0000 L CNN
F 1 "100U" H 10375 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 10388 3500 50  0001 C CNN
F 3 "" H 10350 3650 50  0001 C CNN
	1    10350 3650
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5A3552D2
P 9250 3650
F 0 "C9" H 9275 3750 50  0000 L CNN
F 1 "10u" H 9275 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9288 3500 50  0001 C CNN
F 3 "" H 9250 3650 50  0001 C CNN
	1    9250 3650
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U5
U 1 1 5A354C84
P 9850 3500
F 0 "U5" H 9700 3625 50  0000 C CNN
F 1 "LM1117-3.3" H 9850 3625 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9850 3500 50  0001 C CNN
F 3 "" H 9850 3500 50  0001 C CNN
	1    9850 3500
	1    0    0    -1  
$EndComp
NoConn ~ 7950 3600
Text GLabel 10000 4300 0    60   Input ~ 0
3.3V
Text GLabel 10550 3500 2    60   Input ~ 0
3.3V
$Comp
L VDD #PWR01
U 1 1 5A35D947
P 7600 3400
F 0 "#PWR01" H 7600 3250 50  0001 C CNN
F 1 "VDD" H 7600 3550 50  0000 C CNN
F 2 "" H 7600 3400 50  0001 C CNN
F 3 "" H 7600 3400 50  0001 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR02
U 1 1 5A35DBB3
P 7600 3800
F 0 "#PWR02" H 7600 3650 50  0001 C CNN
F 1 "VSS" H 7600 3950 50  0000 C CNN
F 2 "" H 7600 3800 50  0001 C CNN
F 3 "" H 7600 3800 50  0001 C CNN
	1    7600 3800
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR03
U 1 1 5A35DEE5
P 9850 3900
F 0 "#PWR03" H 9850 3750 50  0001 C CNN
F 1 "VSS" H 9850 4050 50  0000 C CNN
F 2 "" H 9850 3900 50  0001 C CNN
F 3 "" H 9850 3900 50  0001 C CNN
	1    9850 3900
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR04
U 1 1 5A35E353
P 9250 3500
F 0 "#PWR04" H 9250 3350 50  0001 C CNN
F 1 "VDD" H 9250 3650 50  0000 C CNN
F 2 "" H 9250 3500 50  0001 C CNN
F 3 "" H 9250 3500 50  0001 C CNN
	1    9250 3500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR05
U 1 1 5A35F108
P 6300 3550
F 0 "#PWR05" H 6300 3400 50  0001 C CNN
F 1 "VDD" H 6300 3700 50  0000 C CNN
F 2 "" H 6300 3550 50  0001 C CNN
F 3 "" H 6300 3550 50  0001 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR06
U 1 1 5A35F180
P 6900 3550
F 0 "#PWR06" H 6900 3400 50  0001 C CNN
F 1 "VDD" H 6900 3700 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR07
U 1 1 5A35F446
P 6450 3550
F 0 "#PWR07" H 6450 3400 50  0001 C CNN
F 1 "VSS" H 6450 3700 50  0000 C CNN
F 2 "" H 6450 3550 50  0001 C CNN
F 3 "" H 6450 3550 50  0001 C CNN
	1    6450 3550
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR08
U 1 1 5A35F4F0
P 7100 3550
F 0 "#PWR08" H 7100 3400 50  0001 C CNN
F 1 "VSS" H 7100 3700 50  0000 C CNN
F 2 "" H 7100 3550 50  0001 C CNN
F 3 "" H 7100 3550 50  0001 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR09
U 1 1 5A3604D9
P 5450 2900
F 0 "#PWR09" H 5450 2750 50  0001 C CNN
F 1 "VDD" H 5450 3050 50  0000 C CNN
F 2 "" H 5450 2900 50  0001 C CNN
F 3 "" H 5450 2900 50  0001 C CNN
	1    5450 2900
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR010
U 1 1 5A360713
P 5450 3750
F 0 "#PWR010" H 5450 3600 50  0001 C CNN
F 1 "VSS" H 5450 3900 50  0000 C CNN
F 2 "" H 5450 3750 50  0001 C CNN
F 3 "" H 5450 3750 50  0001 C CNN
	1    5450 3750
	-1   0    0    1   
$EndComp
Text GLabel 7250 5850 0    60   Input ~ 0
3.3V
$Comp
L VSS #PWR013
U 1 1 5A362560
P 7500 4500
F 0 "#PWR013" H 7500 4350 50  0001 C CNN
F 1 "VSS" H 7500 4650 50  0000 C CNN
F 2 "" H 7500 4500 50  0001 C CNN
F 3 "" H 7500 4500 50  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
Text GLabel 10100 6150 3    60   Input ~ 0
3.3V
$Comp
L VSS #PWR014
U 1 1 5A362D9D
P 9750 6250
F 0 "#PWR014" H 9750 6100 50  0001 C CNN
F 1 "VSS" H 9750 6400 50  0000 C CNN
F 2 "" H 9750 6250 50  0001 C CNN
F 3 "" H 9750 6250 50  0001 C CNN
	1    9750 6250
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR015
U 1 1 5A36412B
P 10950 4300
F 0 "#PWR015" H 10950 4150 50  0001 C CNN
F 1 "VDD" H 10950 4450 50  0000 C CNN
F 2 "" H 10950 4300 50  0001 C CNN
F 3 "" H 10950 4300 50  0001 C CNN
	1    10950 4300
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR016
U 1 1 5A364433
P 9800 4400
F 0 "#PWR016" H 9800 4250 50  0001 C CNN
F 1 "VSS" H 9800 4550 50  0000 C CNN
F 2 "" H 9800 4400 50  0001 C CNN
F 3 "" H 9800 4400 50  0001 C CNN
	1    9800 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 1400 8100 1400
Wire Wire Line
	8500 1400 8400 1400
Wire Wire Line
	10100 1400 10300 1400
Wire Wire Line
	10650 1150 10650 1300
Wire Wire Line
	10650 1300 10650 1400
Wire Wire Line
	6800 900  6550 900 
Wire Wire Line
	8750 2600 8450 2600
Wire Wire Line
	6550 1000 6800 1000
Wire Wire Line
	6800 1200 6550 1200
Wire Wire Line
	6550 1300 6800 1300
Wire Wire Line
	6550 1400 6800 1400
Wire Wire Line
	6800 1500 6550 1500
Wire Wire Line
	6550 1700 6800 1700
Wire Wire Line
	6800 1800 6550 1800
Wire Wire Line
	6550 1900 6800 1900
Wire Wire Line
	6800 1100 6450 1100
Wire Wire Line
	6450 1100 6450 1600
Wire Wire Line
	6450 1600 6450 1750
Wire Wire Line
	6800 1600 6450 1600
Connection ~ 6450 1600
Wire Wire Line
	8450 2200 8750 2200
Wire Wire Line
	8750 2300 8450 2300
Wire Wire Line
	8450 2400 8750 2400
Wire Wire Line
	8750 2500 8450 2500
Wire Wire Line
	8450 2700 8750 2700
Wire Wire Line
	8450 2800 8750 2800
Wire Wire Line
	8750 2900 8450 2900
Wire Wire Line
	9050 900  8850 900 
Wire Wire Line
	8850 1000 9050 1000
Wire Wire Line
	9050 1200 8850 1200
Wire Wire Line
	8850 1400 9050 1400
Wire Wire Line
	9050 1500 8850 1500
Wire Wire Line
	8850 1700 9050 1700
Wire Wire Line
	9050 1800 8850 1800
Wire Wire Line
	8850 1900 9050 1900
Wire Wire Line
	9050 1100 8750 1100
Wire Wire Line
	8750 1100 8750 1600
Wire Wire Line
	8750 1600 8750 1750
Wire Wire Line
	9050 1600 8750 1600
Connection ~ 8750 1600
Wire Wire Line
	9050 1300 8850 1300
Wire Wire Line
	9950 2600 9650 2600
Wire Wire Line
	9650 2200 9950 2200
Wire Wire Line
	9950 2300 9650 2300
Wire Wire Line
	9650 2400 9950 2400
Wire Wire Line
	9950 2500 9650 2500
Wire Wire Line
	9650 2700 9950 2700
Wire Wire Line
	9650 2800 9950 2800
Wire Wire Line
	9950 2900 9650 2900
Wire Wire Line
	7900 5150 7850 5150
Wire Wire Line
	7850 5350 7900 5350
Wire Wire Line
	7550 5150 7500 5150
Wire Wire Line
	7500 5350 7550 5350
Connection ~ 7500 5350
Connection ~ 7500 5150
Connection ~ 7900 5150
Wire Wire Line
	9700 5750 9900 5750
Wire Wire Line
	9900 6050 9750 6050
Connection ~ 9750 6050
Wire Wire Line
	10100 5750 10100 5650
Wire Wire Line
	10100 5650 9700 5650
Wire Wire Line
	9700 5550 10300 5550
Wire Wire Line
	10300 5550 10300 5750
Wire Wire Line
	10100 6150 10100 6050
Wire Wire Line
	10100 6050 10300 6050
Wire Wire Line
	7900 4650 7900 4900
Wire Wire Line
	7900 4900 7900 5150
Connection ~ 7900 4900
Wire Wire Line
	7500 5150 7500 5350
Wire Wire Line
	7500 5350 7500 5850
Wire Wire Line
	3500 2200 3600 2200
Wire Wire Line
	3600 2300 3500 2300
Wire Wire Line
	3500 2400 3600 2400
Wire Wire Line
	10900 4700 10800 4700
Wire Wire Line
	10800 4800 10900 4800
Wire Wire Line
	900  1200 650  1200
Wire Wire Line
	650  1300 900  1300
Connection ~ 900  4600
Wire Wire Line
	900  4600 750  4600
Wire Wire Line
	5450 3100 5550 3100
Wire Wire Line
	5450 3200 5450 3250
Wire Wire Line
	5450 3250 5450 3300
Wire Wire Line
	4950 3400 4950 3500
Wire Wire Line
	4950 2850 4950 3100
Wire Wire Line
	6800 800  6550 800 
Wire Wire Line
	4650 5000 5400 5000
Wire Wire Line
	5400 5000 6350 5000
Wire Wire Line
	6350 5000 6500 5000
Wire Wire Line
	6350 4900 6350 5000
Connection ~ 6350 5000
Wire Wire Line
	4650 5200 5250 5200
Wire Wire Line
	5250 5200 6100 5200
Wire Wire Line
	6100 5200 6500 5200
Wire Wire Line
	6100 5200 6100 4900
Connection ~ 6100 5200
Wire Wire Line
	5900 5400 5900 4900
Wire Wire Line
	4650 5400 5100 5400
Wire Wire Line
	5100 5400 5900 5400
Wire Wire Line
	5900 5400 6500 5400
Connection ~ 5900 5400
Wire Wire Line
	5650 5600 5650 4900
Wire Wire Line
	4650 5600 4950 5600
Wire Wire Line
	4950 5600 5650 5600
Wire Wire Line
	5650 5600 6500 5600
Connection ~ 5650 5600
Connection ~ 5900 4550
Connection ~ 6100 4550
Connection ~ 5650 4550
Wire Wire Line
	6500 4550 6500 5100
Wire Wire Line
	6500 5100 6500 5300
Wire Wire Line
	6500 5300 6500 5500
Wire Wire Line
	6500 5500 6500 5700
Connection ~ 6500 5500
Connection ~ 6500 5300
Connection ~ 6350 4550
Connection ~ 6500 5100
Wire Wire Line
	5400 4850 5400 5000
Wire Wire Line
	5250 5200 5250 4850
Wire Wire Line
	5100 4850 5100 5400
Wire Wire Line
	4950 5600 4950 4850
Wire Wire Line
	4950 4550 5100 4550
Wire Wire Line
	5100 4550 5250 4550
Wire Wire Line
	5250 4550 5400 4550
Connection ~ 5100 4550
Connection ~ 5250 4550
Connection ~ 5400 5000
Connection ~ 5250 5200
Connection ~ 5100 5400
Connection ~ 4950 5600
Wire Wire Line
	3500 1400 3900 1400
Wire Wire Line
	3900 1400 4000 1400
Wire Wire Line
	4000 1500 3500 1500
Wire Wire Line
	3500 1600 4000 1600
Wire Wire Line
	4000 1700 3500 1700
Wire Wire Line
	3500 1800 4000 1800
Wire Wire Line
	4000 1900 3500 1900
Wire Wire Line
	3500 2000 4000 2000
Wire Wire Line
	4000 2100 3500 2100
Wire Wire Line
	3600 2500 3500 2500
Wire Wire Line
	7950 3500 7600 3500
Wire Wire Line
	5450 3700 5450 3800
Wire Wire Line
	10150 3500 10350 3500
Wire Wire Line
	10350 3500 10550 3500
Wire Wire Line
	7600 3500 7600 3700
Wire Wire Line
	7600 3700 7600 3800
Wire Wire Line
	7950 3700 7600 3700
Connection ~ 7600 3700
Wire Wire Line
	9850 3800 9850 3850
Wire Wire Line
	9850 3850 9850 3900
Wire Wire Line
	10350 3850 10350 3800
Wire Wire Line
	9250 3850 9850 3850
Wire Wire Line
	9850 3850 10350 3850
Connection ~ 9850 3850
Wire Wire Line
	9250 3850 9250 3800
Connection ~ 10350 3500
Wire Wire Line
	9250 3500 9550 3500
Wire Wire Line
	7600 3400 7650 3400
Wire Wire Line
	6450 3750 6300 3750
Wire Wire Line
	7100 3750 6850 3750
Wire Wire Line
	7250 5850 7300 5850
Wire Wire Line
	7300 5850 7500 5850
Wire Wire Line
	7500 5850 7900 5850
Connection ~ 7500 5850
$Comp
L VSS #PWR017
U 1 1 5A364BC0
P 10800 4400
F 0 "#PWR017" H 10800 4250 50  0001 C CNN
F 1 "VSS" H 10800 4550 50  0000 C CNN
F 2 "" H 10800 4400 50  0001 C CNN
F 3 "" H 10800 4400 50  0001 C CNN
	1    10800 4400
	0    1    1    0   
$EndComp
NoConn ~ 10800 4500
NoConn ~ 10800 4600
$Comp
L VDD #PWR018
U 1 1 5A3658FC
P 8500 1200
F 0 "#PWR018" H 8500 1050 50  0001 C CNN
F 1 "VDD" H 8500 1350 50  0000 C CNN
F 2 "" H 8500 1200 50  0001 C CNN
F 3 "" H 8500 1200 50  0001 C CNN
	1    8500 1200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR019
U 1 1 5A365B04
P 10650 1150
F 0 "#PWR019" H 10650 1000 50  0001 C CNN
F 1 "VDD" H 10650 1300 50  0000 C CNN
F 2 "" H 10650 1150 50  0001 C CNN
F 3 "" H 10650 1150 50  0001 C CNN
	1    10650 1150
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR020
U 1 1 5A3666A2
P 6450 1750
F 0 "#PWR020" H 6450 1600 50  0001 C CNN
F 1 "VSS" H 6450 1900 50  0000 C CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "" H 6450 1750 50  0001 C CNN
	1    6450 1750
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR021
U 1 1 5A366846
P 8500 1750
F 0 "#PWR021" H 8500 1600 50  0001 C CNN
F 1 "VSS" H 8500 1900 50  0000 C CNN
F 2 "" H 8500 1750 50  0001 C CNN
F 3 "" H 8500 1750 50  0001 C CNN
	1    8500 1750
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR022
U 1 1 5A366B48
P 10650 1800
F 0 "#PWR022" H 10650 1650 50  0001 C CNN
F 1 "VSS" H 10650 1950 50  0000 C CNN
F 2 "" H 10650 1800 50  0001 C CNN
F 3 "" H 10650 1800 50  0001 C CNN
	1    10650 1800
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR023
U 1 1 5A36716A
P 750 4600
F 0 "#PWR023" H 750 4450 50  0001 C CNN
F 1 "VSS" H 750 4750 50  0000 C CNN
F 2 "" H 750 4600 50  0001 C CNN
F 3 "" H 750 4600 50  0001 C CNN
	1    750  4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 5850 9750 5850
Wire Wire Line
	9750 5850 9750 6050
Wire Wire Line
	9750 6050 9750 6250
$Comp
L VSS #PWR024
U 1 1 5A36D079
P 8750 1750
F 0 "#PWR024" H 8750 1600 50  0001 C CNN
F 1 "VSS" H 8750 1900 50  0000 C CNN
F 2 "" H 8750 1750 50  0001 C CNN
F 3 "" H 8750 1750 50  0001 C CNN
	1    8750 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10650 1800 10650 1700
Wire Wire Line
	6900 3550 6900 3650
Wire Wire Line
	6900 3650 6850 3650
Wire Wire Line
	10100 1300 10650 1300
Connection ~ 7500 4900
$Comp
L D D1
U 1 1 5A3730B3
P 650 5150
F 0 "D1" H 650 5250 50  0000 C CNN
F 1 "D" H 650 5050 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 650 5150 50  0001 C CNN
F 3 "" H 650 5150 50  0001 C CNN
	1    650  5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  5000 650  5000
Wire Wire Line
	900  5300 650  5300
$Comp
L VDD #PWR025
U 1 1 5A373893
P 650 4900
F 0 "#PWR025" H 650 4750 50  0001 C CNN
F 1 "VDD" H 650 5050 50  0000 C CNN
F 2 "" H 650 4900 50  0001 C CNN
F 3 "" H 650 4900 50  0001 C CNN
	1    650  4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  5000 650  4900
$Comp
L D D2
U 1 1 5A373FBA
P 7800 3400
F 0 "D2" H 7800 3500 50  0000 C CNN
F 1 "D" H 7800 3300 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 7800 3400 50  0001 C CNN
F 3 "" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
Text Label 4000 1200 0    60   ~ 0
BUZ
Wire Wire Line
	4000 1200 4000 1000
Wire Wire Line
	4000 1000 3500 1000
Wire Wire Line
	3900 1350 3900 1400
Connection ~ 3900 1400
Connection ~ 6500 4550
$Comp
L VDD #PWR026
U 1 1 5A3A5601
P 5100 4500
F 0 "#PWR026" H 5100 4350 50  0001 C CNN
F 1 "VDD" H 5100 4650 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4400 900  4500
Wire Wire Line
	900  4500 900  4600
Connection ~ 900  4500
NoConn ~ 900  4800
NoConn ~ 900  4700
Connection ~ 10650 1300
Wire Wire Line
	10650 1400 10600 1400
$Comp
L VSS #PWR027
U 1 1 5A6EDFD5
P 5650 4500
F 0 "#PWR027" H 5650 4350 50  0001 C CNN
F 1 "VSS" H 5650 4650 50  0000 C CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4500 5650 4550
Wire Wire Line
	10950 4300 10800 4300
Wire Wire Line
	9800 4400 10000 4400
Wire Wire Line
	7550 4650 7500 4650
Wire Wire Line
	7850 1300 8500 1300
Wire Wire Line
	8500 1200 8500 1300
Wire Wire Line
	8500 1300 8500 1450
Connection ~ 8500 1300
Wire Wire Line
	5100 4500 5100 4550
Wire Wire Line
	7850 800  9050 800 
Text Label 9900 4700 2    60   ~ 0
T
Text Label 9900 4800 2    60   ~ 0
R
Wire Wire Line
	9900 4700 10000 4700
Wire Wire Line
	10000 4800 9900 4800
Text Label 9800 5150 0    60   ~ 0
R
Text Label 9800 5250 0    60   ~ 0
T
Wire Wire Line
	9800 5150 9700 5150
Wire Wire Line
	9700 5250 9800 5250
Wire Wire Line
	6300 3650 6300 3550
Wire Wire Line
	7100 3750 7100 3550
Wire Wire Line
	6450 3750 6450 3550
$Comp
L Conn_01x02 J?
U 1 1 5A6F93DE
P 5750 3100
F 0 "J?" H 5750 3200 50  0000 C CNN
F 1 "Conn_01x02" H 5750 2900 50  0000 C CNN
F 2 "" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0001 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2900 5450 2950
Wire Wire Line
	5450 2950 5450 3100
Wire Wire Line
	5450 3200 5550 3200
Wire Wire Line
	4950 3500 5150 3500
$Comp
L D D?
U 1 1 5A6FA94E
P 5300 3100
F 0 "D?" H 5300 3200 50  0000 C CNN
F 1 "D" H 5300 3000 50  0000 C CNN
F 2 "" H 5300 3100 50  0001 C CNN
F 3 "" H 5300 3100 50  0001 C CNN
	1    5300 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2950 5450 2950
Connection ~ 5450 2950
Wire Wire Line
	5300 3250 5450 3250
Connection ~ 5450 3250
$Comp
L Conn_01x16 J?
U 1 1 5A6FC8BC
P 6700 6800
F 0 "J?" H 6700 7600 50  0000 C CNN
F 1 "Conn_01x16" H 6700 5900 50  0000 C CNN
F 2 "" H 6700 6800 50  0001 C CNN
F 3 "" H 6700 6800 50  0001 C CNN
	1    6700 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Network08 RN?
U 1 1 5A6FD887
P 1600 6500
F 0 "RN?" V 1100 6500 50  0000 C CNN
F 1 "R_Network08" V 2000 6500 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 2075 6500 50  0001 C CNN
F 3 "" H 1600 6500 50  0001 C CNN
	1    1600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6700 1200 6700
Wire Wire Line
	950  6800 1300 6800
Wire Wire Line
	1300 6800 2050 6800
Wire Wire Line
	1300 6800 1300 6700
Wire Wire Line
	1400 6700 1400 6900
Wire Wire Line
	1400 6900 1400 7450
Wire Wire Line
	1400 6900 950  6900
Wire Wire Line
	950  7000 1500 7000
Wire Wire Line
	1500 7000 2050 7000
Wire Wire Line
	1500 7000 1500 6700
Wire Wire Line
	950  7100 1600 7100
Wire Wire Line
	1600 6700 1600 7100
Wire Wire Line
	1600 7100 1600 7450
Wire Wire Line
	1700 6700 1700 7200
Wire Wire Line
	950  7200 1700 7200
Wire Wire Line
	1700 7200 2050 7200
Wire Wire Line
	950  7300 1800 7300
Wire Wire Line
	1800 6700 1800 7300
Wire Wire Line
	1800 7300 1800 7450
Wire Wire Line
	1900 6700 1900 7400
Wire Wire Line
	950  7400 1900 7400
Wire Wire Line
	1900 7400 2050 7400
$Comp
L C C?
U 1 1 5A6FE7B5
P 1200 7600
F 0 "C?" H 1225 7700 50  0000 L CNN
F 1 "C" H 1225 7500 50  0000 L CNN
F 2 "" H 1238 7450 50  0001 C CNN
F 3 "" H 1200 7600 50  0001 C CNN
	1    1200 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A6FF039
P 1400 7600
F 0 "C?" H 1425 7700 50  0000 L CNN
F 1 "C" H 1425 7500 50  0000 L CNN
F 2 "" H 1438 7450 50  0001 C CNN
F 3 "" H 1400 7600 50  0001 C CNN
	1    1400 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A6FF119
P 1600 7600
F 0 "C?" H 1625 7700 50  0000 L CNN
F 1 "C" H 1625 7500 50  0000 L CNN
F 2 "" H 1638 7450 50  0001 C CNN
F 3 "" H 1600 7600 50  0001 C CNN
	1    1600 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A6FF11F
P 1800 7600
F 0 "C?" H 1825 7700 50  0000 L CNN
F 1 "C" H 1825 7500 50  0000 L CNN
F 2 "" H 1838 7450 50  0001 C CNN
F 3 "" H 1800 7600 50  0001 C CNN
	1    1800 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A6FF602
P 2200 7400
F 0 "C?" H 2225 7500 50  0000 L CNN
F 1 "C" H 2225 7300 50  0000 L CNN
F 2 "" H 2238 7250 50  0001 C CNN
F 3 "" H 2200 7400 50  0001 C CNN
	1    2200 7400
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A6FF608
P 2200 7200
F 0 "C?" H 2225 7300 50  0000 L CNN
F 1 "C" H 2225 7100 50  0000 L CNN
F 2 "" H 2238 7050 50  0001 C CNN
F 3 "" H 2200 7200 50  0001 C CNN
	1    2200 7200
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A6FF60E
P 2200 7000
F 0 "C?" H 2225 7100 50  0000 L CNN
F 1 "C" H 2225 6900 50  0000 L CNN
F 2 "" H 2238 6850 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A6FF614
P 2200 6800
F 0 "C?" H 2225 6900 50  0000 L CNN
F 1 "C" H 2225 6700 50  0000 L CNN
F 2 "" H 2238 6650 50  0001 C CNN
F 3 "" H 2200 6800 50  0001 C CNN
	1    2200 6800
	0    -1   -1   0   
$EndComp
Connection ~ 1300 6800
Connection ~ 1500 7000
Connection ~ 1700 7200
Connection ~ 1900 7400
Connection ~ 1800 7300
Connection ~ 1600 7100
Connection ~ 1400 6900
Wire Wire Line
	1200 6700 1200 7450
Wire Wire Line
	2350 7750 2350 7400
Wire Wire Line
	2350 7400 2350 7200
Wire Wire Line
	2350 7200 2350 7000
Wire Wire Line
	2350 7000 2350 6800
Connection ~ 2350 7000
Connection ~ 2350 7200
Wire Wire Line
	1200 7750 1400 7750
Wire Wire Line
	1400 7750 1600 7750
Wire Wire Line
	1600 7750 1800 7750
Wire Wire Line
	1800 7750 2350 7750
Connection ~ 2350 7400
Connection ~ 1800 7750
Connection ~ 1600 7750
Connection ~ 1400 7750
$Comp
L Conn_01x08 J?
U 1 1 5A701637
P 2600 7000
F 0 "J?" H 2600 7400 50  0000 C CNN
F 1 "Conn_01x08" H 2600 6500 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 2600 7000 50  0001 C CNN
F 3 "" H 2600 7000 50  0001 C CNN
	1    2600 7000
	-1   0    0    -1  
$EndComp
$Comp
L R_Network08 RN?
U 1 1 5A701645
P 3450 6500
F 0 "RN?" V 2950 6500 50  0000 C CNN
F 1 "R_Network08" V 3850 6500 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 3925 6500 50  0001 C CNN
F 3 "" H 3450 6500 50  0001 C CNN
	1    3450 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6800 3150 6700
Wire Wire Line
	3250 6700 3250 6900
Wire Wire Line
	3250 6900 3250 7450
Wire Wire Line
	3350 7000 3350 6700
Wire Wire Line
	3450 6700 3450 7100
Wire Wire Line
	3450 7100 3450 7450
Wire Wire Line
	3550 6700 3550 7200
Wire Wire Line
	3650 6700 3650 7300
Wire Wire Line
	3650 7300 3650 7450
Wire Wire Line
	3750 6700 3750 7400
$Comp
L C C?
U 1 1 5A70165A
P 3050 7600
F 0 "C?" H 3075 7700 50  0000 L CNN
F 1 "C" H 3075 7500 50  0000 L CNN
F 2 "" H 3088 7450 50  0001 C CNN
F 3 "" H 3050 7600 50  0001 C CNN
	1    3050 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A701660
P 3250 7600
F 0 "C?" H 3275 7700 50  0000 L CNN
F 1 "C" H 3275 7500 50  0000 L CNN
F 2 "" H 3288 7450 50  0001 C CNN
F 3 "" H 3250 7600 50  0001 C CNN
	1    3250 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A701666
P 3450 7600
F 0 "C?" H 3475 7700 50  0000 L CNN
F 1 "C" H 3475 7500 50  0000 L CNN
F 2 "" H 3488 7450 50  0001 C CNN
F 3 "" H 3450 7600 50  0001 C CNN
	1    3450 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A70166C
P 3650 7600
F 0 "C?" H 3675 7700 50  0000 L CNN
F 1 "C" H 3675 7500 50  0000 L CNN
F 2 "" H 3688 7450 50  0001 C CNN
F 3 "" H 3650 7600 50  0001 C CNN
	1    3650 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A701672
P 4050 7400
F 0 "C?" H 4075 7500 50  0000 L CNN
F 1 "C" H 4075 7300 50  0000 L CNN
F 2 "" H 4088 7250 50  0001 C CNN
F 3 "" H 4050 7400 50  0001 C CNN
	1    4050 7400
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A701678
P 4050 7200
F 0 "C?" H 4075 7300 50  0000 L CNN
F 1 "C" H 4075 7100 50  0000 L CNN
F 2 "" H 4088 7050 50  0001 C CNN
F 3 "" H 4050 7200 50  0001 C CNN
	1    4050 7200
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A70167E
P 4050 7000
F 0 "C?" H 4075 7100 50  0000 L CNN
F 1 "C" H 4075 6900 50  0000 L CNN
F 2 "" H 4088 6850 50  0001 C CNN
F 3 "" H 4050 7000 50  0001 C CNN
	1    4050 7000
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A701684
P 4050 6800
F 0 "C?" H 4075 6900 50  0000 L CNN
F 1 "C" H 4075 6700 50  0000 L CNN
F 2 "" H 4088 6650 50  0001 C CNN
F 3 "" H 4050 6800 50  0001 C CNN
	1    4050 6800
	0    -1   -1   0   
$EndComp
Connection ~ 3150 6800
Connection ~ 3350 7000
Connection ~ 3550 7200
Connection ~ 3750 7400
Connection ~ 3650 7300
Connection ~ 3450 7100
Connection ~ 3250 6900
Wire Wire Line
	3050 6700 3050 7450
Wire Wire Line
	4200 7750 4200 7400
Wire Wire Line
	4200 7400 4200 7200
Wire Wire Line
	4200 7200 4200 7000
Wire Wire Line
	4200 7000 4200 6800
Connection ~ 4200 7000
Connection ~ 4200 7200
Wire Wire Line
	3050 7750 3250 7750
Wire Wire Line
	3250 7750 3450 7750
Wire Wire Line
	3450 7750 3650 7750
Wire Wire Line
	3650 7750 4200 7750
Connection ~ 4200 7400
Connection ~ 3650 7750
Connection ~ 3450 7750
Connection ~ 3250 7750
Wire Wire Line
	2800 6800 3150 6800
Wire Wire Line
	3150 6800 3900 6800
Wire Wire Line
	2800 6700 3050 6700
Wire Wire Line
	2800 6900 3250 6900
Wire Wire Line
	2800 7000 3350 7000
Wire Wire Line
	3350 7000 3900 7000
Wire Wire Line
	2850 7100 3450 7100
Wire Wire Line
	2800 7200 3550 7200
Wire Wire Line
	3550 7200 3900 7200
Wire Wire Line
	2800 7300 3650 7300
Wire Wire Line
	2800 7400 3750 7400
Wire Wire Line
	3750 7400 3900 7400
$Comp
L VDD #PWR028
U 1 1 5A7036C4
P 1200 6300
F 0 "#PWR028" H 1200 6150 50  0001 C CNN
F 1 "VDD" H 1200 6450 50  0000 C CNN
F 2 "" H 1200 6300 50  0001 C CNN
F 3 "" H 1200 6300 50  0001 C CNN
	1    1200 6300
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR029
U 1 1 5A7038A1
P 3050 6300
F 0 "#PWR029" H 3050 6150 50  0001 C CNN
F 1 "VDD" H 3050 6450 50  0000 C CNN
F 2 "" H 3050 6300 50  0001 C CNN
F 3 "" H 3050 6300 50  0001 C CNN
	1    3050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4550 5900 4550
Wire Wire Line
	5900 4550 6100 4550
Wire Wire Line
	6100 4550 6350 4550
Wire Wire Line
	6350 4550 6500 4550
Wire Wire Line
	7900 4650 7850 4650
$Comp
L C C2
U 1 1 5A2EA2DF
P 7700 4650
F 0 "C2" H 7725 4750 50  0000 L CNN
F 1 "100n" H 7725 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7738 4500 50  0001 C CNN
F 3 "" H 7700 4650 50  0001 C CNN
	1    7700 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 4500 7500 4650
Wire Wire Line
	7500 4650 7500 4900
Connection ~ 7500 4650
Wire Wire Line
	7300 5650 7300 5850
Connection ~ 7300 5850
Wire Wire Line
	7300 5350 7300 4900
Wire Wire Line
	7300 4900 7500 4900
NoConn ~ 900  1800
NoConn ~ 900  1900
$EndSCHEMATC
