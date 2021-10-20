	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gExitLists_NoExitList:: @ 08133FC8
	.incbin "data_08132B30/gExitLists_NoExitList.bin"

gExitLists_NoExit:: @ 08133FDC
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gExitLists_MinishWoods_Main:: @ 081340DC
	.incbin "data_08132B30/gExitLists_MinishWoods_Main.bin"

gExitLists_MinishWoods:: @ 08134208
	.4byte gExitLists_MinishWoods_Main

gUnk_0813420C:: @ 0813420C
	.incbin "data_08132B30/gUnk_0813420C.bin"

gUnk_081342E8:: @ 081342E8
	.incbin "data_08132B30/gUnk_081342E8.bin"

gUnk_08134338:: @ 08134338
	.4byte gUnk_0813420C
	.4byte gUnk_081342E8

gUnk_08134340:: @ 08134340
	.incbin "data_08132B30/gUnk_08134340.bin"

gUnk_08134408:: @ 08134408
	.4byte gUnk_08134340

gUnk_0813440C:: @ 0813440C
	.incbin "data_08132B30/gUnk_0813440C.bin"

gUnk_08134448:: @ 08134448
	.incbin "data_08132B30/gUnk_08134448.bin"

gUnk_0813445C:: @ 0813445C
	.incbin "data_08132B30/gUnk_0813445C.bin"

gUnk_08134484:: @ 08134484
	.incbin "data_08132B30/gUnk_08134484.bin"

gUnk_081344AC:: @ 081344AC
	.4byte gUnk_0813440C
	.4byte gUnk_08134448
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813445C
	.4byte gUnk_08134484
	.4byte gExitLists_NoExitList

gUnk_081344C4:: @ 081344C4
	.incbin "data_08132B30/gUnk_081344C4.bin"

gUnk_08134794:: @ 08134794
	.4byte gUnk_081344C4

gUnk_08134798:: @ 08134798
	.incbin "data_08132B30/gUnk_08134798.bin"

gUnk_081347C0:: @ 081347C0
	.4byte gUnk_08134798

gUnk_081347C4:: @ 081347C4
	.incbin "data_08132B30/gUnk_081347C4.bin"

gUnk_08134800:: @ 08134800
	.incbin "data_08132B30/gUnk_08134800.bin"

gUnk_08134850:: @ 08134850
	.incbin "data_08132B30/gUnk_08134850.bin"

gUnk_08134904:: @ 08134904
	.incbin "data_08132B30/gUnk_08134904.bin"

gUnk_08134968:: @ 08134968
	.incbin "data_08132B30/gUnk_08134968.bin"

gUnk_08134A30:: @ 08134A30
	.4byte gUnk_081347C4
	.4byte gUnk_08134800
	.4byte gUnk_08134850
	.4byte gUnk_08134904
	.4byte gUnk_08134968

gUnk_08134A44:: @ 08134A44
	.incbin "data_08132B30/gUnk_08134A44.bin"

gUnk_08134A6C:: @ 08134A6C
	.incbin "data_08132B30/gUnk_08134A6C.bin"

gUnk_08134B0C:: @ 08134B0C
	.incbin "data_08132B30/gUnk_08134B0C.bin"

gUnk_08134B48:: @ 08134B48
	.incbin "data_08132B30/gUnk_08134B48.bin"

gUnk_08134B70:: @ 08134B70
	.incbin "data_08132B30/gUnk_08134B70.bin"

gUnk_08134BAC:: @ 08134BAC
	.incbin "data_08132B30/gUnk_08134BAC.bin"

gUnk_08134C88:: @ 08134C88
	.incbin "data_08132B30/gUnk_08134C88.bin"

gUnk_08134DC8:: @ 08134DC8
	.incbin "data_08132B30/gUnk_08134DC8.bin"

gUnk_08134EA4:: @ 08134EA4
	.incbin "data_08132B30/gUnk_08134EA4.bin"

gUnk_08134EE0:: @ 08134EE0
	.incbin "data_08132B30/gUnk_08134EE0.bin"

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
	.incbin "data_08132B30/gUnk_08134F30.bin"

gUnk_08134FBC:: @ 08134FBC
	.incbin "data_08132B30/gUnk_08134FBC.bin"

gUnk_08135048:: @ 08135048
	.incbin "data_08132B30/gUnk_08135048.bin"

gUnk_08135070:: @ 08135070
	.4byte gUnk_08134F30

gUnk_08135074:: @ 08135074
	.incbin "data_08132B30/gUnk_08135074.bin"

gUnk_0813509C:: @ 0813509C
	.4byte gUnk_08135074

gUnk_081350A0:: @ 081350A0
.ifdef EU
    @ TODO only small differences
	.incbin "data_08132B30/gUnk_081350A0_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081350A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08135168:: @ 08135168
	.incbin "data_08132B30/gUnk_08135168.bin"

gUnk_08135190:: @ 08135190
	.incbin "data_08132B30/gUnk_08135190.bin"

gUnk_081351CC:: @ 081351CC
	.4byte gUnk_081350A0
	.4byte gUnk_08135168

gUnk_081351D4:: @ 081351D4
	.incbin "data_08132B30/gUnk_081351D4.bin"

gUnk_081352D8:: @ 081352D8
	.4byte gUnk_081351D4

gUnk_081352DC:: @ 081352DC
	.incbin "data_08132B30/gUnk_081352DC.bin"

gUnk_08135304:: @ 08135304
	.incbin "data_08132B30/gUnk_08135304.bin"

gUnk_0813532C:: @ 0813532C
	.incbin "data_08132B30/gUnk_0813532C.bin"

gUnk_08135354:: @ 08135354
	.incbin "data_08132B30/gUnk_08135354.bin"

gUnk_0813537C:: @ 0813537C
	.incbin "data_08132B30/gUnk_0813537C.bin"

gUnk_081353A4:: @ 081353A4
	.incbin "data_08132B30/gUnk_081353A4.bin"

gUnk_081353E0:: @ 081353E0
	.incbin "data_08132B30/gUnk_081353E0.bin"

gUnk_0813541C:: @ 0813541C
	.incbin "data_08132B30/gUnk_0813541C.bin"

gUnk_08135458:: @ 08135458
	.incbin "data_08132B30/gUnk_08135458.bin"

gUnk_08135494:: @ 08135494
	.incbin "data_08132B30/gUnk_08135494.bin"

gUnk_081354D0:: @ 081354D0
	.4byte gUnk_081352DC
	.4byte gUnk_08135304
	.4byte gUnk_0813532C
	.4byte gUnk_08135354
	.4byte gUnk_0813537C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081353A4
	.4byte gUnk_081353E0
	.4byte gUnk_0813541C
	.4byte gUnk_08135458
	.4byte gUnk_08135494

gUnk_08135524:: @ 08135524
	.incbin "data_08132B30/gUnk_08135524.bin"

gUnk_0813554C:: @ 0813554C
	.4byte gUnk_08135524

gUnk_08135550:: @ 08135550
	.incbin "data_08132B30/gUnk_08135550.bin"

gUnk_08135578:: @ 08135578
	.4byte gUnk_08135550

gUnk_0813557C:: @ 0813557C
	.incbin "data_08132B30/gUnk_0813557C.bin"

gUnk_08135694:: @ 08135694
	.incbin "data_08132B30/gUnk_08135694.bin"

gUnk_081356BC:: @ 081356BC
	.4byte gUnk_0813557C
	.4byte gUnk_08135694
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081356CC:: @ 081356CC
	.incbin "data_08132B30/gUnk_081356CC.bin"

gUnk_08135744:: @ 08135744
	.4byte gUnk_081356CC

gUnk_08135748:: @ 08135748
	.incbin "data_08132B30/gUnk_08135748.bin"

