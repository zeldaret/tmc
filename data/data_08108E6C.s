	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108E6C:: @ 08108E6C
	.incbin "baserom.gba", 0x108E6C, 0x000000C

gUnk_08108E78:: @ 08108E78
	.incbin "baserom.gba", 0x108E78, 0x0000018

gUnk_08108E90:: @ 08108E90
	.4byte gUnk_08108E6C
	.4byte gUnk_08108E78

gUnk_08108E98:: @ 08108E98
	.incbin "baserom.gba", 0x108E98, 0x000000C

gUnk_08108EA4:: @ 08108EA4
	.incbin "baserom.gba", 0x108EA4, 0x0000018

gUnk_08108EBC:: @ 08108EBC
	.4byte gUnk_08108E98
	.4byte gUnk_08108EA4

gUnk_08108EC4:: @ 08108EC4
	.incbin "baserom.gba", 0x108EC4, 0x000000C

gUnk_08108ED0:: @ 08108ED0
	.incbin "baserom.gba", 0x108ED0, 0x0000018

gUnk_08108EE8:: @ 08108EE8
	.4byte gUnk_08108EC4
	.4byte gUnk_08108ED0

gUnk_08108EF0:: @ 08108EF0
	.incbin "baserom.gba", 0x108EF0, 0x000000C

gUnk_08108EFC:: @ 08108EFC
	.incbin "baserom.gba", 0x108EFC, 0x0000018

gUnk_08108F14:: @ 08108F14
	.4byte gUnk_08108EF0
	.4byte gUnk_08108EFC

gUnk_08108F1C:: @ 08108F1C
	.incbin "baserom.gba", 0x108F1C, 0x000000C

gUnk_08108F28:: @ 08108F28
	.incbin "baserom.gba", 0x108F28, 0x0000018

gUnk_08108F40:: @ 08108F40
	.4byte gUnk_08108F1C
	.4byte gUnk_08108F28

gUnk_08108F48:: @ 08108F48
	.incbin "baserom.gba", 0x108F48, 0x0000004

gUnk_08108F4C:: @ 08108F4C
	.incbin "baserom.gba", 0x108F4C, 0x0000008

gUnk_08108F54:: @ 08108F54
	.incbin "baserom.gba", 0x108F54, 0x0000018

gUnk_08108F6C:: @ 08108F6C
	.4byte gUnk_08108F48
	.4byte gUnk_08108F54

gUnk_08108F74:: @ 08108F74
	.incbin "baserom.gba", 0x108F74, 0x000000C

gUnk_08108F80:: @ 08108F80
	.incbin "baserom.gba", 0x108F80, 0x0000018

gUnk_08108F98:: @ 08108F98
	.4byte gUnk_08108F74
	.4byte gUnk_08108F80

gUnk_08108FA0:: @ 08108FA0
	.incbin "baserom.gba", 0x108FA0, 0x000000C

gUnk_08108FAC:: @ 08108FAC
	.incbin "baserom.gba", 0x108FAC, 0x0000018

gUnk_08108FC4:: @ 08108FC4
	.4byte gUnk_08108FA0
	.4byte gUnk_08108FAC

gUnk_08108FCC:: @ 08108FCC
	.incbin "baserom.gba", 0x108FCC, 0x000000C

gUnk_08108FD8:: @ 08108FD8
	.incbin "baserom.gba", 0x108FD8, 0x0000018

gUnk_08108FF0:: @ 08108FF0
	.4byte gUnk_08108FCC
	.4byte gUnk_08108FD8

gUnk_08108FF8:: @ 08108FF8
	.incbin "baserom.gba", 0x108FF8, 0x000000C

gUnk_08109004:: @ 08109004
	.incbin "baserom.gba", 0x109004, 0x0000001

gUnk_08109005:: @ 08109005
	.incbin "baserom.gba", 0x109005, 0x0000014

gUnk_08109019:: @ 08109019
	.incbin "baserom.gba", 0x109019, 0x0000003

gUnk_0810901C:: @ 0810901C
	.4byte gUnk_08108FF8
	.4byte gUnk_08109004

gUnk_08109024:: @ 08109024
	.incbin "baserom.gba", 0x109024, 0x000000C

