	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08132B30:: @ 08132B30
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08132B30_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08132B30_2_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08132B30_4_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08132B30_6_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_7_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08132B30_8_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_9_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_08132B30_10_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08132B30_11_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08133368:: @ 08133368
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_08133368_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08133368_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08133918:: @ 08133918
	.incbin "assets/data_08132B30/gUnk_08133918.bin"

gUnk_08133938:: @ 08133938
	.incbin "assets/data_08132B30/gUnk_08133938.bin"

gUnk_08133958:: @ 08133958
	.incbin "assets/data_08132B30/gUnk_08133958.bin"

gUnk_08133978:: @ 08133978
	.incbin "assets/data_08132B30/gUnk_08133978.bin"

gUnk_08133998:: @ 08133998
	.incbin "assets/data_08132B30/gUnk_08133998.bin"

gUnk_081339B8:: @ 081339B8
	.incbin "assets/data_08132B30/gUnk_081339B8.bin"

gUnk_081339D8:: @ 081339D8
	.incbin "assets/data_08132B30/gUnk_081339D8.bin"

gUnk_081339F8:: @ 081339F8
	.incbin "assets/data_08132B30/gUnk_081339F8.bin"

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
	.incbin "assets/data_08132B30/gUnk_08133A40.bin"

gUnk_08133A5A:: @ 08133A5A
	.incbin "assets/data_08132B30/gUnk_08133A5A.bin"

gUnk_08133A67:: @ 08133A67
	.incbin "assets/data_08132B30/gUnk_08133A67.bin"

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
	.incbin "assets/data_08132B30/gUnk_08133FC8.bin"

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
	.incbin "assets/data_08132B30/gUnk_081340DC.bin"

gUnk_08134208:: @ 08134208
	.4byte gUnk_081340DC

gUnk_0813420C:: @ 0813420C
	.incbin "assets/data_08132B30/gUnk_0813420C.bin"

gUnk_081342E8:: @ 081342E8
	.incbin "assets/data_08132B30/gUnk_081342E8.bin"

gUnk_08134338:: @ 08134338
	.4byte gUnk_0813420C
	.4byte gUnk_081342E8

gUnk_08134340:: @ 08134340
	.incbin "assets/data_08132B30/gUnk_08134340.bin"

gUnk_08134408:: @ 08134408
	.4byte gUnk_08134340

gUnk_0813440C:: @ 0813440C
	.incbin "assets/data_08132B30/gUnk_0813440C.bin"

gUnk_08134448:: @ 08134448
	.incbin "assets/data_08132B30/gUnk_08134448.bin"

gUnk_0813445C:: @ 0813445C
	.incbin "assets/data_08132B30/gUnk_0813445C.bin"

gUnk_08134484:: @ 08134484
	.incbin "assets/data_08132B30/gUnk_08134484.bin"

gUnk_081344AC:: @ 081344AC
	.4byte gUnk_0813440C
	.4byte gUnk_08134448
	.4byte gUnk_08133FC8
	.4byte gUnk_0813445C
	.4byte gUnk_08134484
	.4byte gUnk_08133FC8

gUnk_081344C4:: @ 081344C4
	.incbin "assets/data_08132B30/gUnk_081344C4.bin"

gUnk_08134794:: @ 08134794
	.4byte gUnk_081344C4

gUnk_08134798:: @ 08134798
	.incbin "assets/data_08132B30/gUnk_08134798.bin"

gUnk_081347C0:: @ 081347C0
	.4byte gUnk_08134798

gUnk_081347C4:: @ 081347C4
	.incbin "assets/data_08132B30/gUnk_081347C4.bin"

gUnk_08134800:: @ 08134800
	.incbin "assets/data_08132B30/gUnk_08134800.bin"

gUnk_08134850:: @ 08134850
	.incbin "assets/data_08132B30/gUnk_08134850.bin"

gUnk_08134904:: @ 08134904
	.incbin "assets/data_08132B30/gUnk_08134904.bin"

gUnk_08134968:: @ 08134968
	.incbin "assets/data_08132B30/gUnk_08134968.bin"

gUnk_08134A30:: @ 08134A30
	.4byte gUnk_081347C4
	.4byte gUnk_08134800
	.4byte gUnk_08134850
	.4byte gUnk_08134904
	.4byte gUnk_08134968

gUnk_08134A44:: @ 08134A44
	.incbin "assets/data_08132B30/gUnk_08134A44.bin"

gUnk_08134A6C:: @ 08134A6C
	.incbin "assets/data_08132B30/gUnk_08134A6C.bin"

gUnk_08134B0C:: @ 08134B0C
	.incbin "assets/data_08132B30/gUnk_08134B0C.bin"

gUnk_08134B48:: @ 08134B48
	.incbin "assets/data_08132B30/gUnk_08134B48.bin"

gUnk_08134B70:: @ 08134B70
	.incbin "assets/data_08132B30/gUnk_08134B70.bin"

gUnk_08134BAC:: @ 08134BAC
	.incbin "assets/data_08132B30/gUnk_08134BAC.bin"

gUnk_08134C88:: @ 08134C88
	.incbin "assets/data_08132B30/gUnk_08134C88.bin"

gUnk_08134DC8:: @ 08134DC8
	.incbin "assets/data_08132B30/gUnk_08134DC8.bin"

gUnk_08134EA4:: @ 08134EA4
	.incbin "assets/data_08132B30/gUnk_08134EA4.bin"

gUnk_08134EE0:: @ 08134EE0
	.incbin "assets/data_08132B30/gUnk_08134EE0.bin"

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
	.incbin "assets/data_08132B30/gUnk_08134F30.bin"

gUnk_08134FBC:: @ 08134FBC
	.incbin "assets/data_08132B30/gUnk_08134FBC.bin"

gUnk_08135048:: @ 08135048
	.incbin "assets/data_08132B30/gUnk_08135048.bin"

gUnk_08135070:: @ 08135070
	.4byte gUnk_08134F30

gUnk_08135074:: @ 08135074
	.incbin "assets/data_08132B30/gUnk_08135074.bin"

gUnk_0813509C:: @ 0813509C
	.4byte gUnk_08135074

gUnk_081350A0:: @ 081350A0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_081350A0_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081350A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08135168:: @ 08135168
	.incbin "assets/data_08132B30/gUnk_08135168.bin"

gUnk_08135190:: @ 08135190
	.incbin "assets/data_08132B30/gUnk_08135190.bin"

gUnk_081351CC:: @ 081351CC
	.4byte gUnk_081350A0
	.4byte gUnk_08135168

gUnk_081351D4:: @ 081351D4
	.incbin "assets/data_08132B30/gUnk_081351D4.bin"

gUnk_081352D8:: @ 081352D8
	.4byte gUnk_081351D4

gUnk_081352DC:: @ 081352DC
	.incbin "assets/data_08132B30/gUnk_081352DC.bin"

gUnk_08135304:: @ 08135304
	.incbin "assets/data_08132B30/gUnk_08135304.bin"

gUnk_0813532C:: @ 0813532C
	.incbin "assets/data_08132B30/gUnk_0813532C.bin"

gUnk_08135354:: @ 08135354
	.incbin "assets/data_08132B30/gUnk_08135354.bin"

gUnk_0813537C:: @ 0813537C
	.incbin "assets/data_08132B30/gUnk_0813537C.bin"

gUnk_081353A4:: @ 081353A4
	.incbin "assets/data_08132B30/gUnk_081353A4.bin"

gUnk_081353E0:: @ 081353E0
	.incbin "assets/data_08132B30/gUnk_081353E0.bin"

gUnk_0813541C:: @ 0813541C
	.incbin "assets/data_08132B30/gUnk_0813541C.bin"

gUnk_08135458:: @ 08135458
	.incbin "assets/data_08132B30/gUnk_08135458.bin"

gUnk_08135494:: @ 08135494
	.incbin "assets/data_08132B30/gUnk_08135494.bin"

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
	.incbin "assets/data_08132B30/gUnk_08135524.bin"

gUnk_0813554C:: @ 0813554C
	.4byte gUnk_08135524

gUnk_08135550:: @ 08135550
	.incbin "assets/data_08132B30/gUnk_08135550.bin"

gUnk_08135578:: @ 08135578
	.4byte gUnk_08135550

gUnk_0813557C:: @ 0813557C
	.incbin "assets/data_08132B30/gUnk_0813557C.bin"

gUnk_08135694:: @ 08135694
	.incbin "assets/data_08132B30/gUnk_08135694.bin"

gUnk_081356BC:: @ 081356BC
	.4byte gUnk_0813557C
	.4byte gUnk_08135694
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8

gUnk_081356CC:: @ 081356CC
	.incbin "assets/data_08132B30/gUnk_081356CC.bin"

gUnk_08135744:: @ 08135744
	.4byte gUnk_081356CC

gUnk_08135748:: @ 08135748
	.incbin "assets/data_08132B30/gUnk_08135748.bin"

gUnk_08135784:: @ 08135784
	.incbin "assets/data_08132B30/gUnk_08135784.bin"

gUnk_081357C0:: @ 081357C0
	.incbin "assets/data_08132B30/gUnk_081357C0.bin"

gUnk_081357E8:: @ 081357E8
	.incbin "assets/data_08132B30/gUnk_081357E8.bin"

gUnk_08135810:: @ 08135810
	.incbin "assets/data_08132B30/gUnk_08135810.bin"

gUnk_0813584C:: @ 0813584C
	.4byte gUnk_08135748
	.4byte gUnk_08135784
	.4byte gUnk_081357C0
	.4byte gUnk_081357E8
	.4byte gUnk_08135810

gUnk_08135860:: @ 08135860
	.incbin "assets/data_08132B30/gUnk_08135860.bin"

gUnk_08135888:: @ 08135888
	.incbin "assets/data_08132B30/gUnk_08135888.bin"

gUnk_081358B0:: @ 081358B0
	.incbin "assets/data_08132B30/gUnk_081358B0.bin"

gUnk_081358EC:: @ 081358EC
	.incbin "assets/data_08132B30/gUnk_081358EC.bin"

gUnk_08135928:: @ 08135928
	.4byte gUnk_08135860
	.4byte gUnk_08135888
	.4byte gUnk_081358B0
	.4byte gUnk_081358EC

gUnk_08135938:: @ 08135938
	.incbin "assets/data_08132B30/gUnk_08135938.bin"

gUnk_08135974:: @ 08135974
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08133FC8
	.4byte gUnk_08135938

gUnk_08135984:: @ 08135984
	.incbin "assets/data_08132B30/gUnk_08135984.bin"

gUnk_081359AC:: @ 081359AC
	.incbin "assets/data_08132B30/gUnk_081359AC.bin"

gUnk_081359D4:: @ 081359D4
	.incbin "assets/data_08132B30/gUnk_081359D4.bin"

gUnk_08135A10:: @ 08135A10
	.incbin "assets/data_08132B30/gUnk_08135A10.bin"

gUnk_08135A38:: @ 08135A38
	.incbin "assets/data_08132B30/gUnk_08135A38.bin"

gUnk_08135A60:: @ 08135A60
	.incbin "assets/data_08132B30/gUnk_08135A60.bin"

gUnk_08135A88:: @ 08135A88
	.incbin "assets/data_08132B30/gUnk_08135A88.bin"

gUnk_08135AB0:: @ 08135AB0
	.incbin "assets/data_08132B30/gUnk_08135AB0.bin"

gUnk_08135AD8:: @ 08135AD8
	.incbin "assets/data_08132B30/gUnk_08135AD8.bin"

gUnk_08135B00:: @ 08135B00
	.incbin "assets/data_08132B30/gUnk_08135B00.bin"

gUnk_08135B3C:: @ 08135B3C
	.incbin "assets/data_08132B30/gUnk_08135B3C.bin"

gUnk_08135B64:: @ 08135B64
	.incbin "assets/data_08132B30/gUnk_08135B64.bin"

gUnk_08135B8C:: @ 08135B8C
	.incbin "assets/data_08132B30/gUnk_08135B8C.bin"

gUnk_08135BB4:: @ 08135BB4
	.incbin "assets/data_08132B30/gUnk_08135BB4.bin"

gUnk_08135BDC:: @ 08135BDC
	.incbin "assets/data_08132B30/gUnk_08135BDC.bin"

gUnk_08135C04:: @ 08135C04
	.incbin "assets/data_08132B30/gUnk_08135C04.bin"

gUnk_08135C2C:: @ 08135C2C
	.incbin "assets/data_08132B30/gUnk_08135C2C.bin"

gUnk_08135C54:: @ 08135C54
	.incbin "assets/data_08132B30/gUnk_08135C54.bin"

gUnk_08135C7C:: @ 08135C7C
	.incbin "assets/data_08132B30/gUnk_08135C7C.bin"

