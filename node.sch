EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Schema elettrico scheda shield per TTGO T-Beam v1.1"
Date "2021-03-25"
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1500 6300 0    50   ~ 0
Notes: - the BME680 module has I2C pullup resistors built-in\n       - J5 pin 3 and J6 pin 3 should be earthed i.e. not wired to circuit ground \n          (board is floating wrt earth) but wired to an external local earth connection
$Comp
L Device:R R3
U 1 1 5FA4C9AD
P 7550 5050
F 0 "R3" V 7700 5000 50  0000 L TNN
F 1 "10k" V 7600 4950 50  0000 L TNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7480 5050 50  0001 C CNN
F 3 "~" H 7550 5050 50  0001 C CNN
	1    7550 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FA4E41C
P 7850 5750
F 0 "#PWR04" H 7850 5500 50  0001 C CNN
F 1 "GND" H 7855 5577 50  0001 C CNN
F 2 "" H 7850 5750 50  0001 C CNN
F 3 "" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5050 7850 5150
$Comp
L Device:R R4
U 1 1 5FA694F0
P 7850 5300
F 0 "R4" H 7920 5346 50  0000 L CNN
F 1 "10k" H 7920 5255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 5300 50  0001 C CNN
F 3 "~" H 7850 5300 50  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
Text GLabel 10000 5150 2    50   Input ~ 0
ADCPYRA
Text Label 9700 5150 0    50   ~ 0
PYRA
Text Notes 7450 4750 0    50   ~ 0
0-5V to 0-3V3 SIG
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 60346BBD
P 8900 5150
F 0 "U1" H 9150 5050 50  0001 C CNN
F 1 "LM358" H 8700 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8900 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8900 5150 50  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 60348915
P 9000 5150
F 0 "U1" H 9000 5000 50  0000 L CNN
F 1 "LM358" H 9100 4850 50  0001 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9000 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 9000 5150 50  0001 C CNN
	3    9000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5150 9450 5150
Wire Wire Line
	8500 5250 8500 5600
Wire Wire Line
	8500 5600 9450 5600
Wire Wire Line
	9450 5600 9450 5150
Wire Wire Line
	8500 5250 8600 5250
$Comp
L power:GND #PWR0112
U 1 1 603944A2
P 8900 5450
F 0 "#PWR0112" H 8900 5200 50  0001 C CNN
F 1 "GND" H 8905 5277 50  0001 C CNN
F 2 "" H 8900 5450 50  0001 C CNN
F 3 "" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
Text Notes 8400 4550 0    50   ~ 0
Input impedance
Wire Wire Line
	5250 2800 5150 2800
NoConn ~ 5250 2600
NoConn ~ 4350 3800
NoConn ~ 4250 3800
Wire Wire Line
	4350 4050 4350 3800
Wire Wire Line
	4250 4050 4250 3800
Wire Wire Line
	4150 3300 5250 3300
Wire Wire Line
	4050 3200 5250 3200
Wire Wire Line
	3950 4050 3950 3100
Wire Wire Line
	3850 4050 3850 3000
Wire Wire Line
	3950 3100 4800 3100
$Comp
L Connector:Conn_01x13_Female J4
U 1 1 5F8B0EF2
P 5450 3000
F 0 "J4" H 5350 3850 50  0000 L CNN
F 1 "T-Beam right socket " H 5050 4000 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 5450 3000 50  0001 C CNN
F 3 "~" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
NoConn ~ 5250 3500
NoConn ~ 5250 3600
Text GLabel 1950 1600 2    50   Output ~ 0
ADCPYRA
Text GLabel 5150 2800 0    50   Output ~ 0
ADCWIND
Wire Wire Line
	4650 2400 5250 2400
Wire Wire Line
	4650 2500 5250 2500
Text Label 5000 2400 0    50   ~ 0
TX
Text Label 5000 2500 0    50   ~ 0
RX
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 5F8BF79D
P 4450 2500
F 0 "J7" H 4500 2800 50  0000 C CNN
F 1 "UART" H 4500 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4450 2500 50  0001 C CNN
F 3 "~" H 4450 2500 50  0001 C CNN
	1    4450 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2600 4650 2650
