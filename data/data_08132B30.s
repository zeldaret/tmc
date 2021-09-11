	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08132B30:: @ 08132B30
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x132180, 0x0000203
.else
	.incbin "baserom.gba", 0x132B30, 0x0000203
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x132383, 0x00002E6
.else
	.incbin "baserom.gba", 0x132D33, 0x00002E6
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x132669, 0x00000F8
.else
	.incbin "baserom.gba", 0x133019, 0x00000F8
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x132761, 0x0000200
.else
	.incbin "baserom.gba", 0x133111, 0x0000200
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x132961, 0x0000022
.else
	.incbin "baserom.gba", 0x133311, 0x0000022
.endif
.ifdef EU
	.incbin "baserom_eu.gba", 0x132983, 0x0000031
.else
	.incbin "baserom.gba", 0x133333, 0x0000035
.endif

gUnk_08133368:: @ 08133368
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1329B4, 0x00005B0
.else
	.incbin "baserom.gba", 0x133368, 0x00005B0
.endif

gUnk_08133918:: @ 08133918
	.incbin "baserom.gba", 0x133918, 0x0000020

gUnk_08133938:: @ 08133938
	.incbin "baserom.gba", 0x133938, 0x0000020

gUnk_08133958:: @ 08133958
	.incbin "baserom.gba", 0x133958, 0x0000020

gUnk_08133978:: @ 08133978
	.incbin "baserom.gba", 0x133978, 0x0000020

gUnk_08133998:: @ 08133998
	.incbin "baserom.gba", 0x133998, 0x0000020

gUnk_081339B8:: @ 081339B8
	.incbin "baserom.gba", 0x1339B8, 0x0000020

gUnk_081339D8:: @ 081339D8
	.incbin "baserom.gba", 0x1339D8, 0x0000020

gUnk_081339F8:: @ 081339F8
	.incbin "baserom.gba", 0x1339F8, 0x0000020

gUnk_08133A18:: @ 08133A18
	.4byte sub_080AE3E4
	.4byte sub_080AE3E8
	.4byte sub_080AE3EC
	.4byte sub_080AE408
	.4byte sub_080AE424
	.4byte sub_080AE440
	.4byte sub_080AE45C
	.4byte sub_080AE478
	.4byte sub_080AE494
	.4byte sub_080AE4B0

gUnk_08133A40:: @ 08133A40
	.incbin "baserom.gba", 0x133A40, 0x000001A

gUnk_08133A5A:: @ 08133A5A
	.incbin "baserom.gba", 0x133A5A, 0x000000D

gUnk_08133A67:: @ 08133A67
	.incbin "baserom.gba", 0x133A67, 0x00004E1

gUnk_08133F48:: @ 08133F48
	.4byte sub_080AE800
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE8D8
	.4byte sub_080AE9CC
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEAC0
	.4byte sub_080AEBB4
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AECAC
	.4byte sub_080AEDA0
	.4byte sub_080AEE94
	.4byte sub_080AEE94
	.4byte sub_080AEE94
	.4byte sub_080AEE94
	.4byte sub_080AEE94
	.4byte sub_080AEE94
	.4byte sub_080AEE94

gUnk_08133FC8:: @ 08133FC8
	.incbin "baserom.gba", 0x133FC8, 0x0000014

gUnk_08133FDC:: @ 08133FDC
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081340DC:: @ 081340DC
	.incbin "baserom.gba", 0x1340DC, 0x000012C

gUnk_08134208:: @ 08134208
	.4byte gUnk_081340DC

gUnk_0813420C:: @ 0813420C
	.incbin "baserom.gba", 0x13420C, 0x00000DC

gUnk_081342E8:: @ 081342E8
	.incbin "baserom.gba", 0x1342E8, 0x0000050

gUnk_08134338:: @ 08134338
	.4byte gUnk_0813420C
	.4byte gUnk_081342E8

gUnk_08134340:: @ 08134340
	.incbin "baserom.gba", 0x134340, 0x00000C8

gUnk_08134408:: @ 08134408
	.4byte gUnk_08134340

gUnk_0813440C:: @ 0813440C
	.incbin "baserom.gba", 0x13440C, 0x000003C

gUnk_08134448:: @ 08134448
	.incbin "baserom.gba", 0x134448, 0x0000014

gUnk_0813445C:: @ 0813445C
	.incbin "baserom.gba", 0x13445C, 0x0000028

gUnk_08134484:: @ 08134484
	.incbin "baserom.gba", 0x134484, 0x0000028

gUnk_081344AC:: @ 081344AC
	.4byte gUnk_0813440C
	.4byte gUnk_08134448
	.4byte gUnk_08133FC8
	.4byte gUnk_0813445C
	.4byte gUnk_08134484
	.4byte gUnk_08133FC8

gUnk_081344C4:: @ 081344C4
	.incbin "baserom.gba", 0x1344C4, 0x00002D0

gUnk_08134794:: @ 08134794
	.4byte gUnk_081344C4

gUnk_08134798:: @ 08134798
	.incbin "baserom.gba", 0x134798, 0x0000028

gUnk_081347C0:: @ 081347C0
	.4byte gUnk_08134798

gUnk_081347C4:: @ 081347C4
	.incbin "baserom.gba", 0x1347C4, 0x000003C

gUnk_08134800:: @ 08134800
	.incbin "baserom.gba", 0x134800, 0x0000050

gUnk_08134850:: @ 08134850
	.incbin "baserom.gba", 0x134850, 0x00000B4

gUnk_08134904:: @ 08134904
	.incbin "baserom.gba", 0x134904, 0x0000064

gUnk_08134968:: @ 08134968
	.incbin "baserom.gba", 0x134968, 0x00000C8

gUnk_08134A30:: @ 08134A30
	.4byte gUnk_081347C4
	.4byte gUnk_08134800
	.4byte gUnk_08134850
	.4byte gUnk_08134904
	.4byte gUnk_08134968

gUnk_08134A44:: @ 08134A44
	.incbin "baserom.gba", 0x134A44, 0x0000028

gUnk_08134A6C:: @ 08134A6C
	.incbin "baserom.gba", 0x134A6C, 0x00000A0

gUnk_08134B0C:: @ 08134B0C
	.incbin "baserom.gba", 0x134B0C, 0x000003C

gUnk_08134B48:: @ 08134B48
	.incbin "baserom.gba", 0x134B48, 0x0000028

gUnk_08134B70:: @ 08134B70
	.incbin "baserom.gba", 0x134B70, 0x000003C

gUnk_08134BAC:: @ 08134BAC
	.incbin "baserom.gba", 0x134BAC, 0x00000DC

gUnk_08134C88:: @ 08134C88
	.incbin "baserom.gba", 0x134C88, 0x0000140

gUnk_08134DC8:: @ 08134DC8
	.incbin "baserom.gba", 0x134DC8, 0x00000DC

gUnk_08134EA4:: @ 08134EA4
	.incbin "baserom.gba", 0x134EA4, 0x000003C

gUnk_08134EE0:: @ 08134EE0
	.incbin "baserom.gba", 0x134EE0, 0x0000028

gUnk_08134F08:: @ 08134F08
	.4byte gUnk_08134A44
	.4byte gUnk_08134A6C
	.4byte gUnk_08134B0C
	.4byte gUnk_08134B48
	.4byte gUnk_08134B70
	.4byte gUnk_08134BAC
	.4byte gUnk_08134C88
	.4byte gUnk_08134DC8
	.4byte gUnk_08134EA4
	.4byte gUnk_08134EE0

gUnk_08134F30:: @ 08134F30
	.incbin "baserom.gba", 0x134F30, 0x000008C

gUnk_08134FBC:: @ 08134FBC
	.incbin "baserom.gba", 0x134FBC, 0x000008C

gUnk_08135048:: @ 08135048
	.incbin "baserom.gba", 0x135048, 0x0000028

gUnk_08135070:: @ 08135070
	.4byte gUnk_08134F30

gUnk_08135074:: @ 08135074
	.incbin "baserom.gba", 0x135074, 0x0000028

gUnk_0813509C:: @ 0813509C
	.4byte gUnk_08135074

gUnk_081350A0:: @ 081350A0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x1346EC, 0x00000C8
.else
	.incbin "baserom.gba", 0x1350A0, 0x00000C8
.endif

gUnk_08135168:: @ 08135168
	.incbin "baserom.gba", 0x135168, 0x0000028

gUnk_08135190:: @ 08135190
	.incbin "baserom.gba", 0x135190, 0x000003C

gUnk_081351CC:: @ 081351CC
	.4byte gUnk_081350A0
	.4byte gUnk_08135168

gUnk_081351D4:: @ 081351D4
	.incbin "baserom.gba", 0x1351D4, 0x0000104

gUnk_081352D8:: @ 081352D8
	.4byte gUnk_081351D4

gUnk_081352DC:: @ 081352DC
	.incbin "baserom.gba", 0x1352DC, 0x0000028

gUnk_08135304:: @ 08135304
	.incbin "baserom.gba", 0x135304, 0x0000028

gUnk_0813532C:: @ 0813532C
	.incbin "baserom.gba", 0x13532C, 0x0000028

gUnk_08135354:: @ 08135354
	.incbin "baserom.gba", 0x135354, 0x0000028

gUnk_0813537C:: @ 0813537C
	.incbin "baserom.gba", 0x13537C, 0x0000028

gUnk_081353A4:: @ 081353A4
	.incbin "baserom.gba", 0x1353A4, 0x000003C

gUnk_081353E0:: @ 081353E0
	.incbin "baserom.gba", 0x1353E0, 0x000003C

gUnk_0813541C:: @ 0813541C
	.incbin "baserom.gba", 0x13541C, 0x000003C

gUnk_08135458:: @ 08135458
	.incbin "baserom.gba", 0x135458, 0x000003C

gUnk_08135494:: @ 08135494
	.incbin "baserom.gba", 0x135494, 0x000003C

gUnk_081354D0:: @ 081354D0
	.4byte gUnk_081352DC
	.4byte gUnk_08135304
	.4byte gUnk_0813532C
	.4byte gUnk_08135354
	.4byte gUnk_0813537C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081353A4
	.4byte gUnk_081353E0
	.4byte gUnk_0813541C
	.4byte gUnk_08135458
	.4byte gUnk_08135494

gUnk_08135524:: @ 08135524
	.incbin "baserom.gba", 0x135524, 0x0000028

gUnk_0813554C:: @ 0813554C
	.4byte gUnk_08135524

gUnk_08135550:: @ 08135550
	.incbin "baserom.gba", 0x135550, 0x0000028

gUnk_08135578:: @ 08135578
	.4byte gUnk_08135550

gUnk_0813557C:: @ 0813557C
	.incbin "baserom.gba", 0x13557C, 0x0000118

gUnk_08135694:: @ 08135694
	.incbin "baserom.gba", 0x135694, 0x0000028

gUnk_081356BC:: @ 081356BC
	.4byte gUnk_0813557C
	.4byte gUnk_08135694
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081356CC:: @ 081356CC
	.incbin "baserom.gba", 0x1356CC, 0x0000078

gUnk_08135744:: @ 08135744
	.4byte gUnk_081356CC

gUnk_08135748:: @ 08135748
	.incbin "baserom.gba", 0x135748, 0x000003C

gUnk_08135784:: @ 08135784
	.incbin "baserom.gba", 0x135784, 0x000003C

gUnk_081357C0:: @ 081357C0
	.incbin "baserom.gba", 0x1357C0, 0x0000028

gUnk_081357E8:: @ 081357E8
	.incbin "baserom.gba", 0x1357E8, 0x0000028

gUnk_08135810:: @ 08135810
	.incbin "baserom.gba", 0x135810, 0x000003C

gUnk_0813584C:: @ 0813584C
	.4byte gUnk_08135748
	.4byte gUnk_08135784
	.4byte gUnk_081357C0
	.4byte gUnk_081357E8
	.4byte gUnk_08135810

gUnk_08135860:: @ 08135860
	.incbin "baserom.gba", 0x135860, 0x0000028

gUnk_08135888:: @ 08135888
	.incbin "baserom.gba", 0x135888, 0x0000028

gUnk_081358B0:: @ 081358B0
	.incbin "baserom.gba", 0x1358B0, 0x000003C

gUnk_081358EC:: @ 081358EC
	.incbin "baserom.gba", 0x1358EC, 0x000003C

gUnk_08135928:: @ 08135928
	.4byte gUnk_08135860
	.4byte gUnk_08135888
	.4byte gUnk_081358B0
	.4byte gUnk_081358EC

gUnk_08135938:: @ 08135938
	.incbin "baserom.gba", 0x135938, 0x000003C

gUnk_08135974:: @ 08135974
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08135938

gUnk_08135984:: @ 08135984
	.incbin "baserom.gba", 0x135984, 0x0000028

gUnk_081359AC:: @ 081359AC
	.incbin "baserom.gba", 0x1359AC, 0x0000028

gUnk_081359D4:: @ 081359D4
	.incbin "baserom.gba", 0x1359D4, 0x000003C

gUnk_08135A10:: @ 08135A10
	.incbin "baserom.gba", 0x135A10, 0x0000028

gUnk_08135A38:: @ 08135A38
	.incbin "baserom.gba", 0x135A38, 0x0000028

gUnk_08135A60:: @ 08135A60
	.incbin "baserom.gba", 0x135A60, 0x0000028

gUnk_08135A88:: @ 08135A88
	.incbin "baserom.gba", 0x135A88, 0x0000028

gUnk_08135AB0:: @ 08135AB0
	.incbin "baserom.gba", 0x135AB0, 0x0000028

gUnk_08135AD8:: @ 08135AD8
	.incbin "baserom.gba", 0x135AD8, 0x0000028

gUnk_08135B00:: @ 08135B00
	.incbin "baserom.gba", 0x135B00, 0x000003C

gUnk_08135B3C:: @ 08135B3C
	.incbin "baserom.gba", 0x135B3C, 0x0000028

gUnk_08135B64:: @ 08135B64
	.incbin "baserom.gba", 0x135B64, 0x0000028

gUnk_08135B8C:: @ 08135B8C
	.incbin "baserom.gba", 0x135B8C, 0x0000028

gUnk_08135BB4:: @ 08135BB4
	.incbin "baserom.gba", 0x135BB4, 0x0000028

gUnk_08135BDC:: @ 08135BDC
	.incbin "baserom.gba", 0x135BDC, 0x0000028

gUnk_08135C04:: @ 08135C04
	.incbin "baserom.gba", 0x135C04, 0x0000028

gUnk_08135C2C:: @ 08135C2C
	.incbin "baserom.gba", 0x135C2C, 0x0000028

gUnk_08135C54:: @ 08135C54
	.incbin "baserom.gba", 0x135C54, 0x0000028

gUnk_08135C7C:: @ 08135C7C
	.incbin "baserom.gba", 0x135C7C, 0x0000028

gUnk_08135CA4:: @ 08135CA4
	.incbin "baserom.gba", 0x135CA4, 0x0000028

gUnk_08135CCC:: @ 08135CCC
	.incbin "baserom.gba", 0x135CCC, 0x0000028

