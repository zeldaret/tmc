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
	.incbin "baserom.gba", 0x1342E8, 0x000004B
	.incbin "baserom.gba", 0x134333, 0x0000005

gUnk_08134338:: @ 08134338
	.4byte gUnk_0813420C
	.4byte gUnk_081342E8

gUnk_08134340:: @ 08134340
	.incbin "baserom.gba", 0x134340, 0x00000C8

gUnk_08134408:: @ 08134408
	.4byte gUnk_08134340

gUnk_0813440C:: @ 0813440C
	.incbin "baserom.gba", 0x13440C, 0x0000032
	.incbin "baserom.gba", 0x13443E, 0x000000A

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
	.incbin "baserom.gba", 0x134BAC, 0x0000038
	.incbin "baserom.gba", 0x134BE4, 0x00000A4

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
	.incbin "baserom.gba", 0x135748, 0x000002F
	.incbin "baserom.gba", 0x135777, 0x000000D

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
	.incbin "baserom.gba", 0x13A1A8, 0x000001F
	.incbin "baserom.gba", 0x13A1C7, 0x0000009

gUnk_0813A1D0:: @ 0813A1D0
	.incbin "baserom.gba", 0x13A1D0, 0x0000028

gUnk_0813A1F8:: @ 0813A1F8
	.incbin "baserom.gba", 0x13A1F8, 0x0000028

gUnk_0813A220:: @ 0813A220
	.incbin "baserom.gba", 0x13A220, 0x000001F
	.incbin "baserom.gba", 0x13A23F, 0x0000009

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
	.incbin "baserom.gba", 0x13AE14, 0x00005F9
	.incbin "baserom.gba", 0x13B40D, 0x0002406
	.incbin "baserom.gba", 0x13D813, 0x0000643
	.incbin "baserom.gba", 0x13DE56, 0x0000168
	.incbin "baserom.gba", 0x13DFBE, 0x0000025
	.incbin "baserom.gba", 0x13DFE3, 0x000021D
	.incbin "baserom.gba", 0x13E200, 0x0000608
	.incbin "baserom.gba", 0x13E808, 0x00000F9
	.incbin "baserom.gba", 0x13E901, 0x0000205
	.incbin "baserom.gba", 0x13EB06, 0x00002E4
	.incbin "baserom.gba", 0x13EDEA, 0x0000208
	.incbin "baserom.gba", 0x13EFF2, 0x000070F
	.incbin "baserom.gba", 0x13F701, 0x0000114
	.incbin "baserom.gba", 0x13F815, 0x00006C3
	.incbin "baserom.gba", 0x13FED8, 0x0000128
	.incbin "baserom.gba", 0x140000, 0x0000001
	.incbin "baserom.gba", 0x140001, 0x0000006
	.incbin "baserom.gba", 0x140007, 0x0000001
	.incbin "baserom.gba", 0x140008, 0x000000A
	.incbin "baserom.gba", 0x140012, 0x0000007
	.incbin "baserom.gba", 0x140019, 0x0000001
	.incbin "baserom.gba", 0x14001A, 0x0000030
	.incbin "baserom.gba", 0x14004A, 0x0000010
	.incbin "baserom.gba", 0x14005A, 0x0000002
	.incbin "baserom.gba", 0x14005C, 0x0000002
	.incbin "baserom.gba", 0x14005E, 0x000000D
	.incbin "baserom.gba", 0x14006B, 0x0000025
	.incbin "baserom.gba", 0x140090, 0x000002E
	.incbin "baserom.gba", 0x1400BE, 0x0000024
	.incbin "baserom.gba", 0x1400E2, 0x000005E
	.incbin "baserom.gba", 0x140140, 0x0000083
	.incbin "baserom.gba", 0x1401C3, 0x000003D
	.incbin "baserom.gba", 0x140200, 0x0000025
	.incbin "baserom.gba", 0x140225, 0x00000AE
	.incbin "baserom.gba", 0x1402D3, 0x0000026
	.incbin "baserom.gba", 0x1402F9, 0x0000007
	.incbin "baserom.gba", 0x140300, 0x00000F4
	.incbin "baserom.gba", 0x1403F4, 0x000000D
	.incbin "baserom.gba", 0x140401, 0x0000001
	.incbin "baserom.gba", 0x140402, 0x0000062
	.incbin "baserom.gba", 0x140464, 0x00000A1
	.incbin "baserom.gba", 0x140505, 0x000017C
	.incbin "baserom.gba", 0x140681, 0x0000170
	.incbin "baserom.gba", 0x1407F1, 0x0000016
	.incbin "baserom.gba", 0x140807, 0x000000C
	.incbin "baserom.gba", 0x140813, 0x0000075
	.incbin "baserom.gba", 0x140888, 0x0000075
	.incbin "baserom.gba", 0x1408FD, 0x0000106
	.incbin "baserom.gba", 0x140A03, 0x00000E9
	.incbin "baserom.gba", 0x140AEC, 0x0000010
	.incbin "baserom.gba", 0x140AFC, 0x0000004
	.incbin "baserom.gba", 0x140B00, 0x0000006
	.incbin "baserom.gba", 0x140B06, 0x00000F1
	.incbin "baserom.gba", 0x140BF7, 0x0000011
	.incbin "baserom.gba", 0x140C08, 0x00000F0
	.incbin "baserom.gba", 0x140CF8, 0x0000015
	.incbin "baserom.gba", 0x140D0D, 0x00000E9
	.incbin "baserom.gba", 0x140DF6, 0x000010D
	.incbin "baserom.gba", 0x140F03, 0x0000004
	.incbin "baserom.gba", 0x140F07, 0x0000002
	.incbin "baserom.gba", 0x140F09, 0x0000007
	.incbin "baserom.gba", 0x140F10, 0x00000F6
	.incbin "baserom.gba", 0x141006, 0x0000110
	.incbin "baserom.gba", 0x141116, 0x00000E6
	.incbin "baserom.gba", 0x1411FC, 0x0000005
	.incbin "baserom.gba", 0x141201, 0x0000003
	.incbin "baserom.gba", 0x141204, 0x0000101
	.incbin "baserom.gba", 0x141305, 0x0000009
	.incbin "baserom.gba", 0x14130E, 0x000000B
	.incbin "baserom.gba", 0x141319, 0x00000E6
	.incbin "baserom.gba", 0x1413FF, 0x0000013
	.incbin "baserom.gba", 0x141412, 0x00000F7
	.incbin "baserom.gba", 0x141509, 0x0000001
	.incbin "baserom.gba", 0x14150A, 0x0000002
	.incbin "baserom.gba", 0x14150C, 0x0000004
	.incbin "baserom.gba", 0x141510, 0x0000002
	.incbin "baserom.gba", 0x141512, 0x0000002
	.incbin "baserom.gba", 0x141514, 0x00000DD
	.incbin "baserom.gba", 0x1415F1, 0x000001A
	.incbin "baserom.gba", 0x14160B, 0x0000002
	.incbin "baserom.gba", 0x14160D, 0x0000103
	.incbin "baserom.gba", 0x141710, 0x0000005
	.incbin "baserom.gba", 0x141715, 0x0000005
	.incbin "baserom.gba", 0x14171A, 0x0000001
	.incbin "baserom.gba", 0x14171B, 0x000000A
	.incbin "baserom.gba", 0x141725, 0x00000E2
	.incbin "baserom.gba", 0x141807, 0x0000017
	.incbin "baserom.gba", 0x14181E, 0x00001F8
	.incbin "baserom.gba", 0x141A16, 0x0000007
	.incbin "baserom.gba", 0x141A1D, 0x00000FB
	.incbin "baserom.gba", 0x141B18, 0x0000001
	.incbin "baserom.gba", 0x141B19, 0x0000001
	.incbin "baserom.gba", 0x141B1A, 0x00000FA
	.incbin "baserom.gba", 0x141C14, 0x0000004
	.incbin "baserom.gba", 0x141C18, 0x0000007
	.incbin "baserom.gba", 0x141C1F, 0x0000001
	.incbin "baserom.gba", 0x141C20, 0x0000003
	.incbin "baserom.gba", 0x141C23, 0x00000F2
	.incbin "baserom.gba", 0x141D15, 0x0000004
	.incbin "baserom.gba", 0x141D19, 0x0000007
	.incbin "baserom.gba", 0x141D20, 0x0000002
	.incbin "baserom.gba", 0x141D22, 0x0000001
	.incbin "baserom.gba", 0x141D23, 0x0000001
	.incbin "baserom.gba", 0x141D24, 0x00000FC
	.incbin "baserom.gba", 0x141E20, 0x0000001
	.incbin "baserom.gba", 0x141E21, 0x0000005
	.incbin "baserom.gba", 0x141E26, 0x00000FB
	.incbin "baserom.gba", 0x141F21, 0x0000003
	.incbin "baserom.gba", 0x141F24, 0x0000005
	.incbin "baserom.gba", 0x141F29, 0x00000F4
	.incbin "baserom.gba", 0x14201D, 0x0000007
	.incbin "baserom.gba", 0x142024, 0x0000002
	.incbin "baserom.gba", 0x142026, 0x0000001
	.incbin "baserom.gba", 0x142027, 0x0000106
	.incbin "baserom.gba", 0x14212D, 0x00000C1
	.incbin "baserom.gba", 0x1421EE, 0x000003D
	.incbin "baserom.gba", 0x14222B, 0x0000104
	.incbin "baserom.gba", 0x14232F, 0x0000002
	.incbin "baserom.gba", 0x142331, 0x0000001
	.incbin "baserom.gba", 0x142332, 0x00000F9
	.incbin "baserom.gba", 0x14242B, 0x0000005
	.incbin "baserom.gba", 0x142430, 0x00000F2
	.incbin "baserom.gba", 0x142522, 0x000000F
	.incbin "baserom.gba", 0x142531, 0x0000102
	.incbin "baserom.gba", 0x142633, 0x00000F3
	.incbin "baserom.gba", 0x142726, 0x000010F
	.incbin "baserom.gba", 0x142835, 0x0000208
	.incbin "baserom.gba", 0x142A3D, 0x00000E1
	.incbin "baserom.gba", 0x142B1E, 0x0000015
	.incbin "baserom.gba", 0x142B33, 0x000030C
	.incbin "baserom.gba", 0x142E3F, 0x00001D9
	.incbin "baserom.gba", 0x143018, 0x0000030
	.incbin "baserom.gba", 0x143048, 0x00001F3
	.incbin "baserom.gba", 0x14323B, 0x00000F8
	.incbin "baserom.gba", 0x143333, 0x0000006
	.incbin "baserom.gba", 0x143339, 0x00000D7
	.incbin "baserom.gba", 0x143410, 0x000000D
	.incbin "baserom.gba", 0x14341D, 0x0000433
	.incbin "baserom.gba", 0x143850, 0x0000514
	.incbin "baserom.gba", 0x143D64, 0x00003D1
	.incbin "baserom.gba", 0x144135, 0x000360C
	.incbin "baserom.gba", 0x147741, 0x00064AC
	.incbin "baserom.gba", 0x14DBED, 0x000012A
	.incbin "baserom.gba", 0x14DD17, 0x00004C0
	.incbin "baserom.gba", 0x14E1D7, 0x0000031
	.incbin "baserom.gba", 0x14E208, 0x0000300
	.incbin "baserom.gba", 0x14E508, 0x00003EF
	.incbin "baserom.gba", 0x14E8F7, 0x0000309
	.incbin "baserom.gba", 0x14EC00, 0x00001D7
	.incbin "baserom.gba", 0x14EDD7, 0x000012A
	.incbin "baserom.gba", 0x14EF01, 0x0000002
	.incbin "baserom.gba", 0x14EF03, 0x0000018
	.incbin "baserom.gba", 0x14EF1B, 0x00000E6
	.incbin "baserom.gba", 0x14F001, 0x00000DA
	.incbin "baserom.gba", 0x14F0DB, 0x0000148
	.incbin "baserom.gba", 0x14F223, 0x00003CC
	.incbin "baserom.gba", 0x14F5EF, 0x0000009
	.incbin "baserom.gba", 0x14F5F8, 0x0000208
	.incbin "baserom.gba", 0x14F800, 0x0000018
	.incbin "baserom.gba", 0x14F818, 0x00000C9
	.incbin "baserom.gba", 0x14F8E1, 0x0000010
	.incbin "baserom.gba", 0x14F8F1, 0x0000007
	.incbin "baserom.gba", 0x14F8F8, 0x00001F0
	.incbin "baserom.gba", 0x14FAE8, 0x00000F2
	.incbin "baserom.gba", 0x14FBDA, 0x0000104
	.incbin "baserom.gba", 0x14FCDE, 0x000001A
	.incbin "baserom.gba", 0x14FCF8, 0x00000F6
	.incbin "baserom.gba", 0x14FDEE, 0x000000C
	.incbin "baserom.gba", 0x14FDFA, 0x0000020
	.incbin "baserom.gba", 0x14FE1A, 0x0000020
	.incbin "baserom.gba", 0x14FE3A, 0x00000B2
	.incbin "baserom.gba", 0x14FEEC, 0x00000E2
	.incbin "baserom.gba", 0x14FFCE, 0x0000032
	.incbin "baserom.gba", 0x150000, 0x0000003
	.incbin "baserom.gba", 0x150003, 0x0000007
	.incbin "baserom.gba", 0x15000A, 0x0000009
	.incbin "baserom.gba", 0x150013, 0x0000007
	.incbin "baserom.gba", 0x15001A, 0x0000010
	.incbin "baserom.gba", 0x15002A, 0x000000A
	.incbin "baserom.gba", 0x150034, 0x0000008
	.incbin "baserom.gba", 0x15003C, 0x0000004
	.incbin "baserom.gba", 0x150040, 0x0000016
	.incbin "baserom.gba", 0x150056, 0x000008F
	.incbin "baserom.gba", 0x1500E5, 0x0000006
	.incbin "baserom.gba", 0x1500EB, 0x000001F
	.incbin "baserom.gba", 0x15010A, 0x0000028
	.incbin "baserom.gba", 0x150132, 0x000000E
	.incbin "baserom.gba", 0x150140, 0x00001C0
	.incbin "baserom.gba", 0x150300, 0x000001D
	.incbin "baserom.gba", 0x15031D, 0x00000E4
	.incbin "baserom.gba", 0x150401, 0x0000001
	.incbin "baserom.gba", 0x150402, 0x000001B
	.incbin "baserom.gba", 0x15041D, 0x0000027
	.incbin "baserom.gba", 0x150444, 0x00001A6
	.incbin "baserom.gba", 0x1505EA, 0x0000017
	.incbin "baserom.gba", 0x150601, 0x00000AD
	.incbin "baserom.gba", 0x1506AE, 0x0000125
	.incbin "baserom.gba", 0x1507D3, 0x0000028
	.incbin "baserom.gba", 0x1507FB, 0x0000009
	.incbin "baserom.gba", 0x150804, 0x0000002
	.incbin "baserom.gba", 0x150806, 0x000000E
	.incbin "baserom.gba", 0x150814, 0x00000DE
	.incbin "baserom.gba", 0x1508F2, 0x000000B
	.incbin "baserom.gba", 0x1508FD, 0x000010F
	.incbin "baserom.gba", 0x150A0C, 0x00000E6
	.incbin "baserom.gba", 0x150AF2, 0x0000018
	.incbin "baserom.gba", 0x150B0A, 0x0000005
	.incbin "baserom.gba", 0x150B0F, 0x000000C
	.incbin "baserom.gba", 0x150B1B, 0x00002E6
	.incbin "baserom.gba", 0x150E01, 0x00000EE
	.incbin "baserom.gba", 0x150EEF, 0x000001D
	.incbin "baserom.gba", 0x150F0C, 0x00000EB
	.incbin "baserom.gba", 0x150FF7, 0x000000D
	.incbin "baserom.gba", 0x151004, 0x00000FC
	.incbin "baserom.gba", 0x151100, 0x0000007
	.incbin "baserom.gba", 0x151107, 0x00000F2
	.incbin "baserom.gba", 0x1511F9, 0x000000F
	.incbin "baserom.gba", 0x151208, 0x0000004
	.incbin "baserom.gba", 0x15120C, 0x00000FB
	.incbin "baserom.gba", 0x151307, 0x0000007
	.incbin "baserom.gba", 0x15130E, 0x00000ED
	.incbin "baserom.gba", 0x1513FB, 0x000011D
	.incbin "baserom.gba", 0x151518, 0x0000054
	.incbin "baserom.gba", 0x15156C, 0x00000A0
	.incbin "baserom.gba", 0x15160C, 0x0000004
	.incbin "baserom.gba", 0x151610, 0x0000007
	.incbin "baserom.gba", 0x151617, 0x00000EC
	.incbin "baserom.gba", 0x151703, 0x0000010
	.incbin "baserom.gba", 0x151713, 0x0000003
	.incbin "baserom.gba", 0x151716, 0x000000F
	.incbin "baserom.gba", 0x151725, 0x00000ED
	.incbin "baserom.gba", 0x151812, 0x0000001
	.incbin "baserom.gba", 0x151813, 0x0000002
	.incbin "baserom.gba", 0x151815, 0x0000010
	.incbin "baserom.gba", 0x151825, 0x00000EA
	.incbin "baserom.gba", 0x15190F, 0x0000006
	.incbin "baserom.gba", 0x151915, 0x00000FA
	.incbin "baserom.gba", 0x151A0F, 0x000000B
	.incbin "baserom.gba", 0x151A1A, 0x00000FB
	.incbin "baserom.gba", 0x151B15, 0x0000004
	.incbin "baserom.gba", 0x151B19, 0x0000004
	.incbin "baserom.gba", 0x151B1D, 0x0000002
	.incbin "baserom.gba", 0x151B1F, 0x00000E9
	.incbin "baserom.gba", 0x151C08, 0x0000015
	.incbin "baserom.gba", 0x151C1D, 0x0000004
	.incbin "baserom.gba", 0x151C21, 0x0000004
	.incbin "baserom.gba", 0x151C25, 0x00000F3
	.incbin "baserom.gba", 0x151D18, 0x000000D
	.incbin "baserom.gba", 0x151D25, 0x00000FC
	.incbin "baserom.gba", 0x151E21, 0x0000005
	.incbin "baserom.gba", 0x151E26, 0x00000FA
	.incbin "baserom.gba", 0x151F20, 0x0000003
	.incbin "baserom.gba", 0x151F23, 0x0000002
	.incbin "baserom.gba", 0x151F25, 0x00000FF
	.incbin "baserom.gba", 0x152024, 0x0000003
	.incbin "baserom.gba", 0x152027, 0x0000001
	.incbin "baserom.gba", 0x152028, 0x0000007
	.incbin "baserom.gba", 0x15202F, 0x0000027
	.incbin "baserom.gba", 0x152056, 0x00000C3
	.incbin "baserom.gba", 0x152119, 0x0000001
	.incbin "baserom.gba", 0x15211A, 0x0000009
	.incbin "baserom.gba", 0x152123, 0x0000003
	.incbin "baserom.gba", 0x152126, 0x0000009
	.incbin "baserom.gba", 0x15212F, 0x0000001
	.incbin "baserom.gba", 0x152130, 0x00000E1
	.incbin "baserom.gba", 0x152211, 0x0000007
	.incbin "baserom.gba", 0x152218, 0x0000011
	.incbin "baserom.gba", 0x152229, 0x0000008
	.incbin "baserom.gba", 0x152231, 0x00000EF
	.incbin "baserom.gba", 0x152320, 0x000000C
	.incbin "baserom.gba", 0x15232C, 0x0000005
	.incbin "baserom.gba", 0x152331, 0x00000CD
	.incbin "baserom.gba", 0x1523FE, 0x000002B
	.incbin "baserom.gba", 0x152429, 0x00000EE
	.incbin "baserom.gba", 0x152517, 0x0000126
	.incbin "baserom.gba", 0x15263D, 0x00000F8
	.incbin "baserom.gba", 0x152735, 0x000030B
	.incbin "baserom.gba", 0x152A40, 0x00000CC
	.incbin "baserom.gba", 0x152B0C, 0x0000027
	.incbin "baserom.gba", 0x152B33, 0x00002E3
	.incbin "baserom.gba", 0x152E16, 0x000012F
	.incbin "baserom.gba", 0x152F45, 0x0000A22
	.incbin "baserom.gba", 0x153967, 0x00001EC
	.incbin "baserom.gba", 0x153B53, 0x0000BD3
	.incbin "baserom.gba", 0x154726, 0x0001E50
	.incbin "baserom.gba", 0x156576, 0x0000333
	.incbin "baserom.gba", 0x1568A9, 0x00000FE
	.incbin "baserom.gba", 0x1569A7, 0x0001BDE
	.incbin "baserom.gba", 0x158585, 0x0002B24
	.incbin "baserom.gba", 0x15B0A9, 0x0001251
	.incbin "baserom.gba", 0x15C2FA, 0x0002101
	.incbin "baserom.gba", 0x15E3FB, 0x0000CFD
	.incbin "baserom.gba", 0x15F0F8, 0x0000AF5
	.incbin "baserom.gba", 0x15FBED, 0x0000222
	.incbin "baserom.gba", 0x15FE0F, 0x00001F1
	.incbin "baserom.gba", 0x160000, 0x0000009
	.incbin "baserom.gba", 0x160009, 0x00000B8
	.incbin "baserom.gba", 0x1600C1, 0x0000012
	.incbin "baserom.gba", 0x1600D3, 0x000000C
	.incbin "baserom.gba", 0x1600DF, 0x0000005
	.incbin "baserom.gba", 0x1600E4, 0x0000224
	.incbin "baserom.gba", 0x160308, 0x000009D
	.incbin "baserom.gba", 0x1603A5, 0x000006A
	.incbin "baserom.gba", 0x16040F, 0x00004DD
	.incbin "baserom.gba", 0x1608EC, 0x0000118
	.incbin "baserom.gba", 0x160A04, 0x0000104
	.incbin "baserom.gba", 0x160B08, 0x00001EB
	.incbin "baserom.gba", 0x160CF3, 0x000020E
	.incbin "baserom.gba", 0x160F01, 0x0000002
	.incbin "baserom.gba", 0x160F03, 0x0000006
	.incbin "baserom.gba", 0x160F09, 0x0000105
	.incbin "baserom.gba", 0x16100E, 0x00000EF
	.incbin "baserom.gba", 0x1610FD, 0x0000007
	.incbin "baserom.gba", 0x161104, 0x00000F8
	.incbin "baserom.gba", 0x1611FC, 0x000002D
	.incbin "baserom.gba", 0x161229, 0x000002B
	.incbin "baserom.gba", 0x161254, 0x0000097
	.incbin "baserom.gba", 0x1612EB, 0x000000F
	.incbin "baserom.gba", 0x1612FA, 0x0000006
	.incbin "baserom.gba", 0x161300, 0x00000E2
	.incbin "baserom.gba", 0x1613E2, 0x0000041
	.incbin "baserom.gba", 0x161423, 0x00002E8
	.incbin "baserom.gba", 0x16170B, 0x00000FD
	.incbin "baserom.gba", 0x161808, 0x0000006
	.incbin "baserom.gba", 0x16180E, 0x000000B
	.incbin "baserom.gba", 0x161819, 0x00000F2
	.incbin "baserom.gba", 0x16190B, 0x0000007
	.incbin "baserom.gba", 0x161912, 0x0000102
	.incbin "baserom.gba", 0x161A14, 0x0000002
	.incbin "baserom.gba", 0x161A16, 0x000000A
	.incbin "baserom.gba", 0x161A20, 0x00000EC
	.incbin "baserom.gba", 0x161B0C, 0x0000003
	.incbin "baserom.gba", 0x161B0F, 0x0000009
	.incbin "baserom.gba", 0x161B18, 0x0000005
	.incbin "baserom.gba", 0x161B1D, 0x0000007
	.incbin "baserom.gba", 0x161B24, 0x00000AC
	.incbin "baserom.gba", 0x161BD0, 0x000004F
	.incbin "baserom.gba", 0x161C1F, 0x00000FB
	.incbin "baserom.gba", 0x161D1A, 0x000001B
	.incbin "baserom.gba", 0x161D35, 0x00000CB
	.incbin "baserom.gba", 0x161E00, 0x0000017
	.incbin "baserom.gba", 0x161E17, 0x00000D9
	.incbin "baserom.gba", 0x161EF0, 0x000001D
	.incbin "baserom.gba", 0x161F0D, 0x0000011
	.incbin "baserom.gba", 0x161F1E, 0x0000004
	.incbin "baserom.gba", 0x161F22, 0x0000006
	.incbin "baserom.gba", 0x161F28, 0x00000F5
	.incbin "baserom.gba", 0x16201D, 0x0000008
	.incbin "baserom.gba", 0x162025, 0x0000005
	.incbin "baserom.gba", 0x16202A, 0x0000100
	.incbin "baserom.gba", 0x16212A, 0x00000ED
	.incbin "baserom.gba", 0x162217, 0x0000017
	.incbin "baserom.gba", 0x16222E, 0x00000F5
	.incbin "baserom.gba", 0x162323, 0x0000001
	.incbin "baserom.gba", 0x162324, 0x0000005
	.incbin "baserom.gba", 0x162329, 0x0000004
	.incbin "baserom.gba", 0x16232D, 0x0000002
	.incbin "baserom.gba", 0x16232F, 0x0000002
	.incbin "baserom.gba", 0x162331, 0x00001E9
	.incbin "baserom.gba", 0x16251A, 0x0000014
	.incbin "baserom.gba", 0x16252E, 0x0000106
	.incbin "baserom.gba", 0x162634, 0x0000408
	.incbin "baserom.gba", 0x162A3C, 0x00000FD
	.incbin "baserom.gba", 0x162B39, 0x0000309
	.incbin "baserom.gba", 0x162E42, 0x0000200
	.incbin "baserom.gba", 0x163042, 0x00000EF
	.incbin "baserom.gba", 0x163131, 0x0000013
	.incbin "baserom.gba", 0x163144, 0x00010BD
	.incbin "baserom.gba", 0x164201, 0x0001315
	.incbin "baserom.gba", 0x165516, 0x000015F
	.incbin "baserom.gba", 0x165675, 0x0000BA8
	.incbin "baserom.gba", 0x16621D, 0x0001014
	.incbin "baserom.gba", 0x167231, 0x0003DFE
	.incbin "baserom.gba", 0x16B02F, 0x00037D2
	.incbin "baserom.gba", 0x16E801, 0x0000523
	.incbin "baserom.gba", 0x16ED24, 0x00002A1
	.incbin "baserom.gba", 0x16EFC5, 0x0000232
	.incbin "baserom.gba", 0x16F1F7, 0x00005DD
	.incbin "baserom.gba", 0x16F7D4, 0x000001C
	.incbin "baserom.gba", 0x16F7F0, 0x0000603
	.incbin "baserom.gba", 0x16FDF3, 0x0000105
	.incbin "baserom.gba", 0x16FEF8, 0x0000108
	.incbin "baserom.gba", 0x170000, 0x000000D
	.incbin "baserom.gba", 0x17000D, 0x0000005
	.incbin "baserom.gba", 0x170012, 0x0000087
	.incbin "baserom.gba", 0x170099, 0x0000051
	.incbin "baserom.gba", 0x1700EA, 0x000001D
	.incbin "baserom.gba", 0x170107, 0x0000039
	.incbin "baserom.gba", 0x170140, 0x00001BA
	.incbin "baserom.gba", 0x1702FA, 0x00000F7
	.incbin "baserom.gba", 0x1703F1, 0x0000010
	.incbin "baserom.gba", 0x170401, 0x000000F
	.incbin "baserom.gba", 0x170410, 0x000000D
	.incbin "baserom.gba", 0x17041D, 0x0000303
	.incbin "baserom.gba", 0x170720, 0x0000040
	.incbin "baserom.gba", 0x170760, 0x0000045
	.incbin "baserom.gba", 0x1707A5, 0x0000061
	.incbin "baserom.gba", 0x170806, 0x0000108
	.incbin "baserom.gba", 0x17090E, 0x00001F1
	.incbin "baserom.gba", 0x170AFF, 0x0000106
	.incbin "baserom.gba", 0x170C05, 0x00003F0
	.incbin "baserom.gba", 0x170FF5, 0x0000012
	.incbin "baserom.gba", 0x171007, 0x0000045
	.incbin "baserom.gba", 0x17104C, 0x000004E
	.incbin "baserom.gba", 0x17109A, 0x0000068
	.incbin "baserom.gba", 0x171102, 0x00000E9
	.incbin "baserom.gba", 0x1711EB, 0x000001B
	.incbin "baserom.gba", 0x171206, 0x000001B
	.incbin "baserom.gba", 0x171221, 0x00000E4
	.incbin "baserom.gba", 0x171305, 0x0000149
	.incbin "baserom.gba", 0x17144E, 0x00000B3
	.incbin "baserom.gba", 0x171501, 0x000000E
	.incbin "baserom.gba", 0x17150F, 0x00000FE
	.incbin "baserom.gba", 0x17160D, 0x0000014
	.incbin "baserom.gba", 0x171621, 0x00003F5
	.incbin "baserom.gba", 0x171A16, 0x00000FB
	.incbin "baserom.gba", 0x171B11, 0x000010A
	.incbin "baserom.gba", 0x171C1B, 0x000015B
	.incbin "baserom.gba", 0x171D76, 0x00000AF
	.incbin "baserom.gba", 0x171E25, 0x00000DF
	.incbin "baserom.gba", 0x171F04, 0x000001A
	.incbin "baserom.gba", 0x171F1E, 0x0000014
	.incbin "baserom.gba", 0x171F32, 0x00000E5
	.incbin "baserom.gba", 0x172017, 0x0000009
	.incbin "baserom.gba", 0x172020, 0x0000001
	.incbin "baserom.gba", 0x172021, 0x0000001
	.incbin "baserom.gba", 0x172022, 0x000000B
	.incbin "baserom.gba", 0x17202D, 0x0000032
	.incbin "baserom.gba", 0x17205F, 0x00000BB
	.incbin "baserom.gba", 0x17211A, 0x000000A
	.incbin "baserom.gba", 0x172124, 0x0000001
	.incbin "baserom.gba", 0x172125, 0x0000004
	.incbin "baserom.gba", 0x172129, 0x000000A
	.incbin "baserom.gba", 0x172133, 0x00000F2
	.incbin "baserom.gba", 0x172225, 0x0000001
	.incbin "baserom.gba", 0x172226, 0x0000003
	.incbin "baserom.gba", 0x172229, 0x0000001
	.incbin "baserom.gba", 0x17222A, 0x0000017
	.incbin "baserom.gba", 0x172241, 0x00000DF
	.incbin "baserom.gba", 0x172320, 0x0000008
	.incbin "baserom.gba", 0x172328, 0x0000206
	.incbin "baserom.gba", 0x17252E, 0x00000FE
	.incbin "baserom.gba", 0x17262C, 0x0000009
	.incbin "baserom.gba", 0x172635, 0x00000F1
	.incbin "baserom.gba", 0x172726, 0x0000012
	.incbin "baserom.gba", 0x172738, 0x00000E7
	.incbin "baserom.gba", 0x17281F, 0x0000016
	.incbin "baserom.gba", 0x172835, 0x0000006
	.incbin "baserom.gba", 0x17283B, 0x00000E2
	.incbin "baserom.gba", 0x17291D, 0x000001C
	.incbin "baserom.gba", 0x172939, 0x00000EF
	.incbin "baserom.gba", 0x172A28, 0x000010F
	.incbin "baserom.gba", 0x172B37, 0x0000003
	.incbin "baserom.gba", 0x172B3A, 0x000051B
	.incbin "baserom.gba", 0x173055, 0x00003E9
	.incbin "baserom.gba", 0x17343E, 0x0000327
	.incbin "baserom.gba", 0x173765, 0x00002C3
	.incbin "baserom.gba", 0x173A28, 0x0000521
	.incbin "baserom.gba", 0x173F49, 0x0000500
	.incbin "baserom.gba", 0x174449, 0x0000203
	.incbin "baserom.gba", 0x17464C, 0x000071E
	.incbin "baserom.gba", 0x174D6A, 0x00005AF
	.incbin "baserom.gba", 0x175319, 0x0002DF4
	.incbin "baserom.gba", 0x17810D, 0x000077B
	.incbin "baserom.gba", 0x178888, 0x000262F
	.incbin "baserom.gba", 0x17AEB7, 0x0003060
	.incbin "baserom.gba", 0x17DF17, 0x0000028
	.incbin "baserom.gba", 0x17DF3F, 0x00007AE
	.incbin "baserom.gba", 0x17E6ED, 0x00001C0
	.incbin "baserom.gba", 0x17E8AD, 0x0000B4D
	.incbin "baserom.gba", 0x17F3FA, 0x0000804
	.incbin "baserom.gba", 0x17FBFE, 0x00000CA
	.incbin "baserom.gba", 0x17FCC8, 0x000024B
	.incbin "baserom.gba", 0x17FF13, 0x0000002
	.incbin "baserom.gba", 0x17FF15, 0x00000EB
	.incbin "baserom.gba", 0x180000, 0x0000013
	.incbin "baserom.gba", 0x180013, 0x000009D
	.incbin "baserom.gba", 0x1800B0, 0x0000040
	.incbin "baserom.gba", 0x1800F0, 0x0000009
	.incbin "baserom.gba", 0x1800F9, 0x0000007
	.incbin "baserom.gba", 0x180100, 0x0000040
	.incbin "baserom.gba", 0x180140, 0x00000C0
	.incbin "baserom.gba", 0x180200, 0x000000F
	.incbin "baserom.gba", 0x18020F, 0x0000097
	.incbin "baserom.gba", 0x1802A6, 0x000009A
	.incbin "baserom.gba", 0x180340, 0x00002A1
	.incbin "baserom.gba", 0x1805E1, 0x000010F
	.incbin "baserom.gba", 0x1806F0, 0x00000E0
	.incbin "baserom.gba", 0x1807D0, 0x0000030
	.incbin "baserom.gba", 0x180800, 0x0000003
	.incbin "baserom.gba", 0x180803, 0x0000005
	.incbin "baserom.gba", 0x180808, 0x00002F8
	.incbin "baserom.gba", 0x180B00, 0x0000010
	.incbin "baserom.gba", 0x180B10, 0x00000DF
	.incbin "baserom.gba", 0x180BEF, 0x0000227
	.incbin "baserom.gba", 0x180E16, 0x00001C4
	.incbin "baserom.gba", 0x180FDA, 0x0000017
	.incbin "baserom.gba", 0x180FF1, 0x0000118
	.incbin "baserom.gba", 0x181109, 0x00000FB
	.incbin "baserom.gba", 0x181204, 0x0000118
	.incbin "baserom.gba", 0x18131C, 0x00000FE
	.incbin "baserom.gba", 0x18141A, 0x00000E1
	.incbin "baserom.gba", 0x1814FB, 0x000010A
	.incbin "baserom.gba", 0x181605, 0x0000008
	.incbin "baserom.gba", 0x18160D, 0x00000F7
	.incbin "baserom.gba", 0x181704, 0x0000106
	.incbin "baserom.gba", 0x18180A, 0x0000107
	.incbin "baserom.gba", 0x181911, 0x0000006
	.incbin "baserom.gba", 0x181917, 0x0000001
	.incbin "baserom.gba", 0x181918, 0x0000004
	.incbin "baserom.gba", 0x18191C, 0x00000B1
	.incbin "baserom.gba", 0x1819CD, 0x0000044
	.incbin "baserom.gba", 0x181A11, 0x0000002
	.incbin "baserom.gba", 0x181A13, 0x000000B
	.incbin "baserom.gba", 0x181A1E, 0x00001E2
	.incbin "baserom.gba", 0x181C00, 0x0000014
	.incbin "baserom.gba", 0x181C14, 0x0000111
	.incbin "baserom.gba", 0x181D25, 0x00000F7
	.incbin "baserom.gba", 0x181E1C, 0x00000FF
	.incbin "baserom.gba", 0x181F1B, 0x00000E5
	.incbin "baserom.gba", 0x182000, 0x0000019
	.incbin "baserom.gba", 0x182019, 0x0000003
	.incbin "baserom.gba", 0x18201C, 0x0000003
	.incbin "baserom.gba", 0x18201F, 0x0000006
	.incbin "baserom.gba", 0x182025, 0x0000001
	.incbin "baserom.gba", 0x182026, 0x00000FE
	.incbin "baserom.gba", 0x182124, 0x0000001
	.incbin "baserom.gba", 0x182125, 0x0000008
	.incbin "baserom.gba", 0x18212D, 0x00000F7
	.incbin "baserom.gba", 0x182224, 0x0000001
	.incbin "baserom.gba", 0x182225, 0x0000109
	.incbin "baserom.gba", 0x18232E, 0x00000DF
	.incbin "baserom.gba", 0x18240D, 0x000001B
	.incbin "baserom.gba", 0x182428, 0x0000002
	.incbin "baserom.gba", 0x18242A, 0x0000104
	.incbin "baserom.gba", 0x18252E, 0x0000001
	.incbin "baserom.gba", 0x18252F, 0x0000004
	.incbin "baserom.gba", 0x182533, 0x0000002
	.incbin "baserom.gba", 0x182535, 0x00000E5
	.incbin "baserom.gba", 0x18261A, 0x0000014
	.incbin "baserom.gba", 0x18262E, 0x000000E
	.incbin "baserom.gba", 0x18263C, 0x00000ED
	.incbin "baserom.gba", 0x182729, 0x00000D7
	.incbin "baserom.gba", 0x182800, 0x0000230
	.incbin "baserom.gba", 0x182A30, 0x000000B
	.incbin "baserom.gba", 0x182A3B, 0x00002F5
	.incbin "baserom.gba", 0x182D30, 0x000000F
	.incbin "baserom.gba", 0x182D3F, 0x00000D7
	.incbin "baserom.gba", 0x182E16, 0x000001E
	.incbin "baserom.gba", 0x182E34, 0x0000008
	.incbin "baserom.gba", 0x182E3C, 0x0000244
	.incbin "baserom.gba", 0x183080, 0x00000CB
	.incbin "baserom.gba", 0x18314B, 0x0000AB5
	.incbin "baserom.gba", 0x183C00, 0x0000060
	.incbin "baserom.gba", 0x183C60, 0x0001AA1
	.incbin "baserom.gba", 0x185701, 0x0002900
	.incbin "baserom.gba", 0x188001, 0x00049FD
	.incbin "baserom.gba", 0x18C9FE, 0x0001221
	.incbin "baserom.gba", 0x18DC1F, 0x00001E2
	.incbin "baserom.gba", 0x18DE01, 0x000019B
	.incbin "baserom.gba", 0x18DF9C, 0x000115D
	.incbin "baserom.gba", 0x18F0F9, 0x0000140
	.incbin "baserom.gba", 0x18F239, 0x00004DA
	.incbin "baserom.gba", 0x18F713, 0x00000EB
	.incbin "baserom.gba", 0x18F7FE, 0x0000002
	.incbin "baserom.gba", 0x18F800, 0x00000B8
	.incbin "baserom.gba", 0x18F8B8, 0x0000424
	.incbin "baserom.gba", 0x18FCDC, 0x0000324
	.incbin "baserom.gba", 0x190000, 0x0000001
	.incbin "baserom.gba", 0x190001, 0x000000B
	.incbin "baserom.gba", 0x19000C, 0x0000109
	.incbin "baserom.gba", 0x190115, 0x00000D7
	.incbin "baserom.gba", 0x1901EC, 0x0000016
	.incbin "baserom.gba", 0x190202, 0x000012D
	.incbin "baserom.gba", 0x19032F, 0x00000D1
	.incbin "baserom.gba", 0x190400, 0x0000080
	.incbin "baserom.gba", 0x190480, 0x0000080
	.incbin "baserom.gba", 0x190500, 0x000010D
	.incbin "baserom.gba", 0x19060D, 0x0000200
	.incbin "baserom.gba", 0x19080D, 0x0000104
	.incbin "baserom.gba", 0x190911, 0x00000DE
	.incbin "baserom.gba", 0x1909EF, 0x00003F7
	.incbin "baserom.gba", 0x190DE6, 0x0000021
	.incbin "baserom.gba", 0x190E07, 0x000000C
	.incbin "baserom.gba", 0x190E13, 0x00000CF
	.incbin "baserom.gba", 0x190EE2, 0x0000034
	.incbin "baserom.gba", 0x190F16, 0x00000E0
	.incbin "baserom.gba", 0x190FF6, 0x0000062
	.incbin "baserom.gba", 0x191058, 0x00000B6
	.incbin "baserom.gba", 0x19110E, 0x00000F3
	.incbin "baserom.gba", 0x191201, 0x0000105
	.incbin "baserom.gba", 0x191306, 0x000010C
	.incbin "baserom.gba", 0x191412, 0x0000006
	.incbin "baserom.gba", 0x191418, 0x00000FE
	.incbin "baserom.gba", 0x191516, 0x00001D5
	.incbin "baserom.gba", 0x1916EB, 0x0000030
	.incbin "baserom.gba", 0x19171B, 0x0000001
	.incbin "baserom.gba", 0x19171C, 0x00001F3
	.incbin "baserom.gba", 0x19190F, 0x0000306
	.incbin "baserom.gba", 0x191C15, 0x00000FA
	.incbin "baserom.gba", 0x191D0F, 0x000000D
	.incbin "baserom.gba", 0x191D1C, 0x0000001
	.incbin "baserom.gba", 0x191D1D, 0x00000FA
	.incbin "baserom.gba", 0x191E17, 0x00000F9
	.incbin "baserom.gba", 0x191F10, 0x0000103
	.incbin "baserom.gba", 0x192013, 0x000010D
	.incbin "baserom.gba", 0x192120, 0x0000009
	.incbin "baserom.gba", 0x192129, 0x00000F8
	.incbin "baserom.gba", 0x192221, 0x0000008
	.incbin "baserom.gba", 0x192229, 0x000010B
	.incbin "baserom.gba", 0x192334, 0x00000AF
	.incbin "baserom.gba", 0x1923E3, 0x000003D
	.incbin "baserom.gba", 0x192420, 0x0000009
	.incbin "baserom.gba", 0x192429, 0x0000001
	.incbin "baserom.gba", 0x19242A, 0x0000001
	.incbin "baserom.gba", 0x19242B, 0x00000E0
	.incbin "baserom.gba", 0x19250B, 0x0000005
	.incbin "baserom.gba", 0x192510, 0x0000018
	.incbin "baserom.gba", 0x192528, 0x0000012
	.incbin "baserom.gba", 0x19253A, 0x00000E9
	.incbin "baserom.gba", 0x192623, 0x000000B
	.incbin "baserom.gba", 0x19262E, 0x0000001
	.incbin "baserom.gba", 0x19262F, 0x0000204
	.incbin "baserom.gba", 0x192833, 0x00000F8
	.incbin "baserom.gba", 0x19292B, 0x000000D
	.incbin "baserom.gba", 0x192938, 0x0000106
	.incbin "baserom.gba", 0x192A3E, 0x00000E1
	.incbin "baserom.gba", 0x192B1F, 0x000021C
	.incbin "baserom.gba", 0x192D3B, 0x0000008
	.incbin "baserom.gba", 0x192D43, 0x00000FC
	.incbin "baserom.gba", 0x192E3F, 0x00000DB
	.incbin "baserom.gba", 0x192F1A, 0x0000031
	.incbin "baserom.gba", 0x192F4B, 0x00000E3
	.incbin "baserom.gba", 0x19302E, 0x000000D
	.incbin "baserom.gba", 0x19303B, 0x0000114
	.incbin "baserom.gba", 0x19314F, 0x00000F3
	.incbin "baserom.gba", 0x193242, 0x00005E0
	.incbin "baserom.gba", 0x193822, 0x0000125
	.incbin "baserom.gba", 0x193947, 0x0000598
	.incbin "baserom.gba", 0x193EDF, 0x0000153
	.incbin "baserom.gba", 0x194032, 0x0000D0F
	.incbin "baserom.gba", 0x194D41, 0x0003720
	.incbin "baserom.gba", 0x198461, 0x00031B2
	.incbin "baserom.gba", 0x19B613, 0x00004ED
	.incbin "baserom.gba", 0x19BB00, 0x0001C11
	.incbin "baserom.gba", 0x19D711, 0x00011DA
	.incbin "baserom.gba", 0x19E8EB, 0x0000CE4
	.incbin "baserom.gba", 0x19F5CF, 0x0000035
	.incbin "baserom.gba", 0x19F604, 0x00000ED
	.incbin "baserom.gba", 0x19F6F1, 0x0000610
	.incbin "baserom.gba", 0x19FD01, 0x0000116
	.incbin "baserom.gba", 0x19FE17, 0x00001E9
	.incbin "baserom.gba", 0x1A0000, 0x0000040
	.incbin "baserom.gba", 0x1A0040, 0x0000061
	.incbin "baserom.gba", 0x1A00A1, 0x000003E
	.incbin "baserom.gba", 0x1A00DF, 0x0000021
	.incbin "baserom.gba", 0x1A0100, 0x00001ED
	.incbin "baserom.gba", 0x1A02ED, 0x000008B
	.incbin "baserom.gba", 0x1A0378, 0x00000A1
	.incbin "baserom.gba", 0x1A0419, 0x0000040
	.incbin "baserom.gba", 0x1A0459, 0x0000096
	.incbin "baserom.gba", 0x1A04EF, 0x000031A
	.incbin "baserom.gba", 0x1A0809, 0x0000010
	.incbin "baserom.gba", 0x1A0819, 0x00003EF
	.incbin "baserom.gba", 0x1A0C08, 0x000010B
	.incbin "baserom.gba", 0x1A0D13, 0x00003D2
	.incbin "baserom.gba", 0x1A10E5, 0x000011D
	.incbin "baserom.gba", 0x1A1202, 0x0000002
	.incbin "baserom.gba", 0x1A1204, 0x000000A
	.incbin "baserom.gba", 0x1A120E, 0x000020D
	.incbin "baserom.gba", 0x1A141B, 0x000003B
	.incbin "baserom.gba", 0x1A1456, 0x00001B8
	.incbin "baserom.gba", 0x1A160E, 0x0000208
	.incbin "baserom.gba", 0x1A1816, 0x00000EE
	.incbin "baserom.gba", 0x1A1904, 0x00001D4
	.incbin "baserom.gba", 0x1A1AD8, 0x0000041
	.incbin "baserom.gba", 0x1A1B19, 0x00001F5
	.incbin "baserom.gba", 0x1A1D0E, 0x00000F8
	.incbin "baserom.gba", 0x1A1E06, 0x000000F
	.incbin "baserom.gba", 0x1A1E15, 0x00000FE
	.incbin "baserom.gba", 0x1A1F13, 0x00002F4
	.incbin "baserom.gba", 0x1A2207, 0x000001E
	.incbin "baserom.gba", 0x1A2225, 0x00000E8
	.incbin "baserom.gba", 0x1A230D, 0x0000001
	.incbin "baserom.gba", 0x1A230E, 0x0000011
	.incbin "baserom.gba", 0x1A231F, 0x00001FB
	.incbin "baserom.gba", 0x1A251A, 0x000000B
	.incbin "baserom.gba", 0x1A2525, 0x0000003
	.incbin "baserom.gba", 0x1A2528, 0x000010D
	.incbin "baserom.gba", 0x1A2635, 0x00000F7
	.incbin "baserom.gba", 0x1A272C, 0x00000DE
	.incbin "baserom.gba", 0x1A280A, 0x000001B
	.incbin "baserom.gba", 0x1A2825, 0x00000F8
	.incbin "baserom.gba", 0x1A291D, 0x0000010
	.incbin "baserom.gba", 0x1A292D, 0x0000002
	.incbin "baserom.gba", 0x1A292F, 0x0000002
	.incbin "baserom.gba", 0x1A2931, 0x00000FA
	.incbin "baserom.gba", 0x1A2A2B, 0x0000007
	.incbin "baserom.gba", 0x1A2A32, 0x000000A
	.incbin "baserom.gba", 0x1A2A3C, 0x00001D8
	.incbin "baserom.gba", 0x1A2C14, 0x000052D
	.incbin "baserom.gba", 0x1A3141, 0x0000007
	.incbin "baserom.gba", 0x1A3148, 0x0000002
	.incbin "baserom.gba", 0x1A314A, 0x00005FF
	.incbin "baserom.gba", 0x1A3749, 0x00000BA
	.incbin "baserom.gba", 0x1A3803, 0x000012A
	.incbin "baserom.gba", 0x1A392D, 0x00007D7
	.incbin "baserom.gba", 0x1A4104, 0x0000D46
	.incbin "baserom.gba", 0x1A4E4A, 0x0009FA9
	.incbin "baserom.gba", 0x1AEDF3, 0x00000F5
	.incbin "baserom.gba", 0x1AEEE8, 0x000022B
	.incbin "baserom.gba", 0x1AF113, 0x00001F4
	.incbin "baserom.gba", 0x1AF307, 0x00008DE
	.incbin "baserom.gba", 0x1AFBE5, 0x0000319
	.incbin "baserom.gba", 0x1AFEFE, 0x00000DF
	.incbin "baserom.gba", 0x1AFFDD, 0x000002B
	.incbin "baserom.gba", 0x1B0008, 0x00000E2
	.incbin "baserom.gba", 0x1B00EA, 0x0000004
	.incbin "baserom.gba", 0x1B00EE, 0x00000FB
	.incbin "baserom.gba", 0x1B01E9, 0x0000270
	.incbin "baserom.gba", 0x1B0459, 0x00000A7
	.incbin "baserom.gba", 0x1B0500, 0x0000103
	.incbin "baserom.gba", 0x1B0603, 0x0000207
	.incbin "baserom.gba", 0x1B080A, 0x00002DE
	.incbin "baserom.gba", 0x1B0AE8, 0x0000133
	.incbin "baserom.gba", 0x1B0C1B, 0x00003D3
	.incbin "baserom.gba", 0x1B0FEE, 0x000032A
	.incbin "baserom.gba", 0x1B1318, 0x00000B4
	.incbin "baserom.gba", 0x1B13CC, 0x0000022
	.incbin "baserom.gba", 0x1B13EE, 0x000002E
	.incbin "baserom.gba", 0x1B141C, 0x00000EC
	.incbin "baserom.gba", 0x1B1508, 0x000030D
	.incbin "baserom.gba", 0x1B1815, 0x00001F2
	.incbin "baserom.gba", 0x1B1A07, 0x00001F9
	.incbin "baserom.gba", 0x1B1C00, 0x0000005
	.incbin "baserom.gba", 0x1B1C05, 0x000040C
	.incbin "baserom.gba", 0x1B2011, 0x0000012
	.incbin "baserom.gba", 0x1B2023, 0x0000112
	.incbin "baserom.gba", 0x1B2135, 0x00000FA
	.incbin "baserom.gba", 0x1B222F, 0x00000ED
	.incbin "baserom.gba", 0x1B231C, 0x0000103
	.incbin "baserom.gba", 0x1B241F, 0x0000116
	.incbin "baserom.gba", 0x1B2535, 0x00000EC
	.incbin "baserom.gba", 0x1B2621, 0x000000E
	.incbin "baserom.gba", 0x1B262F, 0x00000F6
	.incbin "baserom.gba", 0x1B2725, 0x0000005
	.incbin "baserom.gba", 0x1B272A, 0x00000F8
	.incbin "baserom.gba", 0x1B2822, 0x0000007
	.incbin "baserom.gba", 0x1B2829, 0x0000108
	.incbin "baserom.gba", 0x1B2931, 0x000000A
	.incbin "baserom.gba", 0x1B293B, 0x00000E9
	.incbin "baserom.gba", 0x1B2A24, 0x0000016
	.incbin "baserom.gba", 0x1B2A3A, 0x0000010
	.incbin "baserom.gba", 0x1B2A4A, 0x00006EB
	.incbin "baserom.gba", 0x1B3135, 0x0000010
	.incbin "baserom.gba", 0x1B3145, 0x0000207
	.incbin "baserom.gba", 0x1B334C, 0x00004FC
	.incbin "baserom.gba", 0x1B3848, 0x0001DC7
	.incbin "baserom.gba", 0x1B560F, 0x0000D6D
	.incbin "baserom.gba", 0x1B637C, 0x00048CF
	.incbin "baserom.gba", 0x1BAC4B, 0x000078F
	.incbin "baserom.gba", 0x1BB3DA, 0x000371E
	.incbin "baserom.gba", 0x1BEAF8, 0x0000316
	.incbin "baserom.gba", 0x1BEE0E, 0x0000DB6
	.incbin "baserom.gba", 0x1BFBC4, 0x0000457
	.incbin "baserom.gba", 0x1C001B, 0x0000100
	.incbin "baserom.gba", 0x1C011B, 0x00000E5
	.incbin "baserom.gba", 0x1C0200, 0x000061B
	.incbin "baserom.gba", 0x1C081B, 0x00002E5
	.incbin "baserom.gba", 0x1C0B00, 0x00002FA
	.incbin "baserom.gba", 0x1C0DFA, 0x0000339
	.incbin "baserom.gba", 0x1C1133, 0x00000CD
	.incbin "baserom.gba", 0x1C1200, 0x0000301
	.incbin "baserom.gba", 0x1C1501, 0x000000A
	.incbin "baserom.gba", 0x1C150B, 0x00000D3
	.incbin "baserom.gba", 0x1C15DE, 0x000002E
	.incbin "baserom.gba", 0x1C160C, 0x0000006
	.incbin "baserom.gba", 0x1C1612, 0x0000026
	.incbin "baserom.gba", 0x1C1638, 0x00000E5
	.incbin "baserom.gba", 0x1C171D, 0x00000E5
	.incbin "baserom.gba", 0x1C1802, 0x00001DB
	.incbin "baserom.gba", 0x1C19DD, 0x0000123
	.incbin "baserom.gba", 0x1C1B00, 0x0000221
	.incbin "baserom.gba", 0x1C1D21, 0x0000006
	.incbin "baserom.gba", 0x1C1D27, 0x00000DD
	.incbin "baserom.gba", 0x1C1E04, 0x0000001
	.incbin "baserom.gba", 0x1C1E05, 0x0000112
	.incbin "baserom.gba", 0x1C1F17, 0x0000001
	.incbin "baserom.gba", 0x1C1F18, 0x000010B
	.incbin "baserom.gba", 0x1C2023, 0x000001B
	.incbin "baserom.gba", 0x1C203E, 0x00000E4
	.incbin "baserom.gba", 0x1C2122, 0x0000005
	.incbin "baserom.gba", 0x1C2127, 0x00000E4
	.incbin "baserom.gba", 0x1C220B, 0x0000220
	.incbin "baserom.gba", 0x1C242B, 0x00000EE
	.incbin "baserom.gba", 0x1C2519, 0x000000F
	.incbin "baserom.gba", 0x1C2528, 0x00001FC
	.incbin "baserom.gba", 0x1C2724, 0x000000A
	.incbin "baserom.gba", 0x1C272E, 0x00003FE
	.incbin "baserom.gba", 0x1C2B2C, 0x0000006
	.incbin "baserom.gba", 0x1C2B32, 0x00000F9
	.incbin "baserom.gba", 0x1C2C2B, 0x0000004
	.incbin "baserom.gba", 0x1C2C2F, 0x0000207
	.incbin "baserom.gba", 0x1C2E36, 0x0000108
	.incbin "baserom.gba", 0x1C2F3E, 0x0000001
	.incbin "baserom.gba", 0x1C2F3F, 0x00000E4
	.incbin "baserom.gba", 0x1C3023, 0x0000122
	.incbin "baserom.gba", 0x1C3145, 0x0000102
	.incbin "baserom.gba", 0x1C3247, 0x00000E5
	.incbin "baserom.gba", 0x1C332C, 0x000010E
	.incbin "baserom.gba", 0x1C343A, 0x000010C
	.incbin "baserom.gba", 0x1C3546, 0x00004EF
	.incbin "baserom.gba", 0x1C3A35, 0x00005BF
	.incbin "baserom.gba", 0x1C3FF4, 0x0000162
	.incbin "baserom.gba", 0x1C4156, 0x00002FE
	.incbin "baserom.gba", 0x1C4454, 0x0000BB3
	.incbin "baserom.gba", 0x1C5007, 0x0000477
	.incbin "baserom.gba", 0x1C547E, 0x00020ED
	.incbin "baserom.gba", 0x1C756B, 0x000149D
	.incbin "baserom.gba", 0x1C8A08, 0x000026C