gUnk_08135CA4:: @ 08135CA4
	.incbin "assets/data_08132B30/gUnk_08135CA4.bin"

gUnk_08135CCC:: @ 08135CCC
	.incbin "assets/data_08132B30/gUnk_08135CCC.bin"

gUnk_08135CF4:: @ 08135CF4
	.incbin "assets/data_08132B30/gUnk_08135CF4.bin"

gUnk_08135D1C:: @ 08135D1C
	.incbin "assets/data_08132B30/gUnk_08135D1C.bin"

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
	.incbin "assets/data_08132B30/gUnk_08135DE4.bin"

gUnk_08135E70:: @ 08135E70
	.incbin "assets/data_08132B30/gUnk_08135E70.bin"

gUnk_08135F24:: @ 08135F24
	.incbin "assets/data_08132B30/gUnk_08135F24.bin"

gUnk_08135FD8:: @ 08135FD8
	.incbin "assets/data_08132B30/gUnk_08135FD8.bin"

gUnk_08136000:: @ 08136000
	.incbin "assets/data_08132B30/gUnk_08136000.bin"

gUnk_08136028:: @ 08136028
	.4byte gUnk_08135DE4
	.4byte gUnk_08135E70
	.4byte gUnk_08135F24
	.4byte gUnk_08135FD8
	.4byte gUnk_08136000

gUnk_0813603C:: @ 0813603C
	.incbin "assets/data_08132B30/gUnk_0813603C.bin"

gUnk_0813608C:: @ 0813608C
	.4byte gUnk_08133FC8
	.4byte gUnk_0813603C
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_081360A0:: @ 081360A0
	.incbin "assets/data_08132B30/gUnk_081360A0.bin"

gUnk_081360C8:: @ 081360C8
	.4byte gUnk_081360A0

gUnk_081360CC:: @ 081360CC
	.incbin "assets/data_08132B30/gUnk_081360CC.bin"

gUnk_081360F4:: @ 081360F4
	.incbin "assets/data_08132B30/gUnk_081360F4.bin"

gUnk_0813611C:: @ 0813611C
	.incbin "assets/data_08132B30/gUnk_0813611C.bin"

gUnk_08136144:: @ 08136144
	.incbin "assets/data_08132B30/gUnk_08136144.bin"

gUnk_0813616C:: @ 0813616C
	.incbin "assets/data_08132B30/gUnk_0813616C.bin"

gUnk_08136194:: @ 08136194
	.incbin "assets/data_08132B30/gUnk_08136194.bin"

gUnk_081361BC:: @ 081361BC
	.incbin "assets/data_08132B30/gUnk_081361BC.bin"

gUnk_081361E4:: @ 081361E4
	.incbin "assets/data_08132B30/gUnk_081361E4.bin"

gUnk_0813620C:: @ 0813620C
	.incbin "assets/data_08132B30/gUnk_0813620C.bin"

gUnk_08136234:: @ 08136234
	.incbin "assets/data_08132B30/gUnk_08136234.bin"

gUnk_0813625C:: @ 0813625C
	.incbin "assets/data_08132B30/gUnk_0813625C.bin"

gUnk_08136284:: @ 08136284
	.incbin "assets/data_08132B30/gUnk_08136284.bin"

gUnk_081362AC:: @ 081362AC
	.incbin "assets/data_08132B30/gUnk_081362AC.bin"

gUnk_081362D4:: @ 081362D4
	.incbin "assets/data_08132B30/gUnk_081362D4.bin"

gUnk_08136310:: @ 08136310
	.incbin "assets/data_08132B30/gUnk_08136310.bin"

gUnk_08136338:: @ 08136338
	.incbin "assets/data_08132B30/gUnk_08136338.bin"

gUnk_0813634C:: @ 0813634C
	.incbin "assets/data_08132B30/gUnk_0813634C.bin"

gUnk_08136374:: @ 08136374
	.incbin "assets/data_08132B30/gUnk_08136374.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813645C.bin"

gUnk_08136484:: @ 08136484
	.incbin "assets/data_08132B30/gUnk_08136484.bin"

gUnk_081364AC:: @ 081364AC
	.incbin "assets/data_08132B30/gUnk_081364AC.bin"

gUnk_081364D4:: @ 081364D4
	.incbin "assets/data_08132B30/gUnk_081364D4.bin"

gUnk_081364FC:: @ 081364FC
	.incbin "assets/data_08132B30/gUnk_081364FC.bin"

gUnk_08136524:: @ 08136524
	.incbin "assets/data_08132B30/gUnk_08136524.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813658C.bin"

gUnk_081365B4:: @ 081365B4
	.incbin "assets/data_08132B30/gUnk_081365B4.bin"

gUnk_081365DC:: @ 081365DC
	.incbin "assets/data_08132B30/gUnk_081365DC.bin"

gUnk_08136604:: @ 08136604
	.4byte gUnk_0813658C
	.4byte gUnk_081365B4
	.4byte gUnk_081365DC
	.4byte gUnk_08133FC8

gUnk_08136614:: @ 08136614
	.incbin "assets/data_08132B30/gUnk_08136614.bin"

gUnk_0813663C:: @ 0813663C
	.incbin "assets/data_08132B30/gUnk_0813663C.bin"

gUnk_08136664:: @ 08136664
	.incbin "assets/data_08132B30/gUnk_08136664.bin"

gUnk_0813668C:: @ 0813668C
	.incbin "assets/data_08132B30/gUnk_0813668C.bin"

gUnk_081366B4:: @ 081366B4
	.incbin "assets/data_08132B30/gUnk_081366B4.bin"

gUnk_081366DC:: @ 081366DC
	.incbin "assets/data_08132B30/gUnk_081366DC.bin"

gUnk_08136718:: @ 08136718
	.incbin "assets/data_08132B30/gUnk_08136718.bin"

gUnk_08136754:: @ 08136754
	.incbin "assets/data_08132B30/gUnk_08136754.bin"

gUnk_0813677C:: @ 0813677C
	.incbin "assets/data_08132B30/gUnk_0813677C.bin"

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
	.incbin "assets/data_08132B30/gUnk_081367E4.bin"

gUnk_08136820:: @ 08136820
	.incbin "assets/data_08132B30/gUnk_08136820.bin"

gUnk_08136848:: @ 08136848
	.incbin "assets/data_08132B30/gUnk_08136848.bin"

gUnk_08136884:: @ 08136884
	.incbin "assets/data_08132B30/gUnk_08136884.bin"

gUnk_081368C0:: @ 081368C0
	.incbin "assets/data_08132B30/gUnk_081368C0.bin"

gUnk_08136938:: @ 08136938
	.incbin "assets/data_08132B30/gUnk_08136938.bin"

gUnk_08136960:: @ 08136960
	.incbin "assets/data_08132B30/gUnk_08136960.bin"

gUnk_08136988:: @ 08136988
	.incbin "assets/data_08132B30/gUnk_08136988.bin"

gUnk_081369B0:: @ 081369B0
	.incbin "assets/data_08132B30/gUnk_081369B0.bin"

gUnk_081369D8:: @ 081369D8
	.incbin "assets/data_08132B30/gUnk_081369D8.bin"

gUnk_08136A14:: @ 08136A14
	.incbin "assets/data_08132B30/gUnk_08136A14.bin"

gUnk_08136A50:: @ 08136A50
	.incbin "assets/data_08132B30/gUnk_08136A50.bin"

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
	.incbin "assets/data_08132B30/gUnk_08136AF8.bin"

gUnk_08136B20:: @ 08136B20
	.incbin "assets/data_08132B30/gUnk_08136B20.bin"

gUnk_08136B5C:: @ 08136B5C
	.incbin "assets/data_08132B30/gUnk_08136B5C.bin"

gUnk_08136B84:: @ 08136B84
	.incbin "assets/data_08132B30/gUnk_08136B84.bin"

gUnk_08136BAC:: @ 08136BAC
	.incbin "assets/data_08132B30/gUnk_08136BAC.bin"

gUnk_08136BE8:: @ 08136BE8
	.incbin "assets/data_08132B30/gUnk_08136BE8.bin"

gUnk_08136C10:: @ 08136C10
	.incbin "assets/data_08132B30/gUnk_08136C10.bin"

gUnk_08136C4C:: @ 08136C4C
	.incbin "assets/data_08132B30/gUnk_08136C4C.bin"

gUnk_08136C88:: @ 08136C88
	.incbin "assets/data_08132B30/gUnk_08136C88.bin"

gUnk_08136CC4:: @ 08136CC4
	.incbin "assets/data_08132B30/gUnk_08136CC4.bin"

gUnk_08136D00:: @ 08136D00
	.incbin "assets/data_08132B30/gUnk_08136D00.bin"

gUnk_08136D28:: @ 08136D28
	.incbin "assets/data_08132B30/gUnk_08136D28.bin"

gUnk_08136D64:: @ 08136D64
	.incbin "assets/data_08132B30/gUnk_08136D64.bin"

gUnk_08136DA0:: @ 08136DA0
	.incbin "assets/data_08132B30/gUnk_08136DA0.bin"

gUnk_08136DC8:: @ 08136DC8
	.incbin "assets/data_08132B30/gUnk_08136DC8.bin"

gUnk_08136E04:: @ 08136E04
	.incbin "assets/data_08132B30/gUnk_08136E04.bin"

gUnk_08136E18:: @ 08136E18
	.incbin "assets/data_08132B30/gUnk_08136E18.bin"

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
	.incbin "assets/data_08132B30/gUnk_08136EC0.bin"

gUnk_08136EE8:: @ 08136EE8
	.incbin "assets/data_08132B30/gUnk_08136EE8.bin"

gUnk_08136F10:: @ 08136F10
	.incbin "assets/data_08132B30/gUnk_08136F10.bin"

gUnk_08136F38:: @ 08136F38
	.incbin "assets/data_08132B30/gUnk_08136F38.bin"

gUnk_08136F60:: @ 08136F60
	.incbin "assets/data_08132B30/gUnk_08136F60.bin"

gUnk_08136F88:: @ 08136F88
	.incbin "assets/data_08132B30/gUnk_08136F88.bin"

gUnk_08136FB0:: @ 08136FB0
	.incbin "assets/data_08132B30/gUnk_08136FB0.bin"

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
	.incbin "assets/data_08132B30/gUnk_08137018.bin"

gUnk_08137040:: @ 08137040
	.incbin "assets/data_08132B30/gUnk_08137040.bin"

gUnk_08137068:: @ 08137068
	.incbin "assets/data_08132B30/gUnk_08137068.bin"

gUnk_08137090:: @ 08137090
	.incbin "assets/data_08132B30/gUnk_08137090.bin"

gUnk_081370B8:: @ 081370B8
	.incbin "assets/data_08132B30/gUnk_081370B8.bin"

gUnk_081370E0:: @ 081370E0
	.incbin "assets/data_08132B30/gUnk_081370E0.bin"

gUnk_081370F4:: @ 081370F4
	.incbin "assets/data_08132B30/gUnk_081370F4.bin"

gUnk_0813711C:: @ 0813711C
	.incbin "assets/data_08132B30/gUnk_0813711C.bin"

gUnk_08137144:: @ 08137144
	.incbin "assets/data_08132B30/gUnk_08137144.bin"

gUnk_0813716C:: @ 0813716C
	.incbin "assets/data_08132B30/gUnk_0813716C.bin"

gUnk_08137194:: @ 08137194
	.incbin "assets/data_08132B30/gUnk_08137194.bin"

gUnk_081371BC:: @ 081371BC
	.incbin "assets/data_08132B30/gUnk_081371BC.bin"

gUnk_081371E4:: @ 081371E4
	.incbin "assets/data_08132B30/gUnk_081371E4.bin"

gUnk_0813720C:: @ 0813720C
	.incbin "assets/data_08132B30/gUnk_0813720C.bin"

gUnk_08137234:: @ 08137234
	.incbin "assets/data_08132B30/gUnk_08137234.bin"

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
	.incbin "assets/data_08132B30/gUnk_081372A8.bin"

gUnk_0813730C:: @ 0813730C
	.incbin "assets/data_08132B30/gUnk_0813730C.bin"

gUnk_08137348:: @ 08137348
	.incbin "assets/data_08132B30/gUnk_08137348.bin"

gUnk_08137384:: @ 08137384
	.incbin "assets/data_08132B30/gUnk_08137384.bin"

gUnk_081373C0:: @ 081373C0
	.incbin "assets/data_08132B30/gUnk_081373C0.bin"

gUnk_081373E8:: @ 081373E8
	.incbin "assets/data_08132B30/gUnk_081373E8.bin"

gUnk_08137410:: @ 08137410
	.incbin "assets/data_08132B30/gUnk_08137410.bin"

gUnk_0813744C:: @ 0813744C
	.incbin "assets/data_08132B30/gUnk_0813744C.bin"