gUnk_08135CF4:: @ 08135CF4
	.incbin "baserom.gba", 0x135CF4, 0x0000028

gUnk_08135D1C:: @ 08135D1C
	.incbin "baserom.gba", 0x135D1C, 0x0000028

gUnk_08135D44:: @ 08135D44
	.4byte gUnk_08135984
	.4byte gUnk_081359AC
	.4byte gUnk_081359D4
	.4byte gUnk_08135A10
	.4byte gUnk_08135A38
	.4byte gUnk_08135A60
	.4byte gUnk_08135A88
	.4byte gUnk_08135AB0
	.4byte gUnk_08135AD8
	.4byte gUnk_08135B00
	.4byte gUnk_08135B3C
	.4byte gUnk_08135B64
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08135B8C
	.4byte gUnk_08135BB4
	.4byte gUnk_08135BDC
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08135C04
	.4byte gUnk_08135C2C
	.4byte gUnk_08135C54
	.4byte gUnk_08135C7C
	.4byte gUnk_08135CA4
	.4byte gUnk_08135CCC
	.4byte gUnk_08135CF4
	.4byte gUnk_08135D1C

gUnk_08135DE4:: @ 08135DE4
	.incbin "baserom.gba", 0x135DE4, 0x000008C

gUnk_08135E70:: @ 08135E70
	.incbin "baserom.gba", 0x135E70, 0x00000B4

gUnk_08135F24:: @ 08135F24
	.incbin "baserom.gba", 0x135F24, 0x00000B4

gUnk_08135FD8:: @ 08135FD8
	.incbin "baserom.gba", 0x135FD8, 0x0000028

gUnk_08136000:: @ 08136000
	.incbin "baserom.gba", 0x136000, 0x0000028

gUnk_08136028:: @ 08136028
	.4byte gUnk_08135DE4
	.4byte gUnk_08135E70
	.4byte gUnk_08135F24
	.4byte gUnk_08135FD8
	.4byte gUnk_08136000

gUnk_0813603C:: @ 0813603C
	.incbin "baserom.gba", 0x13603C, 0x0000050

gUnk_0813608C:: @ 0813608C
	.4byte gUnk_08133FC8
	.4byte gUnk_0813603C
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_081360A0:: @ 081360A0
	.incbin "baserom.gba", 0x1360A0, 0x0000028

gUnk_081360C8:: @ 081360C8
	.4byte gUnk_081360A0

gUnk_081360CC:: @ 081360CC
	.incbin "baserom.gba", 0x1360CC, 0x0000028

gUnk_081360F4:: @ 081360F4
	.incbin "baserom.gba", 0x1360F4, 0x0000028

gUnk_0813611C:: @ 0813611C
	.incbin "baserom.gba", 0x13611C, 0x0000028

gUnk_08136144:: @ 08136144
	.incbin "baserom.gba", 0x136144, 0x0000028

gUnk_0813616C:: @ 0813616C
	.incbin "baserom.gba", 0x13616C, 0x0000028

gUnk_08136194:: @ 08136194
	.incbin "baserom.gba", 0x136194, 0x0000028

gUnk_081361BC:: @ 081361BC
	.incbin "baserom.gba", 0x1361BC, 0x0000028

gUnk_081361E4:: @ 081361E4
	.incbin "baserom.gba", 0x1361E4, 0x0000028

gUnk_0813620C:: @ 0813620C
	.incbin "baserom.gba", 0x13620C, 0x0000028

gUnk_08136234:: @ 08136234
	.incbin "baserom.gba", 0x136234, 0x0000028

gUnk_0813625C:: @ 0813625C
	.incbin "baserom.gba", 0x13625C, 0x0000028

gUnk_08136284:: @ 08136284
	.incbin "baserom.gba", 0x136284, 0x0000028

gUnk_081362AC:: @ 081362AC
	.incbin "baserom.gba", 0x1362AC, 0x0000028

gUnk_081362D4:: @ 081362D4
	.incbin "baserom.gba", 0x1362D4, 0x000003C

gUnk_08136310:: @ 08136310
	.incbin "baserom.gba", 0x136310, 0x0000028

gUnk_08136338:: @ 08136338
	.incbin "baserom.gba", 0x136338, 0x0000014

gUnk_0813634C:: @ 0813634C
	.incbin "baserom.gba", 0x13634C, 0x0000028

gUnk_08136374:: @ 08136374
	.incbin "baserom.gba", 0x136374, 0x0000028

gUnk_0813639C:: @ 0813639C
	.4byte gUnk_081360CC
	.4byte gUnk_081360F4
	.4byte gUnk_0813611C
	.4byte gUnk_08136144
	.4byte gUnk_0813616C
	.4byte gUnk_08136194
	.4byte gUnk_081361BC
	.4byte gUnk_081361E4
	.4byte gUnk_0813620C
	.4byte gUnk_08136234
	.4byte gUnk_0813625C
	.4byte gUnk_08136284
	.4byte gUnk_081362AC
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081362D4
	.4byte gUnk_08133FC8
	.4byte gUnk_08136310
	.4byte gUnk_08136338
	.4byte gUnk_0813634C
	.4byte gUnk_08136374
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_0813645C:: @ 0813645C
	.incbin "baserom.gba", 0x13645C, 0x0000028

gUnk_08136484:: @ 08136484
	.incbin "baserom.gba", 0x136484, 0x0000028

gUnk_081364AC:: @ 081364AC
	.incbin "baserom.gba", 0x1364AC, 0x0000028

gUnk_081364D4:: @ 081364D4
	.incbin "baserom.gba", 0x1364D4, 0x0000028

gUnk_081364FC:: @ 081364FC
	.incbin "baserom.gba", 0x1364FC, 0x0000028

gUnk_08136524:: @ 08136524
	.incbin "baserom.gba", 0x136524, 0x0000028

gUnk_0813654C:: @ 0813654C
	.4byte gUnk_0813645C
	.4byte gUnk_08136484
	.4byte gUnk_081364AC
	.4byte gUnk_081364D4
	.4byte gUnk_081364FC
	.4byte gUnk_08136524
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_0813658C:: @ 0813658C
	.incbin "baserom.gba", 0x13658C, 0x0000028

gUnk_081365B4:: @ 081365B4
	.incbin "baserom.gba", 0x1365B4, 0x0000028

gUnk_081365DC:: @ 081365DC
	.incbin "baserom.gba", 0x1365DC, 0x0000028

gUnk_08136604:: @ 08136604
	.4byte gUnk_0813658C
	.4byte gUnk_081365B4
	.4byte gUnk_081365DC
	.4byte gUnk_08133FC8

gUnk_08136614:: @ 08136614
	.incbin "baserom.gba", 0x136614, 0x0000028

gUnk_0813663C:: @ 0813663C
	.incbin "baserom.gba", 0x13663C, 0x0000028

gUnk_08136664:: @ 08136664
	.incbin "baserom.gba", 0x136664, 0x0000028

gUnk_0813668C:: @ 0813668C
	.incbin "baserom.gba", 0x13668C, 0x0000028

gUnk_081366B4:: @ 081366B4
	.incbin "baserom.gba", 0x1366B4, 0x0000028

gUnk_081366DC:: @ 081366DC
	.incbin "baserom.gba", 0x1366DC, 0x000003C

gUnk_08136718:: @ 08136718
	.incbin "baserom.gba", 0x136718, 0x000003C

gUnk_08136754:: @ 08136754
	.incbin "baserom.gba", 0x136754, 0x0000028

gUnk_0813677C:: @ 0813677C
	.incbin "baserom.gba", 0x13677C, 0x0000028

gUnk_081367A4:: @ 081367A4
	.4byte gUnk_08136614
	.4byte gUnk_0813663C
	.4byte gUnk_08136664
	.4byte gUnk_0813668C
	.4byte gUnk_081366B4
	.4byte gUnk_081366DC
	.4byte gUnk_08136718
	.4byte gUnk_08136754
	.4byte gUnk_0813677C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081367E4:: @ 081367E4
	.incbin "baserom.gba", 0x1367E4, 0x000003C

gUnk_08136820:: @ 08136820
	.incbin "baserom.gba", 0x136820, 0x0000028

gUnk_08136848:: @ 08136848
	.incbin "baserom.gba", 0x136848, 0x000003C

gUnk_08136884:: @ 08136884
	.incbin "baserom.gba", 0x136884, 0x000003C

gUnk_081368C0:: @ 081368C0
	.incbin "baserom.gba", 0x1368C0, 0x0000078

gUnk_08136938:: @ 08136938
	.incbin "baserom.gba", 0x136938, 0x0000028

gUnk_08136960:: @ 08136960
	.incbin "baserom.gba", 0x136960, 0x0000028

gUnk_08136988:: @ 08136988
	.incbin "baserom.gba", 0x136988, 0x0000028

gUnk_081369B0:: @ 081369B0
	.incbin "baserom.gba", 0x1369B0, 0x0000028

gUnk_081369D8:: @ 081369D8
	.incbin "baserom.gba", 0x1369D8, 0x000003C

gUnk_08136A14:: @ 08136A14
	.incbin "baserom.gba", 0x136A14, 0x000003C

gUnk_08136A50:: @ 08136A50
	.incbin "baserom.gba", 0x136A50, 0x0000028

gUnk_08136A78:: @ 08136A78
	.4byte gUnk_081367E4
	.4byte gUnk_08136820
	.4byte gUnk_08136848
	.4byte gUnk_08136884
	.4byte gUnk_081368C0
	.4byte gUnk_08136938
	.4byte gUnk_08136960
	.4byte gUnk_08136988
	.4byte gUnk_081369B0
	.4byte gUnk_081369D8
	.4byte gUnk_08133FC8
	.4byte gUnk_08136A14
	.4byte gUnk_08136A50
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_08136AF8:: @ 08136AF8
	.incbin "baserom.gba", 0x136AF8, 0x0000028

gUnk_08136B20:: @ 08136B20
	.incbin "baserom.gba", 0x136B20, 0x000003C

gUnk_08136B5C:: @ 08136B5C
	.incbin "baserom.gba", 0x136B5C, 0x0000028

gUnk_08136B84:: @ 08136B84
	.incbin "baserom.gba", 0x136B84, 0x0000028

gUnk_08136BAC:: @ 08136BAC
	.incbin "baserom.gba", 0x136BAC, 0x000003C

gUnk_08136BE8:: @ 08136BE8
	.incbin "baserom.gba", 0x136BE8, 0x0000028

gUnk_08136C10:: @ 08136C10
	.incbin "baserom.gba", 0x136C10, 0x000003C

gUnk_08136C4C:: @ 08136C4C
	.incbin "baserom.gba", 0x136C4C, 0x000003C

gUnk_08136C88:: @ 08136C88
	.incbin "baserom.gba", 0x136C88, 0x000003C

gUnk_08136CC4:: @ 08136CC4
	.incbin "baserom.gba", 0x136CC4, 0x000003C

gUnk_08136D00:: @ 08136D00
	.incbin "baserom.gba", 0x136D00, 0x0000028

gUnk_08136D28:: @ 08136D28
	.incbin "baserom.gba", 0x136D28, 0x000003C

gUnk_08136D64:: @ 08136D64
	.incbin "baserom.gba", 0x136D64, 0x000003C

gUnk_08136DA0:: @ 08136DA0
	.incbin "baserom.gba", 0x136DA0, 0x0000028

gUnk_08136DC8:: @ 08136DC8
	.incbin "baserom.gba", 0x136DC8, 0x000003C

gUnk_08136E04:: @ 08136E04
	.incbin "baserom.gba", 0x136E04, 0x0000014

gUnk_08136E18:: @ 08136E18
	.incbin "baserom.gba", 0x136E18, 0x0000028

gUnk_08136E40:: @ 08136E40
	.4byte gUnk_08136AF8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08136B20
	.4byte gUnk_08136B5C
	.4byte gUnk_08136B84
	.4byte gUnk_08136BAC
	.4byte gUnk_08136BE8
	.4byte gUnk_08136C10
	.4byte gUnk_08136C4C
	.4byte gUnk_08136C88
	.4byte gUnk_08136CC4
	.4byte gUnk_08136D00
	.4byte gUnk_08136D28
	.4byte gUnk_08136D64
	.4byte gUnk_08136DA0
	.4byte gUnk_08136DC8
	.4byte gUnk_08136E04
	.4byte gUnk_08136E18

gUnk_08136EC0:: @ 08136EC0
	.incbin "baserom.gba", 0x136EC0, 0x0000028

gUnk_08136EE8:: @ 08136EE8
	.incbin "baserom.gba", 0x136EE8, 0x0000028

gUnk_08136F10:: @ 08136F10
	.incbin "baserom.gba", 0x136F10, 0x0000028

gUnk_08136F38:: @ 08136F38
	.incbin "baserom.gba", 0x136F38, 0x0000028

gUnk_08136F60:: @ 08136F60
	.incbin "baserom.gba", 0x136F60, 0x0000028

gUnk_08136F88:: @ 08136F88
	.incbin "baserom.gba", 0x136F88, 0x0000028

gUnk_08136FB0:: @ 08136FB0
	.incbin "baserom.gba", 0x136FB0, 0x0000028

gUnk_08136FD8:: @ 08136FD8
	.4byte gUnk_08136EC0
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08136EE8
	.4byte gUnk_08133FC8
	.4byte gUnk_08136F10
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08136F38
	.4byte gUnk_08136F60
	.4byte gUnk_08136F88
	.4byte gUnk_08136FB0
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_08137018:: @ 08137018
	.incbin "baserom.gba", 0x137018, 0x0000028

gUnk_08137040:: @ 08137040
	.incbin "baserom.gba", 0x137040, 0x0000028

gUnk_08137068:: @ 08137068
	.incbin "baserom.gba", 0x137068, 0x0000028

gUnk_08137090:: @ 08137090
	.incbin "baserom.gba", 0x137090, 0x0000028

gUnk_081370B8:: @ 081370B8
	.incbin "baserom.gba", 0x1370B8, 0x0000028

gUnk_081370E0:: @ 081370E0
	.incbin "baserom.gba", 0x1370E0, 0x0000014

gUnk_081370F4:: @ 081370F4
	.incbin "baserom.gba", 0x1370F4, 0x0000028

gUnk_0813711C:: @ 0813711C
	.incbin "baserom.gba", 0x13711C, 0x0000028

gUnk_08137144:: @ 08137144
	.incbin "baserom.gba", 0x137144, 0x0000028

gUnk_0813716C:: @ 0813716C
	.incbin "baserom.gba", 0x13716C, 0x0000028

gUnk_08137194:: @ 08137194
	.incbin "baserom.gba", 0x137194, 0x0000028

gUnk_081371BC:: @ 081371BC
	.incbin "baserom.gba", 0x1371BC, 0x0000028

gUnk_081371E4:: @ 081371E4
	.incbin "baserom.gba", 0x1371E4, 0x0000028

gUnk_0813720C:: @ 0813720C
	.incbin "baserom.gba", 0x13720C, 0x0000028