gUnk_08109030:: @ 08109030
	.incbin "baserom.gba", 0x109030, 0x0000003

gUnk_08109033:: @ 08109033
	.incbin "baserom.gba", 0x109033, 0x0000015

gUnk_08109048:: @ 08109048
	.4byte gUnk_08109024
	.4byte gUnk_08109030

gUnk_08109050:: @ 08109050
	.incbin "baserom.gba", 0x109050, 0x000000C

gUnk_0810905C:: @ 0810905C
	.incbin "baserom.gba", 0x10905C, 0x0000018

gUnk_08109074:: @ 08109074
	.4byte gUnk_08109050
	.4byte gUnk_0810905C

gUnk_0810907C:: @ 0810907C
	.incbin "baserom.gba", 0x10907C, 0x000000C

gUnk_08109088:: @ 08109088
	.incbin "baserom.gba", 0x109088, 0x0000018

gUnk_081090A0:: @ 081090A0
	.4byte gUnk_0810907C
	.4byte gUnk_08109088

gUnk_081090A8:: @ 081090A8
	.incbin "baserom.gba", 0x1090A8, 0x000000C

gUnk_081090B4:: @ 081090B4
	.incbin "baserom.gba", 0x1090B4, 0x0000018

gUnk_081090CC:: @ 081090CC
	.4byte gUnk_081090A8
	.4byte gUnk_081090B4

gUnk_081090D4:: @ 081090D4
	.incbin "baserom.gba", 0x1090D4, 0x000000C

gUnk_081090E0:: @ 081090E0
	.incbin "baserom.gba", 0x1090E0, 0x0000018

gUnk_081090F8:: @ 081090F8
	.4byte gUnk_081090D4
	.4byte gUnk_081090E0

gUnk_08109100:: @ 08109100
	.incbin "baserom.gba", 0x109100, 0x000000C

gUnk_0810910C:: @ 0810910C
	.incbin "baserom.gba", 0x10910C, 0x0000018

gUnk_08109124:: @ 08109124
	.4byte gUnk_08109100
	.4byte gUnk_0810910C

gUnk_0810912C:: @ 0810912C
	.incbin "baserom.gba", 0x10912C, 0x000000C

gUnk_08109138:: @ 08109138
	.4byte gUnk_0810912C
	.4byte gUnk_081090E0

gUnk_08109140:: @ 08109140
	.incbin "baserom.gba", 0x109140, 0x0000018

gUnk_08109158:: @ 08109158
	.4byte gUnk_08109100
	.4byte gUnk_08109140

gUnk_08109160:: @ 08109160
	.incbin "baserom.gba", 0x109160, 0x0000018

gUnk_08109178:: @ 08109178
	.4byte gUnk_081090D4
	.4byte gUnk_08109160

gUnk_08109180:: @ 08109180
	.incbin "baserom.gba", 0x109180, 0x000000C

gUnk_0810918C:: @ 0810918C
	.4byte gUnk_08109180
	.4byte gUnk_0810910C

gUnk_08109194:: @ 08109194
	.4byte gUnk_08108E90
	.4byte gUnk_08108EBC
	.4byte gUnk_08108EE8
	.4byte gUnk_08108F14
	.4byte gUnk_08108F40
	.4byte gUnk_08108F6C
	.4byte gUnk_08108F98
	.4byte gUnk_08108FC4
	.4byte gUnk_08108FF0
	.4byte gUnk_0810901C
	.4byte gUnk_08109048
	.4byte gUnk_08109074
	.4byte gUnk_081090A0
	.4byte gUnk_081090CC
	.4byte gUnk_081090F8
	.4byte gUnk_08109124
	.4byte gUnk_08109138
	.4byte gUnk_08109158
	.4byte gUnk_08109178
	.4byte gUnk_0810918C

gUnk_081091E4:: @ 081091E4
	.incbin "baserom.gba", 0x1091E4, 0x000000A

gUnk_081091EE:: @ 081091EE
	.incbin "baserom.gba", 0x1091EE, 0x000000A

gUnk_081091F8:: @ 081091F8
	.incbin "baserom.gba", 0x1091F8, 0x000000A

gUnk_08109202:: @ 08109202
	.incbin "baserom.gba", 0x109202, 0x0000012