gUnk_08137488:: @ 08137488
	.incbin "assets/data_08132B30/gUnk_08137488.bin"

gUnk_081374B0:: @ 081374B0
	.incbin "assets/data_08132B30/gUnk_081374B0.bin"

gUnk_081374D8:: @ 081374D8
	.incbin "assets/data_08132B30/gUnk_081374D8.bin"

gUnk_08137514:: @ 08137514
	.incbin "assets/data_08132B30/gUnk_08137514.bin"

gUnk_08137550:: @ 08137550
	.incbin "assets/data_08132B30/gUnk_08137550.bin"

gUnk_0813758C:: @ 0813758C
	.incbin "assets/data_08132B30/gUnk_0813758C.bin"

gUnk_081375B4:: @ 081375B4
	.incbin "assets/data_08132B30/gUnk_081375B4.bin"

gUnk_081375DC:: @ 081375DC
	.incbin "assets/data_08132B30/gUnk_081375DC.bin"

gUnk_08137604:: @ 08137604
	.incbin "assets/data_08132B30/gUnk_08137604.bin"

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
	.incbin "assets/data_08132B30/gUnk_08137684.bin"

gUnk_081376AC:: @ 081376AC
	.incbin "assets/data_08132B30/gUnk_081376AC.bin"

gUnk_081376E8:: @ 081376E8
	.incbin "assets/data_08132B30/gUnk_081376E8.bin"

gUnk_08137710:: @ 08137710
	.incbin "assets/data_08132B30/gUnk_08137710.bin"

gUnk_0813774C:: @ 0813774C
	.incbin "assets/data_08132B30/gUnk_0813774C.bin"

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
	.incbin "assets/data_08132B30/gUnk_08137794.bin"

gUnk_081377A8:: @ 081377A8
	.incbin "assets/data_08132B30/gUnk_081377A8.bin"

gUnk_081377D0:: @ 081377D0
	.4byte gUnk_08137794
	.4byte gUnk_081377A8
	.4byte 00000000
	.4byte 00000000

gUnk_081377E0:: @ 081377E0
	.incbin "assets/data_08132B30/gUnk_081377E0.bin"

gUnk_08137808:: @ 08137808
	.incbin "assets/data_08132B30/gUnk_08137808.bin"

gUnk_08137830:: @ 08137830
	.incbin "assets/data_08132B30/gUnk_08137830.bin"

gUnk_08137858:: @ 08137858
	.incbin "assets/data_08132B30/gUnk_08137858.bin"

gUnk_08137880:: @ 08137880
	.incbin "assets/data_08132B30/gUnk_08137880.bin"

gUnk_081378A8:: @ 081378A8
	.incbin "assets/data_08132B30/gUnk_081378A8.bin"

gUnk_081378D0:: @ 081378D0
	.incbin "assets/data_08132B30/gUnk_081378D0.bin"

gUnk_081378F8:: @ 081378F8
	.incbin "assets/data_08132B30/gUnk_081378F8.bin"

gUnk_08137920:: @ 08137920
	.incbin "assets/data_08132B30/gUnk_08137920.bin"

gUnk_08137948:: @ 08137948
	.incbin "assets/data_08132B30/gUnk_08137948.bin"

gUnk_08137970:: @ 08137970
	.incbin "assets/data_08132B30/gUnk_08137970.bin"

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
	.incbin "assets/data_08132B30/gUnk_081379C4.bin"

gUnk_081379EC:: @ 081379EC
	.incbin "assets/data_08132B30/gUnk_081379EC.bin"

gUnk_08137A14:: @ 08137A14
	.incbin "assets/data_08132B30/gUnk_08137A14.bin"

gUnk_08137A3C:: @ 08137A3C
	.incbin "assets/data_08132B30/gUnk_08137A3C.bin"

gUnk_08137A64:: @ 08137A64
	.incbin "assets/data_08132B30/gUnk_08137A64.bin"

gUnk_08137A8C:: @ 08137A8C
	.incbin "assets/data_08132B30/gUnk_08137A8C.bin"

gUnk_08137ADC:: @ 08137ADC
	.incbin "assets/data_08132B30/gUnk_08137ADC.bin"

gUnk_08137B04:: @ 08137B04
	.incbin "assets/data_08132B30/gUnk_08137B04.bin"

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
	.incbin "assets/data_08132B30/gUnk_08137B7C.bin"

gUnk_08137BB8:: @ 08137BB8
	.incbin "assets/data_08132B30/gUnk_08137BB8.bin"

gUnk_08137BF4:: @ 08137BF4
	.incbin "assets/data_08132B30/gUnk_08137BF4.bin"

gUnk_08137C1C:: @ 08137C1C
	.incbin "assets/data_08132B30/gUnk_08137C1C.bin"

gUnk_08137C58:: @ 08137C58
	.4byte gUnk_08137B7C
	.4byte gUnk_08137BB8
	.4byte gUnk_08137BF4
	.4byte gUnk_08137C1C

gUnk_08137C68:: @ 08137C68
	.incbin "assets/data_08132B30/gUnk_08137C68.bin"

gUnk_08137CA4:: @ 08137CA4
	.incbin "assets/data_08132B30/gUnk_08137CA4.bin"

gUnk_08137CCC:: @ 08137CCC
	.4byte gUnk_08137C68
	.4byte gUnk_08137CA4

gUnk_08137CD4:: @ 08137CD4
	.incbin "assets/data_08132B30/gUnk_08137CD4.bin"

gUnk_08137D10:: @ 08137D10
	.incbin "assets/data_08132B30/gUnk_08137D10.bin"

gUnk_08137D4C:: @ 08137D4C
	.incbin "assets/data_08132B30/gUnk_08137D4C.bin"

gUnk_08137D88:: @ 08137D88
	.incbin "assets/data_08132B30/gUnk_08137D88.bin"

gUnk_08137DC4:: @ 08137DC4
	.4byte gUnk_08137CD4
	.4byte gUnk_08137D10
	.4byte gUnk_08137D4C
	.4byte gUnk_08137D88

gUnk_08137DD4:: @ 08137DD4
	.incbin "assets/data_08132B30/gUnk_08137DD4.bin"

gUnk_08137DFC:: @ 08137DFC
	.4byte gUnk_08137DD4

gUnk_08137E00:: @ 08137E00
	.incbin "assets/data_08132B30/gUnk_08137E00.bin"

gUnk_08137E78:: @ 08137E78
	.incbin "assets/data_08132B30/gUnk_08137E78.bin"

gUnk_08137EDC:: @ 08137EDC
	.incbin "assets/data_08132B30/gUnk_08137EDC.bin"

gUnk_08137F04:: @ 08137F04
	.incbin "assets/data_08132B30/gUnk_08137F04.bin"

gUnk_08137F18:: @ 08137F18
	.incbin "assets/data_08132B30/gUnk_08137F18.bin"

gUnk_08137F2C:: @ 08137F2C
	.incbin "assets/data_08132B30/gUnk_08137F2C.bin"

gUnk_08137F40:: @ 08137F40
	.incbin "assets/data_08132B30/gUnk_08137F40.bin"

gUnk_08137F68:: @ 08137F68
	.incbin "assets/data_08132B30/gUnk_08137F68.bin"

gUnk_08137F90:: @ 08137F90
	.incbin "assets/data_08132B30/gUnk_08137F90.bin"

gUnk_08137FB8:: @ 08137FB8
	.incbin "assets/data_08132B30/gUnk_08137FB8.bin"

gUnk_08137FCC:: @ 08137FCC
	.incbin "assets/data_08132B30/gUnk_08137FCC.bin"

gUnk_08137FF4:: @ 08137FF4
	.incbin "assets/data_08132B30/gUnk_08137FF4.bin"

gUnk_08138030:: @ 08138030
	.incbin "assets/data_08132B30/gUnk_08138030.bin"

gUnk_0813806C:: @ 0813806C
	.incbin "assets/data_08132B30/gUnk_0813806C.bin"

gUnk_08138094:: @ 08138094
	.incbin "assets/data_08132B30/gUnk_08138094.bin"

gUnk_081380BC:: @ 081380BC
	.incbin "assets/data_08132B30/gUnk_081380BC.bin"

gUnk_081380E4:: @ 081380E4
	.incbin "assets/data_08132B30/gUnk_081380E4.bin"

gUnk_0813810C:: @ 0813810C
	.incbin "assets/data_08132B30/gUnk_0813810C.bin"

gUnk_08138134:: @ 08138134
	.incbin "assets/data_08132B30/gUnk_08138134.bin"

gUnk_08138148:: @ 08138148
	.incbin "assets/data_08132B30/gUnk_08138148.bin"

gUnk_08138184:: @ 08138184
	.incbin "assets/data_08132B30/gUnk_08138184.bin"

gUnk_081381AC:: @ 081381AC
	.incbin "assets/data_08132B30/gUnk_081381AC.bin"

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
	.incbin "assets/data_08132B30/gUnk_08138234.bin"

gUnk_08138284:: @ 08138284
	.incbin "assets/data_08132B30/gUnk_08138284.bin"

gUnk_081382E8:: @ 081382E8
	.incbin "assets/data_08132B30/gUnk_081382E8.bin"

gUnk_08138324:: @ 08138324
	.incbin "assets/data_08132B30/gUnk_08138324.bin"

gUnk_08138360:: @ 08138360
	.incbin "assets/data_08132B30/gUnk_08138360.bin"

gUnk_08138388:: @ 08138388
	.incbin "assets/data_08132B30/gUnk_08138388.bin"

gUnk_081383C4:: @ 081383C4
	.incbin "assets/data_08132B30/gUnk_081383C4.bin"

gUnk_08138400:: @ 08138400
	.incbin "assets/data_08132B30/gUnk_08138400.bin"

gUnk_0813843C:: @ 0813843C
	.incbin "assets/data_08132B30/gUnk_0813843C.bin"

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
	.incbin "assets/data_08132B30/gUnk_081384A4.bin"

gUnk_081384CC:: @ 081384CC
	.incbin "assets/data_08132B30/gUnk_081384CC.bin"

gUnk_081384F4:: @ 081384F4
	.4byte gUnk_081384A4
	.4byte gUnk_081384CC

gUnk_081384FC:: @ 081384FC
	.incbin "assets/data_08132B30/gUnk_081384FC.bin"

gUnk_08138524:: @ 08138524
	.incbin "assets/data_08132B30/gUnk_08138524.bin"

gUnk_0813854C:: @ 0813854C
	.incbin "assets/data_08132B30/gUnk_0813854C.bin"

gUnk_08138574:: @ 08138574
	.incbin "assets/data_08132B30/gUnk_08138574.bin"

gUnk_0813859C:: @ 0813859C
	.incbin "assets/data_08132B30/gUnk_0813859C.bin"

gUnk_081385C4:: @ 081385C4
	.incbin "assets/data_08132B30/gUnk_081385C4.bin"

gUnk_081385EC:: @ 081385EC
	.incbin "assets/data_08132B30/gUnk_081385EC.bin"

gUnk_08138628:: @ 08138628
	.incbin "assets/data_08132B30/gUnk_08138628.bin"

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
	.incbin "assets/data_08132B30/gUnk_081386A0.bin"

gUnk_081386C8:: @ 081386C8
	.incbin "assets/data_08132B30/gUnk_081386C8.bin"

gUnk_081386F0:: @ 081386F0
	.4byte gUnk_081386A0
	.4byte gUnk_081386C8

gUnk_081386F8:: @ 081386F8
	.incbin "assets/data_08132B30/gUnk_081386F8.bin"

gUnk_08138720:: @ 08138720
	.incbin "assets/data_08132B30/gUnk_08138720.bin"

gUnk_08138748:: @ 08138748
	.4byte gUnk_081386F8
	.4byte gUnk_08138720

gUnk_08138750:: @ 08138750
	.incbin "assets/data_08132B30/gUnk_08138750.bin"

gUnk_081387B4:: @ 081387B4
	.incbin "assets/data_08132B30/gUnk_081387B4.bin"

gUnk_081387F0:: @ 081387F0
	.4byte gUnk_08138750
	.4byte gUnk_081387B4

gUnk_081387F8:: @ 081387F8
	.incbin "assets/data_08132B30/gUnk_081387F8.bin"

gUnk_08138820:: @ 08138820
	.incbin "assets/data_08132B30/gUnk_08138820.bin"

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
	.incbin "assets/data_08132B30/gUnk_081388A8.bin"

gUnk_081388D0:: @ 081388D0
	.incbin "assets/data_08132B30/gUnk_081388D0.bin"

gUnk_081388F8:: @ 081388F8
	.4byte gUnk_081388A8
	.4byte gUnk_081388D0

gUnk_08138900:: @ 08138900
	.incbin "assets/data_08132B30/gUnk_08138900.bin"