gUnk_08137234:: @ 08137234
	.incbin "baserom.gba", 0x137234, 0x0000014

gUnk_08137248:: @ 08137248
	.4byte gUnk_08137018
	.4byte gUnk_08137040
	.4byte gUnk_08137068
	.4byte gUnk_08137090
	.4byte gUnk_081370B8
	.4byte gUnk_081370E0
	.4byte gUnk_081370F4
	.4byte gUnk_0813711C
	.4byte gUnk_08137144
	.4byte gUnk_0813716C
	.4byte gUnk_08137194
	.4byte gUnk_081371BC
	.4byte gUnk_081371E4
	.4byte gUnk_0813720C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08137234
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081372A8:: @ 081372A8
	.incbin "baserom.gba", 0x1372A8, 0x0000064

gUnk_0813730C:: @ 0813730C
	.incbin "baserom.gba", 0x13730C, 0x000003C

gUnk_08137348:: @ 08137348
	.incbin "baserom.gba", 0x137348, 0x000003C

gUnk_08137384:: @ 08137384
	.incbin "baserom.gba", 0x137384, 0x000003C

gUnk_081373C0:: @ 081373C0
	.incbin "baserom.gba", 0x1373C0, 0x0000028

gUnk_081373E8:: @ 081373E8
	.incbin "baserom.gba", 0x1373E8, 0x0000028

gUnk_08137410:: @ 08137410
	.incbin "baserom.gba", 0x137410, 0x000003C

gUnk_0813744C:: @ 0813744C
	.incbin "baserom.gba", 0x13744C, 0x000003C

gUnk_08137488:: @ 08137488
	.incbin "baserom.gba", 0x137488, 0x0000028

gUnk_081374B0:: @ 081374B0
	.incbin "baserom.gba", 0x1374B0, 0x0000028

gUnk_081374D8:: @ 081374D8
	.incbin "baserom.gba", 0x1374D8, 0x000003C

gUnk_08137514:: @ 08137514
	.incbin "baserom.gba", 0x137514, 0x000003C

gUnk_08137550:: @ 08137550
	.incbin "baserom.gba", 0x137550, 0x000003C

gUnk_0813758C:: @ 0813758C
	.incbin "baserom.gba", 0x13758C, 0x0000028

gUnk_081375B4:: @ 081375B4
	.incbin "baserom.gba", 0x1375B4, 0x0000028

gUnk_081375DC:: @ 081375DC
	.incbin "baserom.gba", 0x1375DC, 0x0000028

gUnk_08137604:: @ 08137604
	.incbin "baserom.gba", 0x137604, 0x000003C

gUnk_08137640:: @ 08137640
	.4byte gUnk_081372A8
	.4byte gUnk_0813730C
	.4byte gUnk_08137348
	.4byte gUnk_08137384
	.4byte gUnk_081373C0
	.4byte gUnk_081373E8
	.4byte gUnk_08137410
	.4byte gUnk_0813744C
	.4byte gUnk_08137488
	.4byte gUnk_081374B0
	.4byte gUnk_081374D8
	.4byte gUnk_08137514
	.4byte gUnk_08137550
	.4byte gUnk_0813758C
	.4byte gUnk_081375B4
	.4byte gUnk_081375DC
	.4byte gUnk_08137604

gUnk_08137684:: @ 08137684
	.incbin "baserom.gba", 0x137684, 0x0000028

gUnk_081376AC:: @ 081376AC
	.incbin "baserom.gba", 0x1376AC, 0x000003C

gUnk_081376E8:: @ 081376E8
	.incbin "baserom.gba", 0x1376E8, 0x0000028

gUnk_08137710:: @ 08137710
	.incbin "baserom.gba", 0x137710, 0x000003C

gUnk_0813774C:: @ 0813774C
	.incbin "baserom.gba", 0x13774C, 0x0000028

gUnk_08137774:: @ 08137774
	.4byte gUnk_08137684
	.4byte gUnk_081376AC
	.4byte gUnk_081376E8
	.4byte gUnk_08137710
	.4byte gUnk_0813774C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_08137794:: @ 08137794
	.incbin "baserom.gba", 0x137794, 0x0000014

gUnk_081377A8:: @ 081377A8
	.incbin "baserom.gba", 0x1377A8, 0x0000028

gUnk_081377D0:: @ 081377D0
	.4byte gUnk_08137794
	.4byte gUnk_081377A8
	.4byte 00000000
	.4byte 00000000

gUnk_081377E0:: @ 081377E0
	.incbin "baserom.gba", 0x1377E0, 0x0000028

gUnk_08137808:: @ 08137808
	.incbin "baserom.gba", 0x137808, 0x0000028

gUnk_08137830:: @ 08137830
	.incbin "baserom.gba", 0x137830, 0x0000028

gUnk_08137858:: @ 08137858
	.incbin "baserom.gba", 0x137858, 0x0000028

gUnk_08137880:: @ 08137880
	.incbin "baserom.gba", 0x137880, 0x0000028

gUnk_081378A8:: @ 081378A8
	.incbin "baserom.gba", 0x1378A8, 0x0000028

gUnk_081378D0:: @ 081378D0
	.incbin "baserom.gba", 0x1378D0, 0x0000028

gUnk_081378F8:: @ 081378F8
	.incbin "baserom.gba", 0x1378F8, 0x0000028

gUnk_08137920:: @ 08137920
	.incbin "baserom.gba", 0x137920, 0x0000028

gUnk_08137948:: @ 08137948
	.incbin "baserom.gba", 0x137948, 0x0000028

gUnk_08137970:: @ 08137970
	.incbin "baserom.gba", 0x137970, 0x0000028

gUnk_08137998:: @ 08137998
	.4byte gUnk_081377E0
	.4byte gUnk_08137808
	.4byte gUnk_08137830
	.4byte gUnk_08137858
	.4byte gUnk_08137880
	.4byte gUnk_081378A8
	.4byte gUnk_081378D0
	.4byte gUnk_081378F8
	.4byte gUnk_08137920
	.4byte gUnk_08137948
	.4byte gUnk_08137970

gUnk_081379C4:: @ 081379C4
	.incbin "baserom.gba", 0x1379C4, 0x0000028

gUnk_081379EC:: @ 081379EC
	.incbin "baserom.gba", 0x1379EC, 0x0000028

gUnk_08137A14:: @ 08137A14
	.incbin "baserom.gba", 0x137A14, 0x0000028

gUnk_08137A3C:: @ 08137A3C
	.incbin "baserom.gba", 0x137A3C, 0x0000028

gUnk_08137A64:: @ 08137A64
	.incbin "baserom.gba", 0x137A64, 0x0000028

gUnk_08137A8C:: @ 08137A8C
	.incbin "baserom.gba", 0x137A8C, 0x0000050

gUnk_08137ADC:: @ 08137ADC
	.incbin "baserom.gba", 0x137ADC, 0x0000028

gUnk_08137B04:: @ 08137B04
	.incbin "baserom.gba", 0x137B04, 0x0000028

gUnk_08137B2C:: @ 08137B2C
	.4byte gUnk_081379C4
	.4byte gUnk_081379EC
	.4byte gUnk_08137A14
	.4byte gUnk_08137A3C
	.4byte gUnk_08137A64
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08137A8C
	.4byte gUnk_08137ADC
	.4byte gUnk_08137B04
	.4byte gUnk_08133FC8

gUnk_08137B7C:: @ 08137B7C
	.incbin "baserom.gba", 0x137B7C, 0x000003C

gUnk_08137BB8:: @ 08137BB8
	.incbin "baserom.gba", 0x137BB8, 0x000003C

gUnk_08137BF4:: @ 08137BF4
	.incbin "baserom.gba", 0x137BF4, 0x0000028

gUnk_08137C1C:: @ 08137C1C
	.incbin "baserom.gba", 0x137C1C, 0x000003C

gUnk_08137C58:: @ 08137C58
	.4byte gUnk_08137B7C
	.4byte gUnk_08137BB8
	.4byte gUnk_08137BF4
	.4byte gUnk_08137C1C

gUnk_08137C68:: @ 08137C68
	.incbin "baserom.gba", 0x137C68, 0x000003C

gUnk_08137CA4:: @ 08137CA4
	.incbin "baserom.gba", 0x137CA4, 0x0000028

gUnk_08137CCC:: @ 08137CCC
	.4byte gUnk_08137C68
	.4byte gUnk_08137CA4

gUnk_08137CD4:: @ 08137CD4
	.incbin "baserom.gba", 0x137CD4, 0x000003C

gUnk_08137D10:: @ 08137D10
	.incbin "baserom.gba", 0x137D10, 0x000003C

gUnk_08137D4C:: @ 08137D4C
	.incbin "baserom.gba", 0x137D4C, 0x000003C

gUnk_08137D88:: @ 08137D88
	.incbin "baserom.gba", 0x137D88, 0x000003C

gUnk_08137DC4:: @ 08137DC4
	.4byte gUnk_08137CD4
	.4byte gUnk_08137D10
	.4byte gUnk_08137D4C
	.4byte gUnk_08137D88

gUnk_08137DD4:: @ 08137DD4
	.incbin "baserom.gba", 0x137DD4, 0x0000028

gUnk_08137DFC:: @ 08137DFC
	.4byte gUnk_08137DD4

gUnk_08137E00:: @ 08137E00
	.incbin "baserom.gba", 0x137E00, 0x0000078

gUnk_08137E78:: @ 08137E78
	.incbin "baserom.gba", 0x137E78, 0x0000064

gUnk_08137EDC:: @ 08137EDC
	.incbin "baserom.gba", 0x137EDC, 0x0000028

gUnk_08137F04:: @ 08137F04
	.incbin "baserom.gba", 0x137F04, 0x0000014

gUnk_08137F18:: @ 08137F18
	.incbin "baserom.gba", 0x137F18, 0x0000014

gUnk_08137F2C:: @ 08137F2C
	.incbin "baserom.gba", 0x137F2C, 0x0000014

gUnk_08137F40:: @ 08137F40
	.incbin "baserom.gba", 0x137F40, 0x0000028

gUnk_08137F68:: @ 08137F68
	.incbin "baserom.gba", 0x137F68, 0x0000028

gUnk_08137F90:: @ 08137F90
	.incbin "baserom.gba", 0x137F90, 0x0000028

gUnk_08137FB8:: @ 08137FB8
	.incbin "baserom.gba", 0x137FB8, 0x0000014

gUnk_08137FCC:: @ 08137FCC
	.incbin "baserom.gba", 0x137FCC, 0x0000028

gUnk_08137FF4:: @ 08137FF4
	.incbin "baserom.gba", 0x137FF4, 0x000003C

gUnk_08138030:: @ 08138030
	.incbin "baserom.gba", 0x138030, 0x000003C

gUnk_0813806C:: @ 0813806C
	.incbin "baserom.gba", 0x13806C, 0x0000028

gUnk_08138094:: @ 08138094
	.incbin "baserom.gba", 0x138094, 0x0000028

gUnk_081380BC:: @ 081380BC
	.incbin "baserom.gba", 0x1380BC, 0x0000028

gUnk_081380E4:: @ 081380E4
	.incbin "baserom.gba", 0x1380E4, 0x0000028

gUnk_0813810C:: @ 0813810C
	.incbin "baserom.gba", 0x13810C, 0x0000028

gUnk_08138134:: @ 08138134
	.incbin "baserom.gba", 0x138134, 0x0000014

gUnk_08138148:: @ 08138148
	.incbin "baserom.gba", 0x138148, 0x000003C

gUnk_08138184:: @ 08138184
	.incbin "baserom.gba", 0x138184, 0x0000028

gUnk_081381AC:: @ 081381AC
	.incbin "baserom.gba", 0x1381AC, 0x0000028

gUnk_081381D4:: @ 081381D4
	.4byte gUnk_08137E00
	.4byte gUnk_08137E78
	.4byte gUnk_08137EDC
	.4byte gUnk_08137F04
	.4byte gUnk_08137F18
	.4byte gUnk_08137F2C
	.4byte gUnk_08133FC8
	.4byte gUnk_08137F40
	.4byte gUnk_08137F68
	.4byte gUnk_08137F90
	.4byte gUnk_08137FB8
	.4byte gUnk_08137FCC
	.4byte gUnk_08137FF4
	.4byte gUnk_08133FC8
	.4byte gUnk_08138030
	.4byte gUnk_0813806C
	.4byte gUnk_08138094
	.4byte gUnk_081380BC
	.4byte gUnk_081380E4
	.4byte gUnk_0813810C
	.4byte gUnk_08138134
	.4byte gUnk_08138148
	.4byte gUnk_08138184
	.4byte gUnk_081381AC

gUnk_08138234:: @ 08138234
	.incbin "baserom.gba", 0x138234, 0x0000050

gUnk_08138284:: @ 08138284
	.incbin "baserom.gba", 0x138284, 0x0000064

gUnk_081382E8:: @ 081382E8
	.incbin "baserom.gba", 0x1382E8, 0x000003C

gUnk_08138324:: @ 08138324
	.incbin "baserom.gba", 0x138324, 0x000003C

gUnk_08138360:: @ 08138360
	.incbin "baserom.gba", 0x138360, 0x0000028

gUnk_08138388:: @ 08138388
	.incbin "baserom.gba", 0x138388, 0x000003C

gUnk_081383C4:: @ 081383C4
	.incbin "baserom.gba", 0x1383C4, 0x000003C

gUnk_08138400:: @ 08138400
	.incbin "baserom.gba", 0x138400, 0x000003C

gUnk_0813843C:: @ 0813843C
	.incbin "baserom.gba", 0x13843C, 0x0000028

gUnk_08138464:: @ 08138464
	.4byte gUnk_08138234
	.4byte gUnk_08138284
	.4byte gUnk_08133FC8
	.4byte gUnk_081382E8
	.4byte gUnk_08138324
	.4byte gUnk_08138360
	.4byte gUnk_08138388
	.4byte gUnk_081383C4
	.4byte gUnk_08138400
	.4byte gUnk_0813843C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081384A4:: @ 081384A4
	.incbin "baserom.gba", 0x1384A4, 0x0000028

gUnk_081384CC:: @ 081384CC
	.incbin "baserom.gba", 0x1384CC, 0x0000028

gUnk_081384F4:: @ 081384F4
	.4byte gUnk_081384A4
	.4byte gUnk_081384CC

gUnk_081384FC:: @ 081384FC
	.incbin "baserom.gba", 0x1384FC, 0x0000028

gUnk_08138524:: @ 08138524
	.incbin "baserom.gba", 0x138524, 0x0000028

gUnk_0813854C:: @ 0813854C
	.incbin "baserom.gba", 0x13854C, 0x0000028

gUnk_08138574:: @ 08138574
	.incbin "baserom.gba", 0x138574, 0x0000028

gUnk_0813859C:: @ 0813859C
	.incbin "baserom.gba", 0x13859C, 0x0000028

gUnk_081385C4:: @ 081385C4
	.incbin "baserom.gba", 0x1385C4, 0x0000028

gUnk_081385EC:: @ 081385EC
	.incbin "baserom.gba", 0x1385EC, 0x000003C