gUnk_081C8C74:: @ 081C8C74
	.incbin "baserom.gba", 0x1C8C74, 0x000573D
	.incbin "baserom.gba", 0x1CE3B1, 0x000003D
	.incbin "baserom.gba", 0x1CE3EE, 0x0000DFE
	.incbin "baserom.gba", 0x1CF1EC, 0x00002F9
	.incbin "baserom.gba", 0x1CF4E5, 0x0000333
	.incbin "baserom.gba", 0x1CF818, 0x0000008
	.incbin "baserom.gba", 0x1CF820, 0x00007B1
	.incbin "baserom.gba", 0x1CFFD1, 0x000002F
	.incbin "baserom.gba", 0x1D0000, 0x0000001
	.incbin "baserom.gba", 0x1D0001, 0x0000006
	.incbin "baserom.gba", 0x1D0007, 0x0000009
	.incbin "baserom.gba", 0x1D0010, 0x000000A
	.incbin "baserom.gba", 0x1D001A, 0x000001A
	.incbin "baserom.gba", 0x1D0034, 0x00000E0
	.incbin "baserom.gba", 0x1D0114, 0x0000174
	.incbin "baserom.gba", 0x1D0288, 0x0000179
	.incbin "baserom.gba", 0x1D0401, 0x0000042
	.incbin "baserom.gba", 0x1D0443, 0x00001BE
	.incbin "baserom.gba", 0x1D0601, 0x0000205
	.incbin "baserom.gba", 0x1D0806, 0x0000303
	.incbin "baserom.gba", 0x1D0B09, 0x00003FF
	.incbin "baserom.gba", 0x1D0F08, 0x000001E
	.incbin "baserom.gba", 0x1D0F26, 0x00000DE
	.incbin "baserom.gba", 0x1D1004, 0x0000003
	.incbin "baserom.gba", 0x1D1007, 0x0000511
	.incbin "baserom.gba", 0x1D1518, 0x00000E2
	.incbin "baserom.gba", 0x1D15FA, 0x0000018
	.incbin "baserom.gba", 0x1D1612, 0x000011F
	.incbin "baserom.gba", 0x1D1731, 0x00000CC
	.incbin "baserom.gba", 0x1D17FD, 0x0000013
	.incbin "baserom.gba", 0x1D1810, 0x00003F3
	.incbin "baserom.gba", 0x1D1C03, 0x0000001
	.incbin "baserom.gba", 0x1D1C04, 0x0000019
	.incbin "baserom.gba", 0x1D1C1D, 0x00000F7
	.incbin "baserom.gba", 0x1D1D14, 0x000010E
	.incbin "baserom.gba", 0x1D1E22, 0x00001DE
	.incbin "baserom.gba", 0x1D2000, 0x000000C
	.incbin "baserom.gba", 0x1D200C, 0x0000026
	.incbin "baserom.gba", 0x1D2032, 0x00001F1
	.incbin "baserom.gba", 0x1D2223, 0x00000F5
	.incbin "baserom.gba", 0x1D2318, 0x0000113
	.incbin "baserom.gba", 0x1D242B, 0x000000A
	.incbin "baserom.gba", 0x1D2435, 0x00001D6
	.incbin "baserom.gba", 0x1D260B, 0x00001E1
	.incbin "baserom.gba", 0x1D27EC, 0x0000043
	.incbin "baserom.gba", 0x1D282F, 0x00000E1
	.incbin "baserom.gba", 0x1D2910, 0x0000315
	.incbin "baserom.gba", 0x1D2C25, 0x0000119
	.incbin "baserom.gba", 0x1D2D3E, 0x0000235
	.incbin "baserom.gba", 0x1D2F73, 0x00000C8
	.incbin "baserom.gba", 0x1D303B, 0x0000009
	.incbin "baserom.gba", 0x1D3044, 0x00000E1
	.incbin "baserom.gba", 0x1D3125, 0x00000F6
	.incbin "baserom.gba", 0x1D321B, 0x000021C
	.incbin "baserom.gba", 0x1D3437, 0x00004FC
	.incbin "baserom.gba", 0x1D3933, 0x0000331
	.incbin "baserom.gba", 0x1D3C64, 0x00000C8
	.incbin "baserom.gba", 0x1D3D2C, 0x000103D
	.incbin "baserom.gba", 0x1D4D69, 0x00012FE
	.incbin "baserom.gba", 0x1D6067, 0x000160D

gUnk_081D7674:: @ 081D7674
	.incbin "baserom.gba", 0x1D7674, 0x00029C0
	.incbin "baserom.gba", 0x1DA034, 0x0003FBD
	.incbin "baserom.gba", 0x1DDFF1, 0x0000FFE
	.incbin "baserom.gba", 0x1DEFEF, 0x0000845

gUnk_081DF834:: @ 081DF834
	.incbin "baserom.gba", 0x1DF834, 0x00004C6
	.incbin "baserom.gba", 0x1DFCFA, 0x00002CE
	.incbin "baserom.gba", 0x1DFFC8, 0x0000008
	.incbin "baserom.gba", 0x1DFFD0, 0x0000030
	.incbin "baserom.gba", 0x1E0000, 0x0000012
	.incbin "baserom.gba", 0x1E0012, 0x0000008
	.incbin "baserom.gba", 0x1E001A, 0x00000D8
	.incbin "baserom.gba", 0x1E00F2, 0x0000015
	.incbin "baserom.gba", 0x1E0107, 0x0000016
	.incbin "baserom.gba", 0x1E011D, 0x00001B9
	.incbin "baserom.gba", 0x1E02D6, 0x000002A
	.incbin "baserom.gba", 0x1E0300, 0x0000004
	.incbin "baserom.gba", 0x1E0304, 0x0000109
	.incbin "baserom.gba", 0x1E040D, 0x00000DF
	.incbin "baserom.gba", 0x1E04EC, 0x000027A
	.incbin "baserom.gba", 0x1E0766, 0x00001A9
	.incbin "baserom.gba", 0x1E090F, 0x00000D3
	.incbin "baserom.gba", 0x1E09E2, 0x000001F
	.incbin "baserom.gba", 0x1E0A01, 0x0000120
	.incbin "baserom.gba", 0x1E0B21, 0x00002CA
	.incbin "baserom.gba", 0x1E0DEB, 0x00000FA
	.incbin "baserom.gba", 0x1E0EE5, 0x0000110
	.incbin "baserom.gba", 0x1E0FF5, 0x0000040
	.incbin "baserom.gba", 0x1E1035, 0x00002CA
	.incbin "baserom.gba", 0x1E12FF, 0x0000001
	.incbin "baserom.gba", 0x1E1300, 0x0000601
	.incbin "baserom.gba", 0x1E1901, 0x000000E
	.incbin "baserom.gba", 0x1E190F, 0x00000EA
	.incbin "baserom.gba", 0x1E19F9, 0x0000415
	.incbin "baserom.gba", 0x1E1E0E, 0x000020B
	.incbin "baserom.gba", 0x1E2019, 0x000010D
	.incbin "baserom.gba", 0x1E2126, 0x0000203
	.incbin "baserom.gba", 0x1E2329, 0x000011C
	.incbin "baserom.gba", 0x1E2445, 0x00000D1
	.incbin "baserom.gba", 0x1E2516, 0x00000E7
	.incbin "baserom.gba", 0x1E25FD, 0x0000120
	.incbin "baserom.gba", 0x1E271D, 0x00001E4
	.incbin "baserom.gba", 0x1E2901, 0x0000024
	.incbin "baserom.gba", 0x1E2925, 0x0000201
	.incbin "baserom.gba", 0x1E2B26, 0x0000222
	.incbin "baserom.gba", 0x1E2D48, 0x00000EB
	.incbin "baserom.gba", 0x1E2E33, 0x0000102
	.incbin "baserom.gba", 0x1E2F35, 0x0000404
	.incbin "baserom.gba", 0x1E3339, 0x00000FA
	.incbin "baserom.gba", 0x1E3433, 0x000010E
	.incbin "baserom.gba", 0x1E3541, 0x000010A
	.incbin "baserom.gba", 0x1E364B, 0x00003F1
	.incbin "baserom.gba", 0x1E3A3C, 0x0000B11
	.incbin "baserom.gba", 0x1E454D, 0x00065B3
	.incbin "baserom.gba", 0x1EAB00, 0x0001882
	.incbin "baserom.gba", 0x1EC382, 0x0002445
	.incbin "baserom.gba", 0x1EE7C7, 0x0001335
	.incbin "baserom.gba", 0x1EFAFC, 0x00003CC
	.incbin "baserom.gba", 0x1EFEC8, 0x0000138
	.incbin "baserom.gba", 0x1F0000, 0x0000008
	.incbin "baserom.gba", 0x1F0008, 0x0000001
	.incbin "baserom.gba", 0x1F0009, 0x0000021
	.incbin "baserom.gba", 0x1F002A, 0x0000004
	.incbin "baserom.gba", 0x1F002E, 0x0000002
	.incbin "baserom.gba", 0x1F0030, 0x000000F
	.incbin "baserom.gba", 0x1F003F, 0x0000003
	.incbin "baserom.gba", 0x1F0042, 0x000004A
	.incbin "baserom.gba", 0x1F008C, 0x0000251
	.incbin "baserom.gba", 0x1F02DD, 0x000017C
	.incbin "baserom.gba", 0x1F0459, 0x00003A1
	.incbin "baserom.gba", 0x1F07FA, 0x0000824
	.incbin "baserom.gba", 0x1F101E, 0x0000015
	.incbin "baserom.gba", 0x1F1033, 0x0000033
	.incbin "baserom.gba", 0x1F1066, 0x0000102
	.incbin "baserom.gba", 0x1F1168, 0x000017F
	.incbin "baserom.gba", 0x1F12E7, 0x00002F9
	.incbin "baserom.gba", 0x1F15E0, 0x000025D
	.incbin "baserom.gba", 0x1F183D, 0x00001E0
	.incbin "baserom.gba", 0x1F1A1D, 0x00000EE
	.incbin "baserom.gba", 0x1F1B0B, 0x00002F5
	.incbin "baserom.gba", 0x1F1E00, 0x000011D
	.incbin "baserom.gba", 0x1F1F1D, 0x0000005
	.incbin "baserom.gba", 0x1F1F22, 0x00000E1
	.incbin "baserom.gba", 0x1F2003, 0x000001F
	.incbin "baserom.gba", 0x1F2022, 0x00000A4
	.incbin "baserom.gba", 0x1F20C6, 0x0000062
	.incbin "baserom.gba", 0x1F2128, 0x00000F1
	.incbin "baserom.gba", 0x1F2219, 0x0000103
	.incbin "baserom.gba", 0x1F231C, 0x00001DB
	.incbin "baserom.gba", 0x1F24F7, 0x0000116
	.incbin "baserom.gba", 0x1F260D, 0x000021D
	.incbin "baserom.gba", 0x1F282A, 0x00000F8
	.incbin "baserom.gba", 0x1F2922, 0x0000127
	.incbin "baserom.gba", 0x1F2A49, 0x00000F1
	.incbin "baserom.gba", 0x1F2B3A, 0x00001F5
	.incbin "baserom.gba", 0x1F2D2F, 0x0000200
	.incbin "baserom.gba", 0x1F2F2F, 0x000050E
	.incbin "baserom.gba", 0x1F343D, 0x00000F1
	.incbin "baserom.gba", 0x1F352E, 0x0000204
	.incbin "baserom.gba", 0x1F3732, 0x0000106
	.incbin "baserom.gba", 0x1F3838, 0x0000009
	.incbin "baserom.gba", 0x1F3841, 0x0000BF6
	.incbin "baserom.gba", 0x1F4437, 0x0000023
	.incbin "baserom.gba", 0x1F445A, 0x0000CD8
	.incbin "baserom.gba", 0x1F5132, 0x000049D
	.incbin "baserom.gba", 0x1F55CF, 0x0004A36
	.incbin "baserom.gba", 0x1FA005, 0x000107B
	.incbin "baserom.gba", 0x1FB080, 0x00028A2
	.incbin "baserom.gba", 0x1FD922, 0x00014F3
	.incbin "baserom.gba", 0x1FEE15, 0x000022A
	.incbin "baserom.gba", 0x1FF03F, 0x0000175