gUnk_08135784:: @ 08135784
	.incbin "data_08132B30/gUnk_08135784.bin"

gUnk_081357C0:: @ 081357C0
	.incbin "data_08132B30/gUnk_081357C0.bin"

gUnk_081357E8:: @ 081357E8
	.incbin "data_08132B30/gUnk_081357E8.bin"

gUnk_08135810:: @ 08135810
	.incbin "data_08132B30/gUnk_08135810.bin"

gUnk_0813584C:: @ 0813584C
	.4byte gUnk_08135748
	.4byte gUnk_08135784
	.4byte gUnk_081357C0
	.4byte gUnk_081357E8
	.4byte gUnk_08135810

gUnk_08135860:: @ 08135860
	.incbin "data_08132B30/gUnk_08135860.bin"

gUnk_08135888:: @ 08135888
	.incbin "data_08132B30/gUnk_08135888.bin"

gUnk_081358B0:: @ 081358B0
	.incbin "data_08132B30/gUnk_081358B0.bin"

gUnk_081358EC:: @ 081358EC
	.incbin "data_08132B30/gUnk_081358EC.bin"

gUnk_08135928:: @ 08135928
	.4byte gUnk_08135860
	.4byte gUnk_08135888
	.4byte gUnk_081358B0
	.4byte gUnk_081358EC

gUnk_08135938:: @ 08135938
	.incbin "data_08132B30/gUnk_08135938.bin"

gUnk_08135974:: @ 08135974
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08135938

gUnk_08135984:: @ 08135984
	.incbin "data_08132B30/gUnk_08135984.bin"

gUnk_081359AC:: @ 081359AC
	.incbin "data_08132B30/gUnk_081359AC.bin"

gUnk_081359D4:: @ 081359D4
	.incbin "data_08132B30/gUnk_081359D4.bin"

gUnk_08135A10:: @ 08135A10
	.incbin "data_08132B30/gUnk_08135A10.bin"

gUnk_08135A38:: @ 08135A38
	.incbin "data_08132B30/gUnk_08135A38.bin"

gUnk_08135A60:: @ 08135A60
	.incbin "data_08132B30/gUnk_08135A60.bin"

gUnk_08135A88:: @ 08135A88
	.incbin "data_08132B30/gUnk_08135A88.bin"

gUnk_08135AB0:: @ 08135AB0
	.incbin "data_08132B30/gUnk_08135AB0.bin"

gUnk_08135AD8:: @ 08135AD8
	.incbin "data_08132B30/gUnk_08135AD8.bin"

gUnk_08135B00:: @ 08135B00
	.incbin "data_08132B30/gUnk_08135B00.bin"

gUnk_08135B3C:: @ 08135B3C
	.incbin "data_08132B30/gUnk_08135B3C.bin"

gUnk_08135B64:: @ 08135B64
	.incbin "data_08132B30/gUnk_08135B64.bin"

gUnk_08135B8C:: @ 08135B8C
	.incbin "data_08132B30/gUnk_08135B8C.bin"

gUnk_08135BB4:: @ 08135BB4
	.incbin "data_08132B30/gUnk_08135BB4.bin"

gUnk_08135BDC:: @ 08135BDC
	.incbin "data_08132B30/gUnk_08135BDC.bin"

gUnk_08135C04:: @ 08135C04
	.incbin "data_08132B30/gUnk_08135C04.bin"

gUnk_08135C2C:: @ 08135C2C
	.incbin "data_08132B30/gUnk_08135C2C.bin"

gUnk_08135C54:: @ 08135C54
	.incbin "data_08132B30/gUnk_08135C54.bin"

gUnk_08135C7C:: @ 08135C7C
	.incbin "data_08132B30/gUnk_08135C7C.bin"

gUnk_08135CA4:: @ 08135CA4
	.incbin "data_08132B30/gUnk_08135CA4.bin"

gUnk_08135CCC:: @ 08135CCC
	.incbin "data_08132B30/gUnk_08135CCC.bin"

gUnk_08135CF4:: @ 08135CF4
	.incbin "data_08132B30/gUnk_08135CF4.bin"

gUnk_08135D1C:: @ 08135D1C
	.incbin "data_08132B30/gUnk_08135D1C.bin"

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
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08135B8C
	.4byte gUnk_08135BB4
	.4byte gUnk_08135BDC
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08135C04
	.4byte gUnk_08135C2C
	.4byte gUnk_08135C54
	.4byte gUnk_08135C7C
	.4byte gUnk_08135CA4
	.4byte gUnk_08135CCC
	.4byte gUnk_08135CF4
	.4byte gUnk_08135D1C

gUnk_08135DE4:: @ 08135DE4
	.incbin "data_08132B30/gUnk_08135DE4.bin"

gUnk_08135E70:: @ 08135E70
	.incbin "data_08132B30/gUnk_08135E70.bin"

gUnk_08135F24:: @ 08135F24
	.incbin "data_08132B30/gUnk_08135F24.bin"

gUnk_08135FD8:: @ 08135FD8
	.incbin "data_08132B30/gUnk_08135FD8.bin"

gUnk_08136000:: @ 08136000
	.incbin "data_08132B30/gUnk_08136000.bin"

gUnk_08136028:: @ 08136028
	.4byte gUnk_08135DE4
	.4byte gUnk_08135E70
	.4byte gUnk_08135F24
	.4byte gUnk_08135FD8
	.4byte gUnk_08136000

gUnk_0813603C:: @ 0813603C
	.incbin "data_08132B30/gUnk_0813603C.bin"

gUnk_0813608C:: @ 0813608C
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813603C
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_081360A0:: @ 081360A0
	.incbin "data_08132B30/gUnk_081360A0.bin"

gUnk_081360C8:: @ 081360C8
	.4byte gUnk_081360A0

gUnk_081360CC:: @ 081360CC
	.incbin "data_08132B30/gUnk_081360CC.bin"

gUnk_081360F4:: @ 081360F4
	.incbin "data_08132B30/gUnk_081360F4.bin"

gUnk_0813611C:: @ 0813611C
	.incbin "data_08132B30/gUnk_0813611C.bin"

gUnk_08136144:: @ 08136144
	.incbin "data_08132B30/gUnk_08136144.bin"

gUnk_0813616C:: @ 0813616C
	.incbin "data_08132B30/gUnk_0813616C.bin"

gUnk_08136194:: @ 08136194
	.incbin "data_08132B30/gUnk_08136194.bin"

gUnk_081361BC:: @ 081361BC
	.incbin "data_08132B30/gUnk_081361BC.bin"

gUnk_081361E4:: @ 081361E4
	.incbin "data_08132B30/gUnk_081361E4.bin"

gUnk_0813620C:: @ 0813620C
	.incbin "data_08132B30/gUnk_0813620C.bin"

gUnk_08136234:: @ 08136234
	.incbin "data_08132B30/gUnk_08136234.bin"

gUnk_0813625C:: @ 0813625C
	.incbin "data_08132B30/gUnk_0813625C.bin"

gUnk_08136284:: @ 08136284
	.incbin "data_08132B30/gUnk_08136284.bin"

gUnk_081362AC:: @ 081362AC
	.incbin "data_08132B30/gUnk_081362AC.bin"

gUnk_081362D4:: @ 081362D4
	.incbin "data_08132B30/gUnk_081362D4.bin"

gUnk_08136310:: @ 08136310
	.incbin "data_08132B30/gUnk_08136310.bin"

gUnk_08136338:: @ 08136338
	.incbin "data_08132B30/gUnk_08136338.bin"

gUnk_0813634C:: @ 0813634C
	.incbin "data_08132B30/gUnk_0813634C.bin"