gUnk_08138628:: @ 08138628
	.incbin "baserom.gba", 0x138628, 0x0000050

gUnk_08138678:: @ 08138678
	.4byte gUnk_081384FC
	.4byte gUnk_08138524
	.4byte gUnk_08133FC8
	.4byte gUnk_0813854C
	.4byte gUnk_08138574
	.4byte gUnk_0813859C
	.4byte gUnk_08133FC8
	.4byte gUnk_081385C4
	.4byte gUnk_081385EC
	.4byte gUnk_08138628

gUnk_081386A0:: @ 081386A0
	.incbin "baserom.gba", 0x1386A0, 0x0000028

gUnk_081386C8:: @ 081386C8
	.incbin "baserom.gba", 0x1386C8, 0x0000028

gUnk_081386F0:: @ 081386F0
	.4byte gUnk_081386A0
	.4byte gUnk_081386C8

gUnk_081386F8:: @ 081386F8
	.incbin "baserom.gba", 0x1386F8, 0x0000028

gUnk_08138720:: @ 08138720
	.incbin "baserom.gba", 0x138720, 0x0000028

gUnk_08138748:: @ 08138748
	.4byte gUnk_081386F8
	.4byte gUnk_08138720

gUnk_08138750:: @ 08138750
	.incbin "baserom.gba", 0x138750, 0x0000064

gUnk_081387B4:: @ 081387B4
	.incbin "baserom.gba", 0x1387B4, 0x000003C

gUnk_081387F0:: @ 081387F0
	.4byte gUnk_08138750
	.4byte gUnk_081387B4

gUnk_081387F8:: @ 081387F8
	.incbin "baserom.gba", 0x1387F8, 0x0000028

gUnk_08138820:: @ 08138820
	.incbin "baserom.gba", 0x138820, 0x0000028

gUnk_08138848:: @ 08138848
	.4byte gUnk_081387F8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138820
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081388A8:: @ 081388A8
	.incbin "baserom.gba", 0x1388A8, 0x0000028

gUnk_081388D0:: @ 081388D0
	.incbin "baserom.gba", 0x1388D0, 0x0000028

gUnk_081388F8:: @ 081388F8
	.4byte gUnk_081388A8
	.4byte gUnk_081388D0

gUnk_08138900:: @ 08138900
	.incbin "baserom.gba", 0x138900, 0x0000028

gUnk_08138928:: @ 08138928
	.incbin "baserom.gba", 0x138928, 0x0000028

gUnk_08138950:: @ 08138950
	.4byte gUnk_08138900
	.4byte gUnk_08138928

gUnk_08138958:: @ 08138958
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_0813897C:: @ 0813897C
.ifdef EU
	.incbin "baserom.gba", 0x13897C, 0x0000028
.else
	.incbin "baserom.gba", 0x13897C, 0x0000028
.endif

gUnk_081389A4:: @ 081389A4
.ifdef EU
	.incbin "baserom_eu.gba", 0x137FF0, 0x0000028
.else
	.incbin "baserom.gba", 0x1389A4, 0x0000014
.endif

gUnk_081389B8:: @ 081389B8
.ifdef EU
	.incbin "baserom_eu.gba", 0x138018, 0x0000028
.else
	.incbin "baserom.gba", 0x1389B8, 0x0000014
.endif

gUnk_081389CC:: @ 081389CC
.ifdef EU
	.incbin "baserom_eu.gba", 0x138040, 0x0000028
.else
	.incbin "baserom.gba", 0x1389CC, 0x0000014
.endif	

gUnk_081389E0:: @ 081389E0
.ifdef EU
	.incbin "baserom_eu.gba", 0x138068, 0x0000028
.else
	.incbin "baserom.gba", 0x1389E0, 0x0000014
.endif

gUnk_081389F4:: @ 081389F4
.ifdef EU
	.incbin "baserom_eu.gba", 0x138090, 0x00000B4
.else
	.incbin "baserom.gba", 0x1389F4, 0x0000064
.endif

gUnk_08138A58:: @ 08138A58
	.incbin "baserom.gba", 0x138A58, 0x0000050

gUnk_08138AA8:: @ 08138AA8
	.incbin "baserom.gba", 0x138AA8, 0x0000028

gUnk_08138AD0:: @ 08138AD0
	.incbin "baserom.gba", 0x138AD0, 0x0000028

gUnk_08138AF8:: @ 08138AF8
	.incbin "baserom.gba", 0x138AF8, 0x0000050

gUnk_08138B48:: @ 08138B48
	.4byte gUnk_08133FC8
	.4byte gUnk_081389A4
	.4byte gUnk_0813897C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081389B8
	.4byte gUnk_081389F4
	.4byte gUnk_081389CC
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081389E0
	.4byte gUnk_08138A58
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138AA8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138AF8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_08138BCC:: @ 08138BCC
	.4byte gUnk_08138AD0

gUnk_08138BD0:: @ 08138BD0
	.incbin "baserom.gba", 0x138BD0, 0x0000064

gUnk_08138C34:: @ 08138C34
	.4byte gUnk_08138BD0

gUnk_08138C38:: @ 08138C38
	.incbin "baserom.gba", 0x138C38, 0x0000028

gUnk_08138C60:: @ 08138C60
	.incbin "baserom.gba", 0x138C60, 0x0000028

gUnk_08138C88:: @ 08138C88
	.incbin "baserom.gba", 0x138C88, 0x0000028

gUnk_08138CB0:: @ 08138CB0
	.incbin "baserom.gba", 0x138CB0, 0x0000028

gUnk_08138CD8:: @ 08138CD8
	.incbin "baserom.gba", 0x138CD8, 0x0000028

gUnk_08138D00:: @ 08138D00
	.incbin "baserom.gba", 0x138D00, 0x0000028

gUnk_08138D28:: @ 08138D28
	.incbin "baserom.gba", 0x138D28, 0x0000028

gUnk_08138D50:: @ 08138D50
	.4byte gUnk_08138C38
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138C60
	.4byte gUnk_08138C88
	.4byte gUnk_08138CB0
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138CD8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138D00
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138D28
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_08138DD4:: @ 08138DD4
	.incbin "baserom.gba", 0x138DD4, 0x0000028

gUnk_08138DFC:: @ 08138DFC
	.incbin "baserom.gba", 0x138DFC, 0x000003C

gUnk_08138E38:: @ 08138E38
	.incbin "baserom.gba", 0x138E38, 0x0000028

gUnk_08138E60:: @ 08138E60
	.incbin "baserom.gba", 0x138E60, 0x000003C

gUnk_08138E9C:: @ 08138E9C
	.incbin "baserom.gba", 0x138E9C, 0x0000028

gUnk_08138EC4:: @ 08138EC4
	.incbin "baserom.gba", 0x138EC4, 0x0000028

gUnk_08138EEC:: @ 08138EEC
	.incbin "baserom.gba", 0x138EEC, 0x0000028

gUnk_08138F14:: @ 08138F14
	.incbin "baserom.gba", 0x138F14, 0x000003C

gUnk_08138F50:: @ 08138F50
	.incbin "baserom.gba", 0x138F50, 0x0000028

gUnk_08138F78:: @ 08138F78
	.incbin "baserom.gba", 0x138F78, 0x0000028

gUnk_08138FA0:: @ 08138FA0
	.incbin "baserom.gba", 0x138FA0, 0x0000028

gUnk_08138FC8:: @ 08138FC8
	.incbin "baserom.gba", 0x138FC8, 0x000003C

gUnk_08139004:: @ 08139004
	.incbin "baserom.gba", 0x139004, 0x000003C

gUnk_08139040:: @ 08139040
	.incbin "baserom.gba", 0x139040, 0x000003C

gUnk_0813907C:: @ 0813907C
	.incbin "baserom.gba", 0x13907C, 0x000003C

gUnk_081390B8:: @ 081390B8
	.incbin "baserom.gba", 0x1390B8, 0x0000028

gUnk_081390E0:: @ 081390E0
	.incbin "baserom.gba", 0x1390E0, 0x0000028

gUnk_08139108:: @ 08139108
	.4byte gUnk_08133FC8
	.4byte gUnk_08138DD4
	.4byte gUnk_08138DFC
	.4byte gUnk_08138E38
	.4byte gUnk_08138E60
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08138E9C
	.4byte gUnk_08138EC4
	.4byte gUnk_08138EEC
	.4byte gUnk_08138F14
	.4byte gUnk_08138F50
	.4byte gUnk_08138F78
	.4byte gUnk_08138FA0
	.4byte gUnk_08138FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139004
	.4byte gUnk_08139040
	.4byte gUnk_0813907C
	.4byte gUnk_081390B8
	.4byte gUnk_081390E0
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081391A8:: @ 081391A8
	.incbin "baserom.gba", 0x1391A8, 0x0000028

gUnk_081391D0:: @ 081391D0
	.4byte gUnk_081391A8

gUnk_081391D4:: @ 081391D4
	.incbin "baserom.gba", 0x1391D4, 0x0000028

gUnk_081391FC:: @ 081391FC
	.4byte gUnk_081391D4
	.4byte gUnk_081391D4

gUnk_08139204:: @ 08139204
	.incbin "baserom.gba", 0x139204, 0x0000028

gUnk_0813922C:: @ 0813922C
	.incbin "baserom.gba", 0x13922C, 0x0000028

gUnk_08139254:: @ 08139254
	.incbin "baserom.gba", 0x139254, 0x000003C

gUnk_08139290:: @ 08139290
	.incbin "baserom.gba", 0x139290, 0x0000028

gUnk_081392B8:: @ 081392B8
	.incbin "baserom.gba", 0x1392B8, 0x0000028

gUnk_081392E0:: @ 081392E0
	.incbin "baserom.gba", 0x1392E0, 0x0000028

gUnk_08139308:: @ 08139308
	.incbin "baserom.gba", 0x139308, 0x0000028

gUnk_08139330:: @ 08139330
	.incbin "baserom.gba", 0x139330, 0x000003C

gUnk_0813936C:: @ 0813936C
	.incbin "baserom.gba", 0x13936C, 0x0000028

gUnk_08139394:: @ 08139394
	.incbin "baserom.gba", 0x139394, 0x0000028

gUnk_081393BC:: @ 081393BC
	.incbin "baserom.gba", 0x1393BC, 0x0000078

gUnk_08139434:: @ 08139434
	.incbin "baserom.gba", 0x139434, 0x0000028

gUnk_0813945C:: @ 0813945C
	.incbin "baserom.gba", 0x13945C, 0x0000028

gUnk_08139484:: @ 08139484
	.incbin "baserom.gba", 0x139484, 0x0000028

gUnk_081394AC:: @ 081394AC
	.incbin "baserom.gba", 0x1394AC, 0x0000028

gUnk_081394D4:: @ 081394D4
	.incbin "baserom.gba", 0x1394D4, 0x0000028

gUnk_081394FC:: @ 081394FC
	.incbin "baserom.gba", 0x1394FC, 0x000003C

gUnk_08139538:: @ 08139538
	.incbin "baserom.gba", 0x139538, 0x0000028

gUnk_08139560:: @ 08139560
	.incbin "baserom.gba", 0x139560, 0x0000028

gUnk_08139588:: @ 08139588
	.incbin "baserom.gba", 0x139588, 0x0000028

gUnk_081395B0:: @ 081395B0
	.incbin "baserom.gba", 0x1395B0, 0x0000028

gUnk_081395D8:: @ 081395D8
	.4byte gUnk_08139204
	.4byte gUnk_08133FC8
	.4byte gUnk_0813922C
	.4byte gUnk_0813936C
	.4byte gUnk_08139484
	.4byte gUnk_081394AC
	.4byte gUnk_08133FC8
	.4byte gUnk_08139394
	.4byte gUnk_081393BC
	.4byte gUnk_08139434
	.4byte gUnk_08133FC8
	.4byte gUnk_08139254
	.4byte gUnk_08133FC8
	.4byte gUnk_081394D4
	.4byte gUnk_0813945C
	.4byte gUnk_081394FC
	.4byte gUnk_08139290
	.4byte gUnk_081392B8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081392E0
	.4byte gUnk_08139308
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139538
	.4byte gUnk_08139560
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139330
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139588
	.4byte gUnk_081395B0
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081396D8:: @ 081396D8
	.incbin "baserom.gba", 0x1396D8, 0x000003C

gUnk_08139714:: @ 08139714
	.4byte gUnk_081396D8

gUnk_08139718:: @ 08139718
	.incbin "baserom.gba", 0x139718, 0x0000014

gUnk_0813972C:: @ 0813972C
	.incbin "baserom.gba", 0x13972C, 0x0000028

gUnk_08139754:: @ 08139754
	.incbin "baserom.gba", 0x139754, 0x000003C

gUnk_08139790:: @ 08139790
	.incbin "baserom.gba", 0x139790, 0x0000028

gUnk_081397B8:: @ 081397B8
	.incbin "baserom.gba", 0x1397B8, 0x0000028

gUnk_081397E0:: @ 081397E0
	.4byte gUnk_08133FC8
	.4byte gUnk_08139718
	.4byte gUnk_0813972C
	.4byte gUnk_08133FC8
	.4byte gUnk_08139754
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139790
	.4byte gUnk_081397B8

gUnk_08139804:: @ 08139804
	.incbin "baserom.gba", 0x139804, 0x0000028

gUnk_0813982C:: @ 0813982C
	.incbin "baserom.gba", 0x13982C, 0x0000028

gUnk_08139854:: @ 08139854
	.incbin "baserom.gba", 0x139854, 0x0000028

gUnk_0813987C:: @ 0813987C
	.incbin "baserom.gba", 0x13987C, 0x0000028

gUnk_081398A4:: @ 081398A4
	.incbin "baserom.gba", 0x1398A4, 0x0000028

gUnk_081398CC:: @ 081398CC
	.incbin "baserom.gba", 0x1398CC, 0x000003C

gUnk_08139908:: @ 08139908
	.incbin "baserom.gba", 0x139908, 0x000003C

gUnk_08139944:: @ 08139944
	.incbin "baserom.gba", 0x139944, 0x000003C

gUnk_08139980:: @ 08139980
	.incbin "baserom.gba", 0x139980, 0x0000028

gUnk_081399A8:: @ 081399A8
	.incbin "baserom.gba", 0x1399A8, 0x0000028

gUnk_081399D0:: @ 081399D0
	.incbin "baserom.gba", 0x1399D0, 0x0000064

gUnk_08139A34:: @ 08139A34
	.incbin "baserom.gba", 0x139A34, 0x0000028

gUnk_08139A5C:: @ 08139A5C
	.incbin "baserom.gba", 0x139A5C, 0x0000028

gUnk_08139A84:: @ 08139A84
	.incbin "baserom.gba", 0x139A84, 0x0000028

gUnk_08139AAC:: @ 08139AAC
	.incbin "baserom.gba", 0x139AAC, 0x0000050

gUnk_08139AFC:: @ 08139AFC
	.incbin "baserom.gba", 0x139AFC, 0x0000028

gUnk_08139B24:: @ 08139B24
	.incbin "baserom.gba", 0x139B24, 0x0000028