$Comp
L power:GND #PWR07
U 1 1 5F8CDC22
P 4650 2650
F 0 "#PWR07" H 4650 2400 50  0001 C CNN
F 1 "GND" H 4655 2477 50  0001 C CNN
F 2 "" H 4650 2650 50  0001 C CNN
F 3 "" H 4650 2650 50  0001 C CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
NoConn ~ 5250 3400
NoConn ~ 5250 2900
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 606199DB
P 6200 4200
F 0 "J8" H 6400 4050 50  0000 C CNN
F 1 "POWER" H 6100 4450 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00277_1x03_P5.00mm_Vertical" H 6200 4200 50  0001 C CNN
F 3 "~" H 6200 4200 50  0001 C CNN
	1    6200 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 3000 4900 3000
$Comp
L power:GND #PWR02
U 1 1 60628697
P 6400 4350
F 0 "#PWR02" H 6400 4100 50  0001 C CNN
F 1 "GND" H 6405 4177 50  0001 C CNN
F 2 "" H 6400 4350 50  0001 C CNN
F 3 "" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6400 4350
Wire Wire Line
	4900 3000 4900 3850
Wire Wire Line
	4900 3850 5800 3850
Wire Wire Line
	6600 3850 6600 4100
Connection ~ 4900 3000
Wire Wire Line
	4900 3000 5250 3000
Connection ~ 7150 4200
Text Notes 5400 4100 0    50   ~ 0
to boost converter
Text Notes 5300 4200 0    50   ~ 0
from boost converter
Wire Wire Line
	7150 4200 7300 4200
Wire Wire Line
	7300 4200 7300 4050
$Comp
L power:+12V #PWR03
U 1 1 60649D04
P 7300 4050
F 0 "#PWR03" H 7300 3900 50  0001 C CNN
F 1 "+12V" H 7315 4223 50  0000 C CNN
F 2 "" H 7300 4050 50  0001 C CNN
F 3 "" H 7300 4050 50  0001 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 5FA1D57F
P 6200 5150
F 0 "J5" H 6300 5500 50  0000 C CNN
F 1 "LPPYRA03AV" H 6100 5400 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00277_1x03_P5.00mm_Vertical" H 6200 5150 50  0001 C CNN
F 3 "~" H 6200 5150 50  0001 C CNN
	1    6200 5150
	-1   0    0    -1  
$EndComp
Text Notes 5750 5450 0    50   ~ 0
BLACK is earth
$Comp
L power:GND #PWR0106
U 1 1 6038CC2D
P 6400 5300
F 0 "#PWR0106" H 6400 5050 50  0001 C CNN
F 1 "GND" H 6405 5127 50  0001 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
Text Notes 5800 5050 0    50   ~ 0
BROWN
Wire Wire Line
	4800 3400 4800 3100
Connection ~ 4800 3100
Wire Wire Line
	4800 3100 5250 3100
$Comp
L power:GND #PWR0107
U 1 1 60397ED0
P 4800 3400
F 0 "#PWR0107" H 4800 3150 50  0001 C CNN
F 1 "GND" H 4805 3227 50  0001 C CNN
F 2 "" H 4800 3400 50  0001 C CNN
F 3 "" H 4800 3400 50  0001 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
Wire Notes Line
	8400 4600 9650 4600
Wire Notes Line
	9650 4600 9650 5950
Wire Notes Line
	9650 5950 8400 5950
Text Notes 4150 4000 1    50   ~ 0
SDA
Text Notes 4250 4000 1    50   ~ 0
SDO
Text Notes 4350 4000 1    50   ~ 0
CS
Wire Wire Line
	6400 5250 6400 5300
Text Notes 5000 3300 0    50   ~ 0
SDA
Text Notes 5000 3200 0    50   ~ 0
SCL
Text Notes 5000 3100 0    50   ~ 0
GND
Text Notes 5800 5250 0    50   ~ 0
WHITE
$Comp
L power:+3V3 #PWR0105
U 1 1 60439925
P 5800 3800
F 0 "#PWR0105" H 5800 3650 50  0001 C CNN
F 1 "+3V3" H 5815 3973 50  0000 C CNN
F 2 "" H 5800 3800 50  0001 C CNN
F 3 "" H 5800 3800 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3800 5800 3850
Connection ~ 5800 3850
Wire Wire Line
	5800 3850 6600 3850
$Comp
L Device:R R10
U 1 1 6045EEAE
P 7850 5600
F 0 "R10" H 7920 5646 50  0000 L CNN
F 1 "10k" H 7920 5555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 5600 50  0001 C CNN
F 3 "~" H 7850 5600 50  0001 C CNN
	1    7850 5600
	1    0    0    -1  