gUnk_08138928:: @ 08138928
	.incbin "assets/data_08132B30/gUnk_08138928.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813897C_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_0813897C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389A4:: @ 081389A4
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_081389A4_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081389A4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389B8:: @ 081389B8
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_081389B8_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081389B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389CC:: @ 081389CC
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_081389CC_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081389CC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif	

gUnk_081389E0:: @ 081389E0
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_081389E0_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081389E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389F4:: @ 081389F4
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_081389F4_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081389F4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08138A58:: @ 08138A58
	.incbin "assets/data_08132B30/gUnk_08138A58.bin"

gUnk_08138AA8:: @ 08138AA8
	.incbin "assets/data_08132B30/gUnk_08138AA8.bin"

gUnk_08138AD0:: @ 08138AD0
	.incbin "assets/data_08132B30/gUnk_08138AD0.bin"

gUnk_08138AF8:: @ 08138AF8
	.incbin "assets/data_08132B30/gUnk_08138AF8.bin"

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
	.incbin "assets/data_08132B30/gUnk_08138BD0.bin"

gUnk_08138C34:: @ 08138C34
	.4byte gUnk_08138BD0

gUnk_08138C38:: @ 08138C38
	.incbin "assets/data_08132B30/gUnk_08138C38.bin"

gUnk_08138C60:: @ 08138C60
	.incbin "assets/data_08132B30/gUnk_08138C60.bin"

gUnk_08138C88:: @ 08138C88
	.incbin "assets/data_08132B30/gUnk_08138C88.bin"

gUnk_08138CB0:: @ 08138CB0
	.incbin "assets/data_08132B30/gUnk_08138CB0.bin"

gUnk_08138CD8:: @ 08138CD8
	.incbin "assets/data_08132B30/gUnk_08138CD8.bin"

gUnk_08138D00:: @ 08138D00
	.incbin "assets/data_08132B30/gUnk_08138D00.bin"

gUnk_08138D28:: @ 08138D28
	.incbin "assets/data_08132B30/gUnk_08138D28.bin"

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
	.incbin "assets/data_08132B30/gUnk_08138DD4.bin"

gUnk_08138DFC:: @ 08138DFC
	.incbin "assets/data_08132B30/gUnk_08138DFC.bin"

gUnk_08138E38:: @ 08138E38
	.incbin "assets/data_08132B30/gUnk_08138E38.bin"

gUnk_08138E60:: @ 08138E60
	.incbin "assets/data_08132B30/gUnk_08138E60.bin"

gUnk_08138E9C:: @ 08138E9C
	.incbin "assets/data_08132B30/gUnk_08138E9C.bin"

gUnk_08138EC4:: @ 08138EC4
	.incbin "assets/data_08132B30/gUnk_08138EC4.bin"

gUnk_08138EEC:: @ 08138EEC
	.incbin "assets/data_08132B30/gUnk_08138EEC.bin"

gUnk_08138F14:: @ 08138F14
	.incbin "assets/data_08132B30/gUnk_08138F14.bin"

gUnk_08138F50:: @ 08138F50
	.incbin "assets/data_08132B30/gUnk_08138F50.bin"

gUnk_08138F78:: @ 08138F78
	.incbin "assets/data_08132B30/gUnk_08138F78.bin"

gUnk_08138FA0:: @ 08138FA0
	.incbin "assets/data_08132B30/gUnk_08138FA0.bin"

gUnk_08138FC8:: @ 08138FC8
	.incbin "assets/data_08132B30/gUnk_08138FC8.bin"

gUnk_08139004:: @ 08139004
	.incbin "assets/data_08132B30/gUnk_08139004.bin"

gUnk_08139040:: @ 08139040
	.incbin "assets/data_08132B30/gUnk_08139040.bin"

gUnk_0813907C:: @ 0813907C
	.incbin "assets/data_08132B30/gUnk_0813907C.bin"

gUnk_081390B8:: @ 081390B8
	.incbin "assets/data_08132B30/gUnk_081390B8.bin"

gUnk_081390E0:: @ 081390E0
	.incbin "assets/data_08132B30/gUnk_081390E0.bin"

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
	.incbin "assets/data_08132B30/gUnk_081391A8.bin"

gUnk_081391D0:: @ 081391D0
	.4byte gUnk_081391A8

gUnk_081391D4:: @ 081391D4
	.incbin "assets/data_08132B30/gUnk_081391D4.bin"

gUnk_081391FC:: @ 081391FC
	.4byte gUnk_081391D4
	.4byte gUnk_081391D4

gUnk_08139204:: @ 08139204
	.incbin "assets/data_08132B30/gUnk_08139204.bin"

gUnk_0813922C:: @ 0813922C
	.incbin "assets/data_08132B30/gUnk_0813922C.bin"

gUnk_08139254:: @ 08139254
	.incbin "assets/data_08132B30/gUnk_08139254.bin"

gUnk_08139290:: @ 08139290
	.incbin "assets/data_08132B30/gUnk_08139290.bin"

gUnk_081392B8:: @ 081392B8
	.incbin "assets/data_08132B30/gUnk_081392B8.bin"

gUnk_081392E0:: @ 081392E0
	.incbin "assets/data_08132B30/gUnk_081392E0.bin"

gUnk_08139308:: @ 08139308
	.incbin "assets/data_08132B30/gUnk_08139308.bin"

gUnk_08139330:: @ 08139330
	.incbin "assets/data_08132B30/gUnk_08139330.bin"

gUnk_0813936C:: @ 0813936C
	.incbin "assets/data_08132B30/gUnk_0813936C.bin"

gUnk_08139394:: @ 08139394
	.incbin "assets/data_08132B30/gUnk_08139394.bin"

gUnk_081393BC:: @ 081393BC
	.incbin "assets/data_08132B30/gUnk_081393BC.bin"

gUnk_08139434:: @ 08139434
	.incbin "assets/data_08132B30/gUnk_08139434.bin"

gUnk_0813945C:: @ 0813945C
	.incbin "assets/data_08132B30/gUnk_0813945C.bin"

gUnk_08139484:: @ 08139484
	.incbin "assets/data_08132B30/gUnk_08139484.bin"

gUnk_081394AC:: @ 081394AC
	.incbin "assets/data_08132B30/gUnk_081394AC.bin"

gUnk_081394D4:: @ 081394D4
	.incbin "assets/data_08132B30/gUnk_081394D4.bin"

gUnk_081394FC:: @ 081394FC
	.incbin "assets/data_08132B30/gUnk_081394FC.bin"

gUnk_08139538:: @ 08139538
	.incbin "assets/data_08132B30/gUnk_08139538.bin"

gUnk_08139560:: @ 08139560
	.incbin "assets/data_08132B30/gUnk_08139560.bin"

gUnk_08139588:: @ 08139588
	.incbin "assets/data_08132B30/gUnk_08139588.bin"

gUnk_081395B0:: @ 081395B0
	.incbin "assets/data_08132B30/gUnk_081395B0.bin"

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
	.incbin "assets/data_08132B30/gUnk_081396D8.bin"

gUnk_08139714:: @ 08139714
	.4byte gUnk_081396D8

gUnk_08139718:: @ 08139718
	.incbin "assets/data_08132B30/gUnk_08139718.bin"

gUnk_0813972C:: @ 0813972C
	.incbin "assets/data_08132B30/gUnk_0813972C.bin"

gUnk_08139754:: @ 08139754
	.incbin "assets/data_08132B30/gUnk_08139754.bin"

gUnk_08139790:: @ 08139790
	.incbin "assets/data_08132B30/gUnk_08139790.bin"

gUnk_081397B8:: @ 081397B8
	.incbin "assets/data_08132B30/gUnk_081397B8.bin"

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
	.incbin "assets/data_08132B30/gUnk_08139804.bin"

gUnk_0813982C:: @ 0813982C
	.incbin "assets/data_08132B30/gUnk_0813982C.bin"

gUnk_08139854:: @ 08139854
	.incbin "assets/data_08132B30/gUnk_08139854.bin"

gUnk_0813987C:: @ 0813987C
	.incbin "assets/data_08132B30/gUnk_0813987C.bin"

gUnk_081398A4:: @ 081398A4
	.incbin "assets/data_08132B30/gUnk_081398A4.bin"

gUnk_081398CC:: @ 081398CC
	.incbin "assets/data_08132B30/gUnk_081398CC.bin"

gUnk_08139908:: @ 08139908
	.incbin "assets/data_08132B30/gUnk_08139908.bin"

gUnk_08139944:: @ 08139944
	.incbin "assets/data_08132B30/gUnk_08139944.bin"

gUnk_08139980:: @ 08139980
	.incbin "assets/data_08132B30/gUnk_08139980.bin"

gUnk_081399A8:: @ 081399A8
	.incbin "assets/data_08132B30/gUnk_081399A8.bin"

gUnk_081399D0:: @ 081399D0
	.incbin "assets/data_08132B30/gUnk_081399D0.bin"

gUnk_08139A34:: @ 08139A34
	.incbin "assets/data_08132B30/gUnk_08139A34.bin"

gUnk_08139A5C:: @ 08139A5C
	.incbin "assets/data_08132B30/gUnk_08139A5C.bin"

gUnk_08139A84:: @ 08139A84
	.incbin "assets/data_08132B30/gUnk_08139A84.bin"

gUnk_08139AAC:: @ 08139AAC
	.incbin "assets/data_08132B30/gUnk_08139AAC.bin"

gUnk_08139AFC:: @ 08139AFC
	.incbin "assets/data_08132B30/gUnk_08139AFC.bin"

gUnk_08139B24:: @ 08139B24
	.incbin "assets/data_08132B30/gUnk_08139B24.bin"

gUnk_08139B4C:: @ 08139B4C
	.incbin "assets/data_08132B30/gUnk_08139B4C.bin"

gUnk_08139B88:: @ 08139B88
	.incbin "assets/data_08132B30/gUnk_08139B88.bin"

gUnk_08139BC4:: @ 08139BC4
	.incbin "assets/data_08132B30/gUnk_08139BC4.bin"

gUnk_08139BEC:: @ 08139BEC
	.incbin "assets/data_08132B30/gUnk_08139BEC.bin"

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
	.incbin "assets/data_08132B30/gUnk_08139D0C.bin"

gUnk_08139D5C:: @ 08139D5C
	.incbin "assets/data_08132B30/gUnk_08139D5C.bin"

gUnk_08139D84:: @ 08139D84
	.incbin "assets/data_08132B30/gUnk_08139D84.bin"

gUnk_08139DAC:: @ 08139DAC
	.incbin "assets/data_08132B30/gUnk_08139DAC.bin"

gUnk_08139DD4:: @ 08139DD4
	.incbin "assets/data_08132B30/gUnk_08139DD4.bin"

gUnk_08139DFC:: @ 08139DFC
	.incbin "assets/data_08132B30/gUnk_08139DFC.bin"

gUnk_08139E38:: @ 08139E38
	.incbin "assets/data_08132B30/gUnk_08139E38.bin"

gUnk_08139E74:: @ 08139E74
	.incbin "assets/data_08132B30/gUnk_08139E74.bin"

gUnk_08139EC4:: @ 08139EC4
	.incbin "assets/data_08132B30/gUnk_08139EC4.bin"

gUnk_08139F14:: @ 08139F14
	.incbin "assets/data_08132B30/gUnk_08139F14.bin"

gUnk_08139F50:: @ 08139F50
	.incbin "assets/data_08132B30/gUnk_08139F50.bin"

gUnk_08139F78:: @ 08139F78
	.incbin "assets/data_08132B30/gUnk_08139F78.bin"

gUnk_08139FA0:: @ 08139FA0
	.incbin "assets/data_08132B30/gUnk_08139FA0.bin"

gUnk_08139FF0:: @ 08139FF0
	.incbin "assets/data_08132B30/gUnk_08139FF0.bin"

gUnk_0813A018:: @ 0813A018
	.incbin "assets/data_08132B30/gUnk_0813A018.bin"

gUnk_0813A040:: @ 0813A040
	.incbin "assets/data_08132B30/gUnk_0813A040.bin"

gUnk_0813A090:: @ 0813A090
	.incbin "assets/data_08132B30/gUnk_0813A090.bin"

gUnk_0813A0B8:: @ 0813A0B8
	.incbin "assets/data_08132B30/gUnk_0813A0B8.bin"

gUnk_0813A0E0:: @ 0813A0E0
	.incbin "assets/data_08132B30/gUnk_0813A0E0.bin"

gUnk_0813A108:: @ 0813A108
	.incbin "assets/data_08132B30/gUnk_0813A108.bin"

gUnk_0813A130:: @ 0813A130
	.incbin "assets/data_08132B30/gUnk_0813A130.bin"