gUnk_081FF1B4:: @ 081FF1B4
	.incbin "baserom.gba", 0x1FF1B4, 0x0000D2D
	.incbin "baserom.gba", 0x1FFEE1, 0x000011F
	.incbin "baserom.gba", 0x200000, 0x0000001
	.incbin "baserom.gba", 0x200001, 0x0000010
	.incbin "baserom.gba", 0x200011, 0x000000F
	.incbin "baserom.gba", 0x200020, 0x000001F
	.incbin "baserom.gba", 0x20003F, 0x0000003
	.incbin "baserom.gba", 0x200042, 0x0000072
	.incbin "baserom.gba", 0x2000B4, 0x0000008
	.incbin "baserom.gba", 0x2000BC, 0x000005A
	.incbin "baserom.gba", 0x200116, 0x0000009
	.incbin "baserom.gba", 0x20011F, 0x0000012
	.incbin "baserom.gba", 0x200131, 0x0000079
	.incbin "baserom.gba", 0x2001AA, 0x0000130
	.incbin "baserom.gba", 0x2002DA, 0x000015A
	.incbin "baserom.gba", 0x200434, 0x00000CC
	.incbin "baserom.gba", 0x200500, 0x0000020
	.incbin "baserom.gba", 0x200520, 0x0000033
	.incbin "baserom.gba", 0x200553, 0x00000AD
	.incbin "baserom.gba", 0x200600, 0x0000009
	.incbin "baserom.gba", 0x200609, 0x0000027
	.incbin "baserom.gba", 0x200630, 0x00000D0
	.incbin "baserom.gba", 0x200700, 0x0000006
	.incbin "baserom.gba", 0x200706, 0x000001A
	.incbin "baserom.gba", 0x200720, 0x0000030
	.incbin "baserom.gba", 0x200750, 0x0000010
	.incbin "baserom.gba", 0x200760, 0x0000020
	.incbin "baserom.gba", 0x200780, 0x0000060
	.incbin "baserom.gba", 0x2007E0, 0x0000020
	.incbin "baserom.gba", 0x200800, 0x0000020
	.incbin "baserom.gba", 0x200820, 0x0000110
	.incbin "baserom.gba", 0x200930, 0x00001D0
	.incbin "baserom.gba", 0x200B00, 0x0000100
	.incbin "baserom.gba", 0x200C00, 0x00002E0
	.incbin "baserom.gba", 0x200EE0, 0x0000020
	.incbin "baserom.gba", 0x200F00, 0x0000040
	.incbin "baserom.gba", 0x200F40, 0x00000E0
	.incbin "baserom.gba", 0x201020, 0x00001EE
	.incbin "baserom.gba", 0x20120E, 0x00000ED
	.incbin "baserom.gba", 0x2012FB, 0x000000A
	.incbin "baserom.gba", 0x201305, 0x00003FB
	.incbin "baserom.gba", 0x201700, 0x0000010
	.incbin "baserom.gba", 0x201710, 0x0000309
	.incbin "baserom.gba", 0x201A19, 0x00000E2
	.incbin "baserom.gba", 0x201AFB, 0x00000DD
	.incbin "baserom.gba", 0x201BD8, 0x0000338
	.incbin "baserom.gba", 0x201F10, 0x0000026
	.incbin "baserom.gba", 0x201F36, 0x0000110
	.incbin "baserom.gba", 0x202046, 0x000009A
	.incbin "baserom.gba", 0x2020E0, 0x0000120
	.incbin "baserom.gba", 0x202200, 0x0000010
	.incbin "baserom.gba", 0x202210, 0x0000001
	.incbin "baserom.gba", 0x202211, 0x000000C
	.incbin "baserom.gba", 0x20221D, 0x00000FD
	.incbin "baserom.gba", 0x20231A, 0x00000F3
	.incbin "baserom.gba", 0x20240D, 0x00003B3
	.incbin "baserom.gba", 0x2027C0, 0x0000070
	.incbin "baserom.gba", 0x202830, 0x00000E7
	.incbin "baserom.gba", 0x202917, 0x00000FF
	.incbin "baserom.gba", 0x202A16, 0x0000009
	.incbin "baserom.gba", 0x202A1F, 0x00001E4
	.incbin "baserom.gba", 0x202C03, 0x0000144
	.incbin "baserom.gba", 0x202D47, 0x00000EE
	.incbin "baserom.gba", 0x202E35, 0x00001FF
	.incbin "baserom.gba", 0x203034, 0x0000002
	.incbin "baserom.gba", 0x203036, 0x00000FC
	.incbin "baserom.gba", 0x203132, 0x000010B
	.incbin "baserom.gba", 0x20323D, 0x0000103
	.incbin "baserom.gba", 0x203340, 0x00000C0
	.incbin "baserom.gba", 0x203400, 0x000002E
	.incbin "baserom.gba", 0x20342E, 0x0000003
	.incbin "baserom.gba", 0x203431, 0x00000CF
	.incbin "baserom.gba", 0x203500, 0x0000044
	.incbin "baserom.gba", 0x203544, 0x00001EB
	.incbin "baserom.gba", 0x20372F, 0x000001B
	.incbin "baserom.gba", 0x20374A, 0x00000B6
	.incbin "baserom.gba", 0x203800, 0x0000001
	.incbin "baserom.gba", 0x203801, 0x00002FF
	.incbin "baserom.gba", 0x203B00, 0x000021D
	.incbin "baserom.gba", 0x203D1D, 0x0000036
	.incbin "baserom.gba", 0x203D53, 0x00003AD
	.incbin "baserom.gba", 0x204100, 0x0000100
	.incbin "baserom.gba", 0x204200, 0x0000087
	.incbin "baserom.gba", 0x204287, 0x0000079
	.incbin "baserom.gba", 0x204300, 0x0000306
	.incbin "baserom.gba", 0x204606, 0x0000004
	.incbin "baserom.gba", 0x20460A, 0x0000026
	.incbin "baserom.gba", 0x204630, 0x0000020
	.incbin "baserom.gba", 0x204650, 0x00002B0
	.incbin "baserom.gba", 0x204900, 0x0000100
	.incbin "baserom.gba", 0x204A00, 0x0000200
	.incbin "baserom.gba", 0x204C00, 0x0000300
	.incbin "baserom.gba", 0x204F00, 0x0000010
	.incbin "baserom.gba", 0x204F10, 0x00001F0
	.incbin "baserom.gba", 0x205100, 0x0000100
	.incbin "baserom.gba", 0x205200, 0x000006D
	.incbin "baserom.gba", 0x20526D, 0x0000393
	.incbin "baserom.gba", 0x205600, 0x0000020
	.incbin "baserom.gba", 0x205620, 0x00003E0
	.incbin "baserom.gba", 0x205A00, 0x00006E9
	.incbin "baserom.gba", 0x2060E9, 0x000071E
	.incbin "baserom.gba", 0x206807, 0x00003F9
	.incbin "baserom.gba", 0x206C00, 0x000007F
	.incbin "baserom.gba", 0x206C7F, 0x0000282
	.incbin "baserom.gba", 0x206F01, 0x000001F
	.incbin "baserom.gba", 0x206F20, 0x0000064
	.incbin "baserom.gba", 0x206F84, 0x0000106
	.incbin "baserom.gba", 0x20708A, 0x000007D
	.incbin "baserom.gba", 0x207107, 0x000020D
	.incbin "baserom.gba", 0x207314, 0x0000025
	.incbin "baserom.gba", 0x207339, 0x00004BC
	.incbin "baserom.gba", 0x2077F5, 0x000020C
	.incbin "baserom.gba", 0x207A01, 0x0000169
	.incbin "baserom.gba", 0x207B6A, 0x00003E2
	.incbin "baserom.gba", 0x207F4C, 0x000011E
	.incbin "baserom.gba", 0x20806A, 0x0000596
	.incbin "baserom.gba", 0x208600, 0x000010E
	.incbin "baserom.gba", 0x20870E, 0x0000019
	.incbin "baserom.gba", 0x208727, 0x000041C
	.incbin "baserom.gba", 0x208B43, 0x0000072
	.incbin "baserom.gba", 0x208BB5, 0x0000052
	.incbin "baserom.gba", 0x208C07, 0x000027A
	.incbin "baserom.gba", 0x208E81, 0x0000089
	.incbin "baserom.gba", 0x208F0A, 0x000007A
	.incbin "baserom.gba", 0x208F84, 0x0000170
	.incbin "baserom.gba", 0x2090F4, 0x000020C
	.incbin "baserom.gba", 0x209300, 0x00000AE
	.incbin "baserom.gba", 0x2093AE, 0x00001E7
	.incbin "baserom.gba", 0x209595, 0x00000AD
	.incbin "baserom.gba", 0x209642, 0x0000247
	.incbin "baserom.gba", 0x209889, 0x000002A
	.incbin "baserom.gba", 0x2098B3, 0x00000D5
	.incbin "baserom.gba", 0x209988, 0x0000280
	.incbin "baserom.gba", 0x209C08, 0x0000300
	.incbin "baserom.gba", 0x209F08, 0x00006E1
	.incbin "baserom.gba", 0x20A5E9, 0x000016E
	.incbin "baserom.gba", 0x20A757, 0x0000050
	.incbin "baserom.gba", 0x20A7A7, 0x0000025
	.incbin "baserom.gba", 0x20A7CC, 0x0000009
	.incbin "baserom.gba", 0x20A7D5, 0x0000033
	.incbin "baserom.gba", 0x20A808, 0x0000148
	.incbin "baserom.gba", 0x20A950, 0x0000238
	.incbin "baserom.gba", 0x20AB88, 0x0000581
	.incbin "baserom.gba", 0x20B109, 0x0000081
	.incbin "baserom.gba", 0x20B18A, 0x0000226
	.incbin "baserom.gba", 0x20B3B0, 0x0000079
	.incbin "baserom.gba", 0x20B429, 0x000012B
	.incbin "baserom.gba", 0x20B554, 0x00000C3
	.incbin "baserom.gba", 0x20B617, 0x00000DE
	.incbin "baserom.gba", 0x20B6F5, 0x000020D
	.incbin "baserom.gba", 0x20B902, 0x0000005
	.incbin "baserom.gba", 0x20B907, 0x0000103
	.incbin "baserom.gba", 0x20BA0A, 0x00001DC
	.incbin "baserom.gba", 0x20BBE6, 0x00002C9
	.incbin "baserom.gba", 0x20BEAF, 0x000007D
	.incbin "baserom.gba", 0x20BF2C, 0x000008D
	.incbin "baserom.gba", 0x20BFB9, 0x0000039
	.incbin "baserom.gba", 0x20BFF2, 0x0000069
	.incbin "baserom.gba", 0x20C05B, 0x00000C5
	.incbin "baserom.gba", 0x20C120, 0x000029C
	.incbin "baserom.gba", 0x20C3BC, 0x0000358
	.incbin "baserom.gba", 0x20C714, 0x0000030
	.incbin "baserom.gba", 0x20C744, 0x0000081
	.incbin "baserom.gba", 0x20C7C5, 0x000008B
	.incbin "baserom.gba", 0x20C850, 0x00000B0
	.incbin "baserom.gba", 0x20C900, 0x000053E
	.incbin "baserom.gba", 0x20CE3E, 0x00000D9
	.incbin "baserom.gba", 0x20CF17, 0x00002ED
	.incbin "baserom.gba", 0x20D204, 0x00002D6
	.incbin "baserom.gba", 0x20D4DA, 0x000012A
	.incbin "baserom.gba", 0x20D604, 0x00003D9
	.incbin "baserom.gba", 0x20D9DD, 0x00000EA
	.incbin "baserom.gba", 0x20DAC7, 0x0000123
	.incbin "baserom.gba", 0x20DBEA, 0x00000EA
	.incbin "baserom.gba", 0x20DCD4, 0x00000CD
	.incbin "baserom.gba", 0x20DDA1, 0x0000067
	.incbin "baserom.gba", 0x20DE08, 0x0000193
	.incbin "baserom.gba", 0x20DF9B, 0x000016C
	.incbin "baserom.gba", 0x20E107, 0x000001C
	.incbin "baserom.gba", 0x20E123, 0x0000080
	.incbin "baserom.gba", 0x20E1A3, 0x0000341
	.incbin "baserom.gba", 0x20E4E4, 0x0000004
	.incbin "baserom.gba", 0x20E4E8, 0x0000015
	.incbin "baserom.gba", 0x20E4FD, 0x000000E
	.incbin "baserom.gba", 0x20E50B, 0x0000002
	.incbin "baserom.gba", 0x20E50D, 0x000008A
	.incbin "baserom.gba", 0x20E597, 0x0000250
	.incbin "baserom.gba", 0x20E7E7, 0x0000102
	.incbin "baserom.gba", 0x20E8E9, 0x000021A
	.incbin "baserom.gba", 0x20EB03, 0x000000C
	.incbin "baserom.gba", 0x20EB0F, 0x0000075
	.incbin "baserom.gba", 0x20EB84, 0x000009F
	.incbin "baserom.gba", 0x20EC23, 0x0000120
	.incbin "baserom.gba", 0x20ED43, 0x0000021
	.incbin "baserom.gba", 0x20ED64, 0x0000127
	.incbin "baserom.gba", 0x20EE8B, 0x0000175
	.incbin "baserom.gba", 0x20F000, 0x00000E0
	.incbin "baserom.gba", 0x20F0E0, 0x0000A4F
	.incbin "baserom.gba", 0x20FB2F, 0x0000045
	.incbin "baserom.gba", 0x20FB74, 0x0000388
	.incbin "baserom.gba", 0x20FEFC, 0x0000056
	.incbin "baserom.gba", 0x20FF52, 0x000003B
	.incbin "baserom.gba", 0x20FF8D, 0x0000019
	.incbin "baserom.gba", 0x20FFA6, 0x000005A
	.incbin "baserom.gba", 0x210000, 0x0000024
	.incbin "baserom.gba", 0x210024, 0x0000063
	.incbin "baserom.gba", 0x210087, 0x0000052
	.incbin "baserom.gba", 0x2100D9, 0x0000127
	.incbin "baserom.gba", 0x210200, 0x0000120
	.incbin "baserom.gba", 0x210320, 0x00001BC
	.incbin "baserom.gba", 0x2104DC, 0x0000325
	.incbin "baserom.gba", 0x210801, 0x00001E0
	.incbin "baserom.gba", 0x2109E1, 0x000030A
	.incbin "baserom.gba", 0x210CEB, 0x0000222
	.incbin "baserom.gba", 0x210F0D, 0x00000D3
	.incbin "baserom.gba", 0x210FE0, 0x0000142
	.incbin "baserom.gba", 0x211122, 0x0000133
	.incbin "baserom.gba", 0x211255, 0x000000D
	.incbin "baserom.gba", 0x211262, 0x0000093
	.incbin "baserom.gba", 0x2112F5, 0x0000838
	.incbin "baserom.gba", 0x211B2D, 0x00001CD
	.incbin "baserom.gba", 0x211CFA, 0x000010C
	.incbin "baserom.gba", 0x211E06, 0x000029B
	.incbin "baserom.gba", 0x2120A1, 0x0000259
	.incbin "baserom.gba", 0x2122FA, 0x0000010
	.incbin "baserom.gba", 0x21230A, 0x0000723
	.incbin "baserom.gba", 0x212A2D, 0x00003F9
	.incbin "baserom.gba", 0x212E26, 0x00000F2
	.incbin "baserom.gba", 0x212F18, 0x0000116
	.incbin "baserom.gba", 0x21302E, 0x000000B
	.incbin "baserom.gba", 0x213039, 0x00000F3
	.incbin "baserom.gba", 0x21312C, 0x00001F6
	.incbin "baserom.gba", 0x213322, 0x000001A
	.incbin "baserom.gba", 0x21333C, 0x0000407
	.incbin "baserom.gba", 0x213743, 0x0000312
	.incbin "baserom.gba", 0x213A55, 0x00001EF
	.incbin "baserom.gba", 0x213C44, 0x0000010
	.incbin "baserom.gba", 0x213C54, 0x00003AB
	.incbin "baserom.gba", 0x213FFF, 0x0000108
	.incbin "baserom.gba", 0x214107, 0x0000150
	.incbin "baserom.gba", 0x214257, 0x0000001
	.incbin "baserom.gba", 0x214258, 0x000035F
	.incbin "baserom.gba", 0x2145B7, 0x00005C7
	.incbin "baserom.gba", 0x214B7E, 0x0000C81
	.incbin "baserom.gba", 0x2157FF, 0x0002CB5

@ 0x2184B4 - 0x21DCB3
	.incbin "graphics/npc/postman.4bpp"

@ 0x21DCB4 - 0x21E913
	.incbin "graphics/npc/malon.4bpp"
	.incbin "baserom.gba", 0x21E8F4, 0x000070B
	.incbin "baserom.gba", 0x21EFFF, 0x00000F1
	.incbin "baserom.gba", 0x21F0F0, 0x0000F11
	.incbin "baserom.gba", 0x220001, 0x0000100
	.incbin "baserom.gba", 0x220101, 0x0000002
	.incbin "baserom.gba", 0x220103, 0x00001D2
	.incbin "baserom.gba", 0x2202D5, 0x000002B
	.incbin "baserom.gba", 0x220300, 0x00002F7
	.incbin "baserom.gba", 0x2205F7, 0x000073D
	.incbin "baserom.gba", 0x220D34, 0x00001BE
	.incbin "baserom.gba", 0x220EF2, 0x0000227
	.incbin "baserom.gba", 0x221119, 0x00004E2
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x220CE7, 0x00003F6
.else
	.incbin "baserom.gba", 0x2215FB, 0x00003F6
.endif
	.incbin "baserom.gba", 0x2219F1, 0x0000027
	.incbin "baserom.gba", 0x221A18, 0x00001D6
	.incbin "baserom.gba", 0x221BEE, 0x0000212
	.incbin "baserom.gba", 0x221E00, 0x00004EE
	.incbin "baserom.gba", 0x2222EE, 0x0000056
	.incbin "baserom.gba", 0x222344, 0x00000EF
	.incbin "baserom.gba", 0x222433, 0x0000055
	.incbin "baserom.gba", 0x222488, 0x00001A5
	.incbin "baserom.gba", 0x22262D, 0x00004DA
	.incbin "baserom.gba", 0x222B07, 0x0000428
	.incbin "baserom.gba", 0x222F2F, 0x00000D8
	.incbin "baserom.gba", 0x223007, 0x000022B
	.incbin "baserom.gba", 0x223232, 0x0000001
	.incbin "baserom.gba", 0x223233, 0x0000210
	.incbin "baserom.gba", 0x223443, 0x0000002
	.incbin "baserom.gba", 0x223445, 0x000000E
	.incbin "baserom.gba", 0x223453, 0x00000D6
	.incbin "baserom.gba", 0x223529, 0x0000014
	.incbin "baserom.gba", 0x22353D, 0x0000207
	.incbin "baserom.gba", 0x223744, 0x0000E13
	.incbin "baserom.gba", 0x224557, 0x00006F4
	.incbin "baserom.gba", 0x224C4B, 0x00002EA
	.incbin "baserom.gba", 0x224F35, 0x0000ED5
	.incbin "baserom.gba", 0x225E0A, 0x00021ED
	.incbin "baserom.gba", 0x227FF7, 0x0001014
	.incbin "baserom.gba", 0x22900B, 0x000019F
	.incbin "baserom.gba", 0x2291AA, 0x0000B79
	.incbin "baserom.gba", 0x229D23, 0x00007CB
	.incbin "baserom.gba", 0x22A4EE, 0x0000F19
	.incbin "baserom.gba", 0x22B407, 0x0002414
	.incbin "baserom.gba", 0x22D81B, 0x00013D5
	.incbin "baserom.gba", 0x22EBF0, 0x0000413
	.incbin "baserom.gba", 0x22F003, 0x0000401
	.incbin "baserom.gba", 0x22F404, 0x00004CE
	.incbin "baserom.gba", 0x22F8D2, 0x0000010
	.incbin "baserom.gba", 0x22F8E2, 0x00001D8
	.incbin "baserom.gba", 0x22FABA, 0x0000846
	.incbin "baserom.gba", 0x230300, 0x00005A6
	.incbin "baserom.gba", 0x2308A6, 0x0000038
	.incbin "baserom.gba", 0x2308DE, 0x0000347
	.incbin "baserom.gba", 0x230C25, 0x00000B9
	.incbin "baserom.gba", 0x230CDE, 0x000060C
	.incbin "baserom.gba", 0x2312EA, 0x0000424
	.incbin "baserom.gba", 0x23170E, 0x000052F
	.incbin "baserom.gba", 0x231C3D, 0x00000D5
	.incbin "baserom.gba", 0x231D12, 0x000000C
	.incbin "baserom.gba", 0x231D1E, 0x00000F5
	.incbin "baserom.gba", 0x231E13, 0x0000104
	.incbin "baserom.gba", 0x231F17, 0x00001C1
	.incbin "baserom.gba", 0x2320D8, 0x000015D
	.incbin "baserom.gba", 0x232235, 0x0000075
	.incbin "baserom.gba", 0x2322AA, 0x000015C
	.incbin "baserom.gba", 0x232406, 0x000003F
	.incbin "baserom.gba", 0x232445, 0x00001CB
	.incbin "baserom.gba", 0x232610, 0x000020C
	.incbin "baserom.gba", 0x23281C, 0x00000F5
	.incbin "baserom.gba", 0x232911, 0x000011C
	.incbin "baserom.gba", 0x232A2D, 0x00000E1
	.incbin "baserom.gba", 0x232B0E, 0x000000F
	.incbin "baserom.gba", 0x232B1D, 0x0000006
	.incbin "baserom.gba", 0x232B23, 0x00001C8
	.incbin "baserom.gba", 0x232CEB, 0x000002D
	.incbin "baserom.gba", 0x232D18, 0x0000015
	.incbin "baserom.gba", 0x232D2D, 0x0000007
	.incbin "baserom.gba", 0x232D34, 0x000015D
	.incbin "baserom.gba", 0x232E91, 0x000007C
	.incbin "baserom.gba", 0x232F0D, 0x000000A
	.incbin "baserom.gba", 0x232F17, 0x000001F
	.incbin "baserom.gba", 0x232F36, 0x00000F3
	.incbin "baserom.gba", 0x233029, 0x0000006
	.incbin "baserom.gba", 0x23302F, 0x0000008
	.incbin "baserom.gba", 0x233037, 0x00001F4
	.incbin "baserom.gba", 0x23322B, 0x00000EB
	.incbin "baserom.gba", 0x233316, 0x000001D
	.incbin "baserom.gba", 0x233333, 0x0000002
	.incbin "baserom.gba", 0x233335, 0x0000064
	.incbin "baserom.gba", 0x233399, 0x000008A
	.incbin "baserom.gba", 0x233423, 0x000000E
	.incbin "baserom.gba", 0x233431, 0x0000003
	.incbin "baserom.gba", 0x233434, 0x000020D
	.incbin "baserom.gba", 0x233641, 0x0000021
	.incbin "baserom.gba", 0x233662, 0x00000D6
	.incbin "baserom.gba", 0x233738, 0x0000103
	.incbin "baserom.gba", 0x23383B, 0x0000217
	.incbin "baserom.gba", 0x233A52, 0x0000009
	.incbin "baserom.gba", 0x233A5B, 0x000012E
	.incbin "baserom.gba", 0x233B89, 0x00000BD
	.incbin "baserom.gba", 0x233C46, 0x000030F
	.incbin "baserom.gba", 0x233F55, 0x00002CC
	.incbin "baserom.gba", 0x234221, 0x000021A
	.incbin "baserom.gba", 0x23443B, 0x0000207
	.incbin "baserom.gba", 0x234642, 0x0000BA7
	.incbin "baserom.gba", 0x2351E9, 0x0000265
	.incbin "baserom.gba", 0x23544E, 0x00005FF
	.incbin "baserom.gba", 0x235A4D, 0x00009EE
	.incbin "baserom.gba", 0x23643B, 0x0002AC8
	.incbin "baserom.gba", 0x238F03, 0x0001BA6
	.incbin "baserom.gba", 0x23AAA9, 0x0001C6C
	.incbin "baserom.gba", 0x23C715, 0x00013EF
	.incbin "baserom.gba", 0x23DB04, 0x0000FFC
	.incbin "baserom.gba", 0x23EB00, 0x0001109
	.incbin "baserom.gba", 0x23FC09, 0x00003F7
	.incbin "baserom.gba", 0x240000, 0x000000F
	.incbin "baserom.gba", 0x24000F, 0x00000FA
	.incbin "baserom.gba", 0x240109, 0x000001A
	.incbin "baserom.gba", 0x240123, 0x00001DD
	.incbin "baserom.gba", 0x240300, 0x0000CE5
	.incbin "baserom.gba", 0x240FE5, 0x000041A
	.incbin "baserom.gba", 0x2413FF, 0x0000915
	.incbin "baserom.gba", 0x241D14, 0x00002FF
	.incbin "baserom.gba", 0x242013, 0x00000E5
	.incbin "baserom.gba", 0x2420F8, 0x000000C
	.incbin "baserom.gba", 0x242104, 0x000012E
	.incbin "baserom.gba", 0x242232, 0x00000A5
	.incbin "baserom.gba", 0x2422D7, 0x000063F
	.incbin "baserom.gba", 0x242916, 0x0000122
	.incbin "baserom.gba", 0x242A38, 0x00003E8
	.incbin "baserom.gba", 0x242E20, 0x0000106
	.incbin "baserom.gba", 0x242F26, 0x00001EB
	.incbin "baserom.gba", 0x243111, 0x0000121
	.incbin "baserom.gba", 0x243232, 0x00006FB
	.incbin "baserom.gba", 0x24392D, 0x0000016
	.incbin "baserom.gba", 0x243943, 0x0000002
	.incbin "baserom.gba", 0x243945, 0x0000202
	.incbin "baserom.gba", 0x243B47, 0x0000002
	.incbin "baserom.gba", 0x243B49, 0x000008D
	.incbin "baserom.gba", 0x243BD6, 0x0000267
	.incbin "baserom.gba", 0x243E3D, 0x000000F
	.incbin "baserom.gba", 0x243E4C, 0x00000FC
	.incbin "baserom.gba", 0x243F48, 0x000032C
	.incbin "baserom.gba", 0x244274, 0x00000E1
	.incbin "baserom.gba", 0x244355, 0x0000608
	.incbin "baserom.gba", 0x24495D, 0x0000BD8
	.incbin "baserom.gba", 0x245535, 0x00005CB
	.incbin "baserom.gba", 0x245B00, 0x00019D4

gUnk_082474D4:: @ 082474D4
	.incbin "baserom.gba", 0x2474D4, 0x0004C0C
	.incbin "baserom.gba", 0x24C0E0, 0x00007C0
	.incbin "baserom.gba", 0x24C8A0, 0x0001973
	.incbin "baserom.gba", 0x24E213, 0x0000111
	.incbin "baserom.gba", 0x24E324, 0x00001BF
	.incbin "baserom.gba", 0x24E4E3, 0x000031D
	.incbin "baserom.gba", 0x24E800, 0x00001B7
	.incbin "baserom.gba", 0x24E9B7, 0x0001659
	.incbin "baserom.gba", 0x250010, 0x0000030
	.incbin "baserom.gba", 0x250040, 0x00000C7
	.incbin "baserom.gba", 0x250107, 0x00002EF
	.incbin "baserom.gba", 0x2503F6, 0x000002E
	.incbin "baserom.gba", 0x250424, 0x0000C74
	.incbin "baserom.gba", 0x251098, 0x0000071
	.incbin "baserom.gba", 0x251109, 0x00002B3
	.incbin "baserom.gba", 0x2513BC, 0x0000B50
	.incbin "baserom.gba", 0x251F0C, 0x00001F9
	.incbin "baserom.gba", 0x252105, 0x0000039
	.incbin "baserom.gba", 0x25213E, 0x00006DA
	.incbin "baserom.gba", 0x252818, 0x00008C2
	.incbin "baserom.gba", 0x2530DA, 0x0000259
	.incbin "baserom.gba", 0x253333, 0x0000610
	.incbin "baserom.gba", 0x253943, 0x00001FE
	.incbin "baserom.gba", 0x253B41, 0x0000109
	.incbin "baserom.gba", 0x253C4A, 0x0000309
	.incbin "baserom.gba", 0x253F53, 0x0000503
	.incbin "baserom.gba", 0x254456, 0x00010E5
	.incbin "baserom.gba", 0x25553B, 0x0000018
	.incbin "baserom.gba", 0x255553, 0x0000068
	.incbin "baserom.gba", 0x2555BB, 0x0000FC3
	.incbin "baserom.gba", 0x25657E, 0x0007F37
	.incbin "baserom.gba", 0x25E4B5, 0x0000344
	.incbin "baserom.gba", 0x25E7F9, 0x0001808
	.incbin "baserom.gba", 0x260001, 0x0000007
	.incbin "baserom.gba", 0x260008, 0x0000038
	.incbin "baserom.gba", 0x260040, 0x0000094
	.incbin "baserom.gba", 0x2600D4, 0x0000300
	.incbin "baserom.gba", 0x2603D4, 0x0000051
	.incbin "baserom.gba", 0x260425, 0x0000034
	.incbin "baserom.gba", 0x260459, 0x00002A9
	.incbin "baserom.gba", 0x260702, 0x00004AE
	.incbin "baserom.gba", 0x260BB0, 0x0000348
	.incbin "baserom.gba", 0x260EF8, 0x0000011
	.incbin "baserom.gba", 0x260F09, 0x0000D6C
	.incbin "baserom.gba", 0x261C75, 0x000009E
	.incbin "baserom.gba", 0x261D13, 0x0000401
	.incbin "baserom.gba", 0x262114, 0x00004F1
	.incbin "baserom.gba", 0x262605, 0x0000316
	.incbin "baserom.gba", 0x26291B, 0x0000307
	.incbin "baserom.gba", 0x262C22, 0x0000407
	.incbin "baserom.gba", 0x263029, 0x00002FA
	.incbin "baserom.gba", 0x263323, 0x000051D
	.incbin "baserom.gba", 0x263840, 0x0000206
	.incbin "baserom.gba", 0x263A46, 0x0000508
	.incbin "baserom.gba", 0x263F4E, 0x0000005
	.incbin "baserom.gba", 0x263F53, 0x00001FD
	.incbin "baserom.gba", 0x264150, 0x00003E0
	.incbin "baserom.gba", 0x264530, 0x0000335
	.incbin "baserom.gba", 0x264865, 0x00002D8
	.incbin "baserom.gba", 0x264B3D, 0x000031C
	.incbin "baserom.gba", 0x264E59, 0x0000113
	.incbin "baserom.gba", 0x264F6C, 0x000835A
	.incbin "baserom.gba", 0x26D2C6, 0x0000530
	.incbin "baserom.gba", 0x26D7F6, 0x0000990
	.incbin "baserom.gba", 0x26E186, 0x0000C68
	.incbin "baserom.gba", 0x26EDEE, 0x00011FE
	.incbin "baserom.gba", 0x26FFEC, 0x0000014
	.incbin "baserom.gba", 0x270000, 0x0000001
	.incbin "baserom.gba", 0x270001, 0x000000F
	.incbin "baserom.gba", 0x270010, 0x0000001
	.incbin "baserom.gba", 0x270011, 0x00000E0
	.incbin "baserom.gba", 0x2700F1, 0x00000E7
	.incbin "baserom.gba", 0x2701D8, 0x000042E
	.incbin "baserom.gba", 0x270606, 0x000011A
	.incbin "baserom.gba", 0x270720, 0x00002CD
	.incbin "baserom.gba", 0x2709ED, 0x000051C
	.incbin "baserom.gba", 0x270F09, 0x00000F8
	.incbin "baserom.gba", 0x271001, 0x0000065
	.incbin "baserom.gba", 0x271066, 0x000025C
	.incbin "baserom.gba", 0x2712C2, 0x0000033
	.incbin "baserom.gba", 0x2712F5, 0x00001E8
	.incbin "baserom.gba", 0x2714DD, 0x0000A1E
	.incbin "baserom.gba", 0x271EFB, 0x0000718
	.incbin "baserom.gba", 0x272613, 0x0000204
	.incbin "baserom.gba", 0x272817, 0x00000E1
	.incbin "baserom.gba", 0x2728F8, 0x0000023
	.incbin "baserom.gba", 0x27291B, 0x00001F8
	.incbin "baserom.gba", 0x272B13, 0x000024D
	.incbin "baserom.gba", 0x272D60, 0x00001CD
	.incbin "baserom.gba", 0x272F2D, 0x00006F5
	.incbin "baserom.gba", 0x273622, 0x000031C
	.incbin "baserom.gba", 0x27393E, 0x000040F
	.incbin "baserom.gba", 0x273D4D, 0x0000101
	.incbin "baserom.gba", 0x273E4E, 0x00003DC
	.incbin "baserom.gba", 0x27422A, 0x0000422
	.incbin "baserom.gba", 0x27464C, 0x0000011
	.incbin "baserom.gba", 0x27465D, 0x0002CAE
	.incbin "baserom.gba", 0x27730B, 0x0001D03
	.incbin "baserom.gba", 0x27900E, 0x0004412
	.incbin "baserom.gba", 0x27D420, 0x0000FEC
	.incbin "baserom.gba", 0x27E40C, 0x000120A
	.incbin "baserom.gba", 0x27F616, 0x00009F3
	.incbin "baserom.gba", 0x280009, 0x000001E
	.incbin "baserom.gba", 0x280027, 0x0000F01
	.incbin "baserom.gba", 0x280F28, 0x00003CB
	.incbin "baserom.gba", 0x2812F3, 0x0000F8E
	.incbin "baserom.gba", 0x282281, 0x0000679
	.incbin "baserom.gba", 0x2828FA, 0x000042E
	.incbin "baserom.gba", 0x282D28, 0x0000013
	.incbin "baserom.gba", 0x282D3B, 0x0000202
	.incbin "baserom.gba", 0x282F3D, 0x00002E1
	.incbin "baserom.gba", 0x28321E, 0x00003FB
	.incbin "baserom.gba", 0x283619, 0x0000A3A
	.incbin "baserom.gba", 0x284053, 0x0000301
	.incbin "baserom.gba", 0x284354, 0x00000D9
	.incbin "baserom.gba", 0x28442D, 0x0000332
	.incbin "baserom.gba", 0x28475F, 0x00002F0
	.incbin "baserom.gba", 0x284A4F, 0x00015B1
	.incbin "baserom.gba", 0x286000, 0x000016C
	.incbin "baserom.gba", 0x28616C, 0x0008C48
	.incbin "baserom.gba", 0x28EDB4, 0x0000826
	.incbin "baserom.gba", 0x28F5DA, 0x0001009
	.incbin "baserom.gba", 0x2905E3, 0x000011D
	.incbin "baserom.gba", 0x290700, 0x00001EE
	.incbin "baserom.gba", 0x2908EE, 0x0000017
	.incbin "baserom.gba", 0x290905, 0x0000601
	.incbin "baserom.gba", 0x290F06, 0x00006E5
	.incbin "baserom.gba", 0x2915EB, 0x0000303
	.incbin "baserom.gba", 0x2918EE, 0x000078F
	.incbin "baserom.gba", 0x29207D, 0x0000192
	.incbin "baserom.gba", 0x29220F, 0x00005CF
	.incbin "baserom.gba", 0x2927DE, 0x000003A
	.incbin "baserom.gba", 0x292818, 0x00001F4
	.incbin "baserom.gba", 0x292A0C, 0x000048D
	.incbin "baserom.gba", 0x292E99, 0x0000298
	.incbin "baserom.gba", 0x293131, 0x0000C27
	.incbin "baserom.gba", 0x293D58, 0x00002FC
	.incbin "baserom.gba", 0x294054, 0x00001FB
	.incbin "baserom.gba", 0x29424F, 0x0000001
	.incbin "baserom.gba", 0x294250, 0x000030E
	.incbin "baserom.gba", 0x29455E, 0x00002F1
	.incbin "baserom.gba", 0x29484F, 0x0000205
	.incbin "baserom.gba", 0x294A54, 0x0000106
	.incbin "baserom.gba", 0x294B5A, 0x00008CB
	.incbin "baserom.gba", 0x295425, 0x0000223
	.incbin "baserom.gba", 0x295648, 0x0005ABB
	.incbin "baserom.gba", 0x29B103, 0x0002DE9
	.incbin "baserom.gba", 0x29DEEC, 0x0002114
	.incbin "baserom.gba", 0x2A0000, 0x0000004
	.incbin "baserom.gba", 0x2A0004, 0x0000005
	.incbin "baserom.gba", 0x2A0009, 0x0000001
	.incbin "baserom.gba", 0x2A000A, 0x0000004
	.incbin "baserom.gba", 0x2A000E, 0x0000002
	.incbin "baserom.gba", 0x2A0010, 0x0000008
	.incbin "baserom.gba", 0x2A0018, 0x0000004
	.incbin "baserom.gba", 0x2A001C, 0x0000017
	.incbin "baserom.gba", 0x2A0033, 0x000003F
	.incbin "baserom.gba", 0x2A0072, 0x000038F
	.incbin "baserom.gba", 0x2A0401, 0x000000F
	.incbin "baserom.gba", 0x2A0410, 0x0000024
	.incbin "baserom.gba", 0x2A0434, 0x000000F
	.incbin "baserom.gba", 0x2A0443, 0x0000001
	.incbin "baserom.gba", 0x2A0444, 0x0000010
	.incbin "baserom.gba", 0x2A0454, 0x0000005
	.incbin "baserom.gba", 0x2A0459, 0x000000A
	.incbin "baserom.gba", 0x2A0463, 0x0000025
	.incbin "baserom.gba", 0x2A0488, 0x0000379
	.incbin "baserom.gba", 0x2A0801, 0x0000004
	.incbin "baserom.gba", 0x2A0805, 0x0000002
	.incbin "baserom.gba", 0x2A0807, 0x0000022
	.incbin "baserom.gba", 0x2A0829, 0x0000AB5
	.incbin "baserom.gba", 0x2A12DE, 0x0000106
	.incbin "baserom.gba", 0x2A13E4, 0x0000437
	.incbin "baserom.gba", 0x2A181B, 0x00003BC
	.incbin "baserom.gba", 0x2A1BD7, 0x0000731
	.incbin "baserom.gba", 0x2A2308, 0x00000F3
	.incbin "baserom.gba", 0x2A23FB, 0x0000309
	.incbin "baserom.gba", 0x2A2704, 0x00001E5
	.incbin "baserom.gba", 0x2A28E9, 0x0000831
	.incbin "baserom.gba", 0x2A311A, 0x000090E
	.incbin "baserom.gba", 0x2A3A28, 0x0000009
	.incbin "baserom.gba", 0x2A3A31, 0x00003F4
	.incbin "baserom.gba", 0x2A3E25, 0x0000108
	.incbin "baserom.gba", 0x2A3F2D, 0x000041A
	.incbin "baserom.gba", 0x2A4347, 0x000000E
	.incbin "baserom.gba", 0x2A4355, 0x00000ED
	.incbin "baserom.gba", 0x2A4442, 0x000000B
	.incbin "baserom.gba", 0x2A444D, 0x00000F2
	.incbin "baserom.gba", 0x2A453F, 0x0000007
	.incbin "baserom.gba", 0x2A4546, 0x000020E
	.incbin "baserom.gba", 0x2A4754, 0x000020E
	.incbin "baserom.gba", 0x2A4962, 0x00000D5
	.incbin "baserom.gba", 0x2A4A37, 0x0000020
	.incbin "baserom.gba", 0x2A4A57, 0x0000603
	.incbin "baserom.gba", 0x2A505A, 0x0005CB1
	.incbin "baserom.gba", 0x2AAD0B, 0x0000EAF
	.incbin "baserom.gba", 0x2ABBBA, 0x0000332
	.incbin "baserom.gba", 0x2ABEEC, 0x000270A
	.incbin "baserom.gba", 0x2AE5F6, 0x000020F
	.incbin "baserom.gba", 0x2AE805, 0x000166B
	.incbin "baserom.gba", 0x2AFE70, 0x000015E
	.incbin "baserom.gba", 0x2AFFCE, 0x0000F3B
	.incbin "baserom.gba", 0x2B0F09, 0x0000529
	.incbin "baserom.gba", 0x2B1432, 0x00009BD
	.incbin "baserom.gba", 0x2B1DEF, 0x000060F
	.incbin "baserom.gba", 0x2B23FE, 0x00006E4
	.incbin "baserom.gba", 0x2B2AE2, 0x000092E
	.incbin "baserom.gba", 0x2B3410, 0x0000234
	.incbin "baserom.gba", 0x2B3644, 0x0000115
	.incbin "baserom.gba", 0x2B3759, 0x00005E3
	.incbin "baserom.gba", 0x2B3D3C, 0x0000224
	.incbin "baserom.gba", 0x2B3F60, 0x00005B4
	.incbin "baserom.gba", 0x2B4514, 0x0000448
	.incbin "baserom.gba", 0x2B495C, 0x0000008
	.incbin "baserom.gba", 0x2B4964, 0x0000A05
	.incbin "baserom.gba", 0x2B5369, 0x0002C97
	.incbin "baserom.gba", 0x2B8000, 0x0005C81
	.incbin "baserom.gba", 0x2BDC81, 0x0001F3B
	.incbin "baserom.gba", 0x2BFBBC, 0x00002C7
	.incbin "baserom.gba", 0x2BFE83, 0x000017D
	.incbin "baserom.gba", 0x2C0000, 0x000003C
	.incbin "baserom.gba", 0x2C003C, 0x0000024
	.incbin "baserom.gba", 0x2C0060, 0x00000A7
	.incbin "baserom.gba", 0x2C0107, 0x0000724
	.incbin "baserom.gba", 0x2C082B, 0x00002D5
	.incbin "baserom.gba", 0x2C0B00, 0x0000406
	.incbin "baserom.gba", 0x2C0F06, 0x00016FF
	.incbin "baserom.gba", 0x2C2605, 0x00002FE
	.incbin "baserom.gba", 0x2C2903, 0x0000E14
	.incbin "baserom.gba", 0x2C3717, 0x0000225
	.incbin "baserom.gba", 0x2C393C, 0x00001DB
	.incbin "baserom.gba", 0x2C3B17, 0x000033A
	.incbin "baserom.gba", 0x2C3E51, 0x00005E6
	.incbin "baserom.gba", 0x2C4437, 0x0001C39
	.incbin "baserom.gba", 0x2C6070, 0x0000FB1
	.incbin "baserom.gba", 0x2C7021, 0x0000AFF
	.incbin "baserom.gba", 0x2C7B20, 0x0004D18
	.incbin "baserom.gba", 0x2CC838, 0x000249E
	.incbin "baserom.gba", 0x2CECD6, 0x000132A
	.incbin "baserom.gba", 0x2D0000, 0x000006E
	.incbin "baserom.gba", 0x2D006E, 0x0000060
	.incbin "baserom.gba", 0x2D00CE, 0x0000171
	.incbin "baserom.gba", 0x2D023F, 0x0000204
	.incbin "baserom.gba", 0x2D0443, 0x0000001
	.incbin "baserom.gba", 0x2D0444, 0x0000015
	.incbin "baserom.gba", 0x2D0459, 0x000002F
	.incbin "baserom.gba", 0x2D0488, 0x0000EA1
	.incbin "baserom.gba", 0x2D1329, 0x0000716
	.incbin "baserom.gba", 0x2D1A3F, 0x0000AF1
	.incbin "baserom.gba", 0x2D2530, 0x00001F5
	.incbin "baserom.gba", 0x2D2725, 0x00003F6
	.incbin "baserom.gba", 0x2D2B1B, 0x00000F4
	.incbin "baserom.gba", 0x2D2C0F, 0x0000A1A
	.incbin "baserom.gba", 0x2D3629, 0x0000B0F
	.incbin "baserom.gba", 0x2D4138, 0x000075C