gUnk_08136374:: @ 08136374
	.incbin "data_08132B30/gUnk_08136374.bin"

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
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081362D4
	.4byte gExitLists_NoExitList
	.4byte gUnk_08136310
	.4byte gUnk_08136338
	.4byte gUnk_0813634C
	.4byte gUnk_08136374
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_0813645C:: @ 0813645C
	.incbin "data_08132B30/gUnk_0813645C.bin"

gUnk_08136484:: @ 08136484
	.incbin "data_08132B30/gUnk_08136484.bin"

gUnk_081364AC:: @ 081364AC
	.incbin "data_08132B30/gUnk_081364AC.bin"

gUnk_081364D4:: @ 081364D4
	.incbin "data_08132B30/gUnk_081364D4.bin"

gUnk_081364FC:: @ 081364FC
	.incbin "data_08132B30/gUnk_081364FC.bin"

gUnk_08136524:: @ 08136524
	.incbin "data_08132B30/gUnk_08136524.bin"

gUnk_0813654C:: @ 0813654C
	.4byte gUnk_0813645C
	.4byte gUnk_08136484
	.4byte gUnk_081364AC
	.4byte gUnk_081364D4
	.4byte gUnk_081364FC
	.4byte gUnk_08136524
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_0813658C:: @ 0813658C
	.incbin "data_08132B30/gUnk_0813658C.bin"

gUnk_081365B4:: @ 081365B4
	.incbin "data_08132B30/gUnk_081365B4.bin"

gUnk_081365DC:: @ 081365DC
	.incbin "data_08132B30/gUnk_081365DC.bin"

gUnk_08136604:: @ 08136604
	.4byte gUnk_0813658C
	.4byte gUnk_081365B4
	.4byte gUnk_081365DC
	.4byte gExitLists_NoExitList

gUnk_08136614:: @ 08136614
	.incbin "data_08132B30/gUnk_08136614.bin"

gUnk_0813663C:: @ 0813663C
	.incbin "data_08132B30/gUnk_0813663C.bin"

gUnk_08136664:: @ 08136664
	.incbin "data_08132B30/gUnk_08136664.bin"

gUnk_0813668C:: @ 0813668C
	.incbin "data_08132B30/gUnk_0813668C.bin"

gUnk_081366B4:: @ 081366B4
	.incbin "data_08132B30/gUnk_081366B4.bin"

gUnk_081366DC:: @ 081366DC
	.incbin "data_08132B30/gUnk_081366DC.bin"

gUnk_08136718:: @ 08136718
	.incbin "data_08132B30/gUnk_08136718.bin"

gUnk_08136754:: @ 08136754
	.incbin "data_08132B30/gUnk_08136754.bin"

gUnk_0813677C:: @ 0813677C
	.incbin "data_08132B30/gUnk_0813677C.bin"

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
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081367E4:: @ 081367E4
	.incbin "data_08132B30/gUnk_081367E4.bin"

gUnk_08136820:: @ 08136820
	.incbin "data_08132B30/gUnk_08136820.bin"

gUnk_08136848:: @ 08136848
	.incbin "data_08132B30/gUnk_08136848.bin"

gUnk_08136884:: @ 08136884
	.incbin "data_08132B30/gUnk_08136884.bin"

gUnk_081368C0:: @ 081368C0
	.incbin "data_08132B30/gUnk_081368C0.bin"

gUnk_08136938:: @ 08136938
	.incbin "data_08132B30/gUnk_08136938.bin"

gUnk_08136960:: @ 08136960
	.incbin "data_08132B30/gUnk_08136960.bin"

gUnk_08136988:: @ 08136988
	.incbin "data_08132B30/gUnk_08136988.bin"

gUnk_081369B0:: @ 081369B0
	.incbin "data_08132B30/gUnk_081369B0.bin"

gUnk_081369D8:: @ 081369D8
	.incbin "data_08132B30/gUnk_081369D8.bin"

gUnk_08136A14:: @ 08136A14
	.incbin "data_08132B30/gUnk_08136A14.bin"

gUnk_08136A50:: @ 08136A50
	.incbin "data_08132B30/gUnk_08136A50.bin"

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
	.4byte gExitLists_NoExitList
	.4byte gUnk_08136A14
	.4byte gUnk_08136A50
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_08136AF8:: @ 08136AF8
	.incbin "data_08132B30/gUnk_08136AF8.bin"

gUnk_08136B20:: @ 08136B20
	.incbin "data_08132B30/gUnk_08136B20.bin"

gUnk_08136B5C:: @ 08136B5C
	.incbin "data_08132B30/gUnk_08136B5C.bin"

gUnk_08136B84:: @ 08136B84
	.incbin "data_08132B30/gUnk_08136B84.bin"

gUnk_08136BAC:: @ 08136BAC
	.incbin "data_08132B30/gUnk_08136BAC.bin"

gUnk_08136BE8:: @ 08136BE8
	.incbin "data_08132B30/gUnk_08136BE8.bin"

gUnk_08136C10:: @ 08136C10
	.incbin "data_08132B30/gUnk_08136C10.bin"

gUnk_08136C4C:: @ 08136C4C
	.incbin "data_08132B30/gUnk_08136C4C.bin"

gUnk_08136C88:: @ 08136C88
	.incbin "data_08132B30/gUnk_08136C88.bin"

gUnk_08136CC4:: @ 08136CC4
	.incbin "data_08132B30/gUnk_08136CC4.bin"

gUnk_08136D00:: @ 08136D00
	.incbin "data_08132B30/gUnk_08136D00.bin"

gUnk_08136D28:: @ 08136D28
	.incbin "data_08132B30/gUnk_08136D28.bin"

gUnk_08136D64:: @ 08136D64
	.incbin "data_08132B30/gUnk_08136D64.bin"

gUnk_08136DA0:: @ 08136DA0
	.incbin "data_08132B30/gUnk_08136DA0.bin"

gUnk_08136DC8:: @ 08136DC8
	.incbin "data_08132B30/gUnk_08136DC8.bin"

gUnk_08136E04:: @ 08136E04
	.incbin "data_08132B30/gUnk_08136E04.bin"

gUnk_08136E18:: @ 08136E18
	.incbin "data_08132B30/gUnk_08136E18.bin"

gUnk_08136E40:: @ 08136E40
	.4byte gUnk_08136AF8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
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
	.incbin "data_08132B30/gUnk_08136EC0.bin"

gUnk_08136EE8:: @ 08136EE8
	.incbin "data_08132B30/gUnk_08136EE8.bin"

gUnk_08136F10:: @ 08136F10
	.incbin "data_08132B30/gUnk_08136F10.bin"

gUnk_08136F38:: @ 08136F38
	.incbin "data_08132B30/gUnk_08136F38.bin"

gUnk_08136F60:: @ 08136F60
	.incbin "data_08132B30/gUnk_08136F60.bin"

gUnk_08136F88:: @ 08136F88
	.incbin "data_08132B30/gUnk_08136F88.bin"

gUnk_08136FB0:: @ 08136FB0
	.incbin "data_08132B30/gUnk_08136FB0.bin"

gUnk_08136FD8:: @ 08136FD8
	.4byte gUnk_08136EC0
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08136EE8
	.4byte gExitLists_NoExitList
	.4byte gUnk_08136F10
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08136F38
	.4byte gUnk_08136F60
	.4byte gUnk_08136F88
	.4byte gUnk_08136FB0
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_08137018:: @ 08137018
	.incbin "data_08132B30/gUnk_08137018.bin"

gUnk_08137040:: @ 08137040
	.incbin "data_08132B30/gUnk_08137040.bin"

gUnk_08137068:: @ 08137068
	.incbin "data_08132B30/gUnk_08137068.bin"

gUnk_08137090:: @ 08137090
	.incbin "data_08132B30/gUnk_08137090.bin"

