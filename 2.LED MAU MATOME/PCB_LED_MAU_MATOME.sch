EESchema Schematic File Version 2
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
LIBS:PCB_LED_MAU_MATOME-cache
EELAYER 25 0
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
L Conn_01x06 J1
U 1 1 5A66C7DD
P 4050 1800
F 0 "J1" H 4050 2100 50  0000 C CNN
F 1 "Conn_01x06" H 4050 1400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5A66C875
P 3350 1800
F 0 "D4" H 3350 1900 50  0000 C CNN
F 1 "LED" H 3350 1700 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5A66C90B
P 3350 2100
F 0 "D3" H 3350 2200 50  0000 C CNN
F 1 "LED" H 3350 2000 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3350 2100 50  0001 C CNN
F 3 "" H 3350 2100 50  0001 C CNN
	1    3350 2100
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5A66C964
P 3350 2400
F 0 "D2" H 3350 2500 50  0000 C CNN
F 1 "LED" H 3350 2300 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5A66C96A
P 3350 2700
F 0 "D1" H 3350 2800 50  0000 C CNN
F 1 "LED" H 3350 2600 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3350 2700 50  0001 C CNN
F 3 "" H 3350 2700 50  0001 C CNN
	1    3350 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 1800 3500 1800
Wire Wire Line
	3500 2100 3600 2100
Wire Wire Line
	3600 2100 3600 1900
Wire Wire Line
	3600 1900 3850 1900
Wire Wire Line
	3500 2400 3700 2400
Wire Wire Line
	3700 2400 3700 2000
Wire Wire Line
	3700 2000 3850 2000
Wire Wire Line
	3500 2700 3800 2700
Wire Wire Line
	3800 2700 3800 2100
Wire Wire Line
	3800 2100 3850 2100
Wire Wire Line
	3100 2700 3200 2700
Wire Wire Line
	3100 1650 3100 2700
Wire Wire Line
	3100 2400 3200 2400
Wire Wire Line
	3200 2100 3100 2100
Connection ~ 3100 2400
Wire Wire Line
	3200 1800 3100 1800
Connection ~ 3100 2100
Wire Wire Line
	3850 1700 3600 1700
Wire Wire Line
	3600 1700 3600 1650
Wire Wire Line
	3600 1650 3100 1650
Connection ~ 3100 1800
NoConn ~ 3850 1600
$EndSCHEMATC