gUnk_082D4894::
	.incbin "graphics/pot_portal.4bpp"
	.incbin "baserom.gba", 0x2D5A94, 0x00000C1
	.incbin "baserom.gba", 0x2D5B55, 0x0007F92
	.incbin "baserom.gba", 0x2DDAE7, 0x00024E9
	.incbin "baserom.gba", 0x2DFFD0, 0x000006C
	.incbin "baserom.gba", 0x2E003C, 0x0000001
	.incbin "baserom.gba", 0x2E003D, 0x00010AA
	.incbin "baserom.gba", 0x2E10E7, 0x0000024
	.incbin "baserom.gba", 0x2E110B, 0x00003FE
	.incbin "baserom.gba", 0x2E1509, 0x0000211
	.incbin "baserom.gba", 0x2E171A, 0x0000AF8
	.incbin "baserom.gba", 0x2E2212, 0x0000AE9
	.incbin "baserom.gba", 0x2E2CFB, 0x0001805
	.incbin "baserom.gba", 0x2E4500, 0x000053A
	.incbin "baserom.gba", 0x2E4A3A, 0x0000F1B
	.incbin "baserom.gba", 0x2E5955, 0x0000F9F

gUnk_082E68F4:: @ 082E68F4
	.incbin "baserom.gba", 0x2E68F4, 0x0001081
	.incbin "baserom.gba", 0x2E7975, 0x00003B4
	.incbin "baserom.gba", 0x2E7D29, 0x00045C2
	.incbin "baserom.gba", 0x2EC2EB, 0x0002113
	.incbin "baserom.gba", 0x2EE3FE, 0x0000A23
	.incbin "baserom.gba", 0x2EEE21, 0x00011DF
	.incbin "baserom.gba", 0x2F0000, 0x0000008
	.incbin "baserom.gba", 0x2F0008, 0x0000008
	.incbin "baserom.gba", 0x2F0010, 0x0000005
	.incbin "baserom.gba", 0x2F0015, 0x0000009
	.incbin "baserom.gba", 0x2F001E, 0x00000B4
	.incbin "baserom.gba", 0x2F00D2, 0x000002C
	.incbin "baserom.gba", 0x2F00FE, 0x0000339
	.incbin "baserom.gba", 0x2F0437, 0x0000022
	.incbin "baserom.gba", 0x2F0459, 0x0000025
	.incbin "baserom.gba", 0x2F047E, 0x0000389
	.incbin "baserom.gba", 0x2F0807, 0x00006FC
	.incbin "baserom.gba", 0x2F0F03, 0x0000600
	.incbin "baserom.gba", 0x2F1503, 0x0000804
	.incbin "baserom.gba", 0x2F1D07, 0x0000AED

gUnk_082F27F4:: @ 082F27F4
	.incbin "baserom.gba", 0x2F27F4, 0x000031B
	.incbin "baserom.gba", 0x2F2B0F, 0x0001265

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
	.incbin "baserom.gba", 0x2FFF9F, 0x0000061
	.incbin "baserom.gba", 0x300000, 0x0000009
	.incbin "baserom.gba", 0x300009, 0x0000018
	.incbin "baserom.gba", 0x300021, 0x0000104
	.incbin "baserom.gba", 0x300125, 0x0000043
	.incbin "baserom.gba", 0x300168, 0x0000239
	.incbin "baserom.gba", 0x3003A1, 0x0000080
	.incbin "baserom.gba", 0x300421, 0x00002FF
	.incbin "baserom.gba", 0x300720, 0x0000007
	.incbin "baserom.gba", 0x300727, 0x0000009
	.incbin "baserom.gba", 0x300730, 0x0000010
	.incbin "baserom.gba", 0x300740, 0x0000010
	.incbin "baserom.gba", 0x300750, 0x0000020
	.incbin "baserom.gba", 0x300770, 0x0000040
	.incbin "baserom.gba", 0x3007B0, 0x0000030
	.incbin "baserom.gba", 0x3007E0, 0x0000028
	.incbin "baserom.gba", 0x300808, 0x0000108
	.incbin "baserom.gba", 0x300910, 0x0000104
	.incbin "baserom.gba", 0x300A14, 0x00000ED
	.incbin "baserom.gba", 0x300B01, 0x0000560
	.incbin "baserom.gba", 0x301061, 0x0000B00
	.incbin "baserom.gba", 0x301B61, 0x0000240
	.incbin "baserom.gba", 0x301DA1, 0x00001CF
	.incbin "baserom.gba", 0x301F70, 0x0000231
	.incbin "baserom.gba", 0x3021A1, 0x0000268
	.incbin "baserom.gba", 0x302409, 0x0000158
	.incbin "baserom.gba", 0x302561, 0x0000140
	.incbin "baserom.gba", 0x3026A1, 0x000006F
	.incbin "baserom.gba", 0x302710, 0x00001F5
	.incbin "baserom.gba", 0x302905, 0x000003B
	.incbin "baserom.gba", 0x302940, 0x0000221
	.incbin "baserom.gba", 0x302B61, 0x00000D6
	.incbin "baserom.gba", 0x302C37, 0x00000D9
	.incbin "baserom.gba", 0x302D10, 0x0000010
	.incbin "baserom.gba", 0x302D20, 0x0000110
	.incbin "baserom.gba", 0x302E30, 0x00000E1
	.incbin "baserom.gba", 0x302F11, 0x00000FF
	.incbin "baserom.gba", 0x303010, 0x0000019
	.incbin "baserom.gba", 0x303029, 0x0000078
	.incbin "baserom.gba", 0x3030A1, 0x0000300
	.incbin "baserom.gba", 0x3033A1, 0x0000067
	.incbin "baserom.gba", 0x303408, 0x0000540
	.incbin "baserom.gba", 0x303948, 0x00002FE
	.incbin "baserom.gba", 0x303C46, 0x00000E5
	.incbin "baserom.gba", 0x303D2B, 0x00002F6
	.incbin "baserom.gba", 0x304021, 0x0000612
	.incbin "baserom.gba", 0x304633, 0x0000143
	.incbin "baserom.gba", 0x304776, 0x00002F2
	.incbin "baserom.gba", 0x304A68, 0x00003F9
	.incbin "baserom.gba", 0x304E61, 0x0000407
	.incbin "baserom.gba", 0x305268, 0x0000002
	.incbin "baserom.gba", 0x30526A, 0x000050B
	.incbin "baserom.gba", 0x305775, 0x00007A0
	.incbin "baserom.gba", 0x305F15, 0x000006E
	.incbin "baserom.gba", 0x305F83, 0x00005C5
	.incbin "baserom.gba", 0x306548, 0x000023B
	.incbin "baserom.gba", 0x306783, 0x00001AD
	.incbin "baserom.gba", 0x306930, 0x0000757
	.incbin "baserom.gba", 0x307087, 0x00004C8
	.incbin "baserom.gba", 0x30754F, 0x000000E
	.incbin "baserom.gba", 0x30755D, 0x000021A
	.incbin "baserom.gba", 0x307777, 0x0000201
	.incbin "baserom.gba", 0x307978, 0x000038F
	.incbin "baserom.gba", 0x307D07, 0x0000529
	.incbin "baserom.gba", 0x308230, 0x00004E6
	.incbin "baserom.gba", 0x308716, 0x00006F3
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x3084F1, 0x0000817
.else
	.incbin "baserom.gba", 0x308E09, 0x0000817
.endif
	.incbin "baserom.gba", 0x309620, 0x000027A
	.incbin "baserom.gba", 0x30989A, 0x00004C0
	.incbin "baserom.gba", 0x309D5A, 0x0000136
	.incbin "baserom.gba", 0x309E90, 0x0000085
	.incbin "baserom.gba", 0x309F15, 0x0000290
	.incbin "baserom.gba", 0x30A1A5, 0x0000BC6
	.incbin "baserom.gba", 0x30AD6B, 0x000009C
	.incbin "baserom.gba", 0x30AE07, 0x00001D9
	.incbin "baserom.gba", 0x30AFE0, 0x0000130
	.incbin "baserom.gba", 0x30B110, 0x000006F
	.incbin "baserom.gba", 0x30B17F, 0x0000137
	.incbin "baserom.gba", 0x30B2B6, 0x0000062
	.incbin "baserom.gba", 0x30B318, 0x0000090
	.incbin "baserom.gba", 0x30B3A8, 0x000002C
	.incbin "baserom.gba", 0x30B3D4, 0x00000E0
	.incbin "baserom.gba", 0x30B4B4, 0x0000005
	.incbin "baserom.gba", 0x30B4B9, 0x00002F7
	.incbin "baserom.gba", 0x30B7B0, 0x00000A2
	.incbin "baserom.gba", 0x30B852, 0x000020F
	.incbin "baserom.gba", 0x30BA61, 0x0000360
	.incbin "baserom.gba", 0x30BDC1, 0x0000046
	.incbin "baserom.gba", 0x30BE07, 0x00000CD
	.incbin "baserom.gba", 0x30BED4, 0x000009F
	.incbin "baserom.gba", 0x30BF73, 0x00001D1
	.incbin "baserom.gba", 0x30C144, 0x00006F0
	.incbin "baserom.gba", 0x30C834, 0x00001C0
	.incbin "baserom.gba", 0x30C9F4, 0x0000013
	.incbin "baserom.gba", 0x30CA07, 0x00002E0
	.incbin "baserom.gba", 0x30CCE7, 0x00002E5
	.incbin "baserom.gba", 0x30CFCC, 0x0000067
	.incbin "baserom.gba", 0x30D033, 0x00002E5
	.incbin "baserom.gba", 0x30D318, 0x0000100
	.incbin "baserom.gba", 0x30D418, 0x00000B6
	.incbin "baserom.gba", 0x30D4CE, 0x0000003
	.incbin "baserom.gba", 0x30D4D1, 0x000010B
	.incbin "baserom.gba", 0x30D5DC, 0x000082C
	.incbin "baserom.gba", 0x30DE08, 0x0000608
	.incbin "baserom.gba", 0x30E410, 0x0000739
	.incbin "baserom.gba", 0x30EB49, 0x00000BA
	.incbin "baserom.gba", 0x30EC03, 0x0000010
	.incbin "baserom.gba", 0x30EC13, 0x00003D4
	.incbin "baserom.gba", 0x30EFE7, 0x00003FA
	.incbin "baserom.gba", 0x30F3E1, 0x000060B
	.incbin "baserom.gba", 0x30F9EC, 0x0000141
	.incbin "baserom.gba", 0x30FB2D, 0x00001B8
	.incbin "baserom.gba", 0x30FCE5, 0x0000122
	.incbin "baserom.gba", 0x30FE07, 0x0000078
	.incbin "baserom.gba", 0x30FE7F, 0x0000016
	.incbin "baserom.gba", 0x30FE95, 0x0000059
	.incbin "baserom.gba", 0x30FEEE, 0x0000019
	.incbin "baserom.gba", 0x30FF07, 0x000004C
	.incbin "baserom.gba", 0x30FF53, 0x00000AD
	.incbin "baserom.gba", 0x310000, 0x0000001
	.incbin "baserom.gba", 0x310001, 0x0000001
	.incbin "baserom.gba", 0x310002, 0x0000001
	.incbin "baserom.gba", 0x310003, 0x0000001
	.incbin "baserom.gba", 0x310004, 0x0000001
	.incbin "baserom.gba", 0x310005, 0x0000001
	.incbin "baserom.gba", 0x310006, 0x0000001
	.incbin "baserom.gba", 0x310007, 0x0000001
	.incbin "baserom.gba", 0x310008, 0x0000003
	.incbin "baserom.gba", 0x31000B, 0x0000003
	.incbin "baserom.gba", 0x31000E, 0x0000001
	.incbin "baserom.gba", 0x31000F, 0x0000001
	.incbin "baserom.gba", 0x310010, 0x0000004
	.incbin "baserom.gba", 0x310014, 0x0000001
	.incbin "baserom.gba", 0x310015, 0x000000B
	.incbin "baserom.gba", 0x310020, 0x0000003
	.incbin "baserom.gba", 0x310023, 0x000000D
	.incbin "baserom.gba", 0x310030, 0x0000009
	.incbin "baserom.gba", 0x310039, 0x000000A
	.incbin "baserom.gba", 0x310043, 0x000000D
	.incbin "baserom.gba", 0x310050, 0x0000003
	.incbin "baserom.gba", 0x310053, 0x0000007
	.incbin "baserom.gba", 0x31005A, 0x0000002
	.incbin "baserom.gba", 0x31005C, 0x0000004
	.incbin "baserom.gba", 0x310060, 0x0000008
	.incbin "baserom.gba", 0x310068, 0x0000004
	.incbin "baserom.gba", 0x31006C, 0x0000006
	.incbin "baserom.gba", 0x310072, 0x0000006
	.incbin "baserom.gba", 0x310078, 0x0000007
	.incbin "baserom.gba", 0x31007F, 0x0000001
	.incbin "baserom.gba", 0x310080, 0x0000014
	.incbin "baserom.gba", 0x310094, 0x0000004
	.incbin "baserom.gba", 0x310098, 0x0000035
	.incbin "baserom.gba", 0x3100CD, 0x000000B
	.incbin "baserom.gba", 0x3100D8, 0x000000A
	.incbin "baserom.gba", 0x3100E2, 0x0000029
	.incbin "baserom.gba", 0x31010B, 0x000006D
	.incbin "baserom.gba", 0x310178, 0x0000020
	.incbin "baserom.gba", 0x310198, 0x0000032
	.incbin "baserom.gba", 0x3101CA, 0x000005E
	.incbin "baserom.gba", 0x310228, 0x0000058
	.incbin "baserom.gba", 0x310280, 0x0000008
	.incbin "baserom.gba", 0x310288, 0x0000010
	.incbin "baserom.gba", 0x310298, 0x0000068
	.incbin "baserom.gba", 0x310300, 0x0000050
	.incbin "baserom.gba", 0x310350, 0x00000B2
	.incbin "baserom.gba", 0x310402, 0x0000032
	.incbin "baserom.gba", 0x310434, 0x0000003
	.incbin "baserom.gba", 0x310437, 0x000000C
	.incbin "baserom.gba", 0x310443, 0x0000002
	.incbin "baserom.gba", 0x310445, 0x0000004
	.incbin "baserom.gba", 0x310449, 0x0000001
	.incbin "baserom.gba", 0x31044A, 0x0000001
	.incbin "baserom.gba", 0x31044B, 0x000000E
	.incbin "baserom.gba", 0x310459, 0x000000B
	.incbin "baserom.gba", 0x310464, 0x000001A
	.incbin "baserom.gba", 0x31047E, 0x0000009
	.incbin "baserom.gba", 0x310487, 0x0000001
	.incbin "baserom.gba", 0x310488, 0x00002A8
	.incbin "baserom.gba", 0x310730, 0x00000D0
	.incbin "baserom.gba", 0x310800, 0x0000001
	.incbin "baserom.gba", 0x310801, 0x0000003
	.incbin "baserom.gba", 0x310804, 0x0000001
	.incbin "baserom.gba", 0x310805, 0x0000001
	.incbin "baserom.gba", 0x310806, 0x0000001
	.incbin "baserom.gba", 0x310807, 0x0000002
	.incbin "baserom.gba", 0x310809, 0x0000001
	.incbin "baserom.gba", 0x31080A, 0x0000003
	.incbin "baserom.gba", 0x31080D, 0x0000023
	.incbin "baserom.gba", 0x310830, 0x00007BB
	.incbin "baserom.gba", 0x310FEB, 0x0000218
	.incbin "baserom.gba", 0x311203, 0x0000351
	.incbin "baserom.gba", 0x311554, 0x00000BA
	.incbin "baserom.gba", 0x31160E, 0x0000123
	.incbin "baserom.gba", 0x311731, 0x00005DF
	.incbin "baserom.gba", 0x311D10, 0x00002F0
	.incbin "baserom.gba", 0x312000, 0x000012D
	.incbin "baserom.gba", 0x31212D, 0x00009D2
	.incbin "baserom.gba", 0x312AFF, 0x0000630
	.incbin "baserom.gba", 0x31312F, 0x00000DA
	.incbin "baserom.gba", 0x313209, 0x000024C
	.incbin "baserom.gba", 0x313455, 0x00002EF
	.incbin "baserom.gba", 0x313744, 0x00001D8
	.incbin "baserom.gba", 0x31391C, 0x00000E4
	.incbin "baserom.gba", 0x313A00, 0x0000010
	.incbin "baserom.gba", 0x313A10, 0x0000409
	.incbin "baserom.gba", 0x313E19, 0x00005E8
	.incbin "baserom.gba", 0x314401, 0x0000132
	.incbin "baserom.gba", 0x314533, 0x0000220
	.incbin "baserom.gba", 0x314753, 0x00005F2
	.incbin "baserom.gba", 0x314D45, 0x00005FC
	.incbin "baserom.gba", 0x315341, 0x0000131
	.incbin "baserom.gba", 0x315472, 0x00005FF
	.incbin "baserom.gba", 0x315A71, 0x00004FB
	.incbin "baserom.gba", 0x315F6C, 0x0001B94
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x3171E8, 0x00026A1
.else
	.incbin "baserom.gba", 0x317B00, 0x00026A1
.endif
	.incbin "baserom.gba", 0x31A1A1, 0x0001993
	.incbin "baserom.gba", 0x31BB34, 0x00009FB

.ifdef EU
@ TODO differs to gUnk_08324AE4
    .incbin "baserom_eu.gba", 0x31BC17, 0x00083D5
.else
	.incbin "baserom.gba", 0x31C52F, 0x00012C6
	.incbin "baserom.gba", 0x31D7F5, 0x0000720
	.incbin "baserom.gba", 0x31DF15, 0x0000BF2
	.incbin "baserom.gba", 0x31EB07, 0x00003DB
	.incbin "baserom.gba", 0x31EEE2, 0x000002B
	.incbin "baserom.gba", 0x31EF0D, 0x00009E8
	.incbin "baserom.gba", 0x31F8F5, 0x000069B
	.incbin "baserom.gba", 0x31FF90, 0x0000042
	.incbin "baserom.gba", 0x31FFD2, 0x000000A
	.incbin "baserom.gba", 0x31FFDC, 0x0000020
	.incbin "baserom.gba", 0x31FFFC, 0x0000004
	.incbin "baserom.gba", 0x320000, 0x0000131
	.incbin "baserom.gba", 0x320131, 0x00001CF
	.incbin "baserom.gba", 0x320300, 0x0000030
	.incbin "baserom.gba", 0x320330, 0x00011AF
	.incbin "baserom.gba", 0x3214DF, 0x0000921
	.incbin "baserom.gba", 0x321E00, 0x00001EF
	.incbin "baserom.gba", 0x321FEF, 0x0000114
	.incbin "baserom.gba", 0x322103, 0x0000134
	.incbin "baserom.gba", 0x322237, 0x0000062
	.incbin "baserom.gba", 0x322299, 0x0000189
	.incbin "baserom.gba", 0x322422, 0x0000034
	.incbin "baserom.gba", 0x322456, 0x00001A2
	.incbin "baserom.gba", 0x3225F8, 0x0000519
	.incbin "baserom.gba", 0x322B11, 0x0000B0B
	.incbin "baserom.gba", 0x32361C, 0x0000B23
	.incbin "baserom.gba", 0x32413F, 0x00008F8
	.incbin "baserom.gba", 0x324A37, 0x00000AD
.endif

gUnk_08324AE4:: @ 08324AE4
	.incbin "baserom.gba", 0x324AE4, 0x000018F
	.incbin "baserom.gba", 0x324C73, 0x0000241
	.incbin "data/tilesets/minish_woods/tiles_bottom.4bpp.lz"
	.incbin "baserom.gba", 0x327B08, 0x0001AF9
	.incbin "baserom.gba", 0x329601, 0x00053C2
	.incbin "baserom.gba", 0x32E9C3, 0x0000540
	.incbin "baserom.gba", 0x32EF03, 0x0000733
	.incbin "baserom.gba", 0x32F636, 0x00005CA
	.incbin "baserom.gba", 0x32FC00, 0x00002EA
	.incbin "baserom.gba", 0x32FEEA, 0x0000104
	.incbin "baserom.gba", 0x32FFEE, 0x0000055
	.incbin "baserom.gba", 0x330043, 0x00000C4
	.incbin "baserom.gba", 0x330107, 0x0000004
	.incbin "baserom.gba", 0x33010B, 0x0000119
	.incbin "baserom.gba", 0x330224, 0x0000210
	.incbin "baserom.gba", 0x330434, 0x00008B5
	.incbin "baserom.gba", 0x330CE9, 0x0000213
	.incbin "baserom.gba", 0x330EFC, 0x0000007
	.incbin "baserom.gba", 0x330F03, 0x0000C05
	.incbin "baserom.gba", 0x331B08, 0x0000637
	.incbin "baserom.gba", 0x33213F, 0x0000049
	.incbin "baserom.gba", 0x332188, 0x0000692
	.incbin "baserom.gba", 0x33281A, 0x0000913
	.incbin "baserom.gba", 0x33312D, 0x0000205
	.incbin "baserom.gba", 0x333332, 0x0000001
	.incbin "baserom.gba", 0x333333, 0x0000008
	.incbin "baserom.gba", 0x33333B, 0x00000F2
	.incbin "baserom.gba", 0x33342D, 0x00002F1
	.incbin "baserom.gba", 0x33371E, 0x00001F0
	.incbin "baserom.gba", 0x33390E, 0x0000122
	.incbin "baserom.gba", 0x333A30, 0x00005E8
	.incbin "baserom.gba", 0x334018, 0x00003E9
	.incbin "baserom.gba", 0x334401, 0x000001F
	.incbin "baserom.gba", 0x334420, 0x00000BD
	.incbin "baserom.gba", 0x3344DD, 0x0000558
	.incbin "baserom.gba", 0x334A35, 0x0000646
	.incbin "baserom.gba", 0x33507B, 0x000054F
	.incbin "baserom.gba", 0x3355CA, 0x0000CB3
	.incbin "baserom.gba", 0x33627D, 0x0000CF7
	.incbin "baserom.gba", 0x336F74, 0x000008F
	.incbin "baserom.gba", 0x337003, 0x00002FD
	.incbin "baserom.gba", 0x337300, 0x0000C03
	.incbin "baserom.gba", 0x337F03, 0x0000330
	.incbin "baserom.gba", 0x338233, 0x0000650
	.incbin "baserom.gba", 0x338883, 0x0001217
	.incbin "baserom.gba", 0x339A9A, 0x0000133
	.incbin "baserom.gba", 0x339BCD, 0x00009DC
	.incbin "baserom.gba", 0x33A5A9, 0x0000E5D
	.incbin "baserom.gba", 0x33B406, 0x0000706
	.incbin "baserom.gba", 0x33BB0C, 0x00033F6
	.incbin "baserom.gba", 0x33EF02, 0x0000509
	.incbin "baserom.gba", 0x33F40B, 0x0000B2C
	.incbin "baserom.gba", 0x33FF37, 0x00003C9
	.incbin "baserom.gba", 0x340300, 0x0000507
	.incbin "baserom.gba", 0x340807, 0x00008F8
	.incbin "baserom.gba", 0x3410FF, 0x0000F48
	.incbin "baserom.gba", 0x342047, 0x00003B2
	.incbin "baserom.gba", 0x3423F9, 0x00000F1
	.incbin "baserom.gba", 0x3424EA, 0x0000D2E
	.incbin "baserom.gba", 0x343218, 0x00000F5
	.incbin "baserom.gba", 0x34330D, 0x0000024
	.incbin "baserom.gba", 0x343331, 0x0000EE0
	.incbin "baserom.gba", 0x344211, 0x0000233
	.incbin "baserom.gba", 0x344444, 0x0000505
	.incbin "baserom.gba", 0x344949, 0x000012E
	.incbin "baserom.gba", 0x344A77, 0x00008E5
	.incbin "baserom.gba", 0x34535C, 0x000031B

@ TODO EU differs from here
.ifdef EU
	.incbin "baserom_eu.gba", 0x344B7F, 0x025D851