$EndComp
Text Notes 5450 2800 0    50   ~ 0
GPIO0
Text Notes 7400 2700 0    50   ~ 0
0-5V to 0-3V3 SIG
$Comp
L Device:R R6
U 1 1 5FAFB529
P 7550 3000
F 0 "R6" V 7700 2900 50  0000 L TNN
F 1 "10k" V 7600 2900 50  0000 L TNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7480 3000 50  0001 C CNN
F 3 "~" H 7550 3000 50  0001 C CNN
	1    7550 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 3000 7850 3100
Text GLabel 8350 3000 2    50   Input ~ 0
ADCWIND
Text Label 7950 3000 0    50   ~ 0
WIND
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 5FAFB511
P 6200 3100
F 0 "J6" H 6200 3450 50  0000 C CNN
F 1 "SEN0170" H 6100 3350 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00277_1x03_P5.00mm_Vertical" H 6200 3100 50  0001 C CNN
F 3 "~" H 6200 3100 50  0001 C CNN
	1    6200 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FA2C861
P 6400 3250
F 0 "#PWR0104" H 6400 3000 50  0001 C CNN
F 1 "GND" V 6405 3122 50  0001 R CNN
F 2 "" H 6400 3250 50  0001 C CNN
F 3 "" H 6400 3250 50  0001 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3000 8350 3000
Text Notes 5800 3350 0    50   ~ 0
BLUE is earth
Text Notes 5850 3100 0    50   ~ 0
RED
Text Notes 5850 3200 0    50   ~ 0
BLACK
Text Notes 5850 3000 0    50   ~ 0
YELLOW
Wire Wire Line
	6400 3200 6400 3250
$Comp
L power:GND #PWR0103
U 1 1 604668CC
P 7850 3700
F 0 "#PWR0103" H 7850 3450 50  0001 C CNN
F 1 "GND" H 7855 3527 50  0001 C CNN
F 2 "" H 7850 3700 50  0001 C CNN
F 3 "" H 7850 3700 50  0001 C CNN
	1    7850 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 604668D3
P 7850 3250
F 0 "R7" H 7920 3296 50  0000 L CNN
F 1 "10k" H 7920 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 3250 50  0001 C CNN
F 3 "~" H 7850 3250 50  0001 C CNN
	1    7850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 604668D9
P 7850 3550
F 0 "R9" H 7920 3596 50  0000 L CNN
F 1 "10k" H 7920 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 3550 50  0001 C CNN
F 3 "~" H 7850 3550 50  0001 C CNN
	1    7850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4200 7150 3100
Wire Notes Line
	8400 5950 8400 4600
Wire Wire Line
	7150 4200 7150 5150
Text Notes 5800 5150 0    50   ~ 0
BLUE
Connection ~ 9450 5150
Wire Wire Line
	7850 5050 8600 5050
Wire Wire Line
	9450 5150 10000 5150
Wire Wire Line
	4050 4050 4050 3200
Text Notes 1350 1900 0    50   ~ 0
GPIO15
Text Notes 3150 3100 2    50   ~ 0
VCC
Wire Wire Line
	2150 1900 2150 1950
NoConn ~ 1850 2300
NoConn ~ 1850 2400
NoConn ~ 1850 2500
NoConn ~ 1850 2200
NoConn ~ 1850 2100
NoConn ~ 1850 2000
NoConn ~ 1850 1800
NoConn ~ 1850 1700
Wire Wire Line
	1850 1900 2150 1900
$Comp
L power:GND #PWR0101
U 1 1 5F8F540B
P 2150 2250
F 0 "#PWR0101" H 2150 2000 50  0001 C CNN
F 1 "GND" H 2155 2077 50  0001 C CNN
F 2 "" H 2150 2250 50  0001 C CNN
F 3 "" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F8F44A5
P 2150 2100
F 0 "R1" H 2220 2146 50  0000 L CNN
F 1 "10k" H 2220 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2080 2100 50  0001 C CNN
F 3 "~" H 2150 2100 50  0001 C CNN
	1    2150 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x13_Female J1
U 1 1 5F8AF6BB
P 1650 2200
F 0 "J1" H 1550 3100 50  0000 C CNN
F 1 "T-Beam left socket " H 1150 3200 50  0000 L BNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 1650 2200 50  0001 C CNN
F 3 "~" H 1650 2200 50  0001 C CNN
	1    1650 2200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F91FFE1
P 3250 3600
F 0 "#PWR0102" H 3250 3350 50  0001 C CNN
F 1 "GND" H 3255 3427 50  0001 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3400 3250 3400
Wire Wire Line
	2950 3500 3250 3500