gUnk_081370B8:: @ 081370B8
	.incbin "data_08132B30/gUnk_081370B8.bin"

gUnk_081370E0:: @ 081370E0
	.incbin "data_08132B30/gUnk_081370E0.bin"

gUnk_081370F4:: @ 081370F4
	.incbin "data_08132B30/gUnk_081370F4.bin"

gUnk_0813711C:: @ 0813711C
	.incbin "data_08132B30/gUnk_0813711C.bin"

gUnk_08137144:: @ 08137144
	.incbin "data_08132B30/gUnk_08137144.bin"

gUnk_0813716C:: @ 0813716C
	.incbin "data_08132B30/gUnk_0813716C.bin"

gUnk_08137194:: @ 08137194
	.incbin "data_08132B30/gUnk_08137194.bin"

gUnk_081371BC:: @ 081371BC
	.incbin "data_08132B30/gUnk_081371BC.bin"

gUnk_081371E4:: @ 081371E4
	.incbin "data_08132B30/gUnk_081371E4.bin"

gUnk_0813720C:: @ 0813720C
	.incbin "data_08132B30/gUnk_0813720C.bin"

gUnk_08137234:: @ 08137234
	.incbin "data_08132B30/gUnk_08137234.bin"

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
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08137234
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081372A8:: @ 081372A8
	.incbin "data_08132B30/gUnk_081372A8.bin"

gUnk_0813730C:: @ 0813730C
	.incbin "data_08132B30/gUnk_0813730C.bin"

gUnk_08137348:: @ 08137348
	.incbin "data_08132B30/gUnk_08137348.bin"

gUnk_08137384:: @ 08137384
	.incbin "data_08132B30/gUnk_08137384.bin"

gUnk_081373C0:: @ 081373C0
	.incbin "data_08132B30/gUnk_081373C0.bin"

gUnk_081373E8:: @ 081373E8
	.incbin "data_08132B30/gUnk_081373E8.bin"

gUnk_08137410:: @ 08137410
	.incbin "data_08132B30/gUnk_08137410.bin"

gUnk_0813744C:: @ 0813744C
	.incbin "data_08132B30/gUnk_0813744C.bin"

gUnk_08137488:: @ 08137488
	.incbin "data_08132B30/gUnk_08137488.bin"

gUnk_081374B0:: @ 081374B0
	.incbin "data_08132B30/gUnk_081374B0.bin"

gUnk_081374D8:: @ 081374D8
	.incbin "data_08132B30/gUnk_081374D8.bin"

gUnk_08137514:: @ 08137514
	.incbin "data_08132B30/gUnk_08137514.bin"

gUnk_08137550:: @ 08137550
	.incbin "data_08132B30/gUnk_08137550.bin"

gUnk_0813758C:: @ 0813758C
	.incbin "data_08132B30/gUnk_0813758C.bin"

gUnk_081375B4:: @ 081375B4
	.incbin "data_08132B30/gUnk_081375B4.bin"

gUnk_081375DC:: @ 081375DC
	.incbin "data_08132B30/gUnk_081375DC.bin"

gUnk_08137604:: @ 08137604
	.incbin "data_08132B30/gUnk_08137604.bin"

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
	.incbin "data_08132B30/gUnk_08137684.bin"

gUnk_081376AC:: @ 081376AC
	.incbin "data_08132B30/gUnk_081376AC.bin"

gUnk_081376E8:: @ 081376E8
	.incbin "data_08132B30/gUnk_081376E8.bin"

gUnk_08137710:: @ 08137710
	.incbin "data_08132B30/gUnk_08137710.bin"

gUnk_0813774C:: @ 0813774C
	.incbin "data_08132B30/gUnk_0813774C.bin"

gUnk_08137774:: @ 08137774
	.4byte gUnk_08137684
	.4byte gUnk_081376AC
	.4byte gUnk_081376E8
	.4byte gUnk_08137710
	.4byte gUnk_0813774C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_08137794:: @ 08137794
	.incbin "data_08132B30/gUnk_08137794.bin"

gUnk_081377A8:: @ 081377A8
	.incbin "data_08132B30/gUnk_081377A8.bin"

gUnk_081377D0:: @ 081377D0
	.4byte gUnk_08137794
	.4byte gUnk_081377A8
	.4byte 00000000
	.4byte 00000000

gUnk_081377E0:: @ 081377E0
	.incbin "data_08132B30/gUnk_081377E0.bin"

gUnk_08137808:: @ 08137808
	.incbin "data_08132B30/gUnk_08137808.bin"

gUnk_08137830:: @ 08137830
	.incbin "data_08132B30/gUnk_08137830.bin"

gUnk_08137858:: @ 08137858
	.incbin "data_08132B30/gUnk_08137858.bin"

gUnk_08137880:: @ 08137880
	.incbin "data_08132B30/gUnk_08137880.bin"

gUnk_081378A8:: @ 081378A8
	.incbin "data_08132B30/gUnk_081378A8.bin"

gUnk_081378D0:: @ 081378D0
	.incbin "data_08132B30/gUnk_081378D0.bin"

gUnk_081378F8:: @ 081378F8
	.incbin "data_08132B30/gUnk_081378F8.bin"

gUnk_08137920:: @ 08137920
	.incbin "data_08132B30/gUnk_08137920.bin"

gUnk_08137948:: @ 08137948
	.incbin "data_08132B30/gUnk_08137948.bin"

gUnk_08137970:: @ 08137970
	.incbin "data_08132B30/gUnk_08137970.bin"

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
	.incbin "data_08132B30/gUnk_081379C4.bin"

gUnk_081379EC:: @ 081379EC
	.incbin "data_08132B30/gUnk_081379EC.bin"

gUnk_08137A14:: @ 08137A14
	.incbin "data_08132B30/gUnk_08137A14.bin"

gUnk_08137A3C:: @ 08137A3C
	.incbin "data_08132B30/gUnk_08137A3C.bin"

gUnk_08137A64:: @ 08137A64
	.incbin "data_08132B30/gUnk_08137A64.bin"

gUnk_08137A8C:: @ 08137A8C
	.incbin "data_08132B30/gUnk_08137A8C.bin"

gUnk_08137ADC:: @ 08137ADC
	.incbin "data_08132B30/gUnk_08137ADC.bin"

gUnk_08137B04:: @ 08137B04
	.incbin "data_08132B30/gUnk_08137B04.bin"

gUnk_08137B2C:: @ 08137B2C
	.4byte gUnk_081379C4
	.4byte gUnk_081379EC
	.4byte gUnk_08137A14
	.4byte gUnk_08137A3C
	.4byte gUnk_08137A64
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08137A8C
	.4byte gUnk_08137ADC
	.4byte gUnk_08137B04
	.4byte gExitLists_NoExitList

gUnk_08137B7C:: @ 08137B7C
	.incbin "data_08132B30/gUnk_08137B7C.bin"

gUnk_08137BB8:: @ 08137BB8
	.incbin "data_08132B30/gUnk_08137BB8.bin"

gUnk_08137BF4:: @ 08137BF4
	.incbin "data_08132B30/gUnk_08137BF4.bin"

gUnk_08137C1C:: @ 08137C1C
	.incbin "data_08132B30/gUnk_08137C1C.bin"

gUnk_08137C58:: @ 08137C58
	.4byte gUnk_08137B7C
	.4byte gUnk_08137BB8
	.4byte gUnk_08137BF4
	.4byte gUnk_08137C1C

gUnk_08137C68:: @ 08137C68
	.incbin "data_08132B30/gUnk_08137C68.bin"

gUnk_08137CA4:: @ 08137CA4
	.incbin "data_08132B30/gUnk_08137CA4.bin"