.else
	.incbin "baserom.gba", 0x345677, 0x0000325
	.incbin "baserom.gba", 0x34599C, 0x0000575
	.incbin "baserom.gba", 0x345F11, 0x0000617
	.incbin "baserom.gba", 0x346528, 0x000012D
	.incbin "baserom.gba", 0x346655, 0x00007E0
	.incbin "baserom.gba", 0x346E35, 0x000013B
	.incbin "baserom.gba", 0x346F70, 0x00007F7
	.incbin "baserom.gba", 0x347767, 0x0000055
	.incbin "baserom.gba", 0x3477BC, 0x0003C5C
	.incbin "baserom.gba", 0x34B418, 0x0002D8B
	.incbin "baserom.gba", 0x34E1A3, 0x00006E6
	.incbin "baserom.gba", 0x34E889, 0x0000A37
	.incbin "baserom.gba", 0x34F2C0, 0x0000D50
	.incbin "baserom.gba", 0x350010, 0x000003A
	.incbin "baserom.gba", 0x35004A, 0x00002B6
	.incbin "baserom.gba", 0x350300, 0x0000E3B
	.incbin "baserom.gba", 0x35113B, 0x00008CB
	.incbin "baserom.gba", 0x351A06, 0x0001A93
	.incbin "baserom.gba", 0x353499, 0x0000294
	.incbin "baserom.gba", 0x35372D, 0x00001E6
	.incbin "baserom.gba", 0x353913, 0x0000705
	.incbin "baserom.gba", 0x354018, 0x0000317
	.incbin "baserom.gba", 0x35432F, 0x000090A
	.incbin "baserom.gba", 0x354C39, 0x00007F6
	.incbin "baserom.gba", 0x35542F, 0x0000014
	.incbin "baserom.gba", 0x355443, 0x0000234
	.incbin "baserom.gba", 0x355677, 0x00009DE
	.incbin "baserom.gba", 0x356055, 0x0000526
	.incbin "baserom.gba", 0x35657B, 0x0001197
	.incbin "baserom.gba", 0x357712, 0x0007B10
	.incbin "baserom.gba", 0x35F222, 0x0000E9B
	.incbin "baserom.gba", 0x3600BD, 0x0000410
	.incbin "baserom.gba", 0x3604CD, 0x0000053
	.incbin "baserom.gba", 0x360520, 0x00003A0
	.incbin "baserom.gba", 0x3608C0, 0x0001AF1
	.incbin "baserom.gba", 0x3623B1, 0x0000639
	.incbin "baserom.gba", 0x3629EA, 0x0000128
	.incbin "baserom.gba", 0x362B12, 0x0000001
	.incbin "baserom.gba", 0x362B13, 0x00003F4
	.incbin "baserom.gba", 0x362F07, 0x000140A
	.incbin "baserom.gba", 0x364311, 0x0000020
	.incbin "baserom.gba", 0x364331, 0x000051C
	.incbin "baserom.gba", 0x36484D, 0x00007E7
	.incbin "baserom.gba", 0x365034, 0x00004EF
	.incbin "baserom.gba", 0x365523, 0x000013E
	.incbin "baserom.gba", 0x365661, 0x0000E16
	.incbin "baserom.gba", 0x366477, 0x0006B6C
	.incbin "baserom.gba", 0x36CFE3, 0x0001E60
	.incbin "baserom.gba", 0x36EE43, 0x00011CE
	.incbin "baserom.gba", 0x370011, 0x00005FF
	.incbin "baserom.gba", 0x370610, 0x0000701
	.incbin "baserom.gba", 0x370D11, 0x0001404
	.incbin "baserom.gba", 0x372115, 0x00019FB
	.incbin "baserom.gba", 0x373B10, 0x000131A
	.incbin "baserom.gba", 0x374E2A, 0x00001D6
	.incbin "baserom.gba", 0x375000, 0x0001841
	.incbin "baserom.gba", 0x376841, 0x00066F7
	.incbin "baserom.gba", 0x37CF38, 0x00012CE
	.incbin "baserom.gba", 0x37E206, 0x0001DFA
	.incbin "baserom.gba", 0x380000, 0x0000019
	.incbin "baserom.gba", 0x380019, 0x0000023
	.incbin "baserom.gba", 0x38003C, 0x000001E
	.incbin "baserom.gba", 0x38005A, 0x000001E
	.incbin "baserom.gba", 0x380078, 0x000007F
	.incbin "baserom.gba", 0x3800F7, 0x000030A
	.incbin "baserom.gba", 0x380401, 0x0000001
	.incbin "baserom.gba", 0x380402, 0x0000057
	.incbin "baserom.gba", 0x380459, 0x0000025
	.incbin "baserom.gba", 0x38047E, 0x0000009
	.incbin "baserom.gba", 0x380487, 0x0000001
	.incbin "baserom.gba", 0x380488, 0x0000380
	.incbin "baserom.gba", 0x380808, 0x0000007
	.incbin "baserom.gba", 0x38080F, 0x0000152
	.incbin "baserom.gba", 0x380961, 0x00005A8
	.incbin "baserom.gba", 0x380F09, 0x00004DD
	.incbin "baserom.gba", 0x3813E6, 0x0001048
	.incbin "baserom.gba", 0x38242E, 0x00008E6
	.incbin "baserom.gba", 0x382D14, 0x00008D5
	.incbin "baserom.gba", 0x3835E9, 0x0000517
	.incbin "baserom.gba", 0x383B00, 0x0000122
	.incbin "baserom.gba", 0x383C22, 0x00004DE
	.incbin "baserom.gba", 0x384100, 0x0000341
	.incbin "baserom.gba", 0x384441, 0x0000DC3
	.incbin "baserom.gba", 0x385204, 0x0000B6B
	.incbin "baserom.gba", 0x385D6F, 0x00006FB
	.incbin "baserom.gba", 0x38646A, 0x000030C
	.incbin "baserom.gba", 0x386776, 0x0009889
	.incbin "baserom.gba", 0x38FFFF, 0x0000002
	.incbin "baserom.gba", 0x390001, 0x00002DB
	.incbin "baserom.gba", 0x3902DC, 0x00003A4
	.incbin "baserom.gba", 0x390680, 0x0000180
	.incbin "baserom.gba", 0x390800, 0x0000706
	.incbin "baserom.gba", 0x390F06, 0x00014CE
	.incbin "baserom.gba", 0x3923D4, 0x000084A
	.incbin "baserom.gba", 0x392C1E, 0x0001011
	.incbin "baserom.gba", 0x393C2F, 0x00004D1
	.incbin "baserom.gba", 0x394100, 0x0001C00
	.incbin "baserom.gba", 0x395D00, 0x000077B
	.incbin "baserom.gba", 0x39647B, 0x0000303
	.incbin "baserom.gba", 0x39677E, 0x000870E
	.incbin "baserom.gba", 0x39EE8C, 0x0000001
	.incbin "baserom.gba", 0x39EE8D, 0x000127A
	.incbin "baserom.gba", 0x3A0107, 0x0000669
	.incbin "baserom.gba", 0x3A0770, 0x0003990
	.incbin "baserom.gba", 0x3A4100, 0x0003D1D
	.incbin "baserom.gba", 0x3A7E1D, 0x0002253
	.incbin "baserom.gba", 0x3AA070, 0x0005F90
	.incbin "baserom.gba", 0x3B0000, 0x0000001
	.incbin "baserom.gba", 0x3B0001, 0x0000007
	.incbin "baserom.gba", 0x3B0008, 0x0000178
	.incbin "baserom.gba", 0x3B0180, 0x000069E
	.incbin "baserom.gba", 0x3B081E, 0x000001C
	.incbin "baserom.gba", 0x3B083A, 0x00006CC
	.incbin "baserom.gba", 0x3B0F06, 0x00012E0
	.incbin "baserom.gba", 0x3B21E6, 0x0000E3E
	.incbin "baserom.gba", 0x3B3024, 0x00001DD
	.incbin "baserom.gba", 0x3B3201, 0x000061F
	.incbin "baserom.gba", 0x3B3820, 0x00008E0
	.incbin "baserom.gba", 0x3B4100, 0x000024B
	.incbin "baserom.gba", 0x3B434B, 0x0000074
	.incbin "baserom.gba", 0x3B43BF, 0x00024B8
	.incbin "baserom.gba", 0x3B6877, 0x0009693
	.incbin "baserom.gba", 0x3BFF0A, 0x00000F6
	.incbin "baserom.gba", 0x3C0000, 0x0000001
	.incbin "baserom.gba", 0x3C0001, 0x000000B
	.incbin "baserom.gba", 0x3C000C, 0x00013F4
	.incbin "baserom.gba", 0x3C1400, 0x0000841
	.incbin "baserom.gba", 0x3C1C41, 0x00009A8
	.incbin "baserom.gba", 0x3C25E9, 0x00005D9
	.incbin "baserom.gba", 0x3C2BC2, 0x0000620
	.incbin "baserom.gba", 0x3C31E2, 0x0000968
	.incbin "baserom.gba", 0x3C3B4A, 0x00004B6
	.incbin "baserom.gba", 0x3C4000, 0x0002236
	.incbin "baserom.gba", 0x3C6236, 0x0000D44
	.incbin "baserom.gba", 0x3C6F7A, 0x00030A2
	.incbin "baserom.gba", 0x3CA01C, 0x00040BD
	.incbin "baserom.gba", 0x3CE0D9, 0x0001F27
	.incbin "baserom.gba", 0x3D0000, 0x0000055
	.incbin "baserom.gba", 0x3D0055, 0x000042B
	.incbin "baserom.gba", 0x3D0480, 0x00003BC
	.incbin "baserom.gba", 0x3D083C, 0x00037C4
	.incbin "baserom.gba", 0x3D4000, 0x000005C
	.incbin "baserom.gba", 0x3D405C, 0x0001B06
	.incbin "baserom.gba", 0x3D5B62, 0x000249E
	.incbin "baserom.gba", 0x3D8000, 0x0008000
	.incbin "baserom.gba", 0x3E0000, 0x0000001
	.incbin "baserom.gba", 0x3E0001, 0x0000F05
	.incbin "baserom.gba", 0x3E0F06, 0x0000020
	.incbin "baserom.gba", 0x3E0F26, 0x00019E6
	.incbin "baserom.gba", 0x3E290C, 0x00016F2
	.incbin "baserom.gba", 0x3E3FFE, 0x000006C
	.incbin "baserom.gba", 0x3E406A, 0x000006A
	.incbin "baserom.gba", 0x3E40D4, 0x000133D
	.incbin "baserom.gba", 0x3E5411, 0x0000532
	.incbin "baserom.gba", 0x3E5943, 0x00002E1
	.incbin "baserom.gba", 0x3E5C24, 0x00029EC
	.incbin "baserom.gba", 0x3E8610, 0x00079F0
	.incbin "baserom.gba", 0x3F0000, 0x0000001
	.incbin "baserom.gba", 0x3F0001, 0x000003F
	.incbin "baserom.gba", 0x3F0040, 0x000037F
	.incbin "baserom.gba", 0x3F03BF, 0x0002450
	.incbin "baserom.gba", 0x3F280F, 0x0000BC3
	.incbin "baserom.gba", 0x3F33D2, 0x0000F67
	.incbin "baserom.gba", 0x3F4339, 0x00000CE
	.incbin "baserom.gba", 0x3F4407, 0x0000BC8
	.incbin "baserom.gba", 0x3F4FCF, 0x0000035
	.incbin "baserom.gba", 0x3F5004, 0x0000335
	.incbin "baserom.gba", 0x3F5339, 0x000000A
	.incbin "baserom.gba", 0x3F5343, 0x0000D77
	.incbin "baserom.gba", 0x3F60BA, 0x0000051
	.incbin "baserom.gba", 0x3F610B, 0x0000057
	.incbin "baserom.gba", 0x3F6162, 0x00006D5
	.incbin "baserom.gba", 0x3F6837, 0x0000907
	.incbin "baserom.gba", 0x3F713E, 0x000033B
	.incbin "baserom.gba", 0x3F7479, 0x0000B8A
	.incbin "baserom.gba", 0x3F8003, 0x0001086
	.incbin "baserom.gba", 0x3F9089, 0x0003334
	.incbin "baserom.gba", 0x3FC3BD, 0x0000D3C
	.incbin "baserom.gba", 0x3FD0F9, 0x0001DF3
	.incbin "baserom.gba", 0x3FEEEC, 0x0001114
	.incbin "baserom.gba", 0x400000, 0x0000001
	.incbin "baserom.gba", 0x400001, 0x0000003
	.incbin "baserom.gba", 0x400004, 0x0000003
	.incbin "baserom.gba", 0x400007, 0x0000003
	.incbin "baserom.gba", 0x40000A, 0x000001D
	.incbin "baserom.gba", 0x400027, 0x0000006
	.incbin "baserom.gba", 0x40002D, 0x0000050
	.incbin "baserom.gba", 0x40007D, 0x0000068
	.incbin "baserom.gba", 0x4000E5, 0x0000001
	.incbin "baserom.gba", 0x4000E6, 0x0000001
	.incbin "baserom.gba", 0x4000E7, 0x0000009
	.incbin "baserom.gba", 0x4000F0, 0x0000004
	.incbin "baserom.gba", 0x4000F4, 0x0000002
	.incbin "baserom.gba", 0x4000F6, 0x0000009
	.incbin "baserom.gba", 0x4000FF, 0x0000001
	.incbin "baserom.gba", 0x400100, 0x0000030
	.incbin "baserom.gba", 0x400130, 0x0000078
	.incbin "baserom.gba", 0x4001A8, 0x000001C
	.incbin "baserom.gba", 0x4001C4, 0x0000026
	.incbin "baserom.gba", 0x4001EA, 0x000000E
	.incbin "baserom.gba", 0x4001F8, 0x0000219
	.incbin "baserom.gba", 0x400411, 0x0000184
	.incbin "baserom.gba", 0x400595, 0x000005B
	.incbin "baserom.gba", 0x4005F0, 0x0000015
	.incbin "baserom.gba", 0x400605, 0x000000B
	.incbin "baserom.gba", 0x400610, 0x000002E
	.incbin "baserom.gba", 0x40063E, 0x00000C2
	.incbin "baserom.gba", 0x400700, 0x0000010
	.incbin "baserom.gba", 0x400710, 0x0000020
	.incbin "baserom.gba", 0x400730, 0x0000010
	.incbin "baserom.gba", 0x400740, 0x000000A
	.incbin "baserom.gba", 0x40074A, 0x0000006
	.incbin "baserom.gba", 0x400750, 0x0000010
	.incbin "baserom.gba", 0x400760, 0x0000080
	.incbin "baserom.gba", 0x4007E0, 0x0000030
	.incbin "baserom.gba", 0x400810, 0x0000014
	.incbin "baserom.gba", 0x400824, 0x0000009
	.incbin "baserom.gba", 0x40082D, 0x0000009
	.incbin "baserom.gba", 0x400836, 0x000000A
	.incbin "baserom.gba", 0x400840, 0x000005F
	.incbin "baserom.gba", 0x40089F, 0x0000451
	.incbin "baserom.gba", 0x400CF0, 0x0000210
	.incbin "baserom.gba", 0x400F00, 0x0000029
	.incbin "baserom.gba", 0x400F29, 0x0000013
	.incbin "baserom.gba", 0x400F3C, 0x0000008
	.incbin "baserom.gba", 0x400F44, 0x0000195
	.incbin "baserom.gba", 0x4010D9, 0x00001A8
	.incbin "baserom.gba", 0x401281, 0x00000C0
	.incbin "baserom.gba", 0x401341, 0x00007B7
	.incbin "baserom.gba", 0x401AF8, 0x00004C8
	.incbin "baserom.gba", 0x401FC0, 0x0000268
	.incbin "baserom.gba", 0x402228, 0x0000518
	.incbin "baserom.gba", 0x402740, 0x0000501
	.incbin "baserom.gba", 0x402C41, 0x00002C7
	.incbin "baserom.gba", 0x402F08, 0x00003F7
	.incbin "baserom.gba", 0x4032FF, 0x0000011
	.incbin "baserom.gba", 0x403310, 0x0000553
	.incbin "baserom.gba", 0x403863, 0x00007A0
	.incbin "baserom.gba", 0x404003, 0x000001D
	.incbin "baserom.gba", 0x404020, 0x00001F0
	.incbin "baserom.gba", 0x404210, 0x0000454
	.incbin "baserom.gba", 0x404664, 0x000039C
	.incbin "baserom.gba", 0x404A00, 0x0000568
	.incbin "baserom.gba", 0x404F68, 0x0000298
	.incbin "baserom.gba", 0x405200, 0x0000227
	.incbin "baserom.gba", 0x405427, 0x000061A
	.incbin "baserom.gba", 0x405A41, 0x0000614
	.incbin "baserom.gba", 0x406055, 0x00000B3
	.incbin "baserom.gba", 0x406108, 0x000021C
	.incbin "baserom.gba", 0x406324, 0x0000854
	.incbin "baserom.gba", 0x406B78, 0x0000107
	.incbin "baserom.gba", 0x406C7F, 0x0000389
	.incbin "baserom.gba", 0x407008, 0x0000C52
	.incbin "baserom.gba", 0x407C5A, 0x00002AD
	.incbin "baserom.gba", 0x407F07, 0x00003CA
	.incbin "baserom.gba", 0x4082D1, 0x000003D
	.incbin "baserom.gba", 0x40830E, 0x000028A
	.incbin "baserom.gba", 0x408598, 0x00001A8
	.incbin "baserom.gba", 0x408740, 0x00000C8
	.incbin "baserom.gba", 0x408808, 0x00000FF
	.incbin "baserom.gba", 0x408907, 0x000018F
	.incbin "baserom.gba", 0x408A96, 0x00001E7
	.incbin "baserom.gba", 0x408C7D, 0x000024A
	.incbin "baserom.gba", 0x408EC7, 0x000007C
	.incbin "baserom.gba", 0x408F43, 0x00000C7
	.incbin "baserom.gba", 0x40900A, 0x0000155
	.incbin "baserom.gba", 0x40915F, 0x000011B
	.incbin "baserom.gba", 0x40927A, 0x00002A3
	.incbin "baserom.gba", 0x40951D, 0x00004F4
	.incbin "baserom.gba", 0x409A11, 0x0000739
	.incbin "baserom.gba", 0x40A14A, 0x000044D
	.incbin "baserom.gba", 0x40A597, 0x000036A
	.incbin "baserom.gba", 0x40A901, 0x0000189
	.incbin "baserom.gba", 0x40AA8A, 0x000043B
	.incbin "baserom.gba", 0x40AEC5, 0x0000074
	.incbin "baserom.gba", 0x40AF39, 0x0000067
	.incbin "baserom.gba", 0x40AFA0, 0x00000DF
	.incbin "baserom.gba", 0x40B07F, 0x0000289
	.incbin "baserom.gba", 0x40B308, 0x00002C7
	.incbin "baserom.gba", 0x40B5CF, 0x000007D
	.incbin "baserom.gba", 0x40B64C, 0x0000098
	.incbin "baserom.gba", 0x40B6E4, 0x00000D9
	.incbin "baserom.gba", 0x40B7BD, 0x0000243
	.incbin "baserom.gba", 0x40BA00, 0x000073D
	.incbin "baserom.gba", 0x40C13D, 0x0000446
	.incbin "baserom.gba", 0x40C583, 0x0000042
	.incbin "baserom.gba", 0x40C5C5, 0x000016E
	.incbin "baserom.gba", 0x40C733, 0x0000395
	.incbin "baserom.gba", 0x40CAC8, 0x00000F3
	.incbin "baserom.gba", 0x40CBBB, 0x0000098
	.incbin "baserom.gba", 0x40CC53, 0x000000F
	.incbin "baserom.gba", 0x40CC62, 0x0000027
	.incbin "baserom.gba", 0x40CC89, 0x00002DD
	.incbin "baserom.gba", 0x40CF66, 0x0000136
	.incbin "baserom.gba", 0x40D09C, 0x00000C1
	.incbin "baserom.gba", 0x40D15D, 0x00001A4
	.incbin "baserom.gba", 0x40D301, 0x000003E
	.incbin "baserom.gba", 0x40D33F, 0x00003DA
	.incbin "baserom.gba", 0x40D719, 0x00003A3
	.incbin "baserom.gba", 0x40DABC, 0x000004C
	.incbin "baserom.gba", 0x40DB08, 0x000006F
	.incbin "baserom.gba", 0x40DB77, 0x0000002
	.incbin "baserom.gba", 0x40DB79, 0x00000E6
	.incbin "baserom.gba", 0x40DC5F, 0x000001A
	.incbin "baserom.gba", 0x40DC79, 0x00000DE
	.incbin "baserom.gba", 0x40DD57, 0x00001F9
	.incbin "baserom.gba", 0x40DF50, 0x0000214
	.incbin "baserom.gba", 0x40E164, 0x0000290
	.incbin "baserom.gba", 0x40E3F4, 0x0000204
	.incbin "baserom.gba", 0x40E5F8, 0x0000098
	.incbin "baserom.gba", 0x40E690, 0x000016F
	.incbin "baserom.gba", 0x40E7FF, 0x00000CE
	.incbin "baserom.gba", 0x40E8CD, 0x000002E
	.incbin "baserom.gba", 0x40E8FB, 0x0000301
	.incbin "baserom.gba", 0x40EBFC, 0x00000FA
	.incbin "baserom.gba", 0x40ECF6, 0x0000006
	.incbin "baserom.gba", 0x40ECFC, 0x00000FC
	.incbin "baserom.gba", 0x40EDF8, 0x00000FF
	.incbin "baserom.gba", 0x40EEF7, 0x0000011
	.incbin "baserom.gba", 0x40EF08, 0x00001D8
	.incbin "baserom.gba", 0x40F0E0, 0x0000018
	.incbin "baserom.gba", 0x40F0F8, 0x000000F
	.incbin "baserom.gba", 0x40F107, 0x00001E5
	.incbin "baserom.gba", 0x40F2EC, 0x0000264
	.incbin "baserom.gba", 0x40F550, 0x00000A8
	.incbin "baserom.gba", 0x40F5F8, 0x000013D
	.incbin "baserom.gba", 0x40F735, 0x00000C3
	.incbin "baserom.gba", 0x40F7F8, 0x00002FC
	.incbin "baserom.gba", 0x40FAF4, 0x0000004
	.incbin "baserom.gba", 0x40FAF8, 0x00000FE
	.incbin "baserom.gba", 0x40FBF6, 0x0000002
	.incbin "baserom.gba", 0x40FBF8, 0x0000001
	.incbin "baserom.gba", 0x40FBF9, 0x0000001
	.incbin "baserom.gba", 0x40FBFA, 0x00000FE
	.incbin "baserom.gba", 0x40FCF8, 0x0000002
	.incbin "baserom.gba", 0x40FCFA, 0x00000FE
	.incbin "baserom.gba", 0x40FDF8, 0x000000F
	.incbin "baserom.gba", 0x40FE07, 0x00001E2
	.incbin "baserom.gba", 0x40FFE9, 0x000011E
	.incbin "baserom.gba", 0x410107, 0x000090A
	.incbin "baserom.gba", 0x410A11, 0x0000808
	.incbin "baserom.gba", 0x411219, 0x00001EB
	.incbin "baserom.gba", 0x411404, 0x0001D1C
	.incbin "baserom.gba", 0x413120, 0x0000103
	.incbin "baserom.gba", 0x413223, 0x000220F
	.incbin "baserom.gba", 0x415432, 0x00003CA
	.incbin "baserom.gba", 0x4157FC, 0x0001676
	.incbin "baserom.gba", 0x416E72, 0x00011CE
	.incbin "baserom.gba", 0x418040, 0x0000BD0
	.incbin "baserom.gba", 0x418C10, 0x00032F8
	.incbin "baserom.gba", 0x41BF08, 0x0002DD7
	.incbin "baserom.gba", 0x41ECDF, 0x0000319
	.incbin "baserom.gba", 0x41EFF8, 0x00003F8
	.incbin "baserom.gba", 0x41F3F0, 0x000000A
	.incbin "baserom.gba", 0x41F3FA, 0x00001F6
	.incbin "baserom.gba", 0x41F5F0, 0x00001FE
	.incbin "baserom.gba", 0x41F7EE, 0x000010A
	.incbin "baserom.gba", 0x41F8F8, 0x0000100
	.incbin "baserom.gba", 0x41F9F8, 0x0000100
	.incbin "baserom.gba", 0x41FAF8, 0x0000508
	.incbin "baserom.gba", 0x420000, 0x0000092
	.incbin "baserom.gba", 0x420092, 0x00003A5
	.incbin "baserom.gba", 0x420437, 0x0000005
	.incbin "baserom.gba", 0x42043C, 0x0000C91
	.incbin "baserom.gba", 0x4210CD, 0x0000058
	.incbin "baserom.gba", 0x421125, 0x0001004
	.incbin "baserom.gba", 0x422129, 0x0000049
	.incbin "baserom.gba", 0x422172, 0x00007C4
	.incbin "baserom.gba", 0x422936, 0x000039B
	.incbin "baserom.gba", 0x422CD1, 0x0001637
	.incbin "baserom.gba", 0x424308, 0x0003B7D
	.incbin "baserom.gba", 0x427E85, 0x000017A
	.incbin "baserom.gba", 0x427FFF, 0x0002A70
	.incbin "baserom.gba", 0x42AA6F, 0x0001AD6
	.incbin "baserom.gba", 0x42C545, 0x0000D8E
	.incbin "baserom.gba", 0x42D2D3, 0x0002730
	.incbin "baserom.gba", 0x42FA03, 0x00005FD
	.incbin "baserom.gba", 0x430000, 0x000009A
	.incbin "baserom.gba", 0x43009A, 0x0000052
	.incbin "baserom.gba", 0x4300EC, 0x0000044
	.incbin "baserom.gba", 0x430130, 0x00001D0
	.incbin "baserom.gba", 0x430300, 0x0000142
	.incbin "baserom.gba", 0x430442, 0x0000A62
	.incbin "baserom.gba", 0x430EA4, 0x00001F1
	.incbin "baserom.gba", 0x431095, 0x000016E
	.incbin "baserom.gba", 0x431203, 0x0000020
	.incbin "baserom.gba", 0x431223, 0x000034D
	.incbin "baserom.gba", 0x431570, 0x0000490
	.incbin "baserom.gba", 0x431A00, 0x00009E2
	.incbin "baserom.gba", 0x4323E2, 0x0000E16
	.incbin "baserom.gba", 0x4331F8, 0x000013B
	.incbin "baserom.gba", 0x433333, 0x0000001
	.incbin "baserom.gba", 0x433334, 0x0000001
	.incbin "baserom.gba", 0x433335, 0x0000FBC
	.incbin "baserom.gba", 0x4342F1, 0x0000663
	.incbin "baserom.gba", 0x434954, 0x0000EAB
	.incbin "baserom.gba", 0x4357FF, 0x000055E
	.incbin "baserom.gba", 0x435D5D, 0x0000802
	.incbin "baserom.gba", 0x43655F, 0x0001288
	.incbin "baserom.gba", 0x4377E7, 0x0000553
	.incbin "baserom.gba", 0x437D3A, 0x00000DC
	.incbin "baserom.gba", 0x437E16, 0x0000099
	.incbin "baserom.gba", 0x437EAF, 0x000014B
	.incbin "baserom.gba", 0x437FFA, 0x0007B19
	.incbin "baserom.gba", 0x43FB13, 0x0000495
	.incbin "baserom.gba", 0x43FFA8, 0x0000082
	.incbin "baserom.gba", 0x44002A, 0x00001C2
	.incbin "baserom.gba", 0x4401EC, 0x0000A56
	.incbin "baserom.gba", 0x440C42, 0x00004C0
	.incbin "baserom.gba", 0x441102, 0x000000F
	.incbin "baserom.gba", 0x441111, 0x0000101
	.incbin "baserom.gba", 0x441212, 0x0000117
	.incbin "baserom.gba", 0x441329, 0x0000311
	.incbin "baserom.gba", 0x44163A, 0x00001EE
	.incbin "baserom.gba", 0x441828, 0x00003FC
	.incbin "baserom.gba", 0x441C24, 0x00001DD
	.incbin "baserom.gba", 0x441E01, 0x0000322
	.incbin "baserom.gba", 0x442123, 0x000107D
	.incbin "baserom.gba", 0x4431A0, 0x0000083
	.incbin "baserom.gba", 0x443223, 0x0000023
	.incbin "baserom.gba", 0x443246, 0x00001C5
	.incbin "baserom.gba", 0x44340B, 0x0000F39
	.incbin "baserom.gba", 0x444344, 0x00000F0
	.incbin "baserom.gba", 0x444434, 0x000000E
	.incbin "baserom.gba", 0x444442, 0x0000002
	.incbin "baserom.gba", 0x444444, 0x00000B9
	.incbin "baserom.gba", 0x4444FD, 0x0000097
	.incbin "baserom.gba", 0x444594, 0x0000158
	.incbin "baserom.gba", 0x4446EC, 0x000003B
	.incbin "baserom.gba", 0x444727, 0x000051E
	.incbin "baserom.gba", 0x444C45, 0x00002A5
	.incbin "baserom.gba", 0x444EEA, 0x0000959
	.incbin "baserom.gba", 0x445843, 0x00003E0
	.incbin "baserom.gba", 0x445C23, 0x0000110
	.incbin "baserom.gba", 0x445D33, 0x00000CD
	.incbin "baserom.gba", 0x445E00, 0x0000768
	.incbin "baserom.gba", 0x446568, 0x000190A
	.incbin "baserom.gba", 0x447E72, 0x00000A2
	.incbin "baserom.gba", 0x447F14, 0x0000232
	.incbin "baserom.gba", 0x448146, 0x00004BA
	.incbin "baserom.gba", 0x448600, 0x000151A
	.incbin "baserom.gba", 0x449B1A, 0x00009E6
	.incbin "baserom.gba", 0x44A500, 0x0000E33
	.incbin "baserom.gba", 0x44B333, 0x000211A
	.incbin "baserom.gba", 0x44D44D, 0x00003B3
	.incbin "baserom.gba", 0x44D800, 0x0001700
	.incbin "baserom.gba", 0x44EF00, 0x000011F
	.incbin "baserom.gba", 0x44F01F, 0x00000D9
	.incbin "baserom.gba", 0x44F0F8, 0x0000A0B
	.incbin "baserom.gba", 0x44FB03, 0x000050D
	.incbin "baserom.gba", 0x450010, 0x00003F1
	.incbin "baserom.gba", 0x450401, 0x0001D21
	.incbin "baserom.gba", 0x452122, 0x00000FE
	.incbin "baserom.gba", 0x452220, 0x0000134
	.incbin "baserom.gba", 0x452354, 0x0000DE1
	.incbin "baserom.gba", 0x453135, 0x00000FF
	.incbin "baserom.gba", 0x453234, 0x00001D4
	.incbin "baserom.gba", 0x453408, 0x000001C
	.incbin "baserom.gba", 0x453424, 0x00006DC
	.incbin "baserom.gba", 0x453B00, 0x00005E5
	.incbin "baserom.gba", 0x4540E5, 0x000034F
	.incbin "baserom.gba", 0x454434, 0x000002A
	.incbin "baserom.gba", 0x45445E, 0x0000093
	.incbin "baserom.gba", 0x4544F1, 0x0000063
	.incbin "baserom.gba", 0x454554, 0x0000BC2
	.incbin "baserom.gba", 0x455116, 0x0000124
	.incbin "baserom.gba", 0x45523A, 0x00000E9
	.incbin "baserom.gba", 0x455323, 0x0000221
	.incbin "baserom.gba", 0x455544, 0x0000011
	.incbin "baserom.gba", 0x455555, 0x00002B2
	.incbin "baserom.gba", 0x455807, 0x0000E1C
	.incbin "baserom.gba", 0x456623, 0x000025B
	.incbin "baserom.gba", 0x45687E, 0x000228A
	.incbin "baserom.gba", 0x458B08, 0x000323D
	.incbin "baserom.gba", 0x45BD45, 0x0000D65
	.incbin "baserom.gba", 0x45CAAA, 0x000075D
	.incbin "baserom.gba", 0x45D207, 0x0001127
	.incbin "baserom.gba", 0x45E32E, 0x00001D4
	.incbin "baserom.gba", 0x45E502, 0x0000857
	.incbin "baserom.gba", 0x45ED59, 0x0000181
	.incbin "baserom.gba", 0x45EEDA, 0x0000C1E
	.incbin "baserom.gba", 0x45FAF8, 0x0000688
	.incbin "baserom.gba", 0x460180, 0x0000290
	.incbin "baserom.gba", 0x460410, 0x0000D45
	.incbin "baserom.gba", 0x461155, 0x00011F0
	.incbin "baserom.gba", 0x462345, 0x00010C5
	.incbin "baserom.gba", 0x46340A, 0x0001BED
	.incbin "baserom.gba", 0x464FF7, 0x0000321
	.incbin "baserom.gba", 0x465318, 0x000012D
	.incbin "baserom.gba", 0x465445, 0x0000FC4
	.incbin "baserom.gba", 0x466409, 0x000025B
	.incbin "baserom.gba", 0x466664, 0x00003F4
	.incbin "baserom.gba", 0x466A58, 0x00005CC
	.incbin "baserom.gba", 0x467024, 0x0001203
	.incbin "baserom.gba", 0x468227, 0x00014C7
	.incbin "baserom.gba", 0x4696EE, 0x0006923
	.incbin "baserom.gba", 0x470011, 0x000000C
	.incbin "baserom.gba", 0x47001D, 0x000006B
	.incbin "baserom.gba", 0x470088, 0x0000378
	.incbin "baserom.gba", 0x470400, 0x00010EE
	.incbin "baserom.gba", 0x4714EE, 0x0000008
	.incbin "baserom.gba", 0x4714F6, 0x0000009
	.incbin "baserom.gba", 0x4714FF, 0x00019D7
	.incbin "baserom.gba", 0x472ED6, 0x00009E1
	.incbin "baserom.gba", 0x4738B7, 0x0000E11
	.incbin "baserom.gba", 0x4746C8, 0x00019FB
	.incbin "baserom.gba", 0x4760C3, 0x0009F3E
	.incbin "baserom.gba", 0x480001, 0x0000003
	.incbin "baserom.gba", 0x480004, 0x0000103
	.incbin "baserom.gba", 0x480107, 0x00003BB
	.incbin "baserom.gba", 0x4804C2, 0x0000346
	.incbin "baserom.gba", 0x480808, 0x0000C67
	.incbin "baserom.gba", 0x48146F, 0x0001C83
	.incbin "baserom.gba", 0x4830F2, 0x0002256
	.incbin "baserom.gba", 0x485348, 0x0001E26
	.incbin "baserom.gba", 0x48716E, 0x0000CE6
	.incbin "baserom.gba", 0x487E54, 0x00081B4
	.incbin "baserom.gba", 0x490008, 0x00001D9
	.incbin "baserom.gba", 0x4901E1, 0x0003368
	.incbin "baserom.gba", 0x493549, 0x0002215
	.incbin "baserom.gba", 0x49575E, 0x0001618
	.incbin "baserom.gba", 0x496D76, 0x0000D00
	.incbin "baserom.gba", 0x497A76, 0x0001EEE
	.incbin "baserom.gba", 0x499964, 0x00009E5
	.incbin "baserom.gba", 0x49A349, 0x0005DE7
	.incbin "baserom.gba", 0x4A0130, 0x000026F
	.incbin "baserom.gba", 0x4A039F, 0x000171F
	.incbin "baserom.gba", 0x4A1ABE, 0x0001344
	.incbin "baserom.gba", 0x4A2E02, 0x00018C6
	.incbin "baserom.gba", 0x4A46C8, 0x0000669
	.incbin "baserom.gba", 0x4A4D31, 0x00019F9
	.incbin "baserom.gba", 0x4A672A, 0x0000A4B
	.incbin "baserom.gba", 0x4A7175, 0x0000001
	.incbin "baserom.gba", 0x4A7176, 0x00002F9
	.incbin "baserom.gba", 0x4A746F, 0x00009F9
	.incbin "baserom.gba", 0x4A7E68, 0x0002BFC
	.incbin "baserom.gba", 0x4AAA64, 0x0005DE6
	.incbin "baserom.gba", 0x4B084A, 0x0000A8A
	.incbin "baserom.gba", 0x4B12D4, 0x00004EA
	.incbin "baserom.gba", 0x4B17BE, 0x0000045
	.incbin "baserom.gba", 0x4B1803, 0x00002DD
	.incbin "baserom.gba", 0x4B1AE0, 0x0001834
	.incbin "baserom.gba", 0x4B3314, 0x0000F36
	.incbin "baserom.gba", 0x4B424A, 0x00005CA
	.incbin "baserom.gba", 0x4B4814, 0x00002DD
	.incbin "baserom.gba", 0x4B4AF1, 0x0002782
	.incbin "baserom.gba", 0x4B7273, 0x00048B5
	.incbin "baserom.gba", 0x4BBB28, 0x000064C
	.incbin "baserom.gba", 0x4BC174, 0x0003E94
	.incbin "baserom.gba", 0x4C0008, 0x000049A
	.incbin "baserom.gba", 0x4C04A2, 0x000046F
	.incbin "baserom.gba", 0x4C0911, 0x000003B
	.incbin "baserom.gba", 0x4C094C, 0x0001DB4
	.incbin "baserom.gba", 0x4C2700, 0x0002503
	.incbin "baserom.gba", 0x4C4C03, 0x000256A
	.incbin "baserom.gba", 0x4C716D, 0x0000E92
	.incbin "baserom.gba", 0x4C7FFF, 0x00020B1
	.incbin "baserom.gba", 0x4CA0B0, 0x0003251
	.incbin "baserom.gba", 0x4CD301, 0x000070A
	.incbin "baserom.gba", 0x4CDA0B, 0x00025F5
	.incbin "baserom.gba", 0x4D0000, 0x0000004
	.incbin "baserom.gba", 0x4D0004, 0x0000008
	.incbin "baserom.gba", 0x4D000C, 0x0000008
	.incbin "baserom.gba", 0x4D0014, 0x0000064
	.incbin "baserom.gba", 0x4D0078, 0x000001F
	.incbin "baserom.gba", 0x4D0097, 0x0000029
	.incbin "baserom.gba", 0x4D00C0, 0x000036A
	.incbin "baserom.gba", 0x4D042A, 0x000002F
	.incbin "baserom.gba", 0x4D0459, 0x0000ABD
	.incbin "baserom.gba", 0x4D0F16, 0x000232D
	.incbin "baserom.gba", 0x4D3243, 0x00042EE
	.incbin "baserom.gba", 0x4D7531, 0x0004C1C
	.incbin "baserom.gba", 0x4DC14D, 0x0002EB2
	.incbin "baserom.gba", 0x4DEFFF, 0x0001001
	.incbin "baserom.gba", 0x4E0000, 0x0000001
	.incbin "baserom.gba", 0x4E0001, 0x000038F
	.incbin "baserom.gba", 0x4E0390, 0x0000D4D
	.incbin "baserom.gba", 0x4E10DD, 0x00035EB
	.incbin "baserom.gba", 0x4E46C8, 0x0000587
	.incbin "baserom.gba", 0x4E4C4F, 0x00002B8
	.incbin "baserom.gba", 0x4E4F07, 0x0002067
	.incbin "baserom.gba", 0x4E6F6E, 0x00009AA
	.incbin "baserom.gba", 0x4E7918, 0x0001C57
	.incbin "baserom.gba", 0x4E956F, 0x0000AC0
	.incbin "baserom.gba", 0x4EA02F, 0x0004ED0
	.incbin "baserom.gba", 0x4EEEFF, 0x00011F6
	.incbin "baserom.gba", 0x4F00F5, 0x0000012
	.incbin "baserom.gba", 0x4F0107, 0x0000747
	.incbin "baserom.gba", 0x4F084E, 0x00006B8
	.incbin "baserom.gba", 0x4F0F06, 0x00010DB
	.incbin "baserom.gba", 0x4F1FE1, 0x000206D
	.incbin "baserom.gba", 0x4F404E, 0x00010BB
	.incbin "baserom.gba", 0x4F5109, 0x0002316
	.incbin "baserom.gba", 0x4F741F, 0x0000B31
	.incbin "baserom.gba", 0x4F7F50, 0x0007FB3
	.incbin "baserom.gba", 0x4FFF03, 0x00000FD
	.incbin "baserom.gba", 0x500000, 0x0000002
	.incbin "baserom.gba", 0x500002, 0x0000002
	.incbin "baserom.gba", 0x500004, 0x0000002
	.incbin "baserom.gba", 0x500006, 0x0000001
	.incbin "baserom.gba", 0x500007, 0x0000001
	.incbin "baserom.gba", 0x500008, 0x0000002
	.incbin "baserom.gba", 0x50000A, 0x0000001
	.incbin "baserom.gba", 0x50000B, 0x0000001
	.incbin "baserom.gba", 0x50000C, 0x0000001
	.incbin "baserom.gba", 0x50000D, 0x0000002
	.incbin "baserom.gba", 0x50000F, 0x0000001
	.incbin "baserom.gba", 0x500010, 0x0000001
	.incbin "baserom.gba", 0x500011, 0x0000003
	.incbin "baserom.gba", 0x500014, 0x0000008
	.incbin "baserom.gba", 0x50001C, 0x0000002
	.incbin "baserom.gba", 0x50001E, 0x0000002
	.incbin "baserom.gba", 0x500020, 0x000001C
	.incbin "baserom.gba", 0x50003C, 0x0000014
	.incbin "baserom.gba", 0x500050, 0x0000006
	.incbin "baserom.gba", 0x500056, 0x000000B
	.incbin "baserom.gba", 0x500061, 0x0000001
	.incbin "baserom.gba", 0x500062, 0x000000A
	.incbin "baserom.gba", 0x50006C, 0x0000006
	.incbin "baserom.gba", 0x500072, 0x000004E
	.incbin "baserom.gba", 0x5000C0, 0x0000030
	.incbin "baserom.gba", 0x5000F0, 0x0000008
	.incbin "baserom.gba", 0x5000F8, 0x0000007
	.incbin "baserom.gba", 0x5000FF, 0x0000001
	.incbin "baserom.gba", 0x500100, 0x000001C
	.incbin "baserom.gba", 0x50011C, 0x0000004
	.incbin "baserom.gba", 0x500120, 0x0000010
	.incbin "baserom.gba", 0x500130, 0x0000038
	.incbin "baserom.gba", 0x500168, 0x0000018
	.incbin "baserom.gba", 0x500180, 0x0000281
	.incbin "baserom.gba", 0x500401, 0x0000042
	.incbin "baserom.gba", 0x500443, 0x0000001
	.incbin "baserom.gba", 0x500444, 0x0000015
	.incbin "baserom.gba", 0x500459, 0x000000A
	.incbin "baserom.gba", 0x500463, 0x00001ED
	.incbin "baserom.gba", 0x500650, 0x00001B6
	.incbin "baserom.gba", 0x500806, 0x0000001
	.incbin "baserom.gba", 0x500807, 0x0000001
	.incbin "baserom.gba", 0x500808, 0x0000049
	.incbin "baserom.gba", 0x500851, 0x00000CA
	.incbin "baserom.gba", 0x50091B, 0x0000036
	.incbin "baserom.gba", 0x500951, 0x0000810
	.incbin "baserom.gba", 0x501161, 0x00001C5
	.incbin "baserom.gba", 0x501326, 0x000042B
	.incbin "baserom.gba", 0x501751, 0x00002C0
	.incbin "baserom.gba", 0x501A11, 0x00002EF
	.incbin "baserom.gba", 0x501D00, 0x0000208
	.incbin "baserom.gba", 0x501F08, 0x0001259
	.incbin "baserom.gba", 0x503161, 0x00001DB
	.incbin "baserom.gba", 0x50333C, 0x0001078
	.incbin "baserom.gba", 0x5043B4, 0x0000050
	.incbin "baserom.gba", 0x504404, 0x00002C4
	.incbin "baserom.gba", 0x5046C8, 0x000016F
	.incbin "baserom.gba", 0x504837, 0x0000829
	.incbin "baserom.gba", 0x505060, 0x0002206
	.incbin "baserom.gba", 0x507266, 0x0000D2A
	.incbin "baserom.gba", 0x507F90, 0x0001B0F
	.incbin "baserom.gba", 0x509A9F, 0x0000573
	.incbin "baserom.gba", 0x50A012, 0x0001117
	.incbin "baserom.gba", 0x50B129, 0x000107F
	.incbin "baserom.gba", 0x50C1A8, 0x000059D
	.incbin "baserom.gba", 0x50C745, 0x0000A8C
	.incbin "baserom.gba", 0x50D1D1, 0x000064D
	.incbin "baserom.gba", 0x50D81E, 0x0000F5D
	.incbin "baserom.gba", 0x50E77B, 0x0001175
	.incbin "baserom.gba", 0x50F8F0, 0x0000101
	.incbin "baserom.gba", 0x50F9F1, 0x00000FF
	.incbin "baserom.gba", 0x50FAF0, 0x0000100
	.incbin "baserom.gba", 0x50FBF0, 0x0000100
	.incbin "baserom.gba", 0x50FCF0, 0x0000100
	.incbin "baserom.gba", 0x50FDF0, 0x00000FD
	.incbin "baserom.gba", 0x50FEED, 0x0000001
	.incbin "baserom.gba", 0x50FEEE, 0x0000002
	.incbin "baserom.gba", 0x50FEF0, 0x00000DE
	.incbin "baserom.gba", 0x50FFCE, 0x0000022
	.incbin "baserom.gba", 0x50FFF0, 0x0000008
	.incbin "baserom.gba", 0x50FFF8, 0x0000002
	.incbin "baserom.gba", 0x50FFFA, 0x0000002
	.incbin "baserom.gba", 0x50FFFC, 0x0000005
	.incbin "baserom.gba", 0x510001, 0x0000019
	.incbin "baserom.gba", 0x51001A, 0x0000136
	.incbin "baserom.gba", 0x510150, 0x000012C
	.incbin "baserom.gba", 0x51027C, 0x00000D4
	.incbin "baserom.gba", 0x510350, 0x0001BE0
	.incbin "baserom.gba", 0x511F30, 0x0000821
	.incbin "baserom.gba", 0x512751, 0x00014F3
	.incbin "baserom.gba", 0x513C44, 0x00002DC
	.incbin "baserom.gba", 0x513F20, 0x0001829
	.incbin "baserom.gba", 0x515749, 0x0006DD6
	.incbin "baserom.gba", 0x51C51F, 0x00030C9
	.incbin "baserom.gba", 0x51F5E8, 0x0000808
	.incbin "baserom.gba", 0x51FDF0, 0x00000D9
	.incbin "baserom.gba", 0x51FEC9, 0x00004C9
	.incbin "baserom.gba", 0x520392, 0x0000070
	.incbin "baserom.gba", 0x520402, 0x000004F
	.incbin "baserom.gba", 0x520451, 0x00002BF
	.incbin "baserom.gba", 0x520710, 0x00004B5
	.incbin "baserom.gba", 0x520BC5, 0x000187F
	.incbin "baserom.gba", 0x522444, 0x0002001
	.incbin "baserom.gba", 0x524445, 0x0000121
	.incbin "baserom.gba", 0x524566, 0x000103C
	.incbin "baserom.gba", 0x5255A2, 0x0000A64
	.incbin "baserom.gba", 0x526006, 0x0001E2C
	.incbin "baserom.gba", 0x527E32, 0x0000112
	.incbin "baserom.gba", 0x527F44, 0x00027BD
	.incbin "baserom.gba", 0x52A701, 0x0002A02
	.incbin "baserom.gba", 0x52D103, 0x000304F
	.incbin "baserom.gba", 0x530152, 0x00001AE
	.incbin "baserom.gba", 0x530300, 0x0000050
	.incbin "baserom.gba", 0x530350, 0x0000FD2
	.incbin "baserom.gba", 0x531322, 0x000099D
	.incbin "baserom.gba", 0x531CBF, 0x0000E2D
	.incbin "baserom.gba", 0x532AEC, 0x0000979
	.incbin "baserom.gba", 0x533465, 0x00001EE
	.incbin "baserom.gba", 0x533653, 0x0000EE3
	.incbin "baserom.gba", 0x534536, 0x0001C1C
	.incbin "baserom.gba", 0x536152, 0x0001301
	.incbin "baserom.gba", 0x537453, 0x0008BB1
	.incbin "baserom.gba", 0x540004, 0x00000EC
	.incbin "baserom.gba", 0x5400F0, 0x0000100
	.incbin "baserom.gba", 0x5401F0, 0x00010CF
	.incbin "baserom.gba", 0x5412BF, 0x0000076
	.incbin "baserom.gba", 0x541335, 0x0001FCE
	.incbin "baserom.gba", 0x543303, 0x0000F25
	.incbin "baserom.gba", 0x544228, 0x000003F
	.incbin "baserom.gba", 0x544267, 0x000009A
	.incbin "baserom.gba", 0x544301, 0x0001365
	.incbin "baserom.gba", 0x545666, 0x0000F00