gUnk_0813A158:: @ 0813A158
	.incbin "assets/data_08132B30/gUnk_0813A158.bin"

gUnk_0813A180:: @ 0813A180
	.incbin "assets/data_08132B30/gUnk_0813A180.bin"

gUnk_0813A1A8:: @ 0813A1A8
	.incbin "assets/data_08132B30/gUnk_0813A1A8.bin"

gUnk_0813A1D0:: @ 0813A1D0
	.incbin "assets/data_08132B30/gUnk_0813A1D0.bin"

gUnk_0813A1F8:: @ 0813A1F8
	.incbin "assets/data_08132B30/gUnk_0813A1F8.bin"

gUnk_0813A220:: @ 0813A220
	.incbin "assets/data_08132B30/gUnk_0813A220.bin"

gUnk_0813A248:: @ 0813A248
	.incbin "assets/data_08132B30/gUnk_0813A248.bin"

gUnk_0813A284:: @ 0813A284
	.incbin "assets/data_08132B30/gUnk_0813A284.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813A3C0.bin"

gUnk_0813A3E8:: @ 0813A3E8
	.incbin "assets/data_08132B30/gUnk_0813A3E8.bin"

gUnk_0813A424:: @ 0813A424
	.incbin "assets/data_08132B30/gUnk_0813A424.bin"

gUnk_0813A44C:: @ 0813A44C
	.incbin "assets/data_08132B30/gUnk_0813A44C.bin"

gUnk_0813A474:: @ 0813A474
	.incbin "assets/data_08132B30/gUnk_0813A474.bin"

gUnk_0813A4B0:: @ 0813A4B0
	.incbin "assets/data_08132B30/gUnk_0813A4B0.bin"

gUnk_0813A4D8:: @ 0813A4D8
	.incbin "assets/data_08132B30/gUnk_0813A4D8.bin"

gUnk_0813A514:: @ 0813A514
	.incbin "assets/data_08132B30/gUnk_0813A514.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813A55C.bin"

gUnk_0813A584:: @ 0813A584
	.incbin "assets/data_08132B30/gUnk_0813A584.bin"

gUnk_0813A5AC:: @ 0813A5AC
	.4byte gUnk_0813A55C
	.4byte gUnk_0813A584

gUnk_0813A5B4:: @ 0813A5B4
	.incbin "assets/data_08132B30/gUnk_0813A5B4.bin"

gUnk_0813A5F0:: @ 0813A5F0
	.4byte gUnk_0813A5B4

gUnk_0813A5F4:: @ 0813A5F4
	.incbin "assets/data_08132B30/gUnk_0813A5F4.bin"

gUnk_0813A630:: @ 0813A630
	.incbin "assets/data_08132B30/gUnk_0813A630.bin"

gUnk_0813A66C:: @ 0813A66C
	.incbin "assets/data_08132B30/gUnk_0813A66C.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813A704.bin"

gUnk_0813A740:: @ 0813A740
	.4byte gUnk_0813A704

gUnk_0813A744:: @ 0813A744
	.incbin "assets/data_08132B30/gUnk_0813A744.bin"

gUnk_0813A76C:: @ 0813A76C
	.incbin "assets/data_08132B30/gUnk_0813A76C.bin"

gUnk_0813A794:: @ 0813A794
	.incbin "assets/data_08132B30/gUnk_0813A794.bin"

gUnk_0813A7BC:: @ 0813A7BC
	.incbin "assets/data_08132B30/gUnk_0813A7BC.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813AA54.bin"

gUnk_0813AA68:: @ 0813AA68
	.incbin "assets/data_08132B30/gUnk_0813AA68.bin"

gUnk_0813AA7C:: @ 0813AA7C
	.incbin "assets/data_08132B30/gUnk_0813AA7C.bin"

gUnk_0813AA90:: @ 0813AA90
	.incbin "assets/data_08132B30/gUnk_0813AA90.bin"

gUnk_0813AAA4:: @ 0813AAA4
	.incbin "assets/data_08132B30/gUnk_0813AAA4.bin"

gUnk_0813AAB8:: @ 0813AAB8
	.incbin "assets/data_08132B30/gUnk_0813AAB8.bin"

gUnk_0813AACC:: @ 0813AACC
	.incbin "assets/data_08132B30/gUnk_0813AACC.bin"

gUnk_0813AAE0:: @ 0813AAE0
	.incbin "assets/data_08132B30/gUnk_0813AAE0.bin"

gUnk_0813AAF4:: @ 0813AAF4
	.incbin "assets/data_08132B30/gUnk_0813AAF4.bin"

gUnk_0813AB08:: @ 0813AB08
	.incbin "assets/data_08132B30/gUnk_0813AB08.bin"

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
	.incbin "assets/data_08132B30/gUnk_0813AB58.bin"

gUnk_0813AB6C:: @ 0813AB6C
	.incbin "assets/data_08132B30/gUnk_0813AB6C.bin"

gUnk_0813AB80:: @ 0813AB80
	.incbin "assets/data_08132B30/gUnk_0813AB80.bin"

gUnk_0813AB94:: @ 0813AB94
	.incbin "assets/data_08132B30/gUnk_0813AB94.bin"

gUnk_0813ABA8:: @ 0813ABA8
	.incbin "assets/data_08132B30/gUnk_0813ABA8.bin"

gUnk_0813ABBC:: @ 0813ABBC
	.incbin "assets/data_08132B30/gUnk_0813ABBC.bin"

gUnk_0813ABD0:: @ 0813ABD0
	.incbin "assets/data_08132B30/gUnk_0813ABD0.bin"

gUnk_0813ABE4:: @ 0813ABE4
	.incbin "assets/data_08132B30/gUnk_0813ABE4.bin"

gUnk_0813ABF8:: @ 0813ABF8
.ifdef JP
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_0813ABF8_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_0813ABF8_1_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_0813ABF8_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_0813AC0C:: @ 0813AC0C
	.incbin "assets/data_08132B30/gUnk_0813AC0C.bin"

gUnk_0813AC20:: @ 0813AC20
	.incbin "assets/data_08132B30/gUnk_0813AC20.bin"

gUnk_0813AC34:: @ 0813AC34
	.incbin "assets/data_08132B30/gUnk_0813AC34.bin"

gUnk_0813AC48:: @ 0813AC48
	.incbin "assets/data_08132B30/gUnk_0813AC48.bin"

gUnk_0813AC5C:: @ 0813AC5C
	.incbin "assets/data_08132B30/gUnk_0813AC5C.bin"

gUnk_0813AC70:: @ 0813AC70
	.incbin "assets/data_08132B30/gUnk_0813AC70.bin"

gUnk_0813AC84:: @ 0813AC84
	.incbin "assets/data_08132B30/gUnk_0813AC84.bin"

gUnk_0813AC98:: @ 0813AC98
	.incbin "assets/data_08132B30/gUnk_0813AC98.bin"

gUnk_0813ACAC:: @ 0813ACAC
	.incbin "assets/data_08132B30/gUnk_0813ACAC.bin"

gUnk_0813ACC0:: @ 0813ACC0
	.incbin "assets/data_08132B30/gUnk_0813ACC0.bin"

gUnk_0813ACD4:: @ 0813ACD4
	.incbin "assets/data_08132B30/gUnk_0813ACD4.bin"

gUnk_0813ACE8:: @ 0813ACE8
	.incbin "assets/data_08132B30/gUnk_0813ACE8.bin"

gUnk_0813ACFC:: @ 0813ACFC
	.incbin "assets/data_08132B30/gUnk_0813ACFC.bin"

gUnk_0813AD10:: @ 0813AD10
	.incbin "assets/data_08132B30/gUnk_0813AD10.bin"

gUnk_0813AD24:: @ 0813AD24
	.incbin "assets/data_08132B30/gUnk_0813AD24.bin"

gUnk_0813AD38:: @ 0813AD38
	.incbin "assets/data_08132B30/gUnk_0813AD38.bin"

gUnk_0813AD4C:: @ 0813AD4C
	.incbin "assets/data_08132B30/gUnk_0813AD4C.bin"

gUnk_0813AD60:: @ 0813AD60
	.incbin "assets/data_08132B30/gUnk_0813AD60.bin"

gUnk_0813AD74:: @ 0813AD74
	.incbin "assets/data_08132B30/gUnk_0813AD74.bin"

gUnk_0813AD88:: @ 0813AD88
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_0813AD88_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_0813AD88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0813ADEC:: @ 0813ADEC
	.incbin "assets/data_08132B30/gUnk_0813ADEC.bin"

gUnk_0813AE14:: @ 0813AE14
	.incbin "assets/data_08132B30/gUnk_0813AE14.bin"

gUnk_081C8C74:: @ 081C8C74
	.incbin "assets/data_08132B30/gUnk_081C8C74.bin"

gUnk_081D7674:: @ 081D7674
	.incbin "assets/data_08132B30/gUnk_081D7674.bin"

gUnk_081DF834:: @ 081DF834
	.incbin "assets/data_08132B30/gUnk_081DF834.bin"

gUnk_081FF1B4:: @ 081FF1B4
	.incbin "assets/data_08132B30/gUnk_081FF1B4.bin"

@ 0x2184B4 - 0x21DCB3
	.incbin "graphics/npc/postman.4bpp"

@ 0x21DCB4 - 0x21E913
	.incbin "graphics/npc/malon.4bpp"
	.incbin "assets/data_08132B30/gUnk_081FF1B4_1.bin"
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_081FF1B4_2_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_081FF1B4_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_08132B30/gUnk_081FF1B4_4.bin"

gUnk_082474D4:: @ 082474D4
	.incbin "assets/data_08132B30/gUnk_082474D4.bin"

gUnk_082D4894::
	.incbin "graphics/pot_portal.4bpp"
	.incbin "assets/data_08132B30/gUnk_082D4894.bin"

gUnk_082E68F4:: @ 082E68F4
	.incbin "assets/data_08132B30/gUnk_082E68F4.bin"

gUnk_082F27F4:: @ 082F27F4
	.incbin "assets/data_08132B30/gUnk_082F27F4.bin"

gUnk_082F3D74:: @ 082F3D74
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_2_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_4_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_6_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_7_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_8_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_9_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_10_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_11_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_12_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_13_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_14_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_15_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_16_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_17_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_18_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_19_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
	@ TODO remove the 4 bytes at the correct place
	.incbin "assets/data_08132B30/gUnk_082F3D74_20_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_21_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_22_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_23_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_08132B30/gUnk_082F3D74_24.bin"
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_25_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_26_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_08132B30/gUnk_082F3D74_27.bin"
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_08132B30/gUnk_082F3D74_28_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_29_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_08132B30/gUnk_082F3D74_30.bin"

.ifdef EU
@ TODO differs to gUnk_08324AE4
	.incbin "assets/data_08132B30/gUnk_082F3D74_31_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_082F3D74_32_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08324AE4:: @ 08324AE4
	.incbin "assets/data_08132B30/gUnk_08324AE4.bin"
	.incbin "data/tilesets/minish_woods/tiles_bottom.4bpp.lz"
	.incbin "assets/data_08132B30/gUnk_08324AE4_1.bin"

@ TODO EU differs from here
.ifdef EU
	.incbin "assets/data_08132B30/gUnk_08324AE4_2_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08324AE4_3_USA-JP-DEMO_USA-DEMO_JP.bin"

@ TODO JP differs from here
.ifdef JP
	.incbin "assets/data_08132B30/gUnk_08324AE4_4_JP.bin"
.else
@ TODO JP differs from here
.ifdef DEMO_JP
	.incbin "assets/data_08132B30/gUnk_08324AE4_5_DEMO_JP.bin"
.else
	.incbin "assets/data_08132B30/gUnk_08324AE4_6_USA-DEMO_USA.bin"

.endif
.endif
.endif

@ TODO JP and EU differ to here

gGlobalGfxAndPalettes:: @ 085A2E80
	.incbin "assets/data_08132B30/gGlobalGfxAndPalettes.bin"

gUnk_085A7320:: @ 085A7320
	.incbin "assets/data_08132B30/gUnk_085A7320.bin"

gUnk_085A97A0:: @ 085A97A0
	.incbin "assets/data_08132B30/gUnk_085A97A0.bin"

gUnk_085B4180:: @ 085B4180
.ifdef EU
	@TODO differs to
	.incbin "assets/data_08132B30/gUnk_085B4180_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_085B4180_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

@ TODO figurine Data
gUnk_085B5EC0:: @ 085B5EC0
	.incbin "assets/data_08132B30/gUnk_085B5EC0.bin"

gUnk_085B5FA0:: @ 085B5FA0
	.incbin "assets/data_08132B30/gUnk_085B5FA0.bin"

gUnk_085B6080:: @ 085B6080
	.incbin "assets/data_08132B30/gUnk_085B6080.bin"