gUnk_08137CCC:: @ 08137CCC
	.4byte gUnk_08137C68
	.4byte gUnk_08137CA4

gUnk_08137CD4:: @ 08137CD4
	.incbin "data_08132B30/gUnk_08137CD4.bin"

gUnk_08137D10:: @ 08137D10
	.incbin "data_08132B30/gUnk_08137D10.bin"

gUnk_08137D4C:: @ 08137D4C
	.incbin "data_08132B30/gUnk_08137D4C.bin"

gUnk_08137D88:: @ 08137D88
	.incbin "data_08132B30/gUnk_08137D88.bin"

gUnk_08137DC4:: @ 08137DC4
	.4byte gUnk_08137CD4
	.4byte gUnk_08137D10
	.4byte gUnk_08137D4C
	.4byte gUnk_08137D88

gUnk_08137DD4:: @ 08137DD4
	.incbin "data_08132B30/gUnk_08137DD4.bin"

gUnk_08137DFC:: @ 08137DFC
	.4byte gUnk_08137DD4

gUnk_08137E00:: @ 08137E00
	.incbin "data_08132B30/gUnk_08137E00.bin"

gUnk_08137E78:: @ 08137E78
	.incbin "data_08132B30/gUnk_08137E78.bin"

gUnk_08137EDC:: @ 08137EDC
	.incbin "data_08132B30/gUnk_08137EDC.bin"

gUnk_08137F04:: @ 08137F04
	.incbin "data_08132B30/gUnk_08137F04.bin"

gUnk_08137F18:: @ 08137F18
	.incbin "data_08132B30/gUnk_08137F18.bin"

gUnk_08137F2C:: @ 08137F2C
	.incbin "data_08132B30/gUnk_08137F2C.bin"

gUnk_08137F40:: @ 08137F40
	.incbin "data_08132B30/gUnk_08137F40.bin"

gUnk_08137F68:: @ 08137F68
	.incbin "data_08132B30/gUnk_08137F68.bin"

gUnk_08137F90:: @ 08137F90
	.incbin "data_08132B30/gUnk_08137F90.bin"

gUnk_08137FB8:: @ 08137FB8
	.incbin "data_08132B30/gUnk_08137FB8.bin"

gUnk_08137FCC:: @ 08137FCC
	.incbin "data_08132B30/gUnk_08137FCC.bin"

gUnk_08137FF4:: @ 08137FF4
	.incbin "data_08132B30/gUnk_08137FF4.bin"

gUnk_08138030:: @ 08138030
	.incbin "data_08132B30/gUnk_08138030.bin"

gUnk_0813806C:: @ 0813806C
	.incbin "data_08132B30/gUnk_0813806C.bin"

gUnk_08138094:: @ 08138094
	.incbin "data_08132B30/gUnk_08138094.bin"

gUnk_081380BC:: @ 081380BC
	.incbin "data_08132B30/gUnk_081380BC.bin"

gUnk_081380E4:: @ 081380E4
	.incbin "data_08132B30/gUnk_081380E4.bin"

gUnk_0813810C:: @ 0813810C
	.incbin "data_08132B30/gUnk_0813810C.bin"

gUnk_08138134:: @ 08138134
	.incbin "data_08132B30/gUnk_08138134.bin"

gUnk_08138148:: @ 08138148
	.incbin "data_08132B30/gUnk_08138148.bin"

gUnk_08138184:: @ 08138184
	.incbin "data_08132B30/gUnk_08138184.bin"

gUnk_081381AC:: @ 081381AC
	.incbin "data_08132B30/gUnk_081381AC.bin"

gUnk_081381D4:: @ 081381D4
	.4byte gUnk_08137E00
	.4byte gUnk_08137E78
	.4byte gUnk_08137EDC
	.4byte gUnk_08137F04
	.4byte gUnk_08137F18
	.4byte gUnk_08137F2C
	.4byte gExitLists_NoExitList
	.4byte gUnk_08137F40
	.4byte gUnk_08137F68
	.4byte gUnk_08137F90
	.4byte gUnk_08137FB8
	.4byte gUnk_08137FCC
	.4byte gUnk_08137FF4
	.4byte gExitLists_NoExitList
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
	.incbin "data_08132B30/gUnk_08138234.bin"

gUnk_08138284:: @ 08138284
	.incbin "data_08132B30/gUnk_08138284.bin"

gUnk_081382E8:: @ 081382E8
	.incbin "data_08132B30/gUnk_081382E8.bin"

gUnk_08138324:: @ 08138324
	.incbin "data_08132B30/gUnk_08138324.bin"

gUnk_08138360:: @ 08138360
	.incbin "data_08132B30/gUnk_08138360.bin"

gUnk_08138388:: @ 08138388
	.incbin "data_08132B30/gUnk_08138388.bin"

gUnk_081383C4:: @ 081383C4
	.incbin "data_08132B30/gUnk_081383C4.bin"

gUnk_08138400:: @ 08138400
	.incbin "data_08132B30/gUnk_08138400.bin"

gUnk_0813843C:: @ 0813843C
	.incbin "data_08132B30/gUnk_0813843C.bin"

gUnk_08138464:: @ 08138464
	.4byte gUnk_08138234
	.4byte gUnk_08138284
	.4byte gExitLists_NoExitList
	.4byte gUnk_081382E8
	.4byte gUnk_08138324
	.4byte gUnk_08138360
	.4byte gUnk_08138388
	.4byte gUnk_081383C4
	.4byte gUnk_08138400
	.4byte gUnk_0813843C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081384A4:: @ 081384A4
	.incbin "data_08132B30/gUnk_081384A4.bin"

gUnk_081384CC:: @ 081384CC
	.incbin "data_08132B30/gUnk_081384CC.bin"

gUnk_081384F4:: @ 081384F4
	.4byte gUnk_081384A4
	.4byte gUnk_081384CC

gUnk_081384FC:: @ 081384FC
	.incbin "data_08132B30/gUnk_081384FC.bin"

gUnk_08138524:: @ 08138524
	.incbin "data_08132B30/gUnk_08138524.bin"

gUnk_0813854C:: @ 0813854C
	.incbin "data_08132B30/gUnk_0813854C.bin"

gUnk_08138574:: @ 08138574
	.incbin "data_08132B30/gUnk_08138574.bin"

gUnk_0813859C:: @ 0813859C
	.incbin "data_08132B30/gUnk_0813859C.bin"

gUnk_081385C4:: @ 081385C4
	.incbin "data_08132B30/gUnk_081385C4.bin"

gUnk_081385EC:: @ 081385EC
	.incbin "data_08132B30/gUnk_081385EC.bin"

gUnk_08138628:: @ 08138628
	.incbin "data_08132B30/gUnk_08138628.bin"

gUnk_08138678:: @ 08138678
	.4byte gUnk_081384FC
	.4byte gUnk_08138524
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813854C
	.4byte gUnk_08138574
	.4byte gUnk_0813859C
	.4byte gExitLists_NoExitList
	.4byte gUnk_081385C4
	.4byte gUnk_081385EC
	.4byte gUnk_08138628

gUnk_081386A0:: @ 081386A0
	.incbin "data_08132B30/gUnk_081386A0.bin"

gUnk_081386C8:: @ 081386C8
	.incbin "data_08132B30/gUnk_081386C8.bin"

gUnk_081386F0:: @ 081386F0
	.4byte gUnk_081386A0
	.4byte gUnk_081386C8

gUnk_081386F8:: @ 081386F8
	.incbin "data_08132B30/gUnk_081386F8.bin"

gUnk_08138720:: @ 08138720
	.incbin "data_08132B30/gUnk_08138720.bin"

gUnk_08138748:: @ 08138748
	.4byte gUnk_081386F8
	.4byte gUnk_08138720