@ TODO JP differs from here
.ifdef JP
	.incbin "baserom_jp.gba", 0x546192, 0x5C98E
.else
@ TODO JP differs from here
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x546192, 0x5C98E
.else
	.incbin "baserom.gba", 0x546566, 0x00019E4
	.incbin "baserom.gba", 0x547F4A, 0x000092C
	.incbin "baserom.gba", 0x548876, 0x0004666
	.incbin "baserom.gba", 0x54CEDC, 0x0001011
	.incbin "baserom.gba", 0x54DEED, 0x0002114
	.incbin "baserom.gba", 0x550001, 0x0000003
	.incbin "baserom.gba", 0x550004, 0x000000C
	.incbin "baserom.gba", 0x550010, 0x0000044
	.incbin "baserom.gba", 0x550054, 0x0000400
	.incbin "baserom.gba", 0x550454, 0x00004FD
	.incbin "baserom.gba", 0x550951, 0x00013BF
	.incbin "baserom.gba", 0x551D10, 0x0000513
	.incbin "baserom.gba", 0x552223, 0x00001E5
	.incbin "baserom.gba", 0x552408, 0x0001C4C
	.incbin "baserom.gba", 0x554054, 0x0000200
	.incbin "baserom.gba", 0x554254, 0x0000002
	.incbin "baserom.gba", 0x554256, 0x00001AD
	.incbin "baserom.gba", 0x554403, 0x0000042
	.incbin "baserom.gba", 0x554445, 0x0000630
	.incbin "baserom.gba", 0x554A75, 0x00008AF
	.incbin "baserom.gba", 0x555324, 0x0000231
	.incbin "baserom.gba", 0x555555, 0x000000D
	.incbin "baserom.gba", 0x555562, 0x0000503
	.incbin "baserom.gba", 0x555A65, 0x0000BAB
	.incbin "baserom.gba", 0x556610, 0x000022B
	.incbin "baserom.gba", 0x55683B, 0x0000519
	.incbin "baserom.gba", 0x556D54, 0x0000183
	.incbin "baserom.gba", 0x556ED7, 0x0000435
	.incbin "baserom.gba", 0x55730C, 0x0000A4F
	.incbin "baserom.gba", 0x557D5B, 0x00014A7
	.incbin "baserom.gba", 0x559202, 0x0005428
	.incbin "baserom.gba", 0x55E62A, 0x0000260
	.incbin "baserom.gba", 0x55E88A, 0x000177E
	.incbin "baserom.gba", 0x560008, 0x00000FF
	.incbin "baserom.gba", 0x560107, 0x0000258
	.incbin "baserom.gba", 0x56035F, 0x000154E
	.incbin "baserom.gba", 0x5618AD, 0x0001BA9
	.incbin "baserom.gba", 0x563456, 0x00008BA
	.incbin "baserom.gba", 0x563D10, 0x000071B
	.incbin "baserom.gba", 0x56442B, 0x00002D5
	.incbin "baserom.gba", 0x564700, 0x0000C1F
	.incbin "baserom.gba", 0x56531F, 0x0000314
	.incbin "baserom.gba", 0x565633, 0x0000F1E
	.incbin "baserom.gba", 0x566551, 0x00000D1
	.incbin "baserom.gba", 0x566622, 0x0000DF3
	.incbin "baserom.gba", 0x567415, 0x0000C02
	.incbin "baserom.gba", 0x568017, 0x0000031
	.incbin "baserom.gba", 0x568048, 0x00060DB
	.incbin "baserom.gba", 0x56E123, 0x0001EEE
	.incbin "baserom.gba", 0x570011, 0x00018E0
	.incbin "baserom.gba", 0x5718F1, 0x000071F
	.incbin "baserom.gba", 0x572010, 0x0000679
	.incbin "baserom.gba", 0x572689, 0x0000795
	.incbin "baserom.gba", 0x572E1E, 0x000123A
	.incbin "baserom.gba", 0x574058, 0x00021CC
	.incbin "baserom.gba", 0x576224, 0x0001408
	.incbin "baserom.gba", 0x57762C, 0x000135B
	.incbin "baserom.gba", 0x578987, 0x00036CB
	.incbin "baserom.gba", 0x57C052, 0x0003724
	.incbin "baserom.gba", 0x57F776, 0x000088A
	.incbin "baserom.gba", 0x580000, 0x0000008
	.incbin "baserom.gba", 0x580008, 0x000003E
	.incbin "baserom.gba", 0x580046, 0x0000030
	.incbin "baserom.gba", 0x580076, 0x0000030
	.incbin "baserom.gba", 0x5800A6, 0x00000AC
	.incbin "baserom.gba", 0x580152, 0x0000306
	.incbin "baserom.gba", 0x580458, 0x00003B0
	.incbin "baserom.gba", 0x580808, 0x000004F
	.incbin "baserom.gba", 0x580857, 0x0006E11
	.incbin "baserom.gba", 0x587668, 0x00007F9
	.incbin "baserom.gba", 0x587E61, 0x00081A0
	.incbin "baserom.gba", 0x590001, 0x00000F1
	.incbin "baserom.gba", 0x5900F2, 0x00007EF
	.incbin "baserom.gba", 0x5908E1, 0x0000CC9
	.incbin "baserom.gba", 0x5915AA, 0x00081CD
	.incbin "baserom.gba", 0x599777, 0x000184D
	.incbin "baserom.gba", 0x59AFC4, 0x000503C
	.incbin "baserom.gba", 0x5A0000, 0x0000001
	.incbin "baserom.gba", 0x5A0001, 0x0000001
	.incbin "baserom.gba", 0x5A0002, 0x0000006
	.incbin "baserom.gba", 0x5A0008, 0x0000002
	.incbin "baserom.gba", 0x5A000A, 0x0000002
	.incbin "baserom.gba", 0x5A000C, 0x0000003
	.incbin "baserom.gba", 0x5A000F, 0x0000009
	.incbin "baserom.gba", 0x5A0018, 0x0000006
	.incbin "baserom.gba", 0x5A001E, 0x0000001
	.incbin "baserom.gba", 0x5A001F, 0x000001D
	.incbin "baserom.gba", 0x5A003C, 0x000001A
	.incbin "baserom.gba", 0x5A0056, 0x0000008
	.incbin "baserom.gba", 0x5A005E, 0x0000033
	.incbin "baserom.gba", 0x5A0091, 0x000005F
	.incbin "baserom.gba", 0x5A00F0, 0x0000211
	.incbin "baserom.gba", 0x5A0301, 0x0000100
	.incbin "baserom.gba", 0x5A0401, 0x0000033
	.incbin "baserom.gba", 0x5A0434, 0x000000F
	.incbin "baserom.gba", 0x5A0443, 0x0000006
	.incbin "baserom.gba", 0x5A0449, 0x000001A
	.incbin "baserom.gba", 0x5A0463, 0x0000001
	.incbin "baserom.gba", 0x5A0464, 0x00003A2
	.incbin "baserom.gba", 0x5A0806, 0x000267A

.endif
.endif
.endif

@ TODO JP and EU differ to here

gGlobalGfxAndPalettes:: @ 085A2E80
	.incbin "baserom.gba", 0x5A2E80, 0x0001382
	.incbin "baserom.gba", 0x5A4202, 0x0001CED
	.incbin "baserom.gba", 0x5A5EEF, 0x0000037
	.incbin "baserom.gba", 0x5A5F26, 0x00013FA

gUnk_085A7320:: @ 085A7320
	.incbin "baserom.gba", 0x5A7320, 0x0002480

gUnk_085A97A0:: @ 085A97A0
	.incbin "baserom.gba", 0x5A97A0, 0x0000CA1
	.incbin "baserom.gba", 0x5AA441, 0x0002B76
	.incbin "baserom.gba", 0x5ACFB7, 0x0002FA5
	.incbin "baserom.gba", 0x5AFF5C, 0x000001C
	.incbin "baserom.gba", 0x5AFF78, 0x0000058
	.incbin "baserom.gba", 0x5AFFD0, 0x0000030
	.incbin "baserom.gba", 0x5B0000, 0x0000006
	.incbin "baserom.gba", 0x5B0006, 0x0000004
	.incbin "baserom.gba", 0x5B000A, 0x0000002
	.incbin "baserom.gba", 0x5B000C, 0x0000002
	.incbin "baserom.gba", 0x5B000E, 0x000000E
	.incbin "baserom.gba", 0x5B001C, 0x0000002
	.incbin "baserom.gba", 0x5B001E, 0x0000006
	.incbin "baserom.gba", 0x5B0024, 0x0000012
	.incbin "baserom.gba", 0x5B0036, 0x0000006
	.incbin "baserom.gba", 0x5B003C, 0x000000C
	.incbin "baserom.gba", 0x5B0048, 0x000000C
	.incbin "baserom.gba", 0x5B0054, 0x0000004
	.incbin "baserom.gba", 0x5B0058, 0x000000C
	.incbin "baserom.gba", 0x5B0064, 0x0000001
	.incbin "baserom.gba", 0x5B0065, 0x000000F
	.incbin "baserom.gba", 0x5B0074, 0x0000060
	.incbin "baserom.gba", 0x5B00D4, 0x0000026
	.incbin "baserom.gba", 0x5B00FA, 0x0000308
	.incbin "baserom.gba", 0x5B0402, 0x0000032
	.incbin "baserom.gba", 0x5B0434, 0x0000015
	.incbin "baserom.gba", 0x5B0449, 0x000001A
	.incbin "baserom.gba", 0x5B0463, 0x0000001
	.incbin "baserom.gba", 0x5B0464, 0x00003A2
	.incbin "baserom.gba", 0x5B0806, 0x0000001
	.incbin "baserom.gba", 0x5B0807, 0x000088D
	.incbin "baserom.gba", 0x5B1094, 0x00030EC

gUnk_085B4180:: @ 085B4180
.ifdef EU
	@TODO differs to
	.incbin "baserom_eu.gba", 0x5B36D0, 0x0001D00
.else
	.incbin "baserom.gba", 0x5B4180, 0x0000EB5
	.incbin "baserom.gba", 0x5B5035, 0x0000E8B
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
	.incbin "baserom.gba", 0x5B6320, 0x0000013
	.incbin "baserom.gba", 0x5B6333, 0x00000CD

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
	.incbin "baserom.gba", 0x5B6E80, 0x00000C6
	.incbin "baserom.gba", 0x5B6F46, 0x000001A

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
	.incbin "baserom.gba", 0x5BD360, 0x00000A4
	.incbin "baserom.gba", 0x5BD404, 0x000003C

gUnk_085BD440:: @ 085BD440
	.incbin "baserom.gba", 0x5BD440, 0x00000E0

gUnk_085BD520:: @ 085BD520
	.incbin "baserom.gba", 0x5BD520, 0x0000100

@ TODO end of figurine data

	.incbin "graphics/intro/capcom.gbapal"
	.incbin "graphics/intro/nintendo.gbapal"
	.incbin "baserom.gba", 0x5BD660, 0x0002898
	.incbin "baserom.gba", 0x5BFEF8, 0x000002E
	.incbin "baserom.gba", 0x5BFF26, 0x00000AE
	.incbin "baserom.gba", 0x5BFFD4, 0x0000024
	.incbin "baserom.gba", 0x5BFFF8, 0x0000007
	.incbin "baserom.gba", 0x5BFFFF, 0x000081D
	.incbin "baserom.gba", 0x5C081C, 0x0001163
	.incbin "baserom.gba", 0x5C197F, 0x00003D1
	.incbin "baserom.gba", 0x5C1D50, 0x0000A0C
	.incbin "baserom.gba", 0x5C275C, 0x0000AD6
	.incbin "baserom.gba", 0x5C3232, 0x00008CE
	.incbin "baserom.gba", 0x5C3B00, 0x0000438
	.incbin "baserom.gba", 0x5C3F38, 0x00006E8

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
	.incbin "baserom.gba", 0x5C4FE0, 0x000B021
	.incbin "baserom.gba", 0x5D0001, 0x0000106
	.incbin "baserom.gba", 0x5D0107, 0x0000055
	.incbin "baserom.gba", 0x5D015C, 0x000045B
	.incbin "baserom.gba", 0x5D05B7, 0x00003A6
	.incbin "baserom.gba", 0x5D095D, 0x0001E00
	.incbin "baserom.gba", 0x5D275D, 0x00009A3
	.incbin "baserom.gba", 0x5D3100, 0x000DC31
	.incbin "baserom.gba", 0x5E0D31, 0x00045BC
	.incbin "baserom.gba", 0x5E52ED, 0x0004D8F
	.incbin "baserom.gba", 0x5EA07C, 0x0005F84
	.incbin "baserom.gba", 0x5F0000, 0x0000006
	.incbin "baserom.gba", 0x5F0006, 0x0000002
	.incbin "baserom.gba", 0x5F0008, 0x0000002
	.incbin "baserom.gba", 0x5F000A, 0x0000011
	.incbin "baserom.gba", 0x5F001B, 0x0000003
	.incbin "baserom.gba", 0x5F001E, 0x000001E
	.incbin "baserom.gba", 0x5F003C, 0x0000036
	.incbin "baserom.gba", 0x5F0072, 0x0000006
	.incbin "baserom.gba", 0x5F0078, 0x0000014
	.incbin "baserom.gba", 0x5F008C, 0x0000376
	.incbin "baserom.gba", 0x5F0402, 0x0000032
	.incbin "baserom.gba", 0x5F0434, 0x000000F
	.incbin "baserom.gba", 0x5F0443, 0x0000008
	.incbin "baserom.gba", 0x5F044B, 0x000000E
	.incbin "baserom.gba", 0x5F0459, 0x0000005
	.incbin "baserom.gba", 0x5F045E, 0x00003A9
	.incbin "baserom.gba", 0x5F0807, 0x0000057
	.incbin "baserom.gba", 0x5F085E, 0x000F259
	.incbin "baserom.gba", 0x5FFAB7, 0x0000050
	.incbin "baserom.gba", 0x5FFB07, 0x00004F8
	.incbin "baserom.gba", 0x5FFFFF, 0x0000001
	.incbin "baserom.gba", 0x600000, 0x0000001
	.incbin "baserom.gba", 0x600001, 0x0000005
	.incbin "baserom.gba", 0x600006, 0x00000E3
	.incbin "baserom.gba", 0x6000E9, 0x0000237
	.incbin "baserom.gba", 0x600320, 0x0000314
	.incbin "baserom.gba", 0x600634, 0x00000FC
	.incbin "baserom.gba", 0x600730, 0x00000D8
	.incbin "baserom.gba", 0x600808, 0x0003458
	.incbin "baserom.gba", 0x603C60, 0x000177E
	.incbin "baserom.gba", 0x6053DE, 0x0000421
	.incbin "baserom.gba", 0x6057FF, 0x0000F04
	.incbin "baserom.gba", 0x606703, 0x0000750
	.incbin "baserom.gba", 0x606E53, 0x00010AD
	.incbin "baserom.gba", 0x607F00, 0x0000052
	.incbin "baserom.gba", 0x607F52, 0x00009AE
	.incbin "baserom.gba", 0x608900, 0x0005BEA
	.incbin "baserom.gba", 0x60E4EA, 0x0000D01
	.incbin "baserom.gba", 0x60F1EB, 0x0000405
	.incbin "baserom.gba", 0x60F5F0, 0x0000300
	.incbin "baserom.gba", 0x60F8F0, 0x000006B
	.incbin "baserom.gba", 0x60F95B, 0x00003A8
	.incbin "baserom.gba", 0x60FD03, 0x00002FD
	.incbin "baserom.gba", 0x610000, 0x0000002
	.incbin "baserom.gba", 0x610002, 0x0000002
	.incbin "baserom.gba", 0x610004, 0x0000001
	.incbin "baserom.gba", 0x610005, 0x0000001
	.incbin "baserom.gba", 0x610006, 0x0000001
	.incbin "baserom.gba", 0x610007, 0x0000001
	.incbin "baserom.gba", 0x610008, 0x0000002
	.incbin "baserom.gba", 0x61000A, 0x0000001
	.incbin "baserom.gba", 0x61000B, 0x0000004
	.incbin "baserom.gba", 0x61000F, 0x0000004
	.incbin "baserom.gba", 0x610013, 0x0000001
	.incbin "baserom.gba", 0x610014, 0x000000A
	.incbin "baserom.gba", 0x61001E, 0x0000002
	.incbin "baserom.gba", 0x610020, 0x0000006
	.incbin "baserom.gba", 0x610026, 0x000000A
	.incbin "baserom.gba", 0x610030, 0x000000C
	.incbin "baserom.gba", 0x61003C, 0x0000004
	.incbin "baserom.gba", 0x610040, 0x000000A
	.incbin "baserom.gba", 0x61004A, 0x0000006
	.incbin "baserom.gba", 0x610050, 0x0000008
	.incbin "baserom.gba", 0x610058, 0x0000002
	.incbin "baserom.gba", 0x61005A, 0x0000002
	.incbin "baserom.gba", 0x61005C, 0x0000004
	.incbin "baserom.gba", 0x610060, 0x0000008
	.incbin "baserom.gba", 0x610068, 0x000000E
	.incbin "baserom.gba", 0x610076, 0x0000002
	.incbin "baserom.gba", 0x610078, 0x0000008
	.incbin "baserom.gba", 0x610080, 0x0000010
	.incbin "baserom.gba", 0x610090, 0x0000008
	.incbin "baserom.gba", 0x610098, 0x0000010
	.incbin "baserom.gba", 0x6100A8, 0x0000010
	.incbin "baserom.gba", 0x6100B8, 0x0000048
	.incbin "baserom.gba", 0x610100, 0x0000008
	.incbin "baserom.gba", 0x610108, 0x0000014
	.incbin "baserom.gba", 0x61011C, 0x0000008
	.incbin "baserom.gba", 0x610124, 0x000001C
	.incbin "baserom.gba", 0x610140, 0x0000008
	.incbin "baserom.gba", 0x610148, 0x0000020
	.incbin "baserom.gba", 0x610168, 0x0000018
	.incbin "baserom.gba", 0x610180, 0x0000030
	.incbin "baserom.gba", 0x6101B0, 0x0000010
	.incbin "baserom.gba", 0x6101C0, 0x0000008
	.incbin "baserom.gba", 0x6101C8, 0x0000040
	.incbin "baserom.gba", 0x610208, 0x0000020
	.incbin "baserom.gba", 0x610228, 0x0000010
	.incbin "baserom.gba", 0x610238, 0x0000028
	.incbin "baserom.gba", 0x610260, 0x0000010
	.incbin "baserom.gba", 0x610270, 0x0000008
	.incbin "baserom.gba", 0x610278, 0x0000010
	.incbin "baserom.gba", 0x610288, 0x0000080
	.incbin "baserom.gba", 0x610308, 0x0000018
	.incbin "baserom.gba", 0x610320, 0x0000008
	.incbin "baserom.gba", 0x610328, 0x0000008
	.incbin "baserom.gba", 0x610330, 0x0000008
	.incbin "baserom.gba", 0x610338, 0x0000010
	.incbin "baserom.gba", 0x610348, 0x0000018
	.incbin "baserom.gba", 0x610360, 0x0000038
	.incbin "baserom.gba", 0x610398, 0x0000069
	.incbin "baserom.gba", 0x610401, 0x0000001
	.incbin "baserom.gba", 0x610402, 0x0000041
	.incbin "baserom.gba", 0x610443, 0x0000001
	.incbin "baserom.gba", 0x610444, 0x0000015
	.incbin "baserom.gba", 0x610459, 0x0000057
	.incbin "baserom.gba", 0x6104B0, 0x0000300
	.incbin "baserom.gba", 0x6107B0, 0x0000055
	.incbin "baserom.gba", 0x610805, 0x0000001
	.incbin "baserom.gba", 0x610806, 0x0000001
	.incbin "baserom.gba", 0x610807, 0x0000059
	.incbin "baserom.gba", 0x610860, 0x000059E
	.incbin "baserom.gba", 0x610DFE, 0x0002212
	.incbin "baserom.gba", 0x613010, 0x0000334
	.incbin "baserom.gba", 0x613344, 0x00065DE
	.incbin "baserom.gba", 0x619922, 0x00006DE
	.incbin "baserom.gba", 0x61A000, 0x0000BCC
	.incbin "baserom.gba", 0x61ABCC, 0x0001181
	.incbin "baserom.gba", 0x61BD4D, 0x0005403
	.incbin "baserom.gba", 0x621150, 0x00010D5
	.incbin "baserom.gba", 0x622225, 0x0000020
	.incbin "baserom.gba", 0x622245, 0x00001C2
	.incbin "baserom.gba", 0x622407, 0x000203A
	.incbin "baserom.gba", 0x624441, 0x000A521
	.incbin "baserom.gba", 0x62E962, 0x00016E1
	.incbin "baserom.gba", 0x630043, 0x00000ED
	.incbin "baserom.gba", 0x630130, 0x0000312
	.incbin "baserom.gba", 0x630442, 0x0000120
	.incbin "baserom.gba", 0x630562, 0x00001B0
	.incbin "baserom.gba", 0x630712, 0x0000150
	.incbin "baserom.gba", 0x630862, 0x0005CC3
	.incbin "baserom.gba", 0x636525, 0x0002D5C
	.incbin "baserom.gba", 0x639281, 0x0006E86
	.incbin "baserom.gba", 0x640107, 0x0000219
	.incbin "baserom.gba", 0x640320, 0x0000123
	.incbin "baserom.gba", 0x640443, 0x0000B9E
	.incbin "baserom.gba", 0x640FE1, 0x0001296
	.incbin "baserom.gba", 0x642277, 0x000218C
	.incbin "baserom.gba", 0x644403, 0x000081C
	.incbin "baserom.gba", 0x644C1F, 0x0000914
	.incbin "baserom.gba", 0x645533, 0x0000003
	.incbin "baserom.gba", 0x645536, 0x00001EF

.ifdef EU
	@ TODO differs to gUnk_086926A0
	.incbin "baserom_eu.gba", 0x644C35, 0x004D23B
.else
	.incbin "baserom.gba", 0x645725, 0x0005330
	.incbin "baserom.gba", 0x64AA55, 0x00041B3
	.incbin "baserom.gba", 0x64EC08, 0x00013F9
	.incbin "baserom.gba", 0x650001, 0x000000F
	.incbin "baserom.gba", 0x650010, 0x0000030
	.incbin "baserom.gba", 0x650040, 0x0000100
	.incbin "baserom.gba", 0x650140, 0x00002C0
	.incbin "baserom.gba", 0x650400, 0x0000064
	.incbin "baserom.gba", 0x650464, 0x000069C
	.incbin "baserom.gba", 0x650B00, 0x0000400
	.incbin "baserom.gba", 0x650F00, 0x0000003
	.incbin "baserom.gba", 0x650F03, 0x000131F
	.incbin "baserom.gba", 0x652222, 0x00009F6
	.incbin "baserom.gba", 0x652C18, 0x00006FC
	.incbin "baserom.gba", 0x653314, 0x00004EC
	.incbin "baserom.gba", 0x653800, 0x0001E43
	.incbin "baserom.gba", 0x655643, 0x0002017
	.incbin "baserom.gba", 0x65765A, 0x00017AA
	.incbin "baserom.gba", 0x658E04, 0x000581F
	.incbin "baserom.gba", 0x65E623, 0x00019DD
	.incbin "baserom.gba", 0x660000, 0x0000006
	.incbin "baserom.gba", 0x660006, 0x00002FA
	.incbin "baserom.gba", 0x660300, 0x00002B7
	.incbin "baserom.gba", 0x6605B7, 0x00002AF
	.incbin "baserom.gba", 0x660866, 0x00012AA
	.incbin "baserom.gba", 0x661B10, 0x0000400
	.incbin "baserom.gba", 0x661F10, 0x0000972
	.incbin "baserom.gba", 0x662882, 0x0000BC1
	.incbin "baserom.gba", 0x663443, 0x0000F4D
	.incbin "baserom.gba", 0x664390, 0x000003C
	.incbin "baserom.gba", 0x6643CC, 0x0000067
	.incbin "baserom.gba", 0x664433, 0x0000F11
	.incbin "baserom.gba", 0x665344, 0x0000223
	.incbin "baserom.gba", 0x665567, 0x0000DCD
	.incbin "baserom.gba", 0x666334, 0x000021F
	.incbin "baserom.gba", 0x666553, 0x00000AE
	.incbin "baserom.gba", 0x666601, 0x0000021
	.incbin "baserom.gba", 0x666622, 0x0000044
	.incbin "baserom.gba", 0x666666, 0x0000117
	.incbin "baserom.gba", 0x66677D, 0x00000A6
	.incbin "baserom.gba", 0x666823, 0x0000DF3
	.incbin "baserom.gba", 0x667616, 0x0000151
	.incbin "baserom.gba", 0x667767, 0x0000748
	.incbin "baserom.gba", 0x667EAF, 0x0000151
	.incbin "baserom.gba", 0x668000, 0x0001999
	.incbin "baserom.gba", 0x669999, 0x000056F
	.incbin "baserom.gba", 0x669F08, 0x0000541
	.incbin "baserom.gba", 0x66A449, 0x000185C
	.incbin "baserom.gba", 0x66BCA5, 0x0000292
	.incbin "baserom.gba", 0x66BF37, 0x00023CC
	.incbin "baserom.gba", 0x66E303, 0x0000F20
	.incbin "baserom.gba", 0x66F223, 0x0000DDD
	.incbin "baserom.gba", 0x670000, 0x0000001
	.incbin "baserom.gba", 0x670001, 0x0000001
	.incbin "baserom.gba", 0x670002, 0x0000002
	.incbin "baserom.gba", 0x670004, 0x0000002
	.incbin "baserom.gba", 0x670006, 0x0000001
	.incbin "baserom.gba", 0x670007, 0x0000001
	.incbin "baserom.gba", 0x670008, 0x0000002
	.incbin "baserom.gba", 0x67000A, 0x0000001
	.incbin "baserom.gba", 0x67000B, 0x0000004
	.incbin "baserom.gba", 0x67000F, 0x0000001
	.incbin "baserom.gba", 0x670010, 0x0000001
	.incbin "baserom.gba", 0x670011, 0x0000003
	.incbin "baserom.gba", 0x670014, 0x0000004
	.incbin "baserom.gba", 0x670018, 0x0000024
	.incbin "baserom.gba", 0x67003C, 0x000005A
	.incbin "baserom.gba", 0x670096, 0x0000002
	.incbin "baserom.gba", 0x670098, 0x0000128
	.incbin "baserom.gba", 0x6701C0, 0x0000018
	.incbin "baserom.gba", 0x6701D8, 0x0000020
	.incbin "baserom.gba", 0x6701F8, 0x0000028
	.incbin "baserom.gba", 0x670220, 0x0000138
	.incbin "baserom.gba", 0x670358, 0x00000A9
	.incbin "baserom.gba", 0x670401, 0x0000043
	.incbin "baserom.gba", 0x670444, 0x0000015
	.incbin "baserom.gba", 0x670459, 0x00003AE
	.incbin "baserom.gba", 0x670807, 0x0000B4F
	.incbin "baserom.gba", 0x671356, 0x0002875
	.incbin "baserom.gba", 0x673BCB, 0x0000036
	.incbin "baserom.gba", 0x673C01, 0x0001495
	.incbin "baserom.gba", 0x675096, 0x000016A
	.incbin "baserom.gba", 0x675200, 0x0003688
	.incbin "baserom.gba", 0x678888, 0x000010F
	.incbin "baserom.gba", 0x678997, 0x0001960
	.incbin "baserom.gba", 0x67A2F7, 0x0002C5C
	.incbin "baserom.gba", 0x67CF53, 0x00030AD
	.incbin "baserom.gba", 0x680000, 0x00000FF
	.incbin "baserom.gba", 0x6800FF, 0x0000768
	.incbin "baserom.gba", 0x680867, 0x0000001
	.incbin "baserom.gba", 0x680868, 0x0004CEE
	.incbin "baserom.gba", 0x685556, 0x00032C9
	.incbin "baserom.gba", 0x68881F, 0x000004B
	.incbin "baserom.gba", 0x68886A, 0x0007796
	.incbin "baserom.gba", 0x690000, 0x0000868
	.incbin "baserom.gba", 0x690868, 0x0000FDA
	.incbin "baserom.gba", 0x691842, 0x0000CF8
	.incbin "baserom.gba", 0x69253A, 0x0000040
	.incbin "baserom.gba", 0x69257A, 0x0000060
	.incbin "baserom.gba", 0x6925DA, 0x0000040
	.incbin "baserom.gba", 0x69261A, 0x0000086

.endif
gUnk_086926A0:: @ 086926A0
	.incbin "baserom.gba", 0x6926A0, 0x000001A
	.incbin "baserom.gba", 0x6926BA, 0x0000090
	.incbin "baserom.gba", 0x69274A, 0x0000009
	.incbin "baserom.gba", 0x692753, 0x0000006
	.incbin "baserom.gba", 0x692759, 0x0000027

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
	.incbin "baserom.gba", 0x692DA0, 0x0000062
	.incbin "baserom.gba", 0x692E02, 0x000007E

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
	.incbin "baserom.gba", 0x6A2EE0, 0x0001423
	.incbin "baserom.gba", 0x6A4303, 0x0000C03
	.incbin "baserom.gba", 0x6A4F06, 0x000281C
	.incbin "baserom.gba", 0x6A7722, 0x0000268
	.incbin "baserom.gba", 0x6A798A, 0x0002DEE
	.incbin "baserom.gba", 0x6AA778, 0x00002F0
	.incbin "baserom.gba", 0x6AAA68, 0x0000478