gUnk_08139B4C:: @ 08139B4C
	.incbin "baserom.gba", 0x139B4C, 0x000003C

gUnk_08139B88:: @ 08139B88
	.incbin "baserom.gba", 0x139B88, 0x000003C

gUnk_08139BC4:: @ 08139BC4
	.incbin "baserom.gba", 0x139BC4, 0x0000028

gUnk_08139BEC:: @ 08139BEC
	.incbin "baserom.gba", 0x139BEC, 0x000003C

gUnk_08139C28:: @ 08139C28
	.4byte gUnk_08139804
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_0813982C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139854
	.4byte gUnk_0813987C
	.4byte gUnk_081398A4
	.4byte gUnk_081398CC
	.4byte gUnk_08133FC8
	.4byte gUnk_08139908
	.4byte gUnk_08139944
	.4byte gUnk_08133FC8
	.4byte gUnk_08139980
	.4byte gUnk_08133FC8
	.4byte gUnk_081399A8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_081399D0
	.4byte gUnk_08133FC8
	.4byte gUnk_08139A34
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139A5C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139A84
	.4byte gUnk_08133FC8
	.4byte gUnk_08139AAC
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139AFC
	.4byte gUnk_08139B24
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139B4C
	.4byte gUnk_08133FC8
	.4byte gUnk_08139B88
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139BC4
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139BEC
	.4byte gUnk_08133FC8
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_08139D0C:: @ 08139D0C
	.incbin "baserom.gba", 0x139D0C, 0x0000050

gUnk_08139D5C:: @ 08139D5C
	.incbin "baserom.gba", 0x139D5C, 0x0000028

gUnk_08139D84:: @ 08139D84
	.incbin "baserom.gba", 0x139D84, 0x0000028

gUnk_08139DAC:: @ 08139DAC
	.incbin "baserom.gba", 0x139DAC, 0x0000028

gUnk_08139DD4:: @ 08139DD4
	.incbin "baserom.gba", 0x139DD4, 0x0000028

gUnk_08139DFC:: @ 08139DFC
	.incbin "baserom.gba", 0x139DFC, 0x000003C

gUnk_08139E38:: @ 08139E38
	.incbin "baserom.gba", 0x139E38, 0x000003C

gUnk_08139E74:: @ 08139E74
	.incbin "baserom.gba", 0x139E74, 0x0000050

gUnk_08139EC4:: @ 08139EC4
	.incbin "baserom.gba", 0x139EC4, 0x0000050

gUnk_08139F14:: @ 08139F14
	.incbin "baserom.gba", 0x139F14, 0x000003C

gUnk_08139F50:: @ 08139F50
	.incbin "baserom.gba", 0x139F50, 0x0000028

gUnk_08139F78:: @ 08139F78
	.incbin "baserom.gba", 0x139F78, 0x0000028

gUnk_08139FA0:: @ 08139FA0
	.incbin "baserom.gba", 0x139FA0, 0x0000050

gUnk_08139FF0:: @ 08139FF0
	.incbin "baserom.gba", 0x139FF0, 0x0000028

gUnk_0813A018:: @ 0813A018
	.incbin "baserom.gba", 0x13A018, 0x0000028

gUnk_0813A040:: @ 0813A040
	.incbin "baserom.gba", 0x13A040, 0x0000050

gUnk_0813A090:: @ 0813A090
	.incbin "baserom.gba", 0x13A090, 0x0000028

gUnk_0813A0B8:: @ 0813A0B8
	.incbin "baserom.gba", 0x13A0B8, 0x0000028

gUnk_0813A0E0:: @ 0813A0E0
	.incbin "baserom.gba", 0x13A0E0, 0x0000028

gUnk_0813A108:: @ 0813A108
	.incbin "baserom.gba", 0x13A108, 0x0000028

gUnk_0813A130:: @ 0813A130
	.incbin "baserom.gba", 0x13A130, 0x0000028

gUnk_0813A158:: @ 0813A158
	.incbin "baserom.gba", 0x13A158, 0x0000028

gUnk_0813A180:: @ 0813A180
	.incbin "baserom.gba", 0x13A180, 0x0000028

gUnk_0813A1A8:: @ 0813A1A8
	.incbin "baserom.gba", 0x13A1A8, 0x0000028

gUnk_0813A1D0:: @ 0813A1D0
	.incbin "baserom.gba", 0x13A1D0, 0x0000028

gUnk_0813A1F8:: @ 0813A1F8
	.incbin "baserom.gba", 0x13A1F8, 0x0000028

gUnk_0813A220:: @ 0813A220
	.incbin "baserom.gba", 0x13A220, 0x0000028

gUnk_0813A248:: @ 0813A248
	.incbin "baserom.gba", 0x13A248, 0x000003C

gUnk_0813A284:: @ 0813A284
	.incbin "baserom.gba", 0x13A284, 0x0000028

gUnk_0813A2AC:: @ 0813A2AC
	.4byte gUnk_08139D0C
	.4byte gUnk_08139D5C
	.4byte gUnk_08139D84
	.4byte gUnk_08139DAC
	.4byte gUnk_08139DD4
	.4byte gUnk_08139DFC
	.4byte gUnk_08139E38
	.4byte gUnk_08139E74
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139EC4
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139F14
	.4byte gUnk_08133FC8
	.4byte gUnk_08139F50
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08139F78
	.4byte gUnk_08133FC8
	.4byte gUnk_08139FA0
	.4byte gUnk_08139FF0
	.4byte gUnk_08133FC8
	.4byte gUnk_0813A018
	.4byte gUnk_0813A040
	.4byte gUnk_0813A090
	.4byte gUnk_0813A0B8
	.4byte gUnk_0813A0E0
	.4byte gUnk_0813A108
	.4byte gUnk_0813A130
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_0813A158
	.4byte gUnk_0813A180
	.4byte gUnk_0813A1A8
	.4byte gUnk_0813A1D0
	.4byte gUnk_0813A1F8
	.4byte gUnk_0813A220
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_0813A248
	.4byte gUnk_0813A284
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_0813A3C0:: @ 0813A3C0
	.incbin "baserom.gba", 0x13A3C0, 0x0000028

gUnk_0813A3E8:: @ 0813A3E8
	.incbin "baserom.gba", 0x13A3E8, 0x000003C

gUnk_0813A424:: @ 0813A424
	.incbin "baserom.gba", 0x13A424, 0x0000028

gUnk_0813A44C:: @ 0813A44C
	.incbin "baserom.gba", 0x13A44C, 0x0000028

gUnk_0813A474:: @ 0813A474
	.incbin "baserom.gba", 0x13A474, 0x000003C

gUnk_0813A4B0:: @ 0813A4B0
	.incbin "baserom.gba", 0x13A4B0, 0x0000028

gUnk_0813A4D8:: @ 0813A4D8
	.incbin "baserom.gba", 0x13A4D8, 0x000003C

gUnk_0813A514:: @ 0813A514
	.incbin "baserom.gba", 0x13A514, 0x0000028

gUnk_0813A53C:: @ 0813A53C
	.4byte gUnk_0813A3C0
	.4byte gUnk_0813A3E8
	.4byte gUnk_0813A424
	.4byte gUnk_0813A44C
	.4byte gUnk_0813A474
	.4byte gUnk_0813A4B0
	.4byte gUnk_0813A4D8
	.4byte gUnk_0813A514

gUnk_0813A55C:: @ 0813A55C
	.incbin "baserom.gba", 0x13A55C, 0x0000028

gUnk_0813A584:: @ 0813A584
	.incbin "baserom.gba", 0x13A584, 0x0000028

gUnk_0813A5AC:: @ 0813A5AC
	.4byte gUnk_0813A55C
	.4byte gUnk_0813A584

gUnk_0813A5B4:: @ 0813A5B4
	.incbin "baserom.gba", 0x13A5B4, 0x000003C

gUnk_0813A5F0:: @ 0813A5F0
	.4byte gUnk_0813A5B4

gUnk_0813A5F4:: @ 0813A5F4
	.incbin "baserom.gba", 0x13A5F4, 0x000003C

gUnk_0813A630:: @ 0813A630
	.incbin "baserom.gba", 0x13A630, 0x000003C

gUnk_0813A66C:: @ 0813A66C
	.incbin "baserom.gba", 0x13A66C, 0x0000078

gUnk_0813A6E4:: @ 0813A6E4
	.4byte gUnk_0813A5F4
	.4byte gUnk_0813A630
	.4byte gUnk_08133FC8
	.4byte gUnk_0813A66C
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_0813A704:: @ 0813A704
	.incbin "baserom.gba", 0x13A704, 0x000003C

gUnk_0813A740:: @ 0813A740
	.4byte gUnk_0813A704

gUnk_0813A744:: @ 0813A744
	.incbin "baserom.gba", 0x13A744, 0x0000028

gUnk_0813A76C:: @ 0813A76C
	.incbin "baserom.gba", 0x13A76C, 0x0000028

gUnk_0813A794:: @ 0813A794
	.incbin "baserom.gba", 0x13A794, 0x0000028

gUnk_0813A7BC:: @ 0813A7BC
	.incbin "baserom.gba", 0x13A7BC, 0x0000028

gUnk_0813A7E4:: @ 0813A7E4
	.4byte gUnk_0813A744
	.4byte gUnk_0813A794
	.4byte gUnk_0813A7BC

gUnk_0813A7F0:: @ 0813A7F0
	.4byte gUnk_08134208
	.4byte gUnk_081356BC
	.4byte gUnk_08134794
	.4byte gUnk_08134F08
	.4byte gUnk_08134408
	.4byte gUnk_081344AC
	.4byte gUnk_08134A30
	.4byte gUnk_08135070
	.4byte gUnk_0813509C
	.4byte gUnk_081351CC
	.4byte gUnk_081352D8
	.4byte gUnk_08134338
	.4byte gUnk_0813554C
	.4byte gUnk_081354D0
	.4byte gUnk_08133FDC
	.4byte gUnk_08135578
	.4byte gUnk_08135744
	.4byte gUnk_0813584C
	.4byte gUnk_08135928
	.4byte gUnk_08135974
	.4byte gUnk_08133FDC
	.4byte gUnk_081347C0
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08136028
	.4byte gUnk_0813608C
	.4byte gUnk_081360C8
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08135D44
	.4byte gUnk_08136A78
	.4byte gUnk_0813639C
	.4byte gUnk_081367A4
	.4byte gUnk_08136E40
	.4byte gUnk_08136FD8
	.4byte gUnk_08137640
	.4byte gUnk_08137248
	.4byte gUnk_0813654C
	.4byte gUnk_08136604
	.4byte gUnk_08137774
	.4byte gUnk_081377D0
	.4byte gUnk_08137998
	.4byte gUnk_08137B2C
	.4byte gUnk_08137C58
	.4byte gUnk_08137CCC
	.4byte gUnk_08137DC4
	.4byte gUnk_08137DFC
	.4byte gUnk_081381D4
	.4byte gUnk_08138464
	.4byte gUnk_081384F4
	.4byte gUnk_08138678
	.4byte gUnk_081386F0
	.4byte gUnk_08138748
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08138958
	.4byte gUnk_081387F0
	.4byte gUnk_081388F8
	.4byte gUnk_08138950
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08138958
	.4byte gUnk_08133FDC
	.4byte gUnk_08138B48
	.4byte gUnk_08138BCC
	.4byte gUnk_08138C34
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08138D50
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.ifndef DEMO_USA
	.4byte gUnk_08139108
	.4byte gUnk_081391D0
	.4byte gUnk_081391FC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.endif
	.4byte gUnk_081395D8
	.4byte gUnk_08139714
	.4byte gUnk_08138848
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_081397E0
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08139C28
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_0813A7E4
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_0813A6E4
	.4byte gUnk_0813A740
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_0813A2AC
	.4byte gUnk_0813A53C
	.4byte gUnk_0813A5AC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_0813A5F0
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC
	.4byte gUnk_08133FDC

gUnk_0813AA54:: @ 0813AA54
	.incbin "baserom.gba", 0x13AA54, 0x0000014

gUnk_0813AA68:: @ 0813AA68
	.incbin "baserom.gba", 0x13AA68, 0x0000014

gUnk_0813AA7C:: @ 0813AA7C
	.incbin "baserom.gba", 0x13AA7C, 0x0000014

gUnk_0813AA90:: @ 0813AA90
	.incbin "baserom.gba", 0x13AA90, 0x0000014

gUnk_0813AAA4:: @ 0813AAA4
	.incbin "baserom.gba", 0x13AAA4, 0x0000014

gUnk_0813AAB8:: @ 0813AAB8
	.incbin "baserom.gba", 0x13AAB8, 0x0000014

gUnk_0813AACC:: @ 0813AACC
	.incbin "baserom.gba", 0x13AACC, 0x0000014

gUnk_0813AAE0:: @ 0813AAE0
	.incbin "baserom.gba", 0x13AAE0, 0x0000014

gUnk_0813AAF4:: @ 0813AAF4
	.incbin "baserom.gba", 0x13AAF4, 0x0000014

gUnk_0813AB08:: @ 0813AB08
	.incbin "baserom.gba", 0x13AB08, 0x0000014

gUnk_0813AB1C:: @ 0813AB1C
	.4byte gUnk_0813AA54
	.4byte gUnk_0813AA68
	.4byte gUnk_0813AA7C
	.4byte gUnk_0813AA90
	.4byte gUnk_0813AAA4
	.4byte gUnk_0813AAB8
	.4byte gUnk_0813AACC
	.4byte gUnk_0813AAE0
	.4byte gUnk_0813AAF4
	.4byte gUnk_0813AB08
	.4byte 0x00000001
	.4byte 0x00480000
	.4byte 0x07000068
	.4byte 0x02000100
	.4byte 00000000

gUnk_0813AB58:: @ 0813AB58
	.incbin "baserom.gba", 0x13AB58, 0x0000014

gUnk_0813AB6C:: @ 0813AB6C
	.incbin "baserom.gba", 0x13AB6C, 0x0000014

gUnk_0813AB80:: @ 0813AB80
	.incbin "baserom.gba", 0x13AB80, 0x0000014

gUnk_0813AB94:: @ 0813AB94
	.incbin "baserom.gba", 0x13AB94, 0x0000014

gUnk_0813ABA8:: @ 0813ABA8
	.incbin "baserom.gba", 0x13ABA8, 0x0000014

gUnk_0813ABBC:: @ 0813ABBC
	.incbin "baserom.gba", 0x13ABBC, 0x0000014

gUnk_0813ABD0:: @ 0813ABD0
	.incbin "baserom.gba", 0x13ABD0, 0x0000014

gUnk_0813ABE4:: @ 0813ABE4
	.incbin "baserom.gba", 0x13ABE4, 0x0000014

gUnk_0813ABF8:: @ 0813ABF8
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x13A824, 0x0000014
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x13A824, 0x0000014
.else
	.incbin "baserom.gba", 0x13ABF8, 0x0000014
.endif
.endif

gUnk_0813AC0C:: @ 0813AC0C
	.incbin "baserom.gba", 0x13AC0C, 0x0000014