$Comp
L power:+5V #PWR0108
U 1 1 601C9ED2
P 2650 2700
F 0 "#PWR0108" H 2650 2550 50  0001 C CNN
F 1 "+5V" H 2665 2873 50  0000 C CNN
F 2 "" H 2650 2700 50  0001 C CNN
F 3 "" H 2650 2700 50  0001 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3100 3200 3100
Wire Wire Line
	3200 3100 3200 2800
$Comp
L connettore-jst:B5B-ZR__LF__SN_ J2
U 1 1 6029447D
P 2950 3500
F 0 "J2" H 3300 3800 50  0000 L CNN
F 1 "SPS30" H 3250 3700 50  0000 L CNN
F 2 "connettore-jst:SHDR5W50P0X150_1X5_900X350X450P" H 3600 3600 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/13f2/0900766b813f2e95.pdf" H 3600 3500 50  0001 L CNN
F 4 "Connector,Multipole,PCB use,B5B-ZR (LF)( JST ZH Series, 1.5mm Pitch 5 Way 1 Row Straight PCB Header, Solder Termination, 1A" H 3600 3400 50  0001 L CNN "Description"
F 5 "4.5" H 3600 3300 50  0001 L CNN "Height"
F 6 "JST (JAPAN SOLDERLESS TERMINALS)" H 3600 3200 50  0001 L CNN "Manufacturer_Name"
F 7 "B5B-ZR (LF)(SN)" H 3600 3100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "N/A" H 3600 3000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 3600 2900 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3600 2800 50  0001 L CNN "Arrow Part Number"
F 11 "" H 3600 2700 50  0001 L CNN "Arrow Price/Stock"
	1    2950 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2800 2650 2800
Wire Wire Line
	2650 2700 2650 2800
Connection ~ 2650 2800
Wire Wire Line
	2650 2800 3200 2800
NoConn ~ 1850 2700
NoConn ~ 1850 2600
Wire Wire Line
	1850 1600 1950 1600
NoConn ~ 5250 2700
Text Notes 1350 1600 0    50   ~ 0
GPIO36
Text Notes 3000 3400 0    50   ~ 0
SEL
Text Notes 3000 3500 0    50   ~ 0
GND
Wire Wire Line
	3250 3400 3250 3500
Connection ~ 3250 3500
Wire Wire Line
	3250 3500 3250 3600
Wire Wire Line
	4150 4050 4150 3300
Text Label 3000 3200 0    50   ~ 0
SDA
Text Label 3000 3300 0    50   ~ 0
SCL
Text Label 6800 4200 0    50   ~ 0
12V
Wire Wire Line
	7700 5050 7850 5050
Connection ~ 7850 5050
Wire Wire Line
	7700 3000 7850 3000
Connection ~ 7850 3000
Wire Wire Line
	6400 3000 7400 3000
Wire Wire Line
	6400 3100 7150 3100
Wire Wire Line
	6400 4100 6600 4100
Wire Wire Line
	6400 4200 7150 4200
Wire Wire Line
	6400 5050 7400 5050
Wire Wire Line
	6400 5150 7150 5150
Text Label 1950 2800 0    50   ~ 0
5V
Text Label 5000 3000 0    50   ~ 0
3V3
Text Notes 4050 4000 1    50   ~ 0
SCL
Text Notes 3950 4000 1    50   ~ 0
GND
Text Notes 3850 4000 1    50   ~ 0
VCC
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5F8B6779
P 4050 4250
F 0 "J3" V 4300 4250 50  0000 R CNN
F 1 "BME680" V 4200 4350 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 4050 4250 50  0001 C CNN
F 3 "~" H 4050 4250 50  0001 C CNN
	1    4050 4250
	0    -1   1    0   
$EndComp
Wire Wire Line
	2950 3200 3400 3200
Wire Wire Line
	3400 3200 3500 3300
Wire Wire Line
	3500 3300 4150 3300
Connection ~ 4150 3300
Wire Wire Line
	4050 3200 3500 3200
Wire Wire Line
	3500 3200 3400 3300
Wire Wire Line
	3400 3300 2950 3300
Connection ~ 4050 3200
$Comp
L power:+3V3 #PWR0109
U 1 1 60606857
P 8900 4850
F 0 "#PWR0109" H 8900 4700 50  0001 C CNN
F 1 "+3V3" H 8915 5023 50  0000 C CNN
F 2 "" H 8900 4850 50  0001 C CNN
F 3 "" H 8900 4850 50  0001 C CNN
	1    8900 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