gUnk_085B6160:: @ 085B6160
	.incbin "assets/data_08132B30/gUnk_085B6160.bin"

gUnk_085B6240:: @ 085B6240
	.incbin "assets/data_08132B30/gUnk_085B6240.bin"

gUnk_085B6320:: @ 085B6320
	.incbin "assets/data_08132B30/gUnk_085B6320.bin"

gUnk_085B6400:: @ 085B6400
	.incbin "assets/data_08132B30/gUnk_085B6400.bin"

gUnk_085B64E0:: @ 085B64E0
	.incbin "assets/data_08132B30/gUnk_085B64E0.bin"

gUnk_085B65C0:: @ 085B65C0
	.incbin "assets/data_08132B30/gUnk_085B65C0.bin"

gUnk_085B66A0:: @ 085B66A0
	.incbin "assets/data_08132B30/gUnk_085B66A0.bin"

gUnk_085B6780:: @ 085B6780
	.incbin "assets/data_08132B30/gUnk_085B6780.bin"

gUnk_085B6860:: @ 085B6860
	.incbin "assets/data_08132B30/gUnk_085B6860.bin"

gUnk_085B6940:: @ 085B6940
	.incbin "assets/data_08132B30/gUnk_085B6940.bin"

gUnk_085B6A20:: @ 085B6A20
	.incbin "assets/data_08132B30/gUnk_085B6A20.bin"

gUnk_085B6B00:: @ 085B6B00
	.incbin "assets/data_08132B30/gUnk_085B6B00.bin"

gUnk_085B6BE0:: @ 085B6BE0
	.incbin "assets/data_08132B30/gUnk_085B6BE0.bin"

gUnk_085B6CC0:: @ 085B6CC0
	.incbin "assets/data_08132B30/gUnk_085B6CC0.bin"

gUnk_085B6DA0:: @ 085B6DA0
	.incbin "assets/data_08132B30/gUnk_085B6DA0.bin"

gUnk_085B6E80:: @ 085B6E80
	.incbin "assets/data_08132B30/gUnk_085B6E80.bin"

gUnk_085B6F60:: @ 085B6F60
	.incbin "assets/data_08132B30/gUnk_085B6F60.bin"

gUnk_085B7040:: @ 085B7040
	.incbin "assets/data_08132B30/gUnk_085B7040.bin"

gUnk_085B7120:: @ 085B7120
	.incbin "assets/data_08132B30/gUnk_085B7120.bin"

gUnk_085B7200:: @ 085B7200
	.incbin "assets/data_08132B30/gUnk_085B7200.bin"

gUnk_085B72E0:: @ 085B72E0
	.incbin "assets/data_08132B30/gUnk_085B72E0.bin"

gUnk_085B73C0:: @ 085B73C0
	.incbin "assets/data_08132B30/gUnk_085B73C0.bin"

gUnk_085B74A0:: @ 085B74A0
	.incbin "assets/data_08132B30/gUnk_085B74A0.bin"

gUnk_085B7580:: @ 085B7580
	.incbin "assets/data_08132B30/gUnk_085B7580.bin"

gUnk_085B7660:: @ 085B7660
	.incbin "assets/data_08132B30/gUnk_085B7660.bin"

gUnk_085B7740:: @ 085B7740
	.incbin "assets/data_08132B30/gUnk_085B7740.bin"

gUnk_085B7820:: @ 085B7820
	.incbin "assets/data_08132B30/gUnk_085B7820.bin"

gUnk_085B7900:: @ 085B7900
	.incbin "assets/data_08132B30/gUnk_085B7900.bin"

gUnk_085B79E0:: @ 085B79E0
	.incbin "assets/data_08132B30/gUnk_085B79E0.bin"

gUnk_085B7AC0:: @ 085B7AC0
	.incbin "assets/data_08132B30/gUnk_085B7AC0.bin"

gUnk_085B7BA0:: @ 085B7BA0
	.incbin "assets/data_08132B30/gUnk_085B7BA0.bin"

gUnk_085B7C80:: @ 085B7C80
	.incbin "assets/data_08132B30/gUnk_085B7C80.bin"

gUnk_085B7D60:: @ 085B7D60
	.incbin "assets/data_08132B30/gUnk_085B7D60.bin"

gUnk_085B7E40:: @ 085B7E40
	.incbin "assets/data_08132B30/gUnk_085B7E40.bin"

gUnk_085B7F20:: @ 085B7F20
	.incbin "assets/data_08132B30/gUnk_085B7F20.bin"

gUnk_085B8000:: @ 085B8000
	.incbin "assets/data_08132B30/gUnk_085B8000.bin"

gUnk_085B80E0:: @ 085B80E0
	.incbin "assets/data_08132B30/gUnk_085B80E0.bin"

gUnk_085B81C0:: @ 085B81C0
	.incbin "assets/data_08132B30/gUnk_085B81C0.bin"

gUnk_085B82A0:: @ 085B82A0
	.incbin "assets/data_08132B30/gUnk_085B82A0.bin"

gUnk_085B8380:: @ 085B8380
	.incbin "assets/data_08132B30/gUnk_085B8380.bin"

gUnk_085B8460:: @ 085B8460
	.incbin "assets/data_08132B30/gUnk_085B8460.bin"

gUnk_085B8540:: @ 085B8540
	.incbin "assets/data_08132B30/gUnk_085B8540.bin"

gUnk_085B8620:: @ 085B8620
	.incbin "assets/data_08132B30/gUnk_085B8620.bin"

gUnk_085B8700:: @ 085B8700
	.incbin "assets/data_08132B30/gUnk_085B8700.bin"

gUnk_085B87E0:: @ 085B87E0
	.incbin "assets/data_08132B30/gUnk_085B87E0.bin"

gUnk_085B88C0:: @ 085B88C0
	.incbin "assets/data_08132B30/gUnk_085B88C0.bin"

gUnk_085B89E0:: @ 085B89E0
	.incbin "assets/data_08132B30/gUnk_085B89E0.bin"

gUnk_085B8AC0:: @ 085B8AC0
	.incbin "assets/data_08132B30/gUnk_085B8AC0.bin"

gUnk_085B8BA0:: @ 085B8BA0
	.incbin "assets/data_08132B30/gUnk_085B8BA0.bin"

gUnk_085B8C80:: @ 085B8C80
	.incbin "assets/data_08132B30/gUnk_085B8C80.bin"

gUnk_085B8D60:: @ 085B8D60
	.incbin "assets/data_08132B30/gUnk_085B8D60.bin"

gUnk_085B8E40:: @ 085B8E40
	.incbin "assets/data_08132B30/gUnk_085B8E40.bin"

gUnk_085B8F20:: @ 085B8F20
	.incbin "assets/data_08132B30/gUnk_085B8F20.bin"

gUnk_085B9000:: @ 085B9000
	.incbin "assets/data_08132B30/gUnk_085B9000.bin"

gUnk_085B90E0:: @ 085B90E0
	.incbin "assets/data_08132B30/gUnk_085B90E0.bin"

gUnk_085B91C0:: @ 085B91C0
	.incbin "assets/data_08132B30/gUnk_085B91C0.bin"

gUnk_085B92A0:: @ 085B92A0
	.incbin "assets/data_08132B30/gUnk_085B92A0.bin"

gUnk_085B9380:: @ 085B9380
	.incbin "assets/data_08132B30/gUnk_085B9380.bin"

gUnk_085B9460:: @ 085B9460
	.incbin "assets/data_08132B30/gUnk_085B9460.bin"

gUnk_085B9540:: @ 085B9540
	.incbin "assets/data_08132B30/gUnk_085B9540.bin"

gUnk_085B9620:: @ 085B9620
	.incbin "assets/data_08132B30/gUnk_085B9620.bin"

gUnk_085B9700:: @ 085B9700
	.incbin "assets/data_08132B30/gUnk_085B9700.bin"

gUnk_085B97E0:: @ 085B97E0
	.incbin "assets/data_08132B30/gUnk_085B97E0.bin"

gUnk_085B98C0:: @ 085B98C0
	.incbin "assets/data_08132B30/gUnk_085B98C0.bin"

gUnk_085B99A0:: @ 085B99A0
	.incbin "assets/data_08132B30/gUnk_085B99A0.bin"

gUnk_085B9A80:: @ 085B9A80
	.incbin "assets/data_08132B30/gUnk_085B9A80.bin"

gUnk_085B9B60:: @ 085B9B60
	.incbin "assets/data_08132B30/gUnk_085B9B60.bin"

gUnk_085B9C40:: @ 085B9C40
	.incbin "assets/data_08132B30/gUnk_085B9C40.bin"

gUnk_085B9D20:: @ 085B9D20
	.incbin "assets/data_08132B30/gUnk_085B9D20.bin"

gUnk_085B9E00:: @ 085B9E00
	.incbin "assets/data_08132B30/gUnk_085B9E00.bin"

gUnk_085B9EE0:: @ 085B9EE0
	.incbin "assets/data_08132B30/gUnk_085B9EE0.bin"

gUnk_085B9FC0:: @ 085B9FC0
	.incbin "assets/data_08132B30/gUnk_085B9FC0.bin"

gUnk_085BA0A0:: @ 085BA0A0
	.incbin "assets/data_08132B30/gUnk_085BA0A0.bin"

gUnk_085BA180:: @ 085BA180
	.incbin "assets/data_08132B30/gUnk_085BA180.bin"

gUnk_085BA260:: @ 085BA260
	.incbin "assets/data_08132B30/gUnk_085BA260.bin"

gUnk_085BA340:: @ 085BA340
	.incbin "assets/data_08132B30/gUnk_085BA340.bin"

gUnk_085BA420:: @ 085BA420
	.incbin "assets/data_08132B30/gUnk_085BA420.bin"

gUnk_085BA500:: @ 085BA500
	.incbin "assets/data_08132B30/gUnk_085BA500.bin"

gUnk_085BA5E0:: @ 085BA5E0
	.incbin "assets/data_08132B30/gUnk_085BA5E0.bin"

gUnk_085BA6C0:: @ 085BA6C0
	.incbin "assets/data_08132B30/gUnk_085BA6C0.bin"

gUnk_085BA7A0:: @ 085BA7A0
	.incbin "assets/data_08132B30/gUnk_085BA7A0.bin"

gUnk_085BA880:: @ 085BA880
	.incbin "assets/data_08132B30/gUnk_085BA880.bin"

gUnk_085BA960:: @ 085BA960
	.incbin "assets/data_08132B30/gUnk_085BA960.bin"

gUnk_085BAA40:: @ 085BAA40
	.incbin "assets/data_08132B30/gUnk_085BAA40.bin"

gUnk_085BAB20:: @ 085BAB20
	.incbin "assets/data_08132B30/gUnk_085BAB20.bin"

gUnk_085BAC00:: @ 085BAC00
	.incbin "assets/data_08132B30/gUnk_085BAC00.bin"

gUnk_085BACE0:: @ 085BACE0
	.incbin "assets/data_08132B30/gUnk_085BACE0.bin"

gUnk_085BADC0:: @ 085BADC0
	.incbin "assets/data_08132B30/gUnk_085BADC0.bin"

gUnk_085BAEA0:: @ 085BAEA0
	.incbin "assets/data_08132B30/gUnk_085BAEA0.bin"

gUnk_085BAF80:: @ 085BAF80
	.incbin "assets/data_08132B30/gUnk_085BAF80.bin"

gUnk_085BB060:: @ 085BB060
	.incbin "assets/data_08132B30/gUnk_085BB060.bin"

gUnk_085BB140:: @ 085BB140
	.incbin "assets/data_08132B30/gUnk_085BB140.bin"

gUnk_085BB220:: @ 085BB220
	.incbin "assets/data_08132B30/gUnk_085BB220.bin"

gUnk_085BB300:: @ 085BB300
	.incbin "assets/data_08132B30/gUnk_085BB300.bin"

gUnk_085BB3E0:: @ 085BB3E0
	.incbin "assets/data_08132B30/gUnk_085BB3E0.bin"

gUnk_085BB4C0:: @ 085BB4C0
	.incbin "assets/data_08132B30/gUnk_085BB4C0.bin"

gUnk_085BB5A0:: @ 085BB5A0
	.incbin "assets/data_08132B30/gUnk_085BB5A0.bin"

gUnk_085BB680:: @ 085BB680
	.incbin "assets/data_08132B30/gUnk_085BB680.bin"

gUnk_085BB760:: @ 085BB760
	.incbin "assets/data_08132B30/gUnk_085BB760.bin"

gUnk_085BB840:: @ 085BB840
	.incbin "assets/data_08132B30/gUnk_085BB840.bin"

gUnk_085BB920:: @ 085BB920
	.incbin "assets/data_08132B30/gUnk_085BB920.bin"