gUnk_0813AC20:: @ 0813AC20
	.incbin "baserom.gba", 0x13AC20, 0x0000014

gUnk_0813AC34:: @ 0813AC34
	.incbin "baserom.gba", 0x13AC34, 0x0000014

gUnk_0813AC48:: @ 0813AC48
	.incbin "baserom.gba", 0x13AC48, 0x0000014

gUnk_0813AC5C:: @ 0813AC5C
	.incbin "baserom.gba", 0x13AC5C, 0x0000014

gUnk_0813AC70:: @ 0813AC70
	.incbin "baserom.gba", 0x13AC70, 0x0000014

gUnk_0813AC84:: @ 0813AC84
	.incbin "baserom.gba", 0x13AC84, 0x0000014

gUnk_0813AC98:: @ 0813AC98
	.incbin "baserom.gba", 0x13AC98, 0x0000014

gUnk_0813ACAC:: @ 0813ACAC
	.incbin "baserom.gba", 0x13ACAC, 0x0000014

gUnk_0813ACC0:: @ 0813ACC0
	.incbin "baserom.gba", 0x13ACC0, 0x0000014

gUnk_0813ACD4:: @ 0813ACD4
	.incbin "baserom.gba", 0x13ACD4, 0x0000014

gUnk_0813ACE8:: @ 0813ACE8
	.incbin "baserom.gba", 0x13ACE8, 0x0000014

gUnk_0813ACFC:: @ 0813ACFC
	.incbin "baserom.gba", 0x13ACFC, 0x0000014

gUnk_0813AD10:: @ 0813AD10
	.incbin "baserom.gba", 0x13AD10, 0x0000014

gUnk_0813AD24:: @ 0813AD24
	.incbin "baserom.gba", 0x13AD24, 0x0000014

gUnk_0813AD38:: @ 0813AD38
	.incbin "baserom.gba", 0x13AD38, 0x0000014

gUnk_0813AD4C:: @ 0813AD4C
	.incbin "baserom.gba", 0x13AD4C, 0x0000014

gUnk_0813AD60:: @ 0813AD60
	.incbin "baserom.gba", 0x13AD60, 0x0000014

gUnk_0813AD74:: @ 0813AD74
	.incbin "baserom.gba", 0x13AD74, 0x0000014

gUnk_0813AD88:: @ 0813AD88
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x13A474, 0x0000064
.else
	.incbin "baserom.gba", 0x13AD88, 0x0000064
.endif

gUnk_0813ADEC:: @ 0813ADEC
	.incbin "baserom.gba", 0x13ADEC, 0x0000028

gUnk_0813AE14:: @ 0813AE14
	.incbin "baserom.gba", 0x13AE14, 0x008DE60

gUnk_081C8C74:: @ 081C8C74
	.incbin "baserom.gba", 0x1C8C74, 0x000EA00

gUnk_081D7674:: @ 081D7674
	.incbin "baserom.gba", 0x1D7674, 0x00081C0

gUnk_081DF834:: @ 081DF834
	.incbin "baserom.gba", 0x1DF834, 0x001F980

gUnk_081FF1B4:: @ 081FF1B4
	.incbin "baserom.gba", 0x1FF1B4, 0x0019300

@ 0x2184B4 - 0x21DCB3
	.incbin "graphics/npc/postman.4bpp"

@ 0x21DCB4 - 0x21E913
	.incbin "graphics/npc/malon.4bpp"
	.incbin "baserom.gba", 0x21E8F4, 0x0002D07
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x220CE7, 0x00003F6
.else
	.incbin "baserom.gba", 0x2215FB, 0x00003F6
.endif
	.incbin "baserom.gba", 0x2219F1, 0x0025AE3

gUnk_082474D4:: @ 082474D4
	.incbin "baserom.gba", 0x2474D4, 0x008D3C0

gUnk_082D4894::
	.incbin "graphics/pot_portal.4bpp"
	.incbin "baserom.gba", 0x2D5A94, 0x0010E60

gUnk_082E68F4:: @ 082E68F4
	.incbin "baserom.gba", 0x2E68F4, 0x000BF00

gUnk_082F27F4:: @ 082F27F4
	.incbin "baserom.gba", 0x2F27F4, 0x0001580

gUnk_082F3D74:: @ 082F3D74
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F3460, 0x000018F
.else
	.incbin "baserom.gba", 0x2F3D74, 0x000018F
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F35EF, 0x0000015
.else
	.incbin "baserom.gba", 0x2F3F03, 0x0000015
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F3604, 0x0000215
.else
	.incbin "baserom.gba", 0x2F3F18, 0x0000215
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F3819, 0x000030B
.else
	.incbin "baserom.gba", 0x2F412D, 0x000030B
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F3B24, 0x0000BCF
.else
	.incbin "baserom.gba", 0x2F4438, 0x0000BCF
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F46F3, 0x0000051
.else
	.incbin "baserom.gba", 0x2F5007, 0x0000051
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F4744, 0x00000B9
.else
	.incbin "baserom.gba", 0x2F5058, 0x00000B9
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F47FD, 0x000015B
.else
	.incbin "baserom.gba", 0x2F5111, 0x000015B
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2F4958, 0x00079B8
.else
	.incbin "baserom.gba", 0x2F526C, 0x00079B8
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2FC310, 0x00011D5
.else
	.incbin "baserom.gba", 0x2FCC24, 0x00011D5
.endif
.ifdef EU
	@ TODO remove the 4 bytes at the correct place
	.incbin "baserom_eu.gba", 0x2FD4E5, 0x00004E4
.else
	.incbin "baserom.gba", 0x2FDDF9, 0x00004E8
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x2FD9C9, 0x0001CBE
.else
	.incbin "baserom.gba", 0x2FE2E1, 0x0001CBE
.endif
	.incbin "baserom.gba", 0x2FFF9F, 0x0008E6A
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x3084F1, 0x0000817
.else
	.incbin "baserom.gba", 0x308E09, 0x0000817
.endif
	.incbin "baserom.gba", 0x309620, 0x000E4E0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x3171E8, 0x00026A1
.else
	.incbin "baserom.gba", 0x317B00, 0x00026A1
.endif
	.incbin "baserom.gba", 0x31A1A1, 0x000238E

.ifdef EU
@ TODO differs to gUnk_08324AE4
	.incbin "baserom_eu.gba", 0x31BC17, 0x00083D5
.else
	.incbin "baserom.gba", 0x31C52F, 0x00085B5
.endif

gUnk_08324AE4:: @ 08324AE4
	.incbin "baserom.gba", 0x324AE4, 0x00003D0
	.incbin "data/tilesets/minish_woods/tiles_bottom.4bpp.lz"
	.incbin "baserom.gba", 0x327B08, 0x001DB6F

@ TODO EU differs from here
.ifdef EU
	.incbin "baserom_eu.gba", 0x344B7F, 0x025D851
.else
	.incbin "baserom.gba", 0x345677, 0x0200EEF

@ TODO JP differs from here
.ifdef JP
	.incbin "baserom_jp.gba", 0x546192, 0x005C98E
.else
@ TODO JP differs from here
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x546192, 0x005C98E
.else
	.incbin "baserom.gba", 0x546566, 0x005C91A

.endif
.endif
.endif

@ TODO JP and EU differ to here

gGlobalGfxAndPalettes:: @ 085A2E80
	.incbin "baserom.gba", 0x5A2E80, 0x00044A0

gUnk_085A7320:: @ 085A7320
	.incbin "baserom.gba", 0x5A7320, 0x0002480

gUnk_085A97A0:: @ 085A97A0
	.incbin "baserom.gba", 0x5A97A0, 0x000A9E0

gUnk_085B4180:: @ 085B4180
.ifdef EU
	@TODO differs to
	.incbin "baserom_eu.gba", 0x5B36D0, 0x0001D00
.else
	.incbin "baserom.gba", 0x5B4180, 0x0001D40
.endif

@ TODO figurine Data
gUnk_085B5EC0:: @ 085B5EC0
	.incbin "baserom.gba", 0x5B5EC0, 0x00000E0

gUnk_085B5FA0:: @ 085B5FA0
	.incbin "baserom.gba", 0x5B5FA0, 0x00000E0

gUnk_085B6080:: @ 085B6080
	.incbin "baserom.gba", 0x5B6080, 0x00000E0

gUnk_085B6160:: @ 085B6160
	.incbin "baserom.gba", 0x5B6160, 0x00000E0

gUnk_085B6240:: @ 085B6240
	.incbin "baserom.gba", 0x5B6240, 0x00000E0

gUnk_085B6320:: @ 085B6320
	.incbin "baserom.gba", 0x5B6320, 0x00000E0

gUnk_085B6400:: @ 085B6400
	.incbin "baserom.gba", 0x5B6400, 0x00000E0

gUnk_085B64E0:: @ 085B64E0
	.incbin "baserom.gba", 0x5B64E0, 0x00000E0

gUnk_085B65C0:: @ 085B65C0
	.incbin "baserom.gba", 0x5B65C0, 0x00000E0

gUnk_085B66A0:: @ 085B66A0
	.incbin "baserom.gba", 0x5B66A0, 0x00000E0

gUnk_085B6780:: @ 085B6780
	.incbin "baserom.gba", 0x5B6780, 0x00000E0

gUnk_085B6860:: @ 085B6860
	.incbin "baserom.gba", 0x5B6860, 0x00000E0

gUnk_085B6940:: @ 085B6940
	.incbin "baserom.gba", 0x5B6940, 0x00000E0

gUnk_085B6A20:: @ 085B6A20
	.incbin "baserom.gba", 0x5B6A20, 0x00000E0

gUnk_085B6B00:: @ 085B6B00
	.incbin "baserom.gba", 0x5B6B00, 0x00000E0

gUnk_085B6BE0:: @ 085B6BE0
	.incbin "baserom.gba", 0x5B6BE0, 0x00000E0

gUnk_085B6CC0:: @ 085B6CC0
	.incbin "baserom.gba", 0x5B6CC0, 0x00000E0

gUnk_085B6DA0:: @ 085B6DA0
	.incbin "baserom.gba", 0x5B6DA0, 0x00000E0

gUnk_085B6E80:: @ 085B6E80
	.incbin "baserom.gba", 0x5B6E80, 0x00000E0

gUnk_085B6F60:: @ 085B6F60
	.incbin "baserom.gba", 0x5B6F60, 0x00000E0

gUnk_085B7040:: @ 085B7040
	.incbin "baserom.gba", 0x5B7040, 0x00000E0

gUnk_085B7120:: @ 085B7120
	.incbin "baserom.gba", 0x5B7120, 0x00000E0

gUnk_085B7200:: @ 085B7200
	.incbin "baserom.gba", 0x5B7200, 0x00000E0

gUnk_085B72E0:: @ 085B72E0
	.incbin "baserom.gba", 0x5B72E0, 0x00000E0

gUnk_085B73C0:: @ 085B73C0
	.incbin "baserom.gba", 0x5B73C0, 0x00000E0

gUnk_085B74A0:: @ 085B74A0
	.incbin "baserom.gba", 0x5B74A0, 0x00000E0

gUnk_085B7580:: @ 085B7580
	.incbin "baserom.gba", 0x5B7580, 0x00000E0

gUnk_085B7660:: @ 085B7660
	.incbin "baserom.gba", 0x5B7660, 0x00000E0

gUnk_085B7740:: @ 085B7740
	.incbin "baserom.gba", 0x5B7740, 0x00000E0

gUnk_085B7820:: @ 085B7820
	.incbin "baserom.gba", 0x5B7820, 0x00000E0

gUnk_085B7900:: @ 085B7900
	.incbin "baserom.gba", 0x5B7900, 0x00000E0

gUnk_085B79E0:: @ 085B79E0
	.incbin "baserom.gba", 0x5B79E0, 0x00000E0

gUnk_085B7AC0:: @ 085B7AC0
	.incbin "baserom.gba", 0x5B7AC0, 0x00000E0

gUnk_085B7BA0:: @ 085B7BA0
	.incbin "baserom.gba", 0x5B7BA0, 0x00000E0

gUnk_085B7C80:: @ 085B7C80
	.incbin "baserom.gba", 0x5B7C80, 0x00000E0

gUnk_085B7D60:: @ 085B7D60
	.incbin "baserom.gba", 0x5B7D60, 0x00000E0

gUnk_085B7E40:: @ 085B7E40
	.incbin "baserom.gba", 0x5B7E40, 0x00000E0

gUnk_085B7F20:: @ 085B7F20
	.incbin "baserom.gba", 0x5B7F20, 0x00000E0

gUnk_085B8000:: @ 085B8000
	.incbin "baserom.gba", 0x5B8000, 0x00000E0

gUnk_085B80E0:: @ 085B80E0
	.incbin "baserom.gba", 0x5B80E0, 0x00000E0

gUnk_085B81C0:: @ 085B81C0
	.incbin "baserom.gba", 0x5B81C0, 0x00000E0

gUnk_085B82A0:: @ 085B82A0
	.incbin "baserom.gba", 0x5B82A0, 0x00000E0

gUnk_085B8380:: @ 085B8380
	.incbin "baserom.gba", 0x5B8380, 0x00000E0

gUnk_085B8460:: @ 085B8460
	.incbin "baserom.gba", 0x5B8460, 0x00000E0

gUnk_085B8540:: @ 085B8540
	.incbin "baserom.gba", 0x5B8540, 0x00000E0

gUnk_085B8620:: @ 085B8620
	.incbin "baserom.gba", 0x5B8620, 0x00000E0

gUnk_085B8700:: @ 085B8700
	.incbin "baserom.gba", 0x5B8700, 0x00000E0

gUnk_085B87E0:: @ 085B87E0
	.incbin "baserom.gba", 0x5B87E0, 0x00000E0

gUnk_085B88C0:: @ 085B88C0
	.incbin "baserom.gba", 0x5B88C0, 0x0000120

gUnk_085B89E0:: @ 085B89E0
	.incbin "baserom.gba", 0x5B89E0, 0x00000E0

gUnk_085B8AC0:: @ 085B8AC0
	.incbin "baserom.gba", 0x5B8AC0, 0x00000E0

gUnk_085B8BA0:: @ 085B8BA0
	.incbin "baserom.gba", 0x5B8BA0, 0x00000E0

gUnk_085B8C80:: @ 085B8C80
	.incbin "baserom.gba", 0x5B8C80, 0x00000E0

gUnk_085B8D60:: @ 085B8D60
	.incbin "baserom.gba", 0x5B8D60, 0x00000E0

gUnk_085B8E40:: @ 085B8E40
	.incbin "baserom.gba", 0x5B8E40, 0x00000E0

gUnk_085B8F20:: @ 085B8F20
	.incbin "baserom.gba", 0x5B8F20, 0x00000E0

gUnk_085B9000:: @ 085B9000
	.incbin "baserom.gba", 0x5B9000, 0x00000E0

gUnk_085B90E0:: @ 085B90E0
	.incbin "baserom.gba", 0x5B90E0, 0x00000E0