gUnk_08109214:: @ 08109214
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90
	.4byte gUnk_089B1D90

gUnk_08109230:: @ 08109230
	.incbin "baserom.gba", 0x109230, 0x0000014

gUnk_08109244:: @ 08109244
	.incbin "baserom.gba", 0x109244, 0x0000004

gUnk_08109248:: @ 08109248 TODO might be a pointer array?
	.4byte gUnk_08692F60
	.4byte gUnk_08692F60
	.4byte gUnk_086978E0
	.4byte gUnk_08696F60
	.4byte gUnk_086AAEE0
	.4byte gUnk_086998E0
	.4byte gUnk_086A18E0
	.4byte gUnk_086A2A60
	.4byte gUnk_086A2EE0

gUnk_0810926C:: @ 0810926C
	.incbin "baserom.gba", 0x10926C, 0x0000040

gUnk_081092AC:: @ 081092AC
	.4byte gUnk_086926A0
	.4byte gUnk_08692780
	.4byte gUnk_08692860
	.4byte gUnk_08692940
	.4byte gUnk_08692A20
	.4byte gUnk_08692B00
	.4byte gUnk_08692BE0
	.4byte gUnk_08692CC0
	.4byte gUnk_08692DA0
	.4byte gUnk_08692E80

gUnk_081092D4:: @ 081092D4
	.incbin "baserom.gba", 0x1092D4, 0x000002F

gUnk_08109303:: @ 08109303
	.incbin "baserom.gba", 0x109303, 0x000005E

gUnk_08109361:: @ 08109361
	.incbin "baserom.gba", 0x109361, 0x00000A5

gUnk_08109406:: @ 08109406
	.incbin "baserom.gba", 0x109406, 0x0000028

gUnk_0810942E:: @ 0810942E
	.incbin "baserom.gba", 0x10942E, 0x00000A0

gUnk_081094CE:: @ 081094CE
	.incbin "baserom.gba", 0x1094CE, 0x00000FB

gUnk_081095C9:: @ 081095C9
	.incbin "baserom.gba", 0x1095C9, 0x000014C

gUnk_08109715:: @ 08109715
	.incbin "baserom.gba", 0x109715, 0x0000063

gUnk_08109778:: @ 08109778
	.incbin "baserom.gba", 0x109778, 0x0000005

gUnk_0810977D:: @ 0810977D
	.incbin "baserom.gba", 0x10977D, 0x0000017

gUnk_08109794:: @ 08109794
	.incbin "baserom.gba", 0x109794, 0x0000104

gUnk_08109898:: @ 08109898
	.incbin "baserom.gba", 0x109898, 0x000000F

gUnk_081098A7:: @ 081098A7
	.incbin "baserom.gba", 0x1098A7, 0x000005F

gUnk_08109906:: @ 08109906
	.incbin "baserom.gba", 0x109906, 0x000012A

gUnk_08109A30:: @ 08109A30
	.4byte sub_0805FA04
	.4byte sub_0805FA98
	.4byte sub_0805FBC4
	.4byte gUnk_08109AB8
	.4byte gUnk_08109AA8
	.4byte gUnk_08109A98
	.4byte gUnk_08109A88
	.4byte gUnk_08109A78
	.4byte gUnk_08109A68
	.4byte gUnk_08109A58

gUnk_08109A58:: @ 08109A58
	.incbin "baserom.gba", 0x109A58, 0x0000010

gUnk_08109A68:: @ 08109A68
	.incbin "baserom.gba", 0x109A68, 0x0000010

gUnk_08109A78:: @ 08109A78
	.incbin "baserom.gba", 0x109A78, 0x0000010

gUnk_08109A88:: @ 08109A88
	.incbin "baserom.gba", 0x109A88, 0x0000010

gUnk_08109A98:: @ 08109A98
	.incbin "baserom.gba", 0x109A98, 0x0000006

gUnk_08109A9E:: @ 08109A9E
	.incbin "baserom.gba", 0x109A9E, 0x000000A

gUnk_08109AA8:: @ 08109AA8
	.incbin "baserom.gba", 0x109AA8, 0x0000010

gUnk_08109AB8:: @ 08109AB8
	.incbin "baserom.gba", 0x109AB8, 0x0000010