gUnk_085BBA00:: @ 085BBA00
	.incbin "assets/data_08132B30/gUnk_085BBA00.bin"

gUnk_085BBAE0:: @ 085BBAE0
	.incbin "assets/data_08132B30/gUnk_085BBAE0.bin"

gUnk_085BBBC0:: @ 085BBBC0
	.incbin "assets/data_08132B30/gUnk_085BBBC0.bin"

gUnk_085BBCA0:: @ 085BBCA0
	.incbin "assets/data_08132B30/gUnk_085BBCA0.bin"

gUnk_085BBD80:: @ 085BBD80
	.incbin "assets/data_08132B30/gUnk_085BBD80.bin"

gUnk_085BBE60:: @ 085BBE60
	.incbin "assets/data_08132B30/gUnk_085BBE60.bin"

gUnk_085BBF40:: @ 085BBF40
	.incbin "assets/data_08132B30/gUnk_085BBF40.bin"

gUnk_085BC020:: @ 085BC020
	.incbin "assets/data_08132B30/gUnk_085BC020.bin"

gUnk_085BC100:: @ 085BC100
	.incbin "assets/data_08132B30/gUnk_085BC100.bin"

gUnk_085BC1E0:: @ 085BC1E0
	.incbin "assets/data_08132B30/gUnk_085BC1E0.bin"

gUnk_085BC2C0:: @ 085BC2C0
	.incbin "assets/data_08132B30/gUnk_085BC2C0.bin"

gUnk_085BC3A0:: @ 085BC3A0
	.incbin "assets/data_08132B30/gUnk_085BC3A0.bin"

gUnk_085BC480:: @ 085BC480
	.incbin "assets/data_08132B30/gUnk_085BC480.bin"

gUnk_085BC560:: @ 085BC560
	.incbin "assets/data_08132B30/gUnk_085BC560.bin"

gUnk_085BC640:: @ 085BC640
	.incbin "assets/data_08132B30/gUnk_085BC640.bin"

gUnk_085BC720:: @ 085BC720
	.incbin "assets/data_08132B30/gUnk_085BC720.bin"

gUnk_085BC800:: @ 085BC800
	.incbin "assets/data_08132B30/gUnk_085BC800.bin"

gUnk_085BC8E0:: @ 085BC8E0
	.incbin "assets/data_08132B30/gUnk_085BC8E0.bin"

gUnk_085BC9C0:: @ 085BC9C0
	.incbin "assets/data_08132B30/gUnk_085BC9C0.bin"

gUnk_085BCAA0:: @ 085BCAA0
	.incbin "assets/data_08132B30/gUnk_085BCAA0.bin"

gUnk_085BCB80:: @ 085BCB80
	.incbin "assets/data_08132B30/gUnk_085BCB80.bin"

gUnk_085BCC60:: @ 085BCC60
	.incbin "assets/data_08132B30/gUnk_085BCC60.bin"

gUnk_085BCD40:: @ 085BCD40
	.incbin "assets/data_08132B30/gUnk_085BCD40.bin"

gUnk_085BCE20:: @ 085BCE20
	.incbin "assets/data_08132B30/gUnk_085BCE20.bin"

gUnk_085BCF00:: @ 085BCF00
	.incbin "assets/data_08132B30/gUnk_085BCF00.bin"

gUnk_085BCFE0:: @ 085BCFE0
	.incbin "assets/data_08132B30/gUnk_085BCFE0.bin"

gUnk_085BD0C0:: @ 085BD0C0
	.incbin "assets/data_08132B30/gUnk_085BD0C0.bin"

gUnk_085BD1A0:: @ 085BD1A0
	.incbin "assets/data_08132B30/gUnk_085BD1A0.bin"

gUnk_085BD280:: @ 085BD280
	.incbin "assets/data_08132B30/gUnk_085BD280.bin"

gUnk_085BD360:: @ 085BD360
	.incbin "assets/data_08132B30/gUnk_085BD360.bin"

gUnk_085BD440:: @ 085BD440
	.incbin "assets/data_08132B30/gUnk_085BD440.bin"

gUnk_085BD520:: @ 085BD520
	.incbin "assets/data_08132B30/gUnk_085BD520.bin"

@ TODO end of figurine data

	.incbin "graphics/intro/capcom.gbapal"
	.incbin "graphics/intro/nintendo.gbapal"
	.incbin "assets/data_08132B30/gUnk_085BD520_1.bin"

gUnk_085C4620:: @ 085C4620
	.incbin "assets/data_08132B30/gUnk_085C4620.bin"

gUnk_085C4B20:: @ 085C4B20
	.incbin "assets/data_08132B30/gUnk_085C4B20.bin"

gUnk_085C4DA0:: @ 085C4DA0
	.incbin "assets/data_08132B30/gUnk_085C4DA0.bin"

gUnk_085C4E60:: @ 085C4E60
	.incbin "assets/data_08132B30/gUnk_085C4E60.bin"

gUnk_085C4F20:: @ 085C4F20
	.incbin "assets/data_08132B30/gUnk_085C4F20.bin"

gUnk_085C4FE0:: @ 085C4FE0
	.incbin "assets/data_08132B30/gUnk_085C4FE0.bin"

.ifdef EU
	@ TODO differs to gUnk_086926A0
	.incbin "assets/data_08132B30/gUnk_085C4FE0_1_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_085C4FE0_2_USA-JP-DEMO_USA-DEMO_JP.bin"

.endif
gUnk_086926A0:: @ 086926A0
	.incbin "assets/data_08132B30/gUnk_086926A0.bin"

gUnk_08692780:: @ 08692780
	.incbin "assets/data_08132B30/gUnk_08692780.bin"

gUnk_08692860:: @ 08692860
	.incbin "assets/data_08132B30/gUnk_08692860.bin"

gUnk_08692940:: @ 08692940
	.incbin "assets/data_08132B30/gUnk_08692940.bin"

gUnk_08692A20:: @ 08692A20
	.incbin "assets/data_08132B30/gUnk_08692A20.bin"

gUnk_08692B00:: @ 08692B00
	.incbin "assets/data_08132B30/gUnk_08692B00.bin"

gUnk_08692BE0:: @ 08692BE0
	.incbin "assets/data_08132B30/gUnk_08692BE0.bin"

gUnk_08692CC0:: @ 08692CC0
	.incbin "assets/data_08132B30/gUnk_08692CC0.bin"

gUnk_08692DA0:: @ 08692DA0
	.incbin "assets/data_08132B30/gUnk_08692DA0.bin"

gUnk_08692E80:: @ 08692E80
	.incbin "assets/data_08132B30/gUnk_08692E80.bin"

gUnk_08692F60:: @ 08692F60
	.incbin "assets/data_08132B30/gUnk_08692F60.bin"
	@ TODO 08692FA0 to 086A2A3F is .incbin "graphics/font.4bpp"
	.incbin "assets/data_08132B30/gUnk_08692F60_1.bin"
gUnk_08696F60:: @ 08696F60
	.incbin "assets/data_08132B30/gUnk_08696F60.bin"
gUnk_086978E0:: @ 086978E0
	.incbin "assets/data_08132B30/gUnk_086978E0.bin"
gUnk_086998E0:: @ 086998E0
	.incbin "assets/data_08132B30/gUnk_086998E0.bin"
gUnk_086A18E0:: @ 086A18E0
	.incbin "assets/data_08132B30/gUnk_086A18E0.bin"

	.incbin "assets/data_08132B30/gUnk_086A18E0_1.bin"
gUnk_086A2A60:: @ 086A2A60
	.incbin "assets/data_08132B30/gUnk_086A2A60.bin"

gUnk_086A2EE0:: @ 086A2EE0
	.incbin "assets/data_08132B30/gUnk_086A2EE0.bin"

gUnk_086AAEE0:: @ 086AAEE0
	.incbin "assets/data_08132B30/gUnk_086AAEE0.bin"

gUnk_086D4460:: @ 086D4460
	.incbin "assets/data_08132B30/gUnk_086D4460.bin"

gUnk_086E8460:: @ 086E8460
	.incbin "assets/data_08132B30/gUnk_086E8460.bin"

@ TODO start of figurine data
gUnk_0883FB00:: @ 0883FB00
	.incbin "assets/data_08132B30/gUnk_0883FB00.bin"

gUnk_08840080:: @ 08840080
	.incbin "assets/data_08132B30/gUnk_08840080.bin"

gUnk_08840660:: @ 08840660
	.incbin "assets/data_08132B30/gUnk_08840660.bin"

gUnk_08840AE0:: @ 08840AE0
	.incbin "assets/data_08132B30/gUnk_08840AE0.bin"

gUnk_08840FA0:: @ 08840FA0
	.incbin "assets/data_08132B30/gUnk_08840FA0.bin"

gUnk_088414A0:: @ 088414A0
	.incbin "assets/data_08132B30/gUnk_088414A0.bin"

gUnk_08841820:: @ 08841820
	.incbin "assets/data_08132B30/gUnk_08841820.bin"

gUnk_08841AE0:: @ 08841AE0
	.incbin "assets/data_08132B30/gUnk_08841AE0.bin"

gUnk_08841FC0:: @ 08841FC0
	.incbin "assets/data_08132B30/gUnk_08841FC0.bin"

gUnk_088422E0:: @ 088422E0
	.incbin "assets/data_08132B30/gUnk_088422E0.bin"

gUnk_08843080:: @ 08843080
	.incbin "assets/data_08132B30/gUnk_08843080.bin"

gUnk_08843EE0:: @ 08843EE0
	.incbin "assets/data_08132B30/gUnk_08843EE0.bin"

gUnk_08844DC0:: @ 08844DC0
	.incbin "assets/data_08132B30/gUnk_08844DC0.bin"

gUnk_08845BA0:: @ 08845BA0
	.incbin "assets/data_08132B30/gUnk_08845BA0.bin"

gUnk_088475A0:: @ 088475A0
	.incbin "assets/data_08132B30/gUnk_088475A0.bin"

gUnk_08848F60:: @ 08848F60
	.incbin "assets/data_08132B30/gUnk_08848F60.bin"

gUnk_0884A020:: @ 0884A020
	.incbin "assets/data_08132B30/gUnk_0884A020.bin"

gUnk_0884A400:: @ 0884A400
	.incbin "assets/data_08132B30/gUnk_0884A400.bin"

gUnk_0884A7A0:: @ 0884A7A0
	.incbin "assets/data_08132B30/gUnk_0884A7A0.bin"

gUnk_0884AB00:: @ 0884AB00
	.incbin "assets/data_08132B30/gUnk_0884AB00.bin"

gUnk_0884B680:: @ 0884B680
	.incbin "assets/data_08132B30/gUnk_0884B680.bin"

gUnk_0884C180:: @ 0884C180
	.incbin "assets/data_08132B30/gUnk_0884C180.bin"

gUnk_0884CC60:: @ 0884CC60
	.incbin "assets/data_08132B30/gUnk_0884CC60.bin"

gUnk_0884D0E0:: @ 0884D0E0
	.incbin "assets/data_08132B30/gUnk_0884D0E0.bin"

gUnk_0884D400:: @ 0884D400
	.incbin "assets/data_08132B30/gUnk_0884D400.bin"

gUnk_0884D760:: @ 0884D760
	.incbin "assets/data_08132B30/gUnk_0884D760.bin"

gUnk_0884DB00:: @ 0884DB00
	.incbin "assets/data_08132B30/gUnk_0884DB00.bin"

gUnk_0884DF00:: @ 0884DF00
	.incbin "assets/data_08132B30/gUnk_0884DF00.bin"

gUnk_0884E6E0:: @ 0884E6E0
	.incbin "assets/data_08132B30/gUnk_0884E6E0.bin"

gUnk_088510E0:: @ 088510E0
	.incbin "assets/data_08132B30/gUnk_088510E0.bin"

gUnk_08853AE0:: @ 08853AE0
	.incbin "assets/data_08132B30/gUnk_08853AE0.bin"

gUnk_088564E0:: @ 088564E0
	.incbin "assets/data_08132B30/gUnk_088564E0.bin"

gUnk_088568A0:: @ 088568A0
	.incbin "assets/data_08132B30/gUnk_088568A0.bin"

gUnk_08856C20:: @ 08856C20
	.incbin "assets/data_08132B30/gUnk_08856C20.bin"

gUnk_08856FA0:: @ 08856FA0
	.incbin "assets/data_08132B30/gUnk_08856FA0.bin"

gUnk_08857320:: @ 08857320
	.incbin "assets/data_08132B30/gUnk_08857320.bin"

gUnk_08857880:: @ 08857880
	.incbin "assets/data_08132B30/gUnk_08857880.bin"

gUnk_08857D00:: @ 08857D00
	.incbin "assets/data_08132B30/gUnk_08857D00.bin"