gUnk_085B91C0:: @ 085B91C0
	.incbin "baserom.gba", 0x5B91C0, 0x00000E0

gUnk_085B92A0:: @ 085B92A0
	.incbin "baserom.gba", 0x5B92A0, 0x00000E0

gUnk_085B9380:: @ 085B9380
	.incbin "baserom.gba", 0x5B9380, 0x00000E0

gUnk_085B9460:: @ 085B9460
	.incbin "baserom.gba", 0x5B9460, 0x00000E0

gUnk_085B9540:: @ 085B9540
	.incbin "baserom.gba", 0x5B9540, 0x00000E0

gUnk_085B9620:: @ 085B9620
	.incbin "baserom.gba", 0x5B9620, 0x00000E0

gUnk_085B9700:: @ 085B9700
	.incbin "baserom.gba", 0x5B9700, 0x00000E0

gUnk_085B97E0:: @ 085B97E0
	.incbin "baserom.gba", 0x5B97E0, 0x00000E0

gUnk_085B98C0:: @ 085B98C0
	.incbin "baserom.gba", 0x5B98C0, 0x00000E0

gUnk_085B99A0:: @ 085B99A0
	.incbin "baserom.gba", 0x5B99A0, 0x00000E0

gUnk_085B9A80:: @ 085B9A80
	.incbin "baserom.gba", 0x5B9A80, 0x00000E0

gUnk_085B9B60:: @ 085B9B60
	.incbin "baserom.gba", 0x5B9B60, 0x00000E0

gUnk_085B9C40:: @ 085B9C40
	.incbin "baserom.gba", 0x5B9C40, 0x00000E0

gUnk_085B9D20:: @ 085B9D20
	.incbin "baserom.gba", 0x5B9D20, 0x00000E0

gUnk_085B9E00:: @ 085B9E00
	.incbin "baserom.gba", 0x5B9E00, 0x00000E0

gUnk_085B9EE0:: @ 085B9EE0
	.incbin "baserom.gba", 0x5B9EE0, 0x00000E0

gUnk_085B9FC0:: @ 085B9FC0
	.incbin "baserom.gba", 0x5B9FC0, 0x00000E0

gUnk_085BA0A0:: @ 085BA0A0
	.incbin "baserom.gba", 0x5BA0A0, 0x00000E0

gUnk_085BA180:: @ 085BA180
	.incbin "baserom.gba", 0x5BA180, 0x00000E0

gUnk_085BA260:: @ 085BA260
	.incbin "baserom.gba", 0x5BA260, 0x00000E0

gUnk_085BA340:: @ 085BA340
	.incbin "baserom.gba", 0x5BA340, 0x00000E0

gUnk_085BA420:: @ 085BA420
	.incbin "baserom.gba", 0x5BA420, 0x00000E0

gUnk_085BA500:: @ 085BA500
	.incbin "baserom.gba", 0x5BA500, 0x00000E0

gUnk_085BA5E0:: @ 085BA5E0
	.incbin "baserom.gba", 0x5BA5E0, 0x00000E0

gUnk_085BA6C0:: @ 085BA6C0
	.incbin "baserom.gba", 0x5BA6C0, 0x00000E0

gUnk_085BA7A0:: @ 085BA7A0
	.incbin "baserom.gba", 0x5BA7A0, 0x00000E0

gUnk_085BA880:: @ 085BA880
	.incbin "baserom.gba", 0x5BA880, 0x00000E0

gUnk_085BA960:: @ 085BA960
	.incbin "baserom.gba", 0x5BA960, 0x00000E0

gUnk_085BAA40:: @ 085BAA40
	.incbin "baserom.gba", 0x5BAA40, 0x00000E0

gUnk_085BAB20:: @ 085BAB20
	.incbin "baserom.gba", 0x5BAB20, 0x00000E0

gUnk_085BAC00:: @ 085BAC00
	.incbin "baserom.gba", 0x5BAC00, 0x00000E0

gUnk_085BACE0:: @ 085BACE0
	.incbin "baserom.gba", 0x5BACE0, 0x00000E0

gUnk_085BADC0:: @ 085BADC0
	.incbin "baserom.gba", 0x5BADC0, 0x00000E0

gUnk_085BAEA0:: @ 085BAEA0
	.incbin "baserom.gba", 0x5BAEA0, 0x00000E0

gUnk_085BAF80:: @ 085BAF80
	.incbin "baserom.gba", 0x5BAF80, 0x00000E0

gUnk_085BB060:: @ 085BB060
	.incbin "baserom.gba", 0x5BB060, 0x00000E0

gUnk_085BB140:: @ 085BB140
	.incbin "baserom.gba", 0x5BB140, 0x00000E0

gUnk_085BB220:: @ 085BB220
	.incbin "baserom.gba", 0x5BB220, 0x00000E0

gUnk_085BB300:: @ 085BB300
	.incbin "baserom.gba", 0x5BB300, 0x00000E0

gUnk_085BB3E0:: @ 085BB3E0
	.incbin "baserom.gba", 0x5BB3E0, 0x00000E0

gUnk_085BB4C0:: @ 085BB4C0
	.incbin "baserom.gba", 0x5BB4C0, 0x00000E0

gUnk_085BB5A0:: @ 085BB5A0
	.incbin "baserom.gba", 0x5BB5A0, 0x00000E0

gUnk_085BB680:: @ 085BB680
	.incbin "baserom.gba", 0x5BB680, 0x00000E0

gUnk_085BB760:: @ 085BB760
	.incbin "baserom.gba", 0x5BB760, 0x00000E0

gUnk_085BB840:: @ 085BB840
	.incbin "baserom.gba", 0x5BB840, 0x00000E0

gUnk_085BB920:: @ 085BB920
	.incbin "baserom.gba", 0x5BB920, 0x00000E0

gUnk_085BBA00:: @ 085BBA00
	.incbin "baserom.gba", 0x5BBA00, 0x00000E0

gUnk_085BBAE0:: @ 085BBAE0
	.incbin "baserom.gba", 0x5BBAE0, 0x00000E0

gUnk_085BBBC0:: @ 085BBBC0
	.incbin "baserom.gba", 0x5BBBC0, 0x00000E0

gUnk_085BBCA0:: @ 085BBCA0
	.incbin "baserom.gba", 0x5BBCA0, 0x00000E0

gUnk_085BBD80:: @ 085BBD80
	.incbin "baserom.gba", 0x5BBD80, 0x00000E0

gUnk_085BBE60:: @ 085BBE60
	.incbin "baserom.gba", 0x5BBE60, 0x00000E0

gUnk_085BBF40:: @ 085BBF40
	.incbin "baserom.gba", 0x5BBF40, 0x00000E0

gUnk_085BC020:: @ 085BC020
	.incbin "baserom.gba", 0x5BC020, 0x00000E0

gUnk_085BC100:: @ 085BC100
	.incbin "baserom.gba", 0x5BC100, 0x00000E0

gUnk_085BC1E0:: @ 085BC1E0
	.incbin "baserom.gba", 0x5BC1E0, 0x00000E0

gUnk_085BC2C0:: @ 085BC2C0
	.incbin "baserom.gba", 0x5BC2C0, 0x00000E0

gUnk_085BC3A0:: @ 085BC3A0
	.incbin "baserom.gba", 0x5BC3A0, 0x00000E0

gUnk_085BC480:: @ 085BC480
	.incbin "baserom.gba", 0x5BC480, 0x00000E0

gUnk_085BC560:: @ 085BC560
	.incbin "baserom.gba", 0x5BC560, 0x00000E0

gUnk_085BC640:: @ 085BC640
	.incbin "baserom.gba", 0x5BC640, 0x00000E0

gUnk_085BC720:: @ 085BC720
	.incbin "baserom.gba", 0x5BC720, 0x00000E0

gUnk_085BC800:: @ 085BC800
	.incbin "baserom.gba", 0x5BC800, 0x00000E0

gUnk_085BC8E0:: @ 085BC8E0
	.incbin "baserom.gba", 0x5BC8E0, 0x00000E0

gUnk_085BC9C0:: @ 085BC9C0
	.incbin "baserom.gba", 0x5BC9C0, 0x00000E0

gUnk_085BCAA0:: @ 085BCAA0
	.incbin "baserom.gba", 0x5BCAA0, 0x00000E0

gUnk_085BCB80:: @ 085BCB80
	.incbin "baserom.gba", 0x5BCB80, 0x00000E0

gUnk_085BCC60:: @ 085BCC60
	.incbin "baserom.gba", 0x5BCC60, 0x00000E0

gUnk_085BCD40:: @ 085BCD40
	.incbin "baserom.gba", 0x5BCD40, 0x00000E0

gUnk_085BCE20:: @ 085BCE20
	.incbin "baserom.gba", 0x5BCE20, 0x00000E0

gUnk_085BCF00:: @ 085BCF00
	.incbin "baserom.gba", 0x5BCF00, 0x00000E0

gUnk_085BCFE0:: @ 085BCFE0
	.incbin "baserom.gba", 0x5BCFE0, 0x00000E0

gUnk_085BD0C0:: @ 085BD0C0
	.incbin "baserom.gba", 0x5BD0C0, 0x00000E0

gUnk_085BD1A0:: @ 085BD1A0
	.incbin "baserom.gba", 0x5BD1A0, 0x00000E0

gUnk_085BD280:: @ 085BD280
	.incbin "baserom.gba", 0x5BD280, 0x00000E0

gUnk_085BD360:: @ 085BD360
	.incbin "baserom.gba", 0x5BD360, 0x00000E0

gUnk_085BD440:: @ 085BD440
	.incbin "baserom.gba", 0x5BD440, 0x00000E0

gUnk_085BD520:: @ 085BD520
	.incbin "baserom.gba", 0x5BD520, 0x0000100

@ TODO end of figurine data

	.incbin "graphics/intro/capcom.gbapal"
	.incbin "graphics/intro/nintendo.gbapal"
	.incbin "baserom.gba", 0x5BD660, 0x0006FC0

gUnk_085C4620:: @ 085C4620
	.incbin "baserom.gba", 0x5C4620, 0x0000500

gUnk_085C4B20:: @ 085C4B20
	.incbin "baserom.gba", 0x5C4B20, 0x0000280

gUnk_085C4DA0:: @ 085C4DA0
	.incbin "baserom.gba", 0x5C4DA0, 0x00000C0

gUnk_085C4E60:: @ 085C4E60
	.incbin "baserom.gba", 0x5C4E60, 0x00000C0

gUnk_085C4F20:: @ 085C4F20
	.incbin "baserom.gba", 0x5C4F20, 0x00000C0

gUnk_085C4FE0:: @ 085C4FE0
	.incbin "baserom.gba", 0x5C4FE0, 0x0080745

.ifdef EU
	@ TODO differs to gUnk_086926A0
	.incbin "baserom_eu.gba", 0x644C35, 0x004D23B
.else
	.incbin "baserom.gba", 0x645725, 0x004CF7B

.endif
gUnk_086926A0:: @ 086926A0
	.incbin "baserom.gba", 0x6926A0, 0x00000E0

gUnk_08692780:: @ 08692780
	.incbin "baserom.gba", 0x692780, 0x00000E0

gUnk_08692860:: @ 08692860
	.incbin "baserom.gba", 0x692860, 0x00000E0

gUnk_08692940:: @ 08692940
	.incbin "baserom.gba", 0x692940, 0x00000E0

gUnk_08692A20:: @ 08692A20
	.incbin "baserom.gba", 0x692A20, 0x00000E0

gUnk_08692B00:: @ 08692B00
	.incbin "baserom.gba", 0x692B00, 0x00000E0

gUnk_08692BE0:: @ 08692BE0
	.incbin "baserom.gba", 0x692BE0, 0x00000E0

gUnk_08692CC0:: @ 08692CC0
	.incbin "baserom.gba", 0x692CC0, 0x00000E0

gUnk_08692DA0:: @ 08692DA0
	.incbin "baserom.gba", 0x692DA0, 0x00000E0

gUnk_08692E80:: @ 08692E80
	.incbin "baserom.gba", 0x692E80, 0x00000E0

gUnk_08692F60:: @ 08692F60
	.incbin "baserom.gba", 0x692F60, 0x0000040
	@ TODO 08692FA0 to 086A2A3F is .incbin "graphics/font.4bpp"
	.incbin "baserom.gba", 0x692FA0, 0x0003FC0
gUnk_08696F60:: @ 08696F60
	.incbin "baserom.gba", 0x696F60, 0x0000980
gUnk_086978E0:: @ 086978E0
	.incbin "baserom.gba", 0x6978E0, 0x0002000
gUnk_086998E0:: @ 086998E0
	.incbin "baserom.gba", 0x6998E0, 0x0008000
gUnk_086A18E0:: @ 086A18E0
	.incbin "baserom.gba", 0x6A18E0, 0x0001160

	.incbin "baserom.gba", 0x6A2A40, 0x0000020
gUnk_086A2A60:: @ 086A2A60
	.incbin "baserom.gba", 0x6A2A60, 0x0000480

gUnk_086A2EE0:: @ 086A2EE0
	.incbin "baserom.gba", 0x6A2EE0, 0x0008000

gUnk_086AAEE0:: @ 086AAEE0
	.incbin "baserom.gba", 0x6AAEE0, 0x0029580

gUnk_086D4460:: @ 086D4460
	.incbin "baserom.gba", 0x6D4460, 0x0014000

gUnk_086E8460:: @ 086E8460
	.incbin "baserom.gba", 0x6E8460, 0x01576A0

@ TODO start of figurine data
gUnk_0883FB00:: @ 0883FB00
	.incbin "baserom.gba", 0x83FB00, 0x0000580

gUnk_08840080:: @ 08840080
	.incbin "baserom.gba", 0x840080, 0x00005E0

gUnk_08840660:: @ 08840660
	.incbin "baserom.gba", 0x840660, 0x0000480

gUnk_08840AE0:: @ 08840AE0
	.incbin "baserom.gba", 0x840AE0, 0x00004C0

gUnk_08840FA0:: @ 08840FA0
	.incbin "baserom.gba", 0x840FA0, 0x0000500

gUnk_088414A0:: @ 088414A0
	.incbin "baserom.gba", 0x8414A0, 0x0000380

gUnk_08841820:: @ 08841820
	.incbin "baserom.gba", 0x841820, 0x00002C0

gUnk_08841AE0:: @ 08841AE0
	.incbin "baserom.gba", 0x841AE0, 0x00004E0

gUnk_08841FC0:: @ 08841FC0
	.incbin "baserom.gba", 0x841FC0, 0x0000320

gUnk_088422E0:: @ 088422E0
	.incbin "baserom.gba", 0x8422E0, 0x0000DA0

gUnk_08843080:: @ 08843080
	.incbin "baserom.gba", 0x843080, 0x0000E60

gUnk_08843EE0:: @ 08843EE0
	.incbin "baserom.gba", 0x843EE0, 0x0000EE0

gUnk_08844DC0:: @ 08844DC0
	.incbin "baserom.gba", 0x844DC0, 0x0000DE0

gUnk_08845BA0:: @ 08845BA0
	.incbin "baserom.gba", 0x845BA0, 0x0001A00