gUnk_086AAEE0:: @ 086AAEE0
	.incbin "baserom.gba", 0x6AAEE0, 0x0004EC7
	.incbin "baserom.gba", 0x6AFDA7, 0x0000272
	.incbin "baserom.gba", 0x6B0019, 0x000002C
	.incbin "baserom.gba", 0x6B0045, 0x00000C2
	.incbin "baserom.gba", 0x6B0107, 0x0000763
	.incbin "baserom.gba", 0x6B086A, 0x0001070
	.incbin "baserom.gba", 0x6B18DA, 0x000028A
	.incbin "baserom.gba", 0x6B1B64, 0x00003AC
	.incbin "baserom.gba", 0x6B1F10, 0x0000F0D
	.incbin "baserom.gba", 0x6B2E1D, 0x00073E9
	.incbin "baserom.gba", 0x6BA206, 0x0005E00
	.incbin "baserom.gba", 0x6C0006, 0x00046C2
	.incbin "baserom.gba", 0x6C46C8, 0x00025A5
	.incbin "baserom.gba", 0x6C6C6D, 0x000605F
	.incbin "baserom.gba", 0x6CCCCC, 0x0003336
	.incbin "baserom.gba", 0x6D0002, 0x000001C
	.incbin "baserom.gba", 0x6D001E, 0x000013B
	.incbin "baserom.gba", 0x6D0159, 0x0000013
	.incbin "baserom.gba", 0x6D016C, 0x0000300
	.incbin "baserom.gba", 0x6D046C, 0x000039A
	.incbin "baserom.gba", 0x6D0806, 0x000001D
	.incbin "baserom.gba", 0x6D0823, 0x0001CE5
	.incbin "baserom.gba", 0x6D2508, 0x0001C1D
	.incbin "baserom.gba", 0x6D4125, 0x00002E2
	.incbin "baserom.gba", 0x6D4407, 0x0000059

gUnk_086D4460:: @ 086D4460
	.incbin "baserom.gba", 0x6D4460, 0x0000BA4
	.incbin "baserom.gba", 0x6D5004, 0x0008965
	.incbin "baserom.gba", 0x6DD969, 0x0000456
	.incbin "baserom.gba", 0x6DDDBF, 0x0000007
	.incbin "baserom.gba", 0x6DDDC6, 0x000223E
	.incbin "baserom.gba", 0x6E0004, 0x000000C
	.incbin "baserom.gba", 0x6E0010, 0x000005D
	.incbin "baserom.gba", 0x6E006D, 0x0000013
	.incbin "baserom.gba", 0x6E0080, 0x0000080
	.incbin "baserom.gba", 0x6E0100, 0x0000359
	.incbin "baserom.gba", 0x6E0459, 0x0000414
	.incbin "baserom.gba", 0x6E086D, 0x000001D
	.incbin "baserom.gba", 0x6E088A, 0x0001755
	.incbin "baserom.gba", 0x6E1FDF, 0x0000E23
	.incbin "baserom.gba", 0x6E2E02, 0x000166D
	.incbin "baserom.gba", 0x6E446F, 0x0000259
	.incbin "baserom.gba", 0x6E46C8, 0x0003D98

gUnk_086E8460:: @ 086E8460
	.incbin "baserom.gba", 0x6E8460, 0x0007BA1
	.incbin "baserom.gba", 0x6F0001, 0x0000001
	.incbin "baserom.gba", 0x6F0002, 0x000001E
	.incbin "baserom.gba", 0x6F0020, 0x00000F0
	.incbin "baserom.gba", 0x6F0110, 0x000000C
	.incbin "baserom.gba", 0x6F011C, 0x000007E
	.incbin "baserom.gba", 0x6F019A, 0x0000069
	.incbin "baserom.gba", 0x6F0203, 0x00005FD
	.incbin "baserom.gba", 0x6F0800, 0x000001B
	.incbin "baserom.gba", 0x6F081B, 0x00006EB
	.incbin "baserom.gba", 0x6F0F06, 0x00001AF
	.incbin "baserom.gba", 0x6F10B5, 0x000094A
	.incbin "baserom.gba", 0x6F19FF, 0x0000C01
	.incbin "baserom.gba", 0x6F2600, 0x000B121
	.incbin "baserom.gba", 0x6FD721, 0x000238E
	.incbin "baserom.gba", 0x6FFAAF, 0x0000551
	.incbin "baserom.gba", 0x700000, 0x0000001
	.incbin "baserom.gba", 0x700001, 0x0000003
	.incbin "baserom.gba", 0x700004, 0x0000002
	.incbin "baserom.gba", 0x700006, 0x000002A
	.incbin "baserom.gba", 0x700030, 0x000000C
	.incbin "baserom.gba", 0x70003C, 0x00001C4
	.incbin "baserom.gba", 0x700200, 0x0000051
	.incbin "baserom.gba", 0x700251, 0x000019F
	.incbin "baserom.gba", 0x7003F0, 0x0000240
	.incbin "baserom.gba", 0x700630, 0x00002C0
	.incbin "baserom.gba", 0x7008F0, 0x00000D0
	.incbin "baserom.gba", 0x7009C0, 0x0000119
	.incbin "baserom.gba", 0x700AD9, 0x00000C7
	.incbin "baserom.gba", 0x700BA0, 0x0001BD0
	.incbin "baserom.gba", 0x702770, 0x00053AB
	.incbin "baserom.gba", 0x707B1B, 0x00011EB
	.incbin "baserom.gba", 0x708D06, 0x000110B
	.incbin "baserom.gba", 0x709E11, 0x0002FF6
	.incbin "baserom.gba", 0x70CE07, 0x00031F9
	.incbin "baserom.gba", 0x710000, 0x0000020
	.incbin "baserom.gba", 0x710020, 0x000001C
	.incbin "baserom.gba", 0x71003C, 0x0000004
	.incbin "baserom.gba", 0x710040, 0x00000DC
	.incbin "baserom.gba", 0x71011C, 0x0000045
	.incbin "baserom.gba", 0x710161, 0x000029F
	.incbin "baserom.gba", 0x710400, 0x0000091
	.incbin "baserom.gba", 0x710491, 0x000026F
	.incbin "baserom.gba", 0x710700, 0x0000070
	.incbin "baserom.gba", 0x710770, 0x0001811
	.incbin "baserom.gba", 0x711F81, 0x00007F0
	.incbin "baserom.gba", 0x712771, 0x00027A0
	.incbin "baserom.gba", 0x714F11, 0x0003277
	.incbin "baserom.gba", 0x718188, 0x0007E81
	.incbin "baserom.gba", 0x720009, 0x00000FE
	.incbin "baserom.gba", 0x720107, 0x000016A
	.incbin "baserom.gba", 0x720271, 0x000048F
	.incbin "baserom.gba", 0x720700, 0x000014E
	.incbin "baserom.gba", 0x72084E, 0x000048C
	.incbin "baserom.gba", 0x720CDA, 0x000154B
	.incbin "baserom.gba", 0x722225, 0x000DDE2
	.incbin "baserom.gba", 0x730007, 0x00001E9
	.incbin "baserom.gba", 0x7301F0, 0x0000520
	.incbin "baserom.gba", 0x730710, 0x0000063
	.incbin "baserom.gba", 0x730773, 0x00020A0
	.incbin "baserom.gba", 0x732813, 0x00006C1
	.incbin "baserom.gba", 0x732ED4, 0x00021B6
	.incbin "baserom.gba", 0x73508A, 0x000AF86
	.incbin "baserom.gba", 0x740010, 0x0000760
	.incbin "baserom.gba", 0x740770, 0x0000200
	.incbin "baserom.gba", 0x740970, 0x0000326
	.incbin "baserom.gba", 0x740C96, 0x0003695
	.incbin "baserom.gba", 0x74432B, 0x0000118
	.incbin "baserom.gba", 0x744443, 0x00001C0
	.incbin "baserom.gba", 0x744603, 0x00065CA
	.incbin "baserom.gba", 0x74ABCD, 0x000543B
	.incbin "baserom.gba", 0x750008, 0x00002F8
	.incbin "baserom.gba", 0x750300, 0x0000074
	.incbin "baserom.gba", 0x750374, 0x000048F
	.incbin "baserom.gba", 0x750803, 0x0000703
	.incbin "baserom.gba", 0x750F06, 0x000344E
	.incbin "baserom.gba", 0x754354, 0x0000756
	.incbin "baserom.gba", 0x754AAA, 0x000C45C
	.incbin "baserom.gba", 0x760F06, 0x000120B
	.incbin "baserom.gba", 0x762111, 0x00015FB
	.incbin "baserom.gba", 0x76370C, 0x00009C4
	.incbin "baserom.gba", 0x7640D0, 0x0000496
	.incbin "baserom.gba", 0x764566, 0x0000CC5
	.incbin "baserom.gba", 0x76522B, 0x000032B
	.incbin "baserom.gba", 0x765556, 0x0001110
	.incbin "baserom.gba", 0x766666, 0x0000020
	.incbin "baserom.gba", 0x766686, 0x0000021
	.incbin "baserom.gba", 0x7666A7, 0x00008FA
	.incbin "baserom.gba", 0x766FA1, 0x0005D23
	.incbin "baserom.gba", 0x76CCC4, 0x000110B
	.incbin "baserom.gba", 0x76DDCF, 0x0002242
	.incbin "baserom.gba", 0x770011, 0x00000A8
	.incbin "baserom.gba", 0x7700B9, 0x0000287
	.incbin "baserom.gba", 0x770340, 0x00000E2
	.incbin "baserom.gba", 0x770422, 0x0000154
	.incbin "baserom.gba", 0x770576, 0x0000300
	.incbin "baserom.gba", 0x770876, 0x0000791
	.incbin "baserom.gba", 0x771007, 0x000006E
	.incbin "baserom.gba", 0x771075, 0x0000B8B
	.incbin "baserom.gba", 0x771C00, 0x0005775
	.incbin "baserom.gba", 0x777375, 0x00003F0
	.incbin "baserom.gba", 0x777765, 0x0000011
	.incbin "baserom.gba", 0x777776, 0x0000012
	.incbin "baserom.gba", 0x777788, 0x0000877
	.incbin "baserom.gba", 0x777FFF, 0x0000067
	.incbin "baserom.gba", 0x778066, 0x0000703
	.incbin "baserom.gba", 0x778769, 0x0000E2C
	.incbin "baserom.gba", 0x779595, 0x000148E
	.incbin "baserom.gba", 0x77AA23, 0x0000017
	.incbin "baserom.gba", 0x77AA3A, 0x0000190
	.incbin "baserom.gba", 0x77ABCA, 0x0000537
	.incbin "baserom.gba", 0x77B101, 0x000290E
	.incbin "baserom.gba", 0x77DA0F, 0x0002649
	.incbin "baserom.gba", 0x780058, 0x00000E8
	.incbin "baserom.gba", 0x780140, 0x0000836
	.incbin "baserom.gba", 0x780976, 0x000018A
	.incbin "baserom.gba", 0x780B00, 0x0006410
	.incbin "baserom.gba", 0x786F10, 0x0000919
	.incbin "baserom.gba", 0x787829, 0x000084E
	.incbin "baserom.gba", 0x788077, 0x00001CF
	.incbin "baserom.gba", 0x788246, 0x0001375
	.incbin "baserom.gba", 0x7895BB, 0x0000933
	.incbin "baserom.gba", 0x789EEE, 0x000610A
	.incbin "baserom.gba", 0x78FFF8, 0x0000008
	.incbin "baserom.gba", 0x790000, 0x0000001
	.incbin "baserom.gba", 0x790001, 0x0000001
	.incbin "baserom.gba", 0x790002, 0x0000001
	.incbin "baserom.gba", 0x790003, 0x0000001
	.incbin "baserom.gba", 0x790004, 0x0000002
	.incbin "baserom.gba", 0x790006, 0x0000001
	.incbin "baserom.gba", 0x790007, 0x0000001
	.incbin "baserom.gba", 0x790008, 0x0000002
	.incbin "baserom.gba", 0x79000A, 0x0000001
	.incbin "baserom.gba", 0x79000B, 0x0000004
	.incbin "baserom.gba", 0x79000F, 0x0000001
	.incbin "baserom.gba", 0x790010, 0x0000003
	.incbin "baserom.gba", 0x790013, 0x0000007
	.incbin "baserom.gba", 0x79001A, 0x0000004
	.incbin "baserom.gba", 0x79001E, 0x0000002
	.incbin "baserom.gba", 0x790020, 0x000000C
	.incbin "baserom.gba", 0x79002C, 0x0000010
	.incbin "baserom.gba", 0x79003C, 0x0000004
	.incbin "baserom.gba", 0x790040, 0x0000008
	.incbin "baserom.gba", 0x790048, 0x000000C
	.incbin "baserom.gba", 0x790054, 0x0000004
	.incbin "baserom.gba", 0x790058, 0x0000002
	.incbin "baserom.gba", 0x79005A, 0x000000E
	.incbin "baserom.gba", 0x790068, 0x0000004
	.incbin "baserom.gba", 0x79006C, 0x000000C
	.incbin "baserom.gba", 0x790078, 0x0000008
	.incbin "baserom.gba", 0x790080, 0x0000002
	.incbin "baserom.gba", 0x790082, 0x000000A
	.incbin "baserom.gba", 0x79008C, 0x0000009
	.incbin "baserom.gba", 0x790095, 0x0000001
	.incbin "baserom.gba", 0x790096, 0x0000022
	.incbin "baserom.gba", 0x7900B8, 0x0000018
	.incbin "baserom.gba", 0x7900D0, 0x0000019
	.incbin "baserom.gba", 0x7900E9, 0x0000007
	.incbin "baserom.gba", 0x7900F0, 0x0000001
	.incbin "baserom.gba", 0x7900F1, 0x000000F
	.incbin "baserom.gba", 0x790100, 0x0000007
	.incbin "baserom.gba", 0x790107, 0x000000A
	.incbin "baserom.gba", 0x790111, 0x000002F
	.incbin "baserom.gba", 0x790140, 0x0000040
	.incbin "baserom.gba", 0x790180, 0x0000008
	.incbin "baserom.gba", 0x790188, 0x0000008
	.incbin "baserom.gba", 0x790190, 0x0000039
	.incbin "baserom.gba", 0x7901C9, 0x000002A
	.incbin "baserom.gba", 0x7901F3, 0x000000D
	.incbin "baserom.gba", 0x790200, 0x0000201
	.incbin "baserom.gba", 0x790401, 0x0000001
	.incbin "baserom.gba", 0x790402, 0x0000041
	.incbin "baserom.gba", 0x790443, 0x0000001
	.incbin "baserom.gba", 0x790444, 0x0000006
	.incbin "baserom.gba", 0x79044A, 0x0000009
	.incbin "baserom.gba", 0x790453, 0x0000006
	.incbin "baserom.gba", 0x790459, 0x000000A
	.incbin "baserom.gba", 0x790463, 0x0000001
	.incbin "baserom.gba", 0x790464, 0x0000024
	.incbin "baserom.gba", 0x790488, 0x0000378
	.incbin "baserom.gba", 0x790800, 0x0000001
	.incbin "baserom.gba", 0x790801, 0x0000004
	.incbin "baserom.gba", 0x790805, 0x0000001
	.incbin "baserom.gba", 0x790806, 0x0000001
	.incbin "baserom.gba", 0x790807, 0x0000003
	.incbin "baserom.gba", 0x79080A, 0x0000003
	.incbin "baserom.gba", 0x79080D, 0x0000002
	.incbin "baserom.gba", 0x79080F, 0x0000ABA
	.incbin "baserom.gba", 0x7912C9, 0x0000957
	.incbin "baserom.gba", 0x791C20, 0x00023E0
	.incbin "baserom.gba", 0x794000, 0x0000107
	.incbin "baserom.gba", 0x794107, 0x0000FF9
	.incbin "baserom.gba", 0x795100, 0x0001000
	.incbin "baserom.gba", 0x796100, 0x0001879
	.incbin "baserom.gba", 0x797979, 0x0000687
	.incbin "baserom.gba", 0x798000, 0x0001992
	.incbin "baserom.gba", 0x799992, 0x000008E
	.incbin "baserom.gba", 0x799A20, 0x00064DE
	.incbin "baserom.gba", 0x79FEFE, 0x00000BA
	.incbin "baserom.gba", 0x79FFB8, 0x0000004
	.incbin "baserom.gba", 0x79FFBC, 0x0000010
	.incbin "baserom.gba", 0x79FFCC, 0x0000004
	.incbin "baserom.gba", 0x79FFD0, 0x0000010
	.incbin "baserom.gba", 0x79FFE0, 0x0000006
	.incbin "baserom.gba", 0x79FFE6, 0x0000002
	.incbin "baserom.gba", 0x79FFE8, 0x0000008
	.incbin "baserom.gba", 0x79FFF0, 0x0000008
	.incbin "baserom.gba", 0x79FFF8, 0x0000002
	.incbin "baserom.gba", 0x79FFFA, 0x0000005
	.incbin "baserom.gba", 0x79FFFF, 0x000007A
	.incbin "baserom.gba", 0x7A0079, 0x0001650
	.incbin "baserom.gba", 0x7A16C9, 0x000A940
	.incbin "baserom.gba", 0x7AC009, 0x0000DD4
	.incbin "baserom.gba", 0x7ACDDD, 0x0003223
	.incbin "baserom.gba", 0x7B0000, 0x0000002
	.incbin "baserom.gba", 0x7B0002, 0x0000002
	.incbin "baserom.gba", 0x7B0004, 0x0000001
	.incbin "baserom.gba", 0x7B0005, 0x0000002
	.incbin "baserom.gba", 0x7B0007, 0x0000001
	.incbin "baserom.gba", 0x7B0008, 0x0000001
	.incbin "baserom.gba", 0x7B0009, 0x0000006
	.incbin "baserom.gba", 0x7B000F, 0x0000001
	.incbin "baserom.gba", 0x7B0010, 0x0000002
	.incbin "baserom.gba", 0x7B0012, 0x0000002
	.incbin "baserom.gba", 0x7B0014, 0x0000002
	.incbin "baserom.gba", 0x7B0016, 0x0000008
	.incbin "baserom.gba", 0x7B001E, 0x000000A
	.incbin "baserom.gba", 0x7B0028, 0x0000008
	.incbin "baserom.gba", 0x7B0030, 0x000000C
	.incbin "baserom.gba", 0x7B003C, 0x0000038
	.incbin "baserom.gba", 0x7B0074, 0x0000004
	.incbin "baserom.gba", 0x7B0078, 0x000001E
	.incbin "baserom.gba", 0x7B0096, 0x0000022
	.incbin "baserom.gba", 0x7B00B8, 0x0000040
	.incbin "baserom.gba", 0x7B00F8, 0x0000019
	.incbin "baserom.gba", 0x7B0111, 0x000002B
	.incbin "baserom.gba", 0x7B013C, 0x0000004
	.incbin "baserom.gba", 0x7B0140, 0x0000087
	.incbin "baserom.gba", 0x7B01C7, 0x00000B3
	.incbin "baserom.gba", 0x7B027A, 0x0000187
	.incbin "baserom.gba", 0x7B0401, 0x0000001
	.incbin "baserom.gba", 0x7B0402, 0x0000035
	.incbin "baserom.gba", 0x7B0437, 0x0000008
	.incbin "baserom.gba", 0x7B043F, 0x000003F
	.incbin "baserom.gba", 0x7B047E, 0x0000170
	.incbin "baserom.gba", 0x7B05EE, 0x0000212
	.incbin "baserom.gba", 0x7B0800, 0x0000001
	.incbin "baserom.gba", 0x7B0801, 0x0000003
	.incbin "baserom.gba", 0x7B0804, 0x0000002
	.incbin "baserom.gba", 0x7B0806, 0x0000001
	.incbin "baserom.gba", 0x7B0807, 0x0000002
	.incbin "baserom.gba", 0x7B0809, 0x000002A
	.incbin "baserom.gba", 0x7B0833, 0x0000047
	.incbin "baserom.gba", 0x7B087A, 0x0000ABE
	.incbin "baserom.gba", 0x7B1338, 0x0004EC5
	.incbin "baserom.gba", 0x7B61FD, 0x0006BE1
	.incbin "baserom.gba", 0x7BCDDE, 0x00020FF
	.incbin "baserom.gba", 0x7BEEDD, 0x0001123
	.incbin "baserom.gba", 0x7C0000, 0x0000004
	.incbin "baserom.gba", 0x7C0004, 0x0000038
	.incbin "baserom.gba", 0x7C003C, 0x0000104
	.incbin "baserom.gba", 0x7C0140, 0x00002C1
	.incbin "baserom.gba", 0x7C0401, 0x0000036
	.incbin "baserom.gba", 0x7C0437, 0x000000D
	.incbin "baserom.gba", 0x7C0444, 0x0000005
	.incbin "baserom.gba", 0x7C0449, 0x0000010
	.incbin "baserom.gba", 0x7C0459, 0x0000025
	.incbin "baserom.gba", 0x7C047E, 0x0000292
	.incbin "baserom.gba", 0x7C0710, 0x0000024
	.incbin "baserom.gba", 0x7C0734, 0x00000D1
	.incbin "baserom.gba", 0x7C0805, 0x0000076
	.incbin "baserom.gba", 0x7C087B, 0x000F74F
	.incbin "baserom.gba", 0x7CFFCA, 0x0000030
	.incbin "baserom.gba", 0x7CFFFA, 0x0006683
	.incbin "baserom.gba", 0x7D667D, 0x0002614
	.incbin "baserom.gba", 0x7D8C91, 0x000739D
	.incbin "baserom.gba", 0x7E002E, 0x00006D2
	.incbin "baserom.gba", 0x7E0700, 0x0000598
	.incbin "baserom.gba", 0x7E0C98, 0x000095B
	.incbin "baserom.gba", 0x7E15F3, 0x000A6BF
	.incbin "baserom.gba", 0x7EBCB2, 0x000323C
	.incbin "baserom.gba", 0x7EEEEE, 0x000112A
	.incbin "baserom.gba", 0x7F0018, 0x0000064
	.incbin "baserom.gba", 0x7F007C, 0x0000260
	.incbin "baserom.gba", 0x7F02DC, 0x0000824
	.incbin "baserom.gba", 0x7F0B00, 0x0000422
	.incbin "baserom.gba", 0x7F0F22, 0x0000067
	.incbin "baserom.gba", 0x7F0F89, 0x00000F6
	.incbin "baserom.gba", 0x7F107F, 0x0000020
	.incbin "baserom.gba", 0x7F109F, 0x0000003
	.incbin "baserom.gba", 0x7F10A2, 0x000053F
	.incbin "baserom.gba", 0x7F15E1, 0x0001F74
	.incbin "baserom.gba", 0x7F3555, 0x0002B9E
	.incbin "baserom.gba", 0x7F60F3, 0x0002643
	.incbin "baserom.gba", 0x7F8736, 0x0003695
	.incbin "baserom.gba", 0x7FBDCB, 0x0000001
	.incbin "baserom.gba", 0x7FBDCC, 0x000023A
	.incbin "baserom.gba", 0x7FC006, 0x000310B
	.incbin "baserom.gba", 0x7FF111, 0x000011B
	.incbin "baserom.gba", 0x7FF22C, 0x000066B
	.incbin "baserom.gba", 0x7FF897, 0x0000769
	.incbin "baserom.gba", 0x800000, 0x0000002
	.incbin "baserom.gba", 0x800002, 0x0000002
	.incbin "baserom.gba", 0x800004, 0x0000002
	.incbin "baserom.gba", 0x800006, 0x0000001
	.incbin "baserom.gba", 0x800007, 0x0000001
	.incbin "baserom.gba", 0x800008, 0x0000001
	.incbin "baserom.gba", 0x800009, 0x0000001
	.incbin "baserom.gba", 0x80000A, 0x0000039
	.incbin "baserom.gba", 0x800043, 0x000007D
	.incbin "baserom.gba", 0x8000C0, 0x0000047
	.incbin "baserom.gba", 0x800107, 0x0000009
	.incbin "baserom.gba", 0x800110, 0x0000324
	.incbin "baserom.gba", 0x800434, 0x000000F
	.incbin "baserom.gba", 0x800443, 0x00001FD
	.incbin "baserom.gba", 0x800640, 0x00002B0
	.incbin "baserom.gba", 0x8008F0, 0x00000F6
	.incbin "baserom.gba", 0x8009E6, 0x0000242
	.incbin "baserom.gba", 0x800C28, 0x0000FD8
	.incbin "baserom.gba", 0x801C00, 0x0000B80
	.incbin "baserom.gba", 0x802780, 0x0000EE3
	.incbin "baserom.gba", 0x803663, 0x00009A1
	.incbin "baserom.gba", 0x804004, 0x0000114
	.incbin "baserom.gba", 0x804118, 0x000001A
	.incbin "baserom.gba", 0x804132, 0x0002501
	.incbin "baserom.gba", 0x806633, 0x000101B
	.incbin "baserom.gba", 0x80764E, 0x00004B9
	.incbin "baserom.gba", 0x807B07, 0x0000C7A
	.incbin "baserom.gba", 0x808781, 0x000007F
	.incbin "baserom.gba", 0x808800, 0x0002C08
	.incbin "baserom.gba", 0x80B408, 0x0000BFA
	.incbin "baserom.gba", 0x80C002, 0x00013EF
	.incbin "baserom.gba", 0x80D3F1, 0x0000986
	.incbin "baserom.gba", 0x80DD77, 0x0000B90
	.incbin "baserom.gba", 0x80E907, 0x00000F3
	.incbin "baserom.gba", 0x80E9FA, 0x000000E
	.incbin "baserom.gba", 0x80EA08, 0x00000F8
	.incbin "baserom.gba", 0x80EB00, 0x0000008
	.incbin "baserom.gba", 0x80EB08, 0x0000001
	.incbin "baserom.gba", 0x80EB09, 0x0000001
	.incbin "baserom.gba", 0x80EB0A, 0x00000E1
	.incbin "baserom.gba", 0x80EBEB, 0x0000005
	.incbin "baserom.gba", 0x80EBF0, 0x0000018
	.incbin "baserom.gba", 0x80EC08, 0x0000003
	.incbin "baserom.gba", 0x80EC0B, 0x00000E5
	.incbin "baserom.gba", 0x80ECF0, 0x000021A
	.incbin "baserom.gba", 0x80EF0A, 0x00000E7
	.incbin "baserom.gba", 0x80EFF1, 0x000000B
	.incbin "baserom.gba", 0x80EFFC, 0x0000110
	.incbin "baserom.gba", 0x80F10C, 0x00001F8
	.incbin "baserom.gba", 0x80F304, 0x00001F8
	.incbin "baserom.gba", 0x80F4FC, 0x000000B
	.incbin "baserom.gba", 0x80F507, 0x00003F1
	.incbin "baserom.gba", 0x80F8F8, 0x0000304
	.incbin "baserom.gba", 0x80FBFC, 0x0000584
	.incbin "baserom.gba", 0x810180, 0x0000601
	.incbin "baserom.gba", 0x810781, 0x000017E
	.incbin "baserom.gba", 0x8108FF, 0x0000E82
	.incbin "baserom.gba", 0x811781, 0x000099F
	.incbin "baserom.gba", 0x812120, 0x0000C61
	.incbin "baserom.gba", 0x812D81, 0x0001000
	.incbin "baserom.gba", 0x813D81, 0x000027F
	.incbin "baserom.gba", 0x814000, 0x0000105
	.incbin "baserom.gba", 0x814105, 0x000033F
	.incbin "baserom.gba", 0x814444, 0x00027BB
	.incbin "baserom.gba", 0x816BFF, 0x0001569
	.incbin "baserom.gba", 0x818168, 0x00006CC
	.incbin "baserom.gba", 0x818834, 0x00053A0
	.incbin "baserom.gba", 0x81DBD4, 0x000092C
	.incbin "baserom.gba", 0x81E500, 0x0000481
	.incbin "baserom.gba", 0x81E981, 0x0000373
	.incbin "baserom.gba", 0x81ECF4, 0x000008C
	.incbin "baserom.gba", 0x81ED80, 0x0000D75
	.incbin "baserom.gba", 0x81FAF5, 0x0000402
	.incbin "baserom.gba", 0x81FEF7, 0x0000109
	.incbin "baserom.gba", 0x820000, 0x0000008
	.incbin "baserom.gba", 0x820008, 0x0000016
	.incbin "baserom.gba", 0x82001E, 0x0000081
	.incbin "baserom.gba", 0x82009F, 0x0000001
	.incbin "baserom.gba", 0x8200A0, 0x0000013
	.incbin "baserom.gba", 0x8200B3, 0x000025D
	.incbin "baserom.gba", 0x820310, 0x0000149
	.incbin "baserom.gba", 0x820459, 0x00002AC
	.incbin "baserom.gba", 0x820705, 0x0000100
	.incbin "baserom.gba", 0x820805, 0x0000001
	.incbin "baserom.gba", 0x820806, 0x000054C
	.incbin "baserom.gba", 0x820D52, 0x00012AE
	.incbin "baserom.gba", 0x822000, 0x0000782
	.incbin "baserom.gba", 0x822782, 0x0000400
	.incbin "baserom.gba", 0x822B82, 0x00001A9
	.incbin "baserom.gba", 0x822D2B, 0x0000556
	.incbin "baserom.gba", 0x823281, 0x0000D85
	.incbin "baserom.gba", 0x824006, 0x0000550
	.incbin "baserom.gba", 0x824556, 0x0000ACD
	.incbin "baserom.gba", 0x825023, 0x0000C52
	.incbin "baserom.gba", 0x825C75, 0x000250C
	.incbin "baserom.gba", 0x828181, 0x00071B2
	.incbin "baserom.gba", 0x82F333, 0x0000C8F
	.incbin "baserom.gba", 0x82FFC2, 0x000003E
	.incbin "baserom.gba", 0x830000, 0x0000004
	.incbin "baserom.gba", 0x830004, 0x0000003
	.incbin "baserom.gba", 0x830007, 0x0000001
	.incbin "baserom.gba", 0x830008, 0x0000008
	.incbin "baserom.gba", 0x830010, 0x0000432
	.incbin "baserom.gba", 0x830442, 0x0002B41
	.incbin "baserom.gba", 0x832F83, 0x0001574
	.incbin "baserom.gba", 0x8344F7, 0x000006F
	.incbin "baserom.gba", 0x834566, 0x0006DAC
	.incbin "baserom.gba", 0x83B312, 0x00047EE

@ TODO start of figurine data
gUnk_0883FB00:: @ 0883FB00
	.incbin "baserom.gba", 0x83FB00, 0x0000509
	.incbin "baserom.gba", 0x840009, 0x0000011
	.incbin "baserom.gba", 0x84001A, 0x0000066

gUnk_08840080:: @ 08840080
	.incbin "baserom.gba", 0x840080, 0x00001E9
	.incbin "baserom.gba", 0x840269, 0x0000128
	.incbin "baserom.gba", 0x840391, 0x00000B2
	.incbin "baserom.gba", 0x840443, 0x000021D

gUnk_08840660:: @ 08840660
	.incbin "baserom.gba", 0x840660, 0x0000203
	.incbin "baserom.gba", 0x840863, 0x0000129
	.incbin "baserom.gba", 0x84098C, 0x0000154

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
	.incbin "baserom.gba", 0x841FC0, 0x000026C
	.incbin "baserom.gba", 0x84222C, 0x00000B4

gUnk_088422E0:: @ 088422E0
	.incbin "baserom.gba", 0x8422E0, 0x0000DA0

gUnk_08843080:: @ 08843080
	.incbin "baserom.gba", 0x843080, 0x00002B3
	.incbin "baserom.gba", 0x843333, 0x00001AF
	.incbin "baserom.gba", 0x8434E2, 0x00009FE

gUnk_08843EE0:: @ 08843EE0
	.incbin "baserom.gba", 0x843EE0, 0x0000375
	.incbin "baserom.gba", 0x844255, 0x00001F0
	.incbin "baserom.gba", 0x844445, 0x000097B

gUnk_08844DC0:: @ 08844DC0
	.incbin "baserom.gba", 0x844DC0, 0x0000795
	.incbin "baserom.gba", 0x845555, 0x000064B

gUnk_08845BA0:: @ 08845BA0
	.incbin "baserom.gba", 0x845BA0, 0x0001A00

gUnk_088475A0:: @ 088475A0
	.incbin "baserom.gba", 0x8475A0, 0x00002E7
	.incbin "baserom.gba", 0x847887, 0x00007FE
	.incbin "baserom.gba", 0x848085, 0x0000EDB

gUnk_08848F60:: @ 08848F60
	.incbin "baserom.gba", 0x848F60, 0x00010C0

gUnk_0884A020:: @ 0884A020
	.incbin "baserom.gba", 0x84A020, 0x00003E0

gUnk_0884A400:: @ 0884A400
	.incbin "baserom.gba", 0x84A400, 0x00003A0

gUnk_0884A7A0:: @ 0884A7A0
	.incbin "baserom.gba", 0x84A7A0, 0x0000360

gUnk_0884AB00:: @ 0884AB00
	.incbin "baserom.gba", 0x84AB00, 0x00000CD
	.incbin "baserom.gba", 0x84ABCD, 0x0000AB3

gUnk_0884B680:: @ 0884B680
	.incbin "baserom.gba", 0x84B680, 0x00006B2
	.incbin "baserom.gba", 0x84BD32, 0x000044E

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
	.incbin "baserom.gba", 0x84DF00, 0x00006F0
	.incbin "baserom.gba", 0x84E5F0, 0x00000F0

gUnk_0884E6E0:: @ 0884E6E0
	.incbin "baserom.gba", 0x84E6E0, 0x0000428
	.incbin "baserom.gba", 0x84EB08, 0x0000100
	.incbin "baserom.gba", 0x84EC08, 0x0000400
	.incbin "baserom.gba", 0x84F008, 0x00000EC
	.incbin "baserom.gba", 0x84F0F4, 0x0000100
	.incbin "baserom.gba", 0x84F1F4, 0x0000E0D
	.incbin "baserom.gba", 0x850001, 0x0000007
	.incbin "baserom.gba", 0x850008, 0x000047D
	.incbin "baserom.gba", 0x850485, 0x00003FF
	.incbin "baserom.gba", 0x850884, 0x0000101
	.incbin "baserom.gba", 0x850985, 0x000075B

gUnk_088510E0:: @ 088510E0
	.incbin "baserom.gba", 0x8510E0, 0x00001B1
	.incbin "baserom.gba", 0x851291, 0x00015F4
	.incbin "baserom.gba", 0x852885, 0x0000100
	.incbin "baserom.gba", 0x852985, 0x0001073
	.incbin "baserom.gba", 0x8539F8, 0x00000E8

gUnk_08853AE0:: @ 08853AE0
	.incbin "baserom.gba", 0x853AE0, 0x0000FCA
	.incbin "baserom.gba", 0x854AAA, 0x0000B10
	.incbin "baserom.gba", 0x8555BA, 0x0000F26

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
	.incbin "baserom.gba", 0x857D00, 0x000030A
	.incbin "baserom.gba", 0x85800A, 0x0000176

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
	.incbin "baserom.gba", 0x85CC20, 0x0001BF3
	.incbin "baserom.gba", 0x85E813, 0x00000E5
	.incbin "baserom.gba", 0x85E8F8, 0x00013A8