gUnk_08858180:: @ 08858180
	.incbin "assets/data_08132B30/gUnk_08858180.bin"

gUnk_08858680:: @ 08858680
	.incbin "assets/data_08132B30/gUnk_08858680.bin"

gUnk_08859B40:: @ 08859B40
	.incbin "assets/data_08132B30/gUnk_08859B40.bin"

gUnk_0885A1A0:: @ 0885A1A0
	.incbin "assets/data_08132B30/gUnk_0885A1A0.bin"

gUnk_0885B220:: @ 0885B220
	.incbin "assets/data_08132B30/gUnk_0885B220.bin"

gUnk_0885BA20:: @ 0885BA20
	.incbin "assets/data_08132B30/gUnk_0885BA20.bin"

gUnk_0885C220:: @ 0885C220
	.incbin "assets/data_08132B30/gUnk_0885C220.bin"

gUnk_0885C720:: @ 0885C720
	.incbin "assets/data_08132B30/gUnk_0885C720.bin"

gUnk_0885CC20:: @ 0885CC20
	.incbin "assets/data_08132B30/gUnk_0885CC20.bin"

gUnk_0885FCA0:: @ 0885FCA0
	.incbin "assets/data_08132B30/gUnk_0885FCA0.bin"

gUnk_08862680:: @ 08862680
	.incbin "assets/data_08132B30/gUnk_08862680.bin"

gUnk_08866080:: @ 08866080
	.incbin "assets/data_08132B30/gUnk_08866080.bin"

gUnk_08868A40:: @ 08868A40
	.incbin "assets/data_08132B30/gUnk_08868A40.bin"

gUnk_0886BF20:: @ 0886BF20
	.incbin "assets/data_08132B30/gUnk_0886BF20.bin"

gUnk_0886F820:: @ 0886F820
	.incbin "assets/data_08132B30/gUnk_0886F820.bin"

gUnk_08872900:: @ 08872900
	.incbin "assets/data_08132B30/gUnk_08872900.bin"

gUnk_08875580:: @ 08875580
	.incbin "assets/data_08132B30/gUnk_08875580.bin"

gUnk_08878A80:: @ 08878A80
	.incbin "assets/data_08132B30/gUnk_08878A80.bin"

gUnk_0887B200:: @ 0887B200
	.incbin "assets/data_08132B30/gUnk_0887B200.bin"

gUnk_0887E0A0:: @ 0887E0A0
	.incbin "assets/data_08132B30/gUnk_0887E0A0.bin"

gUnk_088813C0:: @ 088813C0
	.incbin "assets/data_08132B30/gUnk_088813C0.bin"

gUnk_08883EA0:: @ 08883EA0
	.incbin "assets/data_08132B30/gUnk_08883EA0.bin"

gUnk_08885DA0:: @ 08885DA0
	.incbin "assets/data_08132B30/gUnk_08885DA0.bin"

gUnk_08889DA0:: @ 08889DA0
	.incbin "assets/data_08132B30/gUnk_08889DA0.bin"

gUnk_0888DD20:: @ 0888DD20
	.incbin "assets/data_08132B30/gUnk_0888DD20.bin"

gUnk_0888F960:: @ 0888F960
	.incbin "assets/data_08132B30/gUnk_0888F960.bin"

gUnk_08890FC0:: @ 08890FC0
	.incbin "assets/data_08132B30/gUnk_08890FC0.bin"

gUnk_08892C40:: @ 08892C40
	.incbin "assets/data_08132B30/gUnk_08892C40.bin"

gUnk_08894F40:: @ 08894F40
	.incbin "assets/data_08132B30/gUnk_08894F40.bin"

gUnk_088973C0:: @ 088973C0
	.incbin "assets/data_08132B30/gUnk_088973C0.bin"

gUnk_08897800:: @ 08897800
	.incbin "assets/data_08132B30/gUnk_08897800.bin"

gUnk_088980C0:: @ 088980C0
	.incbin "assets/data_08132B30/gUnk_088980C0.bin"

gUnk_08898EC0:: @ 08898EC0
	.incbin "assets/data_08132B30/gUnk_08898EC0.bin"

gUnk_08899240:: @ 08899240
	.incbin "assets/data_08132B30/gUnk_08899240.bin"

gUnk_08899B60:: @ 08899B60
	.incbin "assets/data_08132B30/gUnk_08899B60.bin"

gUnk_08899E40:: @ 08899E40
	.incbin "assets/data_08132B30/gUnk_08899E40.bin"

gUnk_0889A5E0:: @ 0889A5E0
	.incbin "assets/data_08132B30/gUnk_0889A5E0.bin"

gUnk_0889A8E0:: @ 0889A8E0
	.incbin "assets/data_08132B30/gUnk_0889A8E0.bin"

gUnk_0889B7E0:: @ 0889B7E0
	.incbin "assets/data_08132B30/gUnk_0889B7E0.bin"

gUnk_0889BB40:: @ 0889BB40
	.incbin "assets/data_08132B30/gUnk_0889BB40.bin"

gUnk_0889C2C0:: @ 0889C2C0
	.incbin "assets/data_08132B30/gUnk_0889C2C0.bin"

gUnk_0889C6C0:: @ 0889C6C0
	.incbin "assets/data_08132B30/gUnk_0889C6C0.bin"

gUnk_0889CA40:: @ 0889CA40
	.incbin "assets/data_08132B30/gUnk_0889CA40.bin"

gUnk_0889D440:: @ 0889D440
	.incbin "assets/data_08132B30/gUnk_0889D440.bin"

gUnk_0889DE40:: @ 0889DE40
	.incbin "assets/data_08132B30/gUnk_0889DE40.bin"

gUnk_0889E140:: @ 0889E140
	.incbin "assets/data_08132B30/gUnk_0889E140.bin"

gUnk_0889E600:: @ 0889E600
	.incbin "assets/data_08132B30/gUnk_0889E600.bin"

gUnk_0889EDC0:: @ 0889EDC0
	.incbin "assets/data_08132B30/gUnk_0889EDC0.bin"

gUnk_0889F8E0:: @ 0889F8E0
	.incbin "assets/data_08132B30/gUnk_0889F8E0.bin"

gUnk_088A00C0:: @ 088A00C0
	.incbin "assets/data_08132B30/gUnk_088A00C0.bin"

gUnk_088A0420:: @ 088A0420
	.incbin "assets/data_08132B30/gUnk_088A0420.bin"

gUnk_088A0CE0:: @ 088A0CE0
	.incbin "assets/data_08132B30/gUnk_088A0CE0.bin"

gUnk_088A14A0:: @ 088A14A0
	.incbin "assets/data_08132B30/gUnk_088A14A0.bin"

gUnk_088A2260:: @ 088A2260
	.incbin "assets/data_08132B30/gUnk_088A2260.bin"

gUnk_088A2560:: @ 088A2560
	.incbin "assets/data_08132B30/gUnk_088A2560.bin"

gUnk_088A2840:: @ 088A2840
	.incbin "assets/data_08132B30/gUnk_088A2840.bin"

gUnk_088A2D40:: @ 088A2D40
	.incbin "assets/data_08132B30/gUnk_088A2D40.bin"

gUnk_088A3500:: @ 088A3500
	.incbin "assets/data_08132B30/gUnk_088A3500.bin"

gUnk_088A3800:: @ 088A3800
	.incbin "assets/data_08132B30/gUnk_088A3800.bin"

gUnk_088A3FA0:: @ 088A3FA0
	.incbin "assets/data_08132B30/gUnk_088A3FA0.bin"

gUnk_088A44A0:: @ 088A44A0
	.incbin "assets/data_08132B30/gUnk_088A44A0.bin"

gUnk_088A4860:: @ 088A4860
	.incbin "assets/data_08132B30/gUnk_088A4860.bin"

gUnk_088A5200:: @ 088A5200
	.incbin "assets/data_08132B30/gUnk_088A5200.bin"

gUnk_088A5FC0:: @ 088A5FC0
	.incbin "assets/data_08132B30/gUnk_088A5FC0.bin"

gUnk_088A6360:: @ 088A6360
	.incbin "assets/data_08132B30/gUnk_088A6360.bin"

gUnk_088A6CE0:: @ 088A6CE0
	.incbin "assets/data_08132B30/gUnk_088A6CE0.bin"

gUnk_088A74A0:: @ 088A74A0
	.incbin "assets/data_08132B30/gUnk_088A74A0.bin"

gUnk_088A7CC0:: @ 088A7CC0
	.incbin "assets/data_08132B30/gUnk_088A7CC0.bin"

gUnk_088A8000:: @ 088A8000
	.incbin "assets/data_08132B30/gUnk_088A8000.bin"

gUnk_088A8500:: @ 088A8500
	.incbin "assets/data_08132B30/gUnk_088A8500.bin"

gUnk_088A8A00:: @ 088A8A00
	.incbin "assets/data_08132B30/gUnk_088A8A00.bin"

gUnk_088A91C0:: @ 088A91C0
	.incbin "assets/data_08132B30/gUnk_088A91C0.bin"

gUnk_088A9820:: @ 088A9820
	.incbin "assets/data_08132B30/gUnk_088A9820.bin"

gUnk_088A9BE0:: @ 088A9BE0
	.incbin "assets/data_08132B30/gUnk_088A9BE0.bin"

gUnk_088AA040:: @ 088AA040
	.incbin "assets/data_08132B30/gUnk_088AA040.bin"

gUnk_088AA3C0:: @ 088AA3C0
	.incbin "assets/data_08132B30/gUnk_088AA3C0.bin"

gUnk_088AABE0:: @ 088AABE0
	.incbin "assets/data_08132B30/gUnk_088AABE0.bin"

gUnk_088AB280:: @ 088AB280
	.incbin "assets/data_08132B30/gUnk_088AB280.bin"

gUnk_088ABC00:: @ 088ABC00
	.incbin "assets/data_08132B30/gUnk_088ABC00.bin"

gUnk_088AC1E0:: @ 088AC1E0
	.incbin "assets/data_08132B30/gUnk_088AC1E0.bin"

gUnk_088ACA80:: @ 088ACA80
	.incbin "assets/data_08132B30/gUnk_088ACA80.bin"

gUnk_088AD340:: @ 088AD340
	.incbin "assets/data_08132B30/gUnk_088AD340.bin"

gUnk_088AD8E0:: @ 088AD8E0
	.incbin "assets/data_08132B30/gUnk_088AD8E0.bin"

gUnk_088ADF00:: @ 088ADF00
	.incbin "assets/data_08132B30/gUnk_088ADF00.bin"

gUnk_088AEE00:: @ 088AEE00
	.incbin "assets/data_08132B30/gUnk_088AEE00.bin"

gUnk_088AF440:: @ 088AF440
	.incbin "assets/data_08132B30/gUnk_088AF440.bin"

gUnk_088B19C0:: @ 088B19C0
	.incbin "assets/data_08132B30/gUnk_088B19C0.bin"

gUnk_088B3160:: @ 088B3160
	.incbin "assets/data_08132B30/gUnk_088B3160.bin"

gUnk_088B4B00:: @ 088B4B00
	.incbin "assets/data_08132B30/gUnk_088B4B00.bin"

gUnk_088B5E00:: @ 088B5E00
	.incbin "assets/data_08132B30/gUnk_088B5E00.bin"

gUnk_088B7CA0:: @ 088B7CA0
	.incbin "assets/data_08132B30/gUnk_088B7CA0.bin"

gUnk_088B92E0:: @ 088B92E0
	.incbin "assets/data_08132B30/gUnk_088B92E0.bin"

gUnk_088BAAA0:: @ 088BAAA0
	.incbin "assets/data_08132B30/gUnk_088BAAA0.bin"

gUnk_088BB8A0:: @ 088BB8A0
	.incbin "assets/data_08132B30/gUnk_088BB8A0.bin"

gUnk_088BBE20:: @ 088BBE20
	.incbin "assets/data_08132B30/gUnk_088BBE20.bin"

gUnk_088BCA60:: @ 088BCA60
	.incbin "assets/data_08132B30/gUnk_088BCA60.bin"

gUnk_088BDB60:: @ 088BDB60
	.incbin "assets/data_08132B30/gUnk_088BDB60.bin"

gUnk_088C00E0:: @ 088C00E0
	.incbin "assets/data_08132B30/gUnk_088C00E0.bin"

@ TODO end of figurine data
	.incbin "graphics/intro/nintendo_capcom.4bpp"
	.incbin "assets/data_08132B30/gUnk_088C00E0_1.bin"

.ifdef EU
	.incbin "assets/data_08132B30/gUnk_088C00E0_2_EU.bin"
.else
	.incbin "assets/data_08132B30/gUnk_088C00E0_3_USA-JP-DEMO_USA-DEMO_JP.bin"

.endif