gUnk_08138750:: @ 08138750
	.incbin "data_08132B30/gUnk_08138750.bin"

gUnk_081387B4:: @ 081387B4
	.incbin "data_08132B30/gUnk_081387B4.bin"

gUnk_081387F0:: @ 081387F0
	.4byte gUnk_08138750
	.4byte gUnk_081387B4

gUnk_081387F8:: @ 081387F8
	.incbin "data_08132B30/gUnk_081387F8.bin"

gUnk_08138820:: @ 08138820
	.incbin "data_08132B30/gUnk_08138820.bin"

gUnk_08138848:: @ 08138848
	.4byte gUnk_081387F8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138820
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081388A8:: @ 081388A8
	.incbin "data_08132B30/gUnk_081388A8.bin"

gUnk_081388D0:: @ 081388D0
	.incbin "data_08132B30/gUnk_081388D0.bin"

gUnk_081388F8:: @ 081388F8
	.4byte gUnk_081388A8
	.4byte gUnk_081388D0

gUnk_08138900:: @ 08138900
	.incbin "data_08132B30/gUnk_08138900.bin"

gUnk_08138928:: @ 08138928
	.incbin "data_08132B30/gUnk_08138928.bin"

gUnk_08138950:: @ 08138950
	.4byte gUnk_08138900
	.4byte gUnk_08138928

gUnk_08138958:: @ 08138958
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_0813897C:: @ 0813897C
.ifdef EU
	.incbin "data_08132B30/gUnk_0813897C_EU.bin"
.else
	.incbin "data_08132B30/gUnk_0813897C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389A4:: @ 081389A4
.ifdef EU
	.incbin "data_08132B30/gUnk_081389A4_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081389A4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389B8:: @ 081389B8
.ifdef EU
	.incbin "data_08132B30/gUnk_081389B8_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081389B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389CC:: @ 081389CC
.ifdef EU
	.incbin "data_08132B30/gUnk_081389CC_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081389CC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif	

gUnk_081389E0:: @ 081389E0
.ifdef EU
	.incbin "data_08132B30/gUnk_081389E0_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081389E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_081389F4:: @ 081389F4
.ifdef EU
	.incbin "data_08132B30/gUnk_081389F4_EU.bin"
.else
	.incbin "data_08132B30/gUnk_081389F4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08138A58:: @ 08138A58
	.incbin "data_08132B30/gUnk_08138A58.bin"

gUnk_08138AA8:: @ 08138AA8
	.incbin "data_08132B30/gUnk_08138AA8.bin"

gUnk_08138AD0:: @ 08138AD0
	.incbin "data_08132B30/gUnk_08138AD0.bin"

gUnk_08138AF8:: @ 08138AF8
	.incbin "data_08132B30/gUnk_08138AF8.bin"

gUnk_08138B48:: @ 08138B48
	.4byte gExitLists_NoExitList
	.4byte gUnk_081389A4
	.4byte gUnk_0813897C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081389B8
	.4byte gUnk_081389F4
	.4byte gUnk_081389CC
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081389E0
	.4byte gUnk_08138A58
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138AA8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138AF8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_08138BCC:: @ 08138BCC
	.4byte gUnk_08138AD0

gUnk_08138BD0:: @ 08138BD0
	.incbin "data_08132B30/gUnk_08138BD0.bin"

gUnk_08138C34:: @ 08138C34
	.4byte gUnk_08138BD0

gUnk_08138C38:: @ 08138C38
	.incbin "data_08132B30/gUnk_08138C38.bin"

gUnk_08138C60:: @ 08138C60
	.incbin "data_08132B30/gUnk_08138C60.bin"

gUnk_08138C88:: @ 08138C88
	.incbin "data_08132B30/gUnk_08138C88.bin"

gUnk_08138CB0:: @ 08138CB0
	.incbin "data_08132B30/gUnk_08138CB0.bin"

gUnk_08138CD8:: @ 08138CD8
	.incbin "data_08132B30/gUnk_08138CD8.bin"

gUnk_08138D00:: @ 08138D00
	.incbin "data_08132B30/gUnk_08138D00.bin"

gUnk_08138D28:: @ 08138D28
	.incbin "data_08132B30/gUnk_08138D28.bin"

gUnk_08138D50:: @ 08138D50
	.4byte gUnk_08138C38
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138C60
	.4byte gUnk_08138C88
	.4byte gUnk_08138CB0
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138CD8
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138D00
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138D28
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_08138DD4:: @ 08138DD4
	.incbin "data_08132B30/gUnk_08138DD4.bin"

gUnk_08138DFC:: @ 08138DFC
	.incbin "data_08132B30/gUnk_08138DFC.bin"

gUnk_08138E38:: @ 08138E38
	.incbin "data_08132B30/gUnk_08138E38.bin"

gUnk_08138E60:: @ 08138E60
	.incbin "data_08132B30/gUnk_08138E60.bin"

gUnk_08138E9C:: @ 08138E9C
	.incbin "data_08132B30/gUnk_08138E9C.bin"

gUnk_08138EC4:: @ 08138EC4
	.incbin "data_08132B30/gUnk_08138EC4.bin"

gUnk_08138EEC:: @ 08138EEC
	.incbin "data_08132B30/gUnk_08138EEC.bin"

gUnk_08138F14:: @ 08138F14
	.incbin "data_08132B30/gUnk_08138F14.bin"

gUnk_08138F50:: @ 08138F50
	.incbin "data_08132B30/gUnk_08138F50.bin"

gUnk_08138F78:: @ 08138F78
	.incbin "data_08132B30/gUnk_08138F78.bin"

gUnk_08138FA0:: @ 08138FA0
	.incbin "data_08132B30/gUnk_08138FA0.bin"

gUnk_08138FC8:: @ 08138FC8
	.incbin "data_08132B30/gUnk_08138FC8.bin"

gUnk_08139004:: @ 08139004
	.incbin "data_08132B30/gUnk_08139004.bin"

gUnk_08139040:: @ 08139040
	.incbin "data_08132B30/gUnk_08139040.bin"

gUnk_0813907C:: @ 0813907C
	.incbin "data_08132B30/gUnk_0813907C.bin"

gUnk_081390B8:: @ 081390B8
	.incbin "data_08132B30/gUnk_081390B8.bin"

gUnk_081390E0:: @ 081390E0
	.incbin "data_08132B30/gUnk_081390E0.bin"

gUnk_08139108:: @ 08139108
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138DD4
	.4byte gUnk_08138DFC
	.4byte gUnk_08138E38
	.4byte gUnk_08138E60
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08138E9C
	.4byte gUnk_08138EC4
	.4byte gUnk_08138EEC
	.4byte gUnk_08138F14
	.4byte gUnk_08138F50
	.4byte gUnk_08138F78
	.4byte gUnk_08138FA0
	.4byte gUnk_08138FC8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139004
	.4byte gUnk_08139040
	.4byte gUnk_0813907C
	.4byte gUnk_081390B8
	.4byte gUnk_081390E0
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081391A8:: @ 081391A8
	.incbin "data_08132B30/gUnk_081391A8.bin"

gUnk_081391D0:: @ 081391D0
	.4byte gUnk_081391A8

gUnk_081391D4:: @ 081391D4
	.incbin "data_08132B30/gUnk_081391D4.bin"

gUnk_081391FC:: @ 081391FC
	.4byte gUnk_081391D4
	.4byte gUnk_081391D4

gUnk_08139204:: @ 08139204
	.incbin "data_08132B30/gUnk_08139204.bin"

gUnk_0813922C:: @ 0813922C
	.incbin "data_08132B30/gUnk_0813922C.bin"

gUnk_08139254:: @ 08139254
	.incbin "data_08132B30/gUnk_08139254.bin"