gUnk_088475A0:: @ 088475A0
	.incbin "baserom.gba", 0x8475A0, 0x00019C0

gUnk_08848F60:: @ 08848F60
	.incbin "baserom.gba", 0x848F60, 0x00010C0

gUnk_0884A020:: @ 0884A020
	.incbin "baserom.gba", 0x84A020, 0x00003E0

gUnk_0884A400:: @ 0884A400
	.incbin "baserom.gba", 0x84A400, 0x00003A0

gUnk_0884A7A0:: @ 0884A7A0
	.incbin "baserom.gba", 0x84A7A0, 0x0000360

gUnk_0884AB00:: @ 0884AB00
	.incbin "baserom.gba", 0x84AB00, 0x0000B80

gUnk_0884B680:: @ 0884B680
	.incbin "baserom.gba", 0x84B680, 0x0000B00

gUnk_0884C180:: @ 0884C180
	.incbin "baserom.gba", 0x84C180, 0x0000AE0

gUnk_0884CC60:: @ 0884CC60
	.incbin "baserom.gba", 0x84CC60, 0x0000480

gUnk_0884D0E0:: @ 0884D0E0
	.incbin "baserom.gba", 0x84D0E0, 0x0000320

gUnk_0884D400:: @ 0884D400
	.incbin "baserom.gba", 0x84D400, 0x0000360

gUnk_0884D760:: @ 0884D760
	.incbin "baserom.gba", 0x84D760, 0x00003A0

gUnk_0884DB00:: @ 0884DB00
	.incbin "baserom.gba", 0x84DB00, 0x0000400

gUnk_0884DF00:: @ 0884DF00
	.incbin "baserom.gba", 0x84DF00, 0x00007E0

gUnk_0884E6E0:: @ 0884E6E0
	.incbin "baserom.gba", 0x84E6E0, 0x0002A00

gUnk_088510E0:: @ 088510E0
	.incbin "baserom.gba", 0x8510E0, 0x0002A00

gUnk_08853AE0:: @ 08853AE0
	.incbin "baserom.gba", 0x853AE0, 0x0002A00

gUnk_088564E0:: @ 088564E0
	.incbin "baserom.gba", 0x8564E0, 0x00003C0

gUnk_088568A0:: @ 088568A0
	.incbin "baserom.gba", 0x8568A0, 0x0000380

gUnk_08856C20:: @ 08856C20
	.incbin "baserom.gba", 0x856C20, 0x0000380

gUnk_08856FA0:: @ 08856FA0
	.incbin "baserom.gba", 0x856FA0, 0x0000380

gUnk_08857320:: @ 08857320
	.incbin "baserom.gba", 0x857320, 0x0000560

gUnk_08857880:: @ 08857880
	.incbin "baserom.gba", 0x857880, 0x0000480

gUnk_08857D00:: @ 08857D00
	.incbin "baserom.gba", 0x857D00, 0x0000480

gUnk_08858180:: @ 08858180
	.incbin "baserom.gba", 0x858180, 0x0000500

gUnk_08858680:: @ 08858680
	.incbin "baserom.gba", 0x858680, 0x00014C0

gUnk_08859B40:: @ 08859B40
	.incbin "baserom.gba", 0x859B40, 0x0000660

gUnk_0885A1A0:: @ 0885A1A0
	.incbin "baserom.gba", 0x85A1A0, 0x0001080

gUnk_0885B220:: @ 0885B220
	.incbin "baserom.gba", 0x85B220, 0x0000800

gUnk_0885BA20:: @ 0885BA20
	.incbin "baserom.gba", 0x85BA20, 0x0000800

gUnk_0885C220:: @ 0885C220
	.incbin "baserom.gba", 0x85C220, 0x0000500

gUnk_0885C720:: @ 0885C720
	.incbin "baserom.gba", 0x85C720, 0x0000500

gUnk_0885CC20:: @ 0885CC20
	.incbin "baserom.gba", 0x85CC20, 0x0003080

gUnk_0885FCA0:: @ 0885FCA0
	.incbin "baserom.gba", 0x85FCA0, 0x00029E0

gUnk_08862680:: @ 08862680
	.incbin "baserom.gba", 0x862680, 0x0003A00

gUnk_08866080:: @ 08866080
	.incbin "baserom.gba", 0x866080, 0x00029C0

gUnk_08868A40:: @ 08868A40
	.incbin "baserom.gba", 0x868A40, 0x00034E0

gUnk_0886BF20:: @ 0886BF20
	.incbin "baserom.gba", 0x86BF20, 0x0003900

gUnk_0886F820:: @ 0886F820
	.incbin "baserom.gba", 0x86F820, 0x00030E0

gUnk_08872900:: @ 08872900
	.incbin "baserom.gba", 0x872900, 0x0002C80

gUnk_08875580:: @ 08875580
	.incbin "baserom.gba", 0x875580, 0x0003500

gUnk_08878A80:: @ 08878A80
	.incbin "baserom.gba", 0x878A80, 0x0002780

gUnk_0887B200:: @ 0887B200
	.incbin "baserom.gba", 0x87B200, 0x0002EA0

gUnk_0887E0A0:: @ 0887E0A0
	.incbin "baserom.gba", 0x87E0A0, 0x0003320

gUnk_088813C0:: @ 088813C0
	.incbin "baserom.gba", 0x8813C0, 0x0002AE0

gUnk_08883EA0:: @ 08883EA0
	.incbin "baserom.gba", 0x883EA0, 0x0001F00

gUnk_08885DA0:: @ 08885DA0
	.incbin "baserom.gba", 0x885DA0, 0x0004000

gUnk_08889DA0:: @ 08889DA0
	.incbin "baserom.gba", 0x889DA0, 0x0003F80

gUnk_0888DD20:: @ 0888DD20
	.incbin "baserom.gba", 0x88DD20, 0x0001C40

gUnk_0888F960:: @ 0888F960
	.incbin "baserom.gba", 0x88F960, 0x0001660

gUnk_08890FC0:: @ 08890FC0
	.incbin "baserom.gba", 0x890FC0, 0x0001C80

gUnk_08892C40:: @ 08892C40
	.incbin "baserom.gba", 0x892C40, 0x0002300

gUnk_08894F40:: @ 08894F40
	.incbin "baserom.gba", 0x894F40, 0x0002480

gUnk_088973C0:: @ 088973C0
	.incbin "baserom.gba", 0x8973C0, 0x0000440

gUnk_08897800:: @ 08897800
	.incbin "baserom.gba", 0x897800, 0x00008C0

gUnk_088980C0:: @ 088980C0
	.incbin "baserom.gba", 0x8980C0, 0x0000E00

gUnk_08898EC0:: @ 08898EC0
	.incbin "baserom.gba", 0x898EC0, 0x0000380

gUnk_08899240:: @ 08899240
	.incbin "baserom.gba", 0x899240, 0x0000920

gUnk_08899B60:: @ 08899B60
	.incbin "baserom.gba", 0x899B60, 0x00002E0

gUnk_08899E40:: @ 08899E40
	.incbin "baserom.gba", 0x899E40, 0x00007A0

gUnk_0889A5E0:: @ 0889A5E0
	.incbin "baserom.gba", 0x89A5E0, 0x0000300

gUnk_0889A8E0:: @ 0889A8E0
	.incbin "baserom.gba", 0x89A8E0, 0x0000F00

gUnk_0889B7E0:: @ 0889B7E0
	.incbin "baserom.gba", 0x89B7E0, 0x0000360

gUnk_0889BB40:: @ 0889BB40
	.incbin "baserom.gba", 0x89BB40, 0x0000780

gUnk_0889C2C0:: @ 0889C2C0
	.incbin "baserom.gba", 0x89C2C0, 0x0000400

gUnk_0889C6C0:: @ 0889C6C0
	.incbin "baserom.gba", 0x89C6C0, 0x0000380

gUnk_0889CA40:: @ 0889CA40
	.incbin "baserom.gba", 0x89CA40, 0x0000A00

gUnk_0889D440:: @ 0889D440
	.incbin "baserom.gba", 0x89D440, 0x0000A00

gUnk_0889DE40:: @ 0889DE40
	.incbin "baserom.gba", 0x89DE40, 0x0000300

gUnk_0889E140:: @ 0889E140
	.incbin "baserom.gba", 0x89E140, 0x00004C0

gUnk_0889E600:: @ 0889E600
	.incbin "baserom.gba", 0x89E600, 0x00007C0

gUnk_0889EDC0:: @ 0889EDC0
	.incbin "baserom.gba", 0x89EDC0, 0x0000B20

gUnk_0889F8E0:: @ 0889F8E0
	.incbin "baserom.gba", 0x89F8E0, 0x00007E0

gUnk_088A00C0:: @ 088A00C0
	.incbin "baserom.gba", 0x8A00C0, 0x0000360

gUnk_088A0420:: @ 088A0420
	.incbin "baserom.gba", 0x8A0420, 0x00008C0

gUnk_088A0CE0:: @ 088A0CE0
	.incbin "baserom.gba", 0x8A0CE0, 0x00007C0

gUnk_088A14A0:: @ 088A14A0
	.incbin "baserom.gba", 0x8A14A0, 0x0000DC0

gUnk_088A2260:: @ 088A2260
	.incbin "baserom.gba", 0x8A2260, 0x0000300

gUnk_088A2560:: @ 088A2560
	.incbin "baserom.gba", 0x8A2560, 0x00002E0

gUnk_088A2840:: @ 088A2840
	.incbin "baserom.gba", 0x8A2840, 0x0000500

gUnk_088A2D40:: @ 088A2D40
	.incbin "baserom.gba", 0x8A2D40, 0x00007C0

gUnk_088A3500:: @ 088A3500
	.incbin "baserom.gba", 0x8A3500, 0x0000300

gUnk_088A3800:: @ 088A3800
	.incbin "baserom.gba", 0x8A3800, 0x00007A0

gUnk_088A3FA0:: @ 088A3FA0
	.incbin "baserom.gba", 0x8A3FA0, 0x0000500

gUnk_088A44A0:: @ 088A44A0
	.incbin "baserom.gba", 0x8A44A0, 0x00003C0

gUnk_088A4860:: @ 088A4860
	.incbin "baserom.gba", 0x8A4860, 0x00009A0

gUnk_088A5200:: @ 088A5200
	.incbin "baserom.gba", 0x8A5200, 0x0000DC0

gUnk_088A5FC0:: @ 088A5FC0
	.incbin "baserom.gba", 0x8A5FC0, 0x00003A0

gUnk_088A6360:: @ 088A6360
	.incbin "baserom.gba", 0x8A6360, 0x0000980

gUnk_088A6CE0:: @ 088A6CE0
	.incbin "baserom.gba", 0x8A6CE0, 0x00007C0

gUnk_088A74A0:: @ 088A74A0
	.incbin "baserom.gba", 0x8A74A0, 0x0000820

gUnk_088A7CC0:: @ 088A7CC0
	.incbin "baserom.gba", 0x8A7CC0, 0x0000340

gUnk_088A8000:: @ 088A8000
	.incbin "baserom.gba", 0x8A8000, 0x0000500

gUnk_088A8500:: @ 088A8500
	.incbin "baserom.gba", 0x8A8500, 0x0000500

gUnk_088A8A00:: @ 088A8A00
	.incbin "baserom.gba", 0x8A8A00, 0x00007C0

gUnk_088A91C0:: @ 088A91C0
	.incbin "baserom.gba", 0x8A91C0, 0x0000660

gUnk_088A9820:: @ 088A9820
	.incbin "baserom.gba", 0x8A9820, 0x00003C0

gUnk_088A9BE0:: @ 088A9BE0
	.incbin "baserom.gba", 0x8A9BE0, 0x0000460

gUnk_088AA040:: @ 088AA040
	.incbin "baserom.gba", 0x8AA040, 0x0000380

gUnk_088AA3C0:: @ 088AA3C0
	.incbin "baserom.gba", 0x8AA3C0, 0x0000820

gUnk_088AABE0:: @ 088AABE0
	.incbin "baserom.gba", 0x8AABE0, 0x00006A0

gUnk_088AB280:: @ 088AB280
	.incbin "baserom.gba", 0x8AB280, 0x0000980

gUnk_088ABC00:: @ 088ABC00
	.incbin "baserom.gba", 0x8ABC00, 0x00005E0

gUnk_088AC1E0:: @ 088AC1E0
	.incbin "baserom.gba", 0x8AC1E0, 0x00008A0

gUnk_088ACA80:: @ 088ACA80
	.incbin "baserom.gba", 0x8ACA80, 0x00008C0

gUnk_088AD340:: @ 088AD340
	.incbin "baserom.gba", 0x8AD340, 0x00005A0

gUnk_088AD8E0:: @ 088AD8E0
	.incbin "baserom.gba", 0x8AD8E0, 0x0000620

gUnk_088ADF00:: @ 088ADF00
	.incbin "baserom.gba", 0x8ADF00, 0x0000F00

gUnk_088AEE00:: @ 088AEE00
	.incbin "baserom.gba", 0x8AEE00, 0x0000640

gUnk_088AF440:: @ 088AF440
	.incbin "baserom.gba", 0x8AF440, 0x0002580

gUnk_088B19C0:: @ 088B19C0
	.incbin "baserom.gba", 0x8B19C0, 0x00017A0

gUnk_088B3160:: @ 088B3160
	.incbin "baserom.gba", 0x8B3160, 0x00019A0

gUnk_088B4B00:: @ 088B4B00
	.incbin "baserom.gba", 0x8B4B00, 0x0001300

gUnk_088B5E00:: @ 088B5E00
	.incbin "baserom.gba", 0x8B5E00, 0x0001EA0

gUnk_088B7CA0:: @ 088B7CA0
	.incbin "baserom.gba", 0x8B7CA0, 0x0001640

gUnk_088B92E0:: @ 088B92E0
	.incbin "baserom.gba", 0x8B92E0, 0x00017C0

gUnk_088BAAA0:: @ 088BAAA0
	.incbin "baserom.gba", 0x8BAAA0, 0x0000E00

gUnk_088BB8A0:: @ 088BB8A0
	.incbin "baserom.gba", 0x8BB8A0, 0x0000580

gUnk_088BBE20:: @ 088BBE20
	.incbin "baserom.gba", 0x8BBE20, 0x0000C40

gUnk_088BCA60:: @ 088BCA60
	.incbin "baserom.gba", 0x8BCA60, 0x0001100

gUnk_088BDB60:: @ 088BDB60
	.incbin "baserom.gba", 0x8BDB60, 0x0002580

gUnk_088C00E0:: @ 088C00E0
	.incbin "baserom.gba", 0x8C00E0, 0x00021A0

@ TODO end of figurine data
	.incbin "graphics/intro/nintendo_capcom.4bpp"
	.incbin "baserom.gba", 0x8C31E0, 0x003D440

.ifdef EU
	.incbin "baserom_eu.gba", 0x8FFDF0, 0x00AED70
.else
	.incbin "baserom.gba", 0x900620, 0x00B1770

.endif