gUnk_0885FCA0:: @ 0885FCA0
	.incbin "baserom.gba", 0x85FCA0, 0x0000362
	.incbin "baserom.gba", 0x860002, 0x00000CB
	.incbin "baserom.gba", 0x8600CD, 0x0000075
	.incbin "baserom.gba", 0x860142, 0x00007C1
	.incbin "baserom.gba", 0x860903, 0x0000383
	.incbin "baserom.gba", 0x860C86, 0x000028A
	.incbin "baserom.gba", 0x860F10, 0x0001770

gUnk_08862680:: @ 08862680
	.incbin "baserom.gba", 0x862680, 0x0000413
	.incbin "baserom.gba", 0x862A93, 0x0001974
	.incbin "baserom.gba", 0x864407, 0x0001C79

gUnk_08866080:: @ 08866080
	.incbin "baserom.gba", 0x866080, 0x00006F7
	.incbin "baserom.gba", 0x866777, 0x0000BDE
	.incbin "baserom.gba", 0x867355, 0x0001498
	.incbin "baserom.gba", 0x8687ED, 0x0000253

gUnk_08868A40:: @ 08868A40
	.incbin "baserom.gba", 0x868A40, 0x0001F58
	.incbin "baserom.gba", 0x86A998, 0x0000156
	.incbin "baserom.gba", 0x86AAEE, 0x0000367
	.incbin "baserom.gba", 0x86AE55, 0x0000009
	.incbin "baserom.gba", 0x86AE5E, 0x00010C2

gUnk_0886BF20:: @ 0886BF20
	.incbin "baserom.gba", 0x86BF20, 0x0003900

gUnk_0886F820:: @ 0886F820
	.incbin "baserom.gba", 0x86F820, 0x00007E7
	.incbin "baserom.gba", 0x870007, 0x000000A
	.incbin "baserom.gba", 0x870011, 0x000005A
	.incbin "baserom.gba", 0x87006B, 0x000001B
	.incbin "baserom.gba", 0x870086, 0x00001E9
	.incbin "baserom.gba", 0x87026F, 0x0002691

gUnk_08872900:: @ 08872900
	.incbin "baserom.gba", 0x872900, 0x0002C80

gUnk_08875580:: @ 08875580
	.incbin "baserom.gba", 0x875580, 0x0001A83
	.incbin "baserom.gba", 0x877003, 0x0000663
	.incbin "baserom.gba", 0x877666, 0x0000107
	.incbin "baserom.gba", 0x87776D, 0x0000072
	.incbin "baserom.gba", 0x8777DF, 0x0000011
	.incbin "baserom.gba", 0x8777F0, 0x00010BF
	.incbin "baserom.gba", 0x8788AF, 0x00001D1

gUnk_08878A80:: @ 08878A80
	.incbin "baserom.gba", 0x878A80, 0x000142B
	.incbin "baserom.gba", 0x879EAB, 0x0001355

gUnk_0887B200:: @ 0887B200
	.incbin "baserom.gba", 0x87B200, 0x0002EA0

gUnk_0887E0A0:: @ 0887E0A0
	.incbin "baserom.gba", 0x87E0A0, 0x0000668
	.incbin "baserom.gba", 0x87E708, 0x00018F8
	.incbin "baserom.gba", 0x880000, 0x00000AA
	.incbin "baserom.gba", 0x8800AA, 0x0000056
	.incbin "baserom.gba", 0x880100, 0x0000087
	.incbin "baserom.gba", 0x880187, 0x000028D
	.incbin "baserom.gba", 0x880414, 0x00003F4
	.incbin "baserom.gba", 0x880808, 0x000098B
	.incbin "baserom.gba", 0x881193, 0x000022D

gUnk_088813C0:: @ 088813C0
	.incbin "baserom.gba", 0x8813C0, 0x000050C
	.incbin "baserom.gba", 0x8818CC, 0x0000975
	.incbin "baserom.gba", 0x882241, 0x0000747
	.incbin "baserom.gba", 0x882988, 0x0000A13
	.incbin "baserom.gba", 0x88339B, 0x0000B05

gUnk_08883EA0:: @ 08883EA0
	.incbin "baserom.gba", 0x883EA0, 0x0001F00

gUnk_08885DA0:: @ 08885DA0
	.incbin "baserom.gba", 0x885DA0, 0x00019D7
	.incbin "baserom.gba", 0x887777, 0x0000889
	.incbin "baserom.gba", 0x888000, 0x0000188
	.incbin "baserom.gba", 0x888188, 0x0000414
	.incbin "baserom.gba", 0x88859C, 0x00001CA
	.incbin "baserom.gba", 0x888766, 0x000000A
	.incbin "baserom.gba", 0x888770, 0x0000090
	.incbin "baserom.gba", 0x888800, 0x0000080
	.incbin "baserom.gba", 0x888880, 0x0000008
	.incbin "baserom.gba", 0x888888, 0x0000001
	.incbin "baserom.gba", 0x888889, 0x0000010
	.incbin "baserom.gba", 0x888899, 0x00000EF
	.incbin "baserom.gba", 0x888988, 0x0000012
	.incbin "baserom.gba", 0x88899A, 0x0000110
	.incbin "baserom.gba", 0x888AAA, 0x000043B
	.incbin "baserom.gba", 0x888EE5, 0x0000093
	.incbin "baserom.gba", 0x888F78, 0x0000912
	.incbin "baserom.gba", 0x88988A, 0x0000076
	.incbin "baserom.gba", 0x889900, 0x000008E
	.incbin "baserom.gba", 0x88998E, 0x000000B
	.incbin "baserom.gba", 0x889999, 0x0000011
	.incbin "baserom.gba", 0x8899AA, 0x00003F6

gUnk_08889DA0:: @ 08889DA0
	.incbin "baserom.gba", 0x889DA0, 0x000014E
	.incbin "baserom.gba", 0x889EEE, 0x0000BAC
	.incbin "baserom.gba", 0x88AA9A, 0x0000066
	.incbin "baserom.gba", 0x88AB00, 0x0000311
	.incbin "baserom.gba", 0x88AE11, 0x00001F7
	.incbin "baserom.gba", 0x88B008, 0x0002D18

gUnk_0888DD20:: @ 0888DD20
	.incbin "baserom.gba", 0x88DD20, 0x0000140
	.incbin "baserom.gba", 0x88DE60, 0x0001B00

gUnk_0888F960:: @ 0888F960
	.incbin "baserom.gba", 0x88F960, 0x00006A0
	.incbin "baserom.gba", 0x890000, 0x000003C
	.incbin "baserom.gba", 0x89003C, 0x0000014
	.incbin "baserom.gba", 0x890050, 0x0000028
	.incbin "baserom.gba", 0x890078, 0x0000008
	.incbin "baserom.gba", 0x890080, 0x0000034
	.incbin "baserom.gba", 0x8900B4, 0x00000B4
	.incbin "baserom.gba", 0x890168, 0x0000058
	.incbin "baserom.gba", 0x8901C0, 0x0000098
	.incbin "baserom.gba", 0x890258, 0x00001A9
	.incbin "baserom.gba", 0x890401, 0x0000048
	.incbin "baserom.gba", 0x890449, 0x0000010
	.incbin "baserom.gba", 0x890459, 0x000001D
	.incbin "baserom.gba", 0x890476, 0x0000012
	.incbin "baserom.gba", 0x890488, 0x0000378
	.incbin "baserom.gba", 0x890800, 0x0000006
	.incbin "baserom.gba", 0x890806, 0x0000001
	.incbin "baserom.gba", 0x890807, 0x00000C5
	.incbin "baserom.gba", 0x8908CC, 0x000063A
	.incbin "baserom.gba", 0x890F06, 0x00000BA

gUnk_08890FC0:: @ 08890FC0
	.incbin "baserom.gba", 0x890FC0, 0x000116E
	.incbin "baserom.gba", 0x89212E, 0x0000B12

gUnk_08892C40:: @ 08892C40
	.incbin "baserom.gba", 0x892C40, 0x0002300

gUnk_08894F40:: @ 08894F40
	.incbin "baserom.gba", 0x894F40, 0x0001749
	.incbin "baserom.gba", 0x896689, 0x0000D37

gUnk_088973C0:: @ 088973C0
	.incbin "baserom.gba", 0x8973C0, 0x0000440

gUnk_08897800:: @ 08897800
	.incbin "baserom.gba", 0x897800, 0x00008C0

gUnk_088980C0:: @ 088980C0
	.incbin "baserom.gba", 0x8980C0, 0x0000495
	.incbin "baserom.gba", 0x898555, 0x0000445
	.incbin "baserom.gba", 0x89899A, 0x0000011
	.incbin "baserom.gba", 0x8989AB, 0x0000515

gUnk_08898EC0:: @ 08898EC0
	.incbin "baserom.gba", 0x898EC0, 0x00000B7
	.incbin "baserom.gba", 0x898F77, 0x00002C9

gUnk_08899240:: @ 08899240
	.incbin "baserom.gba", 0x899240, 0x00004C0
	.incbin "baserom.gba", 0x899700, 0x0000298
	.incbin "baserom.gba", 0x899998, 0x0000001
	.incbin "baserom.gba", 0x899999, 0x000004B
	.incbin "baserom.gba", 0x8999E4, 0x0000093
	.incbin "baserom.gba", 0x899A77, 0x0000033
	.incbin "baserom.gba", 0x899AAA, 0x00000B6

gUnk_08899B60:: @ 08899B60
	.incbin "baserom.gba", 0x899B60, 0x00002E0

gUnk_08899E40:: @ 08899E40
	.incbin "baserom.gba", 0x899E40, 0x00007A0

gUnk_0889A5E0:: @ 0889A5E0
	.incbin "baserom.gba", 0x89A5E0, 0x0000300

gUnk_0889A8E0:: @ 0889A8E0
	.incbin "baserom.gba", 0x89A8E0, 0x00001BE
	.incbin "baserom.gba", 0x89AA9E, 0x0000004
	.incbin "baserom.gba", 0x89AAA2, 0x0000008
	.incbin "baserom.gba", 0x89AAAA, 0x0000001
	.incbin "baserom.gba", 0x89AAAB, 0x0000010
	.incbin "baserom.gba", 0x89AABB, 0x0000100
	.incbin "baserom.gba", 0x89ABBB, 0x0000001
	.incbin "baserom.gba", 0x89ABBC, 0x0000C24

gUnk_0889B7E0:: @ 0889B7E0
	.incbin "baserom.gba", 0x89B7E0, 0x0000360

gUnk_0889BB40:: @ 0889BB40
	.incbin "baserom.gba", 0x89BB40, 0x000018C
	.incbin "baserom.gba", 0x89BCCC, 0x00005F4

gUnk_0889C2C0:: @ 0889C2C0
	.incbin "baserom.gba", 0x89C2C0, 0x0000400

gUnk_0889C6C0:: @ 0889C6C0
	.incbin "baserom.gba", 0x89C6C0, 0x000005C
	.incbin "baserom.gba", 0x89C71C, 0x0000324

gUnk_0889CA40:: @ 0889CA40
	.incbin "baserom.gba", 0x89CA40, 0x00005B0
	.incbin "baserom.gba", 0x89CFF0, 0x0000450

gUnk_0889D440:: @ 0889D440
	.incbin "baserom.gba", 0x89D440, 0x0000A00

gUnk_0889DE40:: @ 0889DE40
	.incbin "baserom.gba", 0x89DE40, 0x0000300

gUnk_0889E140:: @ 0889E140
	.incbin "baserom.gba", 0x89E140, 0x00003D1
	.incbin "baserom.gba", 0x89E511, 0x00000EF

gUnk_0889E600:: @ 0889E600
	.incbin "baserom.gba", 0x89E600, 0x00007C0

gUnk_0889EDC0:: @ 0889EDC0
	.incbin "baserom.gba", 0x89EDC0, 0x000012E
	.incbin "baserom.gba", 0x89EEEE, 0x00009F2

gUnk_0889F8E0:: @ 0889F8E0
	.incbin "baserom.gba", 0x89F8E0, 0x00007D3
	.incbin "baserom.gba", 0x8A00B3, 0x000000D

gUnk_088A00C0:: @ 088A00C0
	.incbin "baserom.gba", 0x8A00C0, 0x0000360

gUnk_088A0420:: @ 088A0420
	.incbin "baserom.gba", 0x8A0420, 0x0000469
	.incbin "baserom.gba", 0x8A0889, 0x0000024
	.incbin "baserom.gba", 0x8A08AD, 0x0000433

gUnk_088A0CE0:: @ 088A0CE0
	.incbin "baserom.gba", 0x8A0CE0, 0x000007F
	.incbin "baserom.gba", 0x8A0D5F, 0x000062F
	.incbin "baserom.gba", 0x8A138E, 0x0000112

gUnk_088A14A0:: @ 088A14A0
	.incbin "baserom.gba", 0x8A14A0, 0x0000DC0

gUnk_088A2260:: @ 088A2260
	.incbin "baserom.gba", 0x8A2260, 0x00000E5
	.incbin "baserom.gba", 0x8A2345, 0x000021B

gUnk_088A2560:: @ 088A2560
	.incbin "baserom.gba", 0x8A2560, 0x00002A8
	.incbin "baserom.gba", 0x8A2808, 0x0000038

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
	.incbin "baserom.gba", 0x8A74A0, 0x0000408
	.incbin "baserom.gba", 0x8A78A8, 0x0000139
	.incbin "baserom.gba", 0x8A79E1, 0x00002DF

gUnk_088A7CC0:: @ 088A7CC0
	.incbin "baserom.gba", 0x8A7CC0, 0x0000340

gUnk_088A8000:: @ 088A8000
	.incbin "baserom.gba", 0x8A8000, 0x0000500

gUnk_088A8500:: @ 088A8500
	.incbin "baserom.gba", 0x8A8500, 0x0000500

gUnk_088A8A00:: @ 088A8A00
	.incbin "baserom.gba", 0x8A8A00, 0x00001CA
	.incbin "baserom.gba", 0x8A8BCA, 0x00005F6

gUnk_088A91C0:: @ 088A91C0
	.incbin "baserom.gba", 0x8A91C0, 0x0000660

gUnk_088A9820:: @ 088A9820
	.incbin "baserom.gba", 0x8A9820, 0x0000179
	.incbin "baserom.gba", 0x8A9999, 0x0000247

gUnk_088A9BE0:: @ 088A9BE0
	.incbin "baserom.gba", 0x8A9BE0, 0x0000460

gUnk_088AA040:: @ 088AA040
	.incbin "baserom.gba", 0x8AA040, 0x0000380

gUnk_088AA3C0:: @ 088AA3C0
	.incbin "baserom.gba", 0x8AA3C0, 0x00004E0
	.incbin "baserom.gba", 0x8AA8A0, 0x0000209
	.incbin "baserom.gba", 0x8AAAA9, 0x0000137

gUnk_088AABE0:: @ 088AABE0
	.incbin "baserom.gba", 0x8AABE0, 0x00006A0

gUnk_088AB280:: @ 088AB280
	.incbin "baserom.gba", 0x8AB280, 0x00008A4
	.incbin "baserom.gba", 0x8ABB24, 0x00000DC

gUnk_088ABC00:: @ 088ABC00
	.incbin "baserom.gba", 0x8ABC00, 0x00001D6
	.incbin "baserom.gba", 0x8ABDD6, 0x000040A

gUnk_088AC1E0:: @ 088AC1E0
	.incbin "baserom.gba", 0x8AC1E0, 0x00008A0

gUnk_088ACA80:: @ 088ACA80
	.incbin "baserom.gba", 0x8ACA80, 0x000024B
	.incbin "baserom.gba", 0x8ACCCB, 0x0000675

gUnk_088AD340:: @ 088AD340
	.incbin "baserom.gba", 0x8AD340, 0x00005A0

gUnk_088AD8E0:: @ 088AD8E0
	.incbin "baserom.gba", 0x8AD8E0, 0x0000620

gUnk_088ADF00:: @ 088ADF00
	.incbin "baserom.gba", 0x8ADF00, 0x0000F00

gUnk_088AEE00:: @ 088AEE00
	.incbin "baserom.gba", 0x8AEE00, 0x00000EE
	.incbin "baserom.gba", 0x8AEEEE, 0x0000552

gUnk_088AF440:: @ 088AF440
	.incbin "baserom.gba", 0x8AF440, 0x00012C0
	.incbin "baserom.gba", 0x8B0700, 0x000018A
	.incbin "baserom.gba", 0x8B088A, 0x0001136

gUnk_088B19C0:: @ 088B19C0
	.incbin "baserom.gba", 0x8B19C0, 0x000076E
	.incbin "baserom.gba", 0x8B212E, 0x0001032

gUnk_088B3160:: @ 088B3160
	.incbin "baserom.gba", 0x8B3160, 0x00019A0

gUnk_088B4B00:: @ 088B4B00
	.incbin "baserom.gba", 0x8B4B00, 0x0001300

gUnk_088B5E00:: @ 088B5E00
	.incbin "baserom.gba", 0x8B5E00, 0x0001EA0

gUnk_088B7CA0:: @ 088B7CA0
	.incbin "baserom.gba", 0x8B7CA0, 0x0001640

gUnk_088B92E0:: @ 088B92E0
	.incbin "baserom.gba", 0x8B92E0, 0x00010AB
	.incbin "baserom.gba", 0x8BA38B, 0x0000715

gUnk_088BAAA0:: @ 088BAAA0
	.incbin "baserom.gba", 0x8BAAA0, 0x000001B
	.incbin "baserom.gba", 0x8BAABB, 0x00000D0
	.incbin "baserom.gba", 0x8BAB8B, 0x0000D15

gUnk_088BB8A0:: @ 088BB8A0
	.incbin "baserom.gba", 0x8BB8A0, 0x0000580

gUnk_088BBE20:: @ 088BBE20
	.incbin "baserom.gba", 0x8BBE20, 0x0000C40

gUnk_088BCA60:: @ 088BCA60
	.incbin "baserom.gba", 0x8BCA60, 0x0001100

gUnk_088BDB60:: @ 088BDB60
	.incbin "baserom.gba", 0x8BDB60, 0x0001304
	.incbin "baserom.gba", 0x8BEE64, 0x000127C

gUnk_088C00E0:: @ 088C00E0
	.incbin "baserom.gba", 0x8C00E0, 0x0000220
	.incbin "baserom.gba", 0x8C0300, 0x000035C
	.incbin "baserom.gba", 0x8C065C, 0x00002A4
	.incbin "baserom.gba", 0x8C0900, 0x0001980

@ TODO end of figurine data
	.incbin "graphics/intro/nintendo_capcom.4bpp"
	.incbin "baserom.gba", 0x8C31E0, 0x00030AC
	.incbin "baserom.gba", 0x8C628C, 0x00003FC
	.incbin "baserom.gba", 0x8C6688, 0x00016A8
	.incbin "baserom.gba", 0x8C7D30, 0x0007178
	.incbin "baserom.gba", 0x8CEEA8, 0x0001162
	.incbin "baserom.gba", 0x8D000A, 0x0000982
	.incbin "baserom.gba", 0x8D098C, 0x0001A31
	.incbin "baserom.gba", 0x8D23BD, 0x0001343
	.incbin "baserom.gba", 0x8D3700, 0x0000FC8
	.incbin "baserom.gba", 0x8D46C8, 0x0002078
	.incbin "baserom.gba", 0x8D6740, 0x00020F3
	.incbin "baserom.gba", 0x8D8833, 0x0001AD5
	.incbin "baserom.gba", 0x8DA308, 0x00030A4
	.incbin "baserom.gba", 0x8DD3AC, 0x0002C5B
	.incbin "baserom.gba", 0x8E0007, 0x0000088
	.incbin "baserom.gba", 0x8E008F, 0x0000075
	.incbin "baserom.gba", 0x8E0104, 0x0000231
	.incbin "baserom.gba", 0x8E0335, 0x0000159
	.incbin "baserom.gba", 0x8E048E, 0x0000FEB
	.incbin "baserom.gba", 0x8E1479, 0x0005A09
	.incbin "baserom.gba", 0x8E6E82, 0x0000EF7
	.incbin "baserom.gba", 0x8E7D79, 0x0004315
	.incbin "baserom.gba", 0x8EC08E, 0x0002E60
	.incbin "baserom.gba", 0x8EEEEE, 0x0001292
	.incbin "baserom.gba", 0x8F0180, 0x000020D
	.incbin "baserom.gba", 0x8F038D, 0x0000DC4
	.incbin "baserom.gba", 0x8F1151, 0x000045D
	.incbin "baserom.gba", 0x8F15AE, 0x0002FB8
	.incbin "baserom.gba", 0x8F4566, 0x000119C
	.incbin "baserom.gba", 0x8F5702, 0x0005186
	.incbin "baserom.gba", 0x8FA888, 0x0000107
	.incbin "baserom.gba", 0x8FA98F, 0x000422C
	.incbin "baserom.gba", 0x8FEBBB, 0x0000BCD
	.incbin "baserom.gba", 0x8FF788, 0x0000878
	.incbin "baserom.gba", 0x900000, 0x0000099
	.incbin "baserom.gba", 0x900099, 0x0000035
	.incbin "baserom.gba", 0x9000CE, 0x0000042
	.incbin "baserom.gba", 0x900110, 0x0000270
	.incbin "baserom.gba", 0x900380, 0x00002A0

.ifdef EU
    .incbin "baserom_eu.gba", 0x8FFDF0, 0x00AED70
.else
	.incbin "baserom.gba", 0x900620, 0x0003D2B
	.incbin "baserom.gba", 0x90434B, 0x0009DB3
	.incbin "baserom.gba", 0x90E0FE, 0x0000302
	.incbin "baserom.gba", 0x90E400, 0x0000004
	.incbin "baserom.gba", 0x90E404, 0x0000100
	.incbin "baserom.gba", 0x90E504, 0x0000100
	.incbin "baserom.gba", 0x90E604, 0x00002FB
	.incbin "baserom.gba", 0x90E8FF, 0x00007E9
	.incbin "baserom.gba", 0x90F0E8, 0x0000F18
	.incbin "baserom.gba", 0x910000, 0x0000007
	.incbin "baserom.gba", 0x910007, 0x00002F9
	.incbin "baserom.gba", 0x910300, 0x0000168
	.incbin "baserom.gba", 0x910468, 0x0000398
	.incbin "baserom.gba", 0x910800, 0x0000090
	.incbin "baserom.gba", 0x910890, 0x0000993
	.incbin "baserom.gba", 0x911223, 0x0000776
	.incbin "baserom.gba", 0x911999, 0x0000467
	.incbin "baserom.gba", 0x911E00, 0x0002418
	.incbin "baserom.gba", 0x914218, 0x000012E
	.incbin "baserom.gba", 0x914346, 0x00003BA
	.incbin "baserom.gba", 0x914700, 0x0002BFF
	.incbin "baserom.gba", 0x9172FF, 0x0000589
	.incbin "baserom.gba", 0x917888, 0x0000345
	.incbin "baserom.gba", 0x917BCD, 0x0000FBE
	.incbin "baserom.gba", 0x918B8B, 0x000250E
	.incbin "baserom.gba", 0x91B099, 0x0000A11
	.incbin "baserom.gba", 0x91BAAA, 0x0002757
	.incbin "baserom.gba", 0x91E201, 0x0001D00
	.incbin "baserom.gba", 0x91FF01, 0x00000EF
	.incbin "baserom.gba", 0x91FFF0, 0x0000010
	.incbin "baserom.gba", 0x920000, 0x0000120
	.incbin "baserom.gba", 0x920120, 0x0000672
	.incbin "baserom.gba", 0x920792, 0x00000FF
	.incbin "baserom.gba", 0x920891, 0x0000802
	.incbin "baserom.gba", 0x921093, 0x00001F7
	.incbin "baserom.gba", 0x92128A, 0x0001B9F
	.incbin "baserom.gba", 0x922E29, 0x0004969
	.incbin "baserom.gba", 0x927792, 0x0000305
	.incbin "baserom.gba", 0x927A97, 0x0001520
	.incbin "baserom.gba", 0x928FB7, 0x00003DA
	.incbin "baserom.gba", 0x929391, 0x00000C6
	.incbin "baserom.gba", 0x929457, 0x0000879
	.incbin "baserom.gba", 0x929CD0, 0x00001B9
	.incbin "baserom.gba", 0x929E89, 0x0003465
	.incbin "baserom.gba", 0x92D2EE, 0x0000FAB
	.incbin "baserom.gba", 0x92E299, 0x00000F9
	.incbin "baserom.gba", 0x92E392, 0x0000A90
	.incbin "baserom.gba", 0x92EE22, 0x000000B
	.incbin "baserom.gba", 0x92EE2D, 0x00011D3
	.incbin "baserom.gba", 0x930000, 0x0000010
	.incbin "baserom.gba", 0x930010, 0x0000773
	.incbin "baserom.gba", 0x930783, 0x0000010
	.incbin "baserom.gba", 0x930793, 0x00000FF
	.incbin "baserom.gba", 0x930892, 0x0001FB2
	.incbin "baserom.gba", 0x932844, 0x00016BC
	.incbin "baserom.gba", 0x933F00, 0x0002200
	.incbin "baserom.gba", 0x936100, 0x00020A6
	.incbin "baserom.gba", 0x9381A6, 0x0000EC1
	.incbin "baserom.gba", 0x939067, 0x000032C
	.incbin "baserom.gba", 0x939393, 0x00071F8
	.incbin "baserom.gba", 0x94058B, 0x0000308
	.incbin "baserom.gba", 0x940893, 0x0000B9C
	.incbin "baserom.gba", 0x94142F, 0x0000CD1
	.incbin "baserom.gba", 0x942100, 0x0000267
	.incbin "baserom.gba", 0x942367, 0x00010DF
	.incbin "baserom.gba", 0x943446, 0x0000DDB
	.incbin "baserom.gba", 0x944221, 0x00006DD
	.incbin "baserom.gba", 0x9448FE, 0x0000C57
	.incbin "baserom.gba", 0x945555, 0x0003F18
	.incbin "baserom.gba", 0x94946D, 0x0001760
	.incbin "baserom.gba", 0x94ABCD, 0x0001FEE
	.incbin "baserom.gba", 0x94CBBB, 0x000344C
	.incbin "baserom.gba", 0x950007, 0x00008F9
	.incbin "baserom.gba", 0x950900, 0x0002600
	.incbin "baserom.gba", 0x952F00, 0x0000791
	.incbin "baserom.gba", 0x953691, 0x000076F
	.incbin "baserom.gba", 0x953E00, 0x0001654
	.incbin "baserom.gba", 0x955454, 0x00000F0
	.incbin "baserom.gba", 0x955544, 0x0000011
	.incbin "baserom.gba", 0x955555, 0x0003B72
	.incbin "baserom.gba", 0x9590C7, 0x0001642
	.incbin "baserom.gba", 0x95A709, 0x00058F7
	.incbin "baserom.gba", 0x960000, 0x0000132
	.incbin "baserom.gba", 0x960132, 0x0000B5E
	.incbin "baserom.gba", 0x960C90, 0x00000A4
	.incbin "baserom.gba", 0x960D34, 0x00004E2
	.incbin "baserom.gba", 0x961216, 0x000CBD8
	.incbin "baserom.gba", 0x96DDEE, 0x0002212
	.incbin "baserom.gba", 0x970000, 0x000000A
	.incbin "baserom.gba", 0x97000A, 0x0000009
	.incbin "baserom.gba", 0x970013, 0x000002D
	.incbin "baserom.gba", 0x970040, 0x0000856
	.incbin "baserom.gba", 0x970896, 0x000076B
	.incbin "baserom.gba", 0x971001, 0x000005A
	.incbin "baserom.gba", 0x97105B, 0x0001D85
	.incbin "baserom.gba", 0x972DE0, 0x0001553
	.incbin "baserom.gba", 0x974333, 0x0001200
	.incbin "baserom.gba", 0x975533, 0x00022AB
	.incbin "baserom.gba", 0x9777DE, 0x0001DB0
	.incbin "baserom.gba", 0x97958E, 0x0001C62
	.incbin "baserom.gba", 0x97B1F0, 0x00007A7
	.incbin "baserom.gba", 0x97B997, 0x0004669
	.incbin "baserom.gba", 0x980000, 0x0000012
	.incbin "baserom.gba", 0x980012, 0x0000196
	.incbin "baserom.gba", 0x9801A8, 0x0001769
	.incbin "baserom.gba", 0x981911, 0x00018EF
	.incbin "baserom.gba", 0x983200, 0x00002AD
	.incbin "baserom.gba", 0x9834AD, 0x00010A8
	.incbin "baserom.gba", 0x984555, 0x0001AAB
	.incbin "baserom.gba", 0x986000, 0x000189E
	.incbin "baserom.gba", 0x98789E, 0x0000074
	.incbin "baserom.gba", 0x987912, 0x0000CEE
	.incbin "baserom.gba", 0x988600, 0x0000178
	.incbin "baserom.gba", 0x988778, 0x0000110
	.incbin "baserom.gba", 0x988888, 0x0000F77
	.incbin "baserom.gba", 0x9897FF, 0x000009F
	.incbin "baserom.gba", 0x98989E, 0x000000C
	.incbin "baserom.gba", 0x9898AA, 0x0000176
	.incbin "baserom.gba", 0x989A20, 0x00004CE
	.incbin "baserom.gba", 0x989EEE, 0x00011C9
	.incbin "baserom.gba", 0x98B0B7, 0x00008D2
	.incbin "baserom.gba", 0x98B989, 0x0001455
	.incbin "baserom.gba", 0x98CDDE, 0x0002222
	.incbin "baserom.gba", 0x98F000, 0x0000799
	.incbin "baserom.gba", 0x98F799, 0x0000755
	.incbin "baserom.gba", 0x98FEEE, 0x0000112
	.incbin "baserom.gba", 0x990000, 0x000001B
	.incbin "baserom.gba", 0x99001B, 0x00000B3
	.incbin "baserom.gba", 0x9900CE, 0x0000001
	.incbin "baserom.gba", 0x9900CF, 0x0000070
	.incbin "baserom.gba", 0x99013F, 0x0000001
	.incbin "baserom.gba", 0x990140, 0x0000030
	.incbin "baserom.gba", 0x990170, 0x0000098
	.incbin "baserom.gba", 0x990208, 0x0000108
	.incbin "baserom.gba", 0x990310, 0x00002F0
	.incbin "baserom.gba", 0x990600, 0x0000400
	.incbin "baserom.gba", 0x990A00, 0x000177A
	.incbin "baserom.gba", 0x99217A, 0x0000C74
	.incbin "baserom.gba", 0x992DEE, 0x00000F4
	.incbin "baserom.gba", 0x992EE2, 0x000000B
	.incbin "baserom.gba", 0x992EED, 0x0000813
	.incbin "baserom.gba", 0x993700, 0x0000B44
	.incbin "baserom.gba", 0x994244, 0x0001311
	.incbin "baserom.gba", 0x995555, 0x00019AB
	.incbin "baserom.gba", 0x996F00, 0x0000755
	.incbin "baserom.gba", 0x997655, 0x000061C
	.incbin "baserom.gba", 0x997C71, 0x0000B27
	.incbin "baserom.gba", 0x998798, 0x00000EF
	.incbin "baserom.gba", 0x998887, 0x0000001
	.incbin "baserom.gba", 0x998888, 0x0000028
	.incbin "baserom.gba", 0x9988B0, 0x00000A5
	.incbin "baserom.gba", 0x998955, 0x0000034
	.incbin "baserom.gba", 0x998989, 0x0000177
	.incbin "baserom.gba", 0x998B00, 0x0000488
	.incbin "baserom.gba", 0x998F88, 0x0000057
	.incbin "baserom.gba", 0x998FDF, 0x00002FF
	.incbin "baserom.gba", 0x9992DE, 0x0000004
	.incbin "baserom.gba", 0x9992E2, 0x000058E
	.incbin "baserom.gba", 0x999870, 0x0000004
	.incbin "baserom.gba", 0x999874, 0x0000013
	.incbin "baserom.gba", 0x999887, 0x0000013
	.incbin "baserom.gba", 0x99989A, 0x0000001
	.incbin "baserom.gba", 0x99989B, 0x0000066
	.incbin "baserom.gba", 0x999901, 0x0000021
	.incbin "baserom.gba", 0x999922, 0x000005E
	.incbin "baserom.gba", 0x999980, 0x0000007
	.incbin "baserom.gba", 0x999987, 0x0000001
	.incbin "baserom.gba", 0x999988, 0x0000001
	.incbin "baserom.gba", 0x999989, 0x0000001
	.incbin "baserom.gba", 0x99998A, 0x000000E
	.incbin "baserom.gba", 0x999998, 0x0000001
	.incbin "baserom.gba", 0x999999, 0x0000013
	.incbin "baserom.gba", 0x9999AC, 0x0000010
	.incbin "baserom.gba", 0x9999BC, 0x000003C
	.incbin "baserom.gba", 0x9999F8, 0x00000B2
	.incbin "baserom.gba", 0x999AAA, 0x0000056
	.incbin "baserom.gba", 0x999B00, 0x00000CC
	.incbin "baserom.gba", 0x999BCC, 0x00003BC
	.incbin "baserom.gba", 0x999F88, 0x00008AB
	.incbin "baserom.gba", 0x99A833, 0x0000201
	.incbin "baserom.gba", 0x99AA34, 0x0000075
	.incbin "baserom.gba", 0x99AAA9, 0x0000012
	.incbin "baserom.gba", 0x99AABB, 0x0000545
	.incbin "baserom.gba", 0x99B000, 0x00003FF
	.incbin "baserom.gba", 0x99B3FF, 0x000059A
	.incbin "baserom.gba", 0x99B999, 0x0000006
	.incbin "baserom.gba", 0x99B99F, 0x0000620
	.incbin "baserom.gba", 0x99BFBF, 0x000003A
	.incbin "baserom.gba", 0x99BFF9, 0x0000708
	.incbin "baserom.gba", 0x99C701, 0x00027ED
	.incbin "baserom.gba", 0x99EEEE, 0x000012D
	.incbin "baserom.gba", 0x99F01B, 0x0000FE6
	.incbin "baserom.gba", 0x9A0001, 0x0000087
	.incbin "baserom.gba", 0x9A0088, 0x0000811
	.incbin "baserom.gba", 0x9A0899, 0x00000F7
	.incbin "baserom.gba", 0x9A0990, 0x0000B3C
	.incbin "baserom.gba", 0x9A14CC, 0x0001B34
	.incbin "baserom.gba", 0x9A3000, 0x0000D18
	.incbin "baserom.gba", 0x9A3D18, 0x000073D
	.incbin "baserom.gba", 0x9A4455, 0x0001188
	.incbin "baserom.gba", 0x9A55DD, 0x0002E3B
	.incbin "baserom.gba", 0x9A8418, 0x00013E7
	.incbin "baserom.gba", 0x9A97FF, 0x000019A
	.incbin "baserom.gba", 0x9A9999, 0x0000101
	.incbin "baserom.gba", 0x9A9A9A, 0x0000F00
	.incbin "baserom.gba", 0x9AA99A, 0x0000089
	.incbin "baserom.gba", 0x9AAA23, 0x0000087
	.incbin "baserom.gba", 0x9AAAAA, 0x0000111
	.incbin "baserom.gba", 0x9AABBB, 0x0000011
	.incbin "baserom.gba", 0x9AABCC, 0x0000FEF
	.incbin "baserom.gba", 0x9ABBBB, 0x0000A33
	.incbin "baserom.gba", 0x9AC5EE, 0x00018ED
	.incbin "baserom.gba", 0x9ADEDB, 0x0002125
	.incbin "baserom.gba", 0x9B0000, 0x00002BC
	.incbin "baserom.gba", 0x9B02BC, 0x0000054
	.incbin "baserom.gba", 0x9B0310, 0x0000CF0
	.incbin "baserom.gba", 0x9B1000, 0x0000D90

.endif