gUnk_08139290:: @ 08139290
	.incbin "data_08132B30/gUnk_08139290.bin"

gUnk_081392B8:: @ 081392B8
	.incbin "data_08132B30/gUnk_081392B8.bin"

gUnk_081392E0:: @ 081392E0
	.incbin "data_08132B30/gUnk_081392E0.bin"

gUnk_08139308:: @ 08139308
	.incbin "data_08132B30/gUnk_08139308.bin"

gUnk_08139330:: @ 08139330
	.incbin "data_08132B30/gUnk_08139330.bin"

gUnk_0813936C:: @ 0813936C
	.incbin "data_08132B30/gUnk_0813936C.bin"

gUnk_08139394:: @ 08139394
	.incbin "data_08132B30/gUnk_08139394.bin"

gUnk_081393BC:: @ 081393BC
	.incbin "data_08132B30/gUnk_081393BC.bin"

gUnk_08139434:: @ 08139434
	.incbin "data_08132B30/gUnk_08139434.bin"

gUnk_0813945C:: @ 0813945C
	.incbin "data_08132B30/gUnk_0813945C.bin"

gUnk_08139484:: @ 08139484
	.incbin "data_08132B30/gUnk_08139484.bin"

gUnk_081394AC:: @ 081394AC
	.incbin "data_08132B30/gUnk_081394AC.bin"

gUnk_081394D4:: @ 081394D4
	.incbin "data_08132B30/gUnk_081394D4.bin"

gUnk_081394FC:: @ 081394FC
	.incbin "data_08132B30/gUnk_081394FC.bin"

gUnk_08139538:: @ 08139538
	.incbin "data_08132B30/gUnk_08139538.bin"

gUnk_08139560:: @ 08139560
	.incbin "data_08132B30/gUnk_08139560.bin"

gUnk_08139588:: @ 08139588
	.incbin "data_08132B30/gUnk_08139588.bin"

gUnk_081395B0:: @ 081395B0
	.incbin "data_08132B30/gUnk_081395B0.bin"

gUnk_081395D8:: @ 081395D8
	.4byte gUnk_08139204
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813922C
	.4byte gUnk_0813936C
	.4byte gUnk_08139484
	.4byte gUnk_081394AC
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139394
	.4byte gUnk_081393BC
	.4byte gUnk_08139434
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139254
	.4byte gExitLists_NoExitList
	.4byte gUnk_081394D4
	.4byte gUnk_0813945C
	.4byte gUnk_081394FC
	.4byte gUnk_08139290
	.4byte gUnk_081392B8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081392E0
	.4byte gUnk_08139308
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139538
	.4byte gUnk_08139560
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139330
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139588
	.4byte gUnk_081395B0
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_081396D8:: @ 081396D8
	.incbin "data_08132B30/gUnk_081396D8.bin"

gUnk_08139714:: @ 08139714
	.4byte gUnk_081396D8

gUnk_08139718:: @ 08139718
	.incbin "data_08132B30/gUnk_08139718.bin"

gUnk_0813972C:: @ 0813972C
	.incbin "data_08132B30/gUnk_0813972C.bin"

gUnk_08139754:: @ 08139754
	.incbin "data_08132B30/gUnk_08139754.bin"

gUnk_08139790:: @ 08139790
	.incbin "data_08132B30/gUnk_08139790.bin"

gUnk_081397B8:: @ 081397B8
	.incbin "data_08132B30/gUnk_081397B8.bin"

gUnk_081397E0:: @ 081397E0
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139718
	.4byte gUnk_0813972C
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139754
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139790
	.4byte gUnk_081397B8

gUnk_08139804:: @ 08139804
	.incbin "data_08132B30/gUnk_08139804.bin"

gUnk_0813982C:: @ 0813982C
	.incbin "data_08132B30/gUnk_0813982C.bin"

gUnk_08139854:: @ 08139854
	.incbin "data_08132B30/gUnk_08139854.bin"

gUnk_0813987C:: @ 0813987C
	.incbin "data_08132B30/gUnk_0813987C.bin"

gUnk_081398A4:: @ 081398A4
	.incbin "data_08132B30/gUnk_081398A4.bin"

gUnk_081398CC:: @ 081398CC
	.incbin "data_08132B30/gUnk_081398CC.bin"

gUnk_08139908:: @ 08139908
	.incbin "data_08132B30/gUnk_08139908.bin"

gUnk_08139944:: @ 08139944
	.incbin "data_08132B30/gUnk_08139944.bin"

gUnk_08139980:: @ 08139980
	.incbin "data_08132B30/gUnk_08139980.bin"

gUnk_081399A8:: @ 081399A8
	.incbin "data_08132B30/gUnk_081399A8.bin"

gUnk_081399D0:: @ 081399D0
	.incbin "data_08132B30/gUnk_081399D0.bin"

gUnk_08139A34:: @ 08139A34
	.incbin "data_08132B30/gUnk_08139A34.bin"

gUnk_08139A5C:: @ 08139A5C
	.incbin "data_08132B30/gUnk_08139A5C.bin"

gUnk_08139A84:: @ 08139A84
	.incbin "data_08132B30/gUnk_08139A84.bin"

gUnk_08139AAC:: @ 08139AAC
	.incbin "data_08132B30/gUnk_08139AAC.bin"

gUnk_08139AFC:: @ 08139AFC
	.incbin "data_08132B30/gUnk_08139AFC.bin"

gUnk_08139B24:: @ 08139B24
	.incbin "data_08132B30/gUnk_08139B24.bin"

gUnk_08139B4C:: @ 08139B4C
	.incbin "data_08132B30/gUnk_08139B4C.bin"

gUnk_08139B88:: @ 08139B88
	.incbin "data_08132B30/gUnk_08139B88.bin"

gUnk_08139BC4:: @ 08139BC4
	.incbin "data_08132B30/gUnk_08139BC4.bin"

gUnk_08139BEC:: @ 08139BEC
	.incbin "data_08132B30/gUnk_08139BEC.bin"

gUnk_08139C28:: @ 08139C28
	.4byte gUnk_08139804
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813982C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139854
	.4byte gUnk_0813987C
	.4byte gUnk_081398A4
	.4byte gUnk_081398CC
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139908
	.4byte gUnk_08139944
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139980
	.4byte gExitLists_NoExitList
	.4byte gUnk_081399A8
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_081399D0
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139A34
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139A5C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139A84
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139AAC
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139AFC
	.4byte gUnk_08139B24
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139B4C
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139B88
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139BC4
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139BEC
	.4byte gExitLists_NoExitList
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_08139D0C:: @ 08139D0C
	.incbin "data_08132B30/gUnk_08139D0C.bin"

gUnk_08139D5C:: @ 08139D5C
	.incbin "data_08132B30/gUnk_08139D5C.bin"

gUnk_08139D84:: @ 08139D84
	.incbin "data_08132B30/gUnk_08139D84.bin"

gUnk_08139DAC:: @ 08139DAC
	.incbin "data_08132B30/gUnk_08139DAC.bin"

gUnk_08139DD4:: @ 08139DD4
	.incbin "data_08132B30/gUnk_08139DD4.bin"

gUnk_08139DFC:: @ 08139DFC
	.incbin "data_08132B30/gUnk_08139DFC.bin"

gUnk_08139E38:: @ 08139E38
	.incbin "data_08132B30/gUnk_08139E38.bin"

gUnk_08139E74:: @ 08139E74
	.incbin "data_08132B30/gUnk_08139E74.bin"

gUnk_08139EC4:: @ 08139EC4
	.incbin "data_08132B30/gUnk_08139EC4.bin"

gUnk_08139F14:: @ 08139F14
	.incbin "data_08132B30/gUnk_08139F14.bin"

gUnk_08139F50:: @ 08139F50
	.incbin "data_08132B30/gUnk_08139F50.bin"

gUnk_08139F78:: @ 08139F78
	.incbin "data_08132B30/gUnk_08139F78.bin"

gUnk_08139FA0:: @ 08139FA0
	.incbin "data_08132B30/gUnk_08139FA0.bin"

gUnk_08139FF0:: @ 08139FF0
	.incbin "data_08132B30/gUnk_08139FF0.bin"

gUnk_0813A018:: @ 0813A018
	.incbin "data_08132B30/gUnk_0813A018.bin"

gUnk_0813A040:: @ 0813A040
	.incbin "data_08132B30/gUnk_0813A040.bin"

gUnk_0813A090:: @ 0813A090
	.incbin "data_08132B30/gUnk_0813A090.bin"

gUnk_0813A0B8:: @ 0813A0B8
	.incbin "data_08132B30/gUnk_0813A0B8.bin"

gUnk_0813A0E0:: @ 0813A0E0
	.incbin "data_08132B30/gUnk_0813A0E0.bin"

gUnk_0813A108:: @ 0813A108
	.incbin "data_08132B30/gUnk_0813A108.bin"

gUnk_0813A130:: @ 0813A130
	.incbin "data_08132B30/gUnk_0813A130.bin"

gUnk_0813A158:: @ 0813A158
	.incbin "data_08132B30/gUnk_0813A158.bin"

gUnk_0813A180:: @ 0813A180
	.incbin "data_08132B30/gUnk_0813A180.bin"

gUnk_0813A1A8:: @ 0813A1A8
	.incbin "data_08132B30/gUnk_0813A1A8.bin"

gUnk_0813A1D0:: @ 0813A1D0
	.incbin "data_08132B30/gUnk_0813A1D0.bin"

gUnk_0813A1F8:: @ 0813A1F8
	.incbin "data_08132B30/gUnk_0813A1F8.bin"

gUnk_0813A220:: @ 0813A220
	.incbin "data_08132B30/gUnk_0813A220.bin"

gUnk_0813A248:: @ 0813A248
	.incbin "data_08132B30/gUnk_0813A248.bin"

gUnk_0813A284:: @ 0813A284
	.incbin "data_08132B30/gUnk_0813A284.bin"

gUnk_0813A2AC:: @ 0813A2AC
	.4byte gUnk_08139D0C
	.4byte gUnk_08139D5C
	.4byte gUnk_08139D84
	.4byte gUnk_08139DAC
	.4byte gUnk_08139DD4
	.4byte gUnk_08139DFC
	.4byte gUnk_08139E38
	.4byte gUnk_08139E74
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139EC4
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139F14
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139F50
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139F78
	.4byte gExitLists_NoExitList
	.4byte gUnk_08139FA0
	.4byte gUnk_08139FF0
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813A018
	.4byte gUnk_0813A040
	.4byte gUnk_0813A090
	.4byte gUnk_0813A0B8
	.4byte gUnk_0813A0E0
	.4byte gUnk_0813A108
	.4byte gUnk_0813A130
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813A158
	.4byte gUnk_0813A180
	.4byte gUnk_0813A1A8
	.4byte gUnk_0813A1D0
	.4byte gUnk_0813A1F8
	.4byte gUnk_0813A220
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813A248
	.4byte gUnk_0813A284
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte 0x0000ffff
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_0813A3C0:: @ 0813A3C0
	.incbin "data_08132B30/gUnk_0813A3C0.bin"

gUnk_0813A3E8:: @ 0813A3E8
	.incbin "data_08132B30/gUnk_0813A3E8.bin"

gUnk_0813A424:: @ 0813A424
	.incbin "data_08132B30/gUnk_0813A424.bin"

gUnk_0813A44C:: @ 0813A44C
	.incbin "data_08132B30/gUnk_0813A44C.bin"

gUnk_0813A474:: @ 0813A474
	.incbin "data_08132B30/gUnk_0813A474.bin"

gUnk_0813A4B0:: @ 0813A4B0
	.incbin "data_08132B30/gUnk_0813A4B0.bin"

gUnk_0813A4D8:: @ 0813A4D8
	.incbin "data_08132B30/gUnk_0813A4D8.bin"

gUnk_0813A514:: @ 0813A514
	.incbin "data_08132B30/gUnk_0813A514.bin"

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
	.incbin "data_08132B30/gUnk_0813A55C.bin"

gUnk_0813A584:: @ 0813A584
	.incbin "data_08132B30/gUnk_0813A584.bin"

gUnk_0813A5AC:: @ 0813A5AC
	.4byte gUnk_0813A55C
	.4byte gUnk_0813A584

gUnk_0813A5B4:: @ 0813A5B4
	.incbin "data_08132B30/gUnk_0813A5B4.bin"

gUnk_0813A5F0:: @ 0813A5F0
	.4byte gUnk_0813A5B4

gUnk_0813A5F4:: @ 0813A5F4
	.incbin "data_08132B30/gUnk_0813A5F4.bin"

gUnk_0813A630:: @ 0813A630
	.incbin "data_08132B30/gUnk_0813A630.bin"

gUnk_0813A66C:: @ 0813A66C
	.incbin "data_08132B30/gUnk_0813A66C.bin"

gUnk_0813A6E4:: @ 0813A6E4
	.4byte gUnk_0813A5F4
	.4byte gUnk_0813A630
	.4byte gExitLists_NoExitList
	.4byte gUnk_0813A66C
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList
	.4byte gExitLists_NoExitList

gUnk_0813A704:: @ 0813A704
	.incbin "data_08132B30/gUnk_0813A704.bin"

gUnk_0813A740:: @ 0813A740
	.4byte gUnk_0813A704

gUnk_0813A744:: @ 0813A744
	.incbin "data_08132B30/gUnk_0813A744.bin"

gUnk_0813A76C:: @ 0813A76C
	.incbin "data_08132B30/gUnk_0813A76C.bin"

gUnk_0813A794:: @ 0813A794
	.incbin "data_08132B30/gUnk_0813A794.bin"

gUnk_0813A7BC:: @ 0813A7BC
	.incbin "data_08132B30/gUnk_0813A7BC.bin"

gUnk_0813A7E4:: @ 0813A7E4
	.4byte gUnk_0813A744
	.4byte gUnk_0813A794
	.4byte gUnk_0813A7BC

gExitLists:: @ 0813A7F0
	.4byte gExitLists_MinishWoods
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
	.4byte gExitLists_NoExit
	.4byte gUnk_08135578
	.4byte gUnk_08135744
	.4byte gUnk_0813584C
	.4byte gUnk_08135928
	.4byte gUnk_08135974
	.4byte gExitLists_NoExit
	.4byte gUnk_081347C0
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_08136028
	.4byte gUnk_0813608C
	.4byte gUnk_081360C8
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
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
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_08138958
	.4byte gUnk_081387F0
	.4byte gUnk_081388F8
	.4byte gUnk_08138950
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_08138958
	.4byte gExitLists_NoExit
	.4byte gUnk_08138B48
	.4byte gUnk_08138BCC
	.4byte gUnk_08138C34
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_08138D50
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.ifndef DEMO_USA
	.4byte gUnk_08139108
	.4byte gUnk_081391D0
	.4byte gUnk_081391FC
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.endif
	.4byte gUnk_081395D8
	.4byte gUnk_08139714
	.4byte gUnk_08138848
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_081397E0
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_08139C28
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_0813A7E4
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_0813A6E4
	.4byte gUnk_0813A740
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_0813A2AC
	.4byte gUnk_0813A53C
	.4byte gUnk_0813A5AC
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gUnk_0813A5F0
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
	.4byte gExitLists_NoExit
