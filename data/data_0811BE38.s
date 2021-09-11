	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811BE38:: @ 0811BE38
	.incbin "assets/data_0811BE38/gUnk_0811BE38.bin"

gUnk_0811BE40:: @ 0811BE40
	.incbin "assets/data_0811BE38/gUnk_0811BE40.bin"

gUnk_0811BE48:: @ 0811BE48
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_0811BE38/gUnk_0811BE48_EU.bin"
.else
	.incbin "assets/data_0811BE38/gUnk_0811BE48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0811BFC8:: @ 0811BFC8
	.4byte sub_080779E8
	.4byte sub_080779EC
	.4byte sub_08077A18
	.4byte sub_08077A48
	.4byte sub_08077A98
	.4byte sub_08077AC8

gUnk_0811BFE0:: @ 0811BFE0
	.incbin "assets/data_0811BE38/gUnk_0811BFE0.bin"

gUnk_0811BFE8:: @ 0811BFE8
	.4byte sub_08078008
	.4byte sub_08078124
	.4byte sub_08078140
	.4byte sub_08078070
	.4byte sub_080780E0
	.4byte sub_08078108

gUnk_0811C000:: @ 0811C000
	.incbin "assets/data_0811BE38/gUnk_0811C000.bin"

gUnk_0811C00C:: @ 0811C00C
	.incbin "assets/data_0811BE38/gUnk_0811C00C.bin"

gUnk_0811C014:: @ 0811C014
	.incbin "assets/data_0811BE38/gUnk_0811C014.bin"

gUnk_0811C01C:: @ 0811C01C
	.incbin "assets/data_0811BE38/gUnk_0811C01C.bin"

gUnk_0811C070:: @ 0811C070
	.incbin "assets/data_0811BE38/gUnk_0811C070.bin"

gUnk_0811C090:: @ 0811C090
	.incbin "assets/data_0811BE38/gUnk_0811C090.bin"

gUnk_0811C0B0:: @ 0811C0B0
	.4byte gUnk_0811C070
	.4byte gUnk_0811C090

gUnk_0811C0B8:: @ 0811C0B8
	.incbin "assets/data_0811BE38/gUnk_0811C0B8.bin"

gUnk_0811C0C8:: @ 0811C0C8
	.incbin "assets/data_0811BE38/gUnk_0811C0C8.bin"

gUnk_0811C0D8:: @ 0811C0D8
	.incbin "assets/data_0811BE38/gUnk_0811C0D8.bin"

gUnk_0811C0E8:: @ 0811C0E8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0D8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0C8

gUnk_0811C0F8:: @ 0811C0F8
	.incbin "assets/data_0811BE38/gUnk_0811C0F8.bin"

gUnk_0811C100:: @ 0811C100
	.incbin "assets/data_0811BE38/gUnk_0811C100.bin"

gUnk_0811C108:: @ 0811C108
	.incbin "assets/data_0811BE38/gUnk_0811C108.bin"

gUnk_0811C110:: @ 0811C110
	.incbin "assets/data_0811BE38/gUnk_0811C110.bin"

gUnk_0811C118:: @ 0811C118
	.incbin "assets/data_0811BE38/gUnk_0811C118.bin"

gUnk_0811C120:: @ 0811C120
	.4byte nullsub_112
	.4byte sub_08074200
	.4byte 00000000
	.4byte 00000000
	.4byte sub_0807422C
	.4byte sub_08074238
	.4byte sub_080742AC
	.4byte sub_080742E4
	.4byte sub_08074314
	.4byte sub_08074338
	.4byte sub_0807435C
	.4byte sub_08074380
	.4byte sub_08074638
	.4byte sub_08074B4C
	.4byte sub_08074B74
	.4byte sub_08074BA0
	.4byte sub_08074BCC
	.4byte sub_08074678
	.4byte nullsub_112
	.4byte nullsub_112
	.4byte sub_080743D4
	.4byte sub_0807441C
	.4byte sub_0807450C
	.4byte sub_08074584
	.4byte sub_080745B4
	.4byte sub_0807479C
	.4byte sub_080748C4
	.4byte sub_080748DC
	.4byte sub_08074918
	.4byte 00000000
	.4byte sub_0807496C
	.4byte 00000000
	.4byte sub_08074A48
	.4byte sub_0807450C
	.4byte nullsub_504
	.4byte sub_080742AC
	.4byte sub_080742AC
	.4byte sub_08074A9C
	.4byte sub_08074AF4
	.4byte sub_08074B18
	.4byte sub_0807422C
	.4byte sub_08074238
	.4byte sub_080749D4
	.4byte sub_0807493C
	.4byte sub_080749A8
	.4byte sub_08074A9C

gUnk_0811C1D8:: @ 0811C1D8
	.4byte gUnk_0811C240
	.4byte gUnk_0811C24A
	.4byte gUnk_0811C254
	.4byte gUnk_0811C25E

gUnk_0811C1E8:: @ 0811C1E8
	.4byte gUnk_0811C1F8
	.4byte gUnk_0811C20A
	.4byte gUnk_0811C21C
	.4byte gUnk_0811C22E

gUnk_0811C1F8:: @ 0811C1F8
	.incbin "assets/data_0811BE38/gUnk_0811C1F8.bin"

gUnk_0811C20A:: @ 0811C20A
	.incbin "assets/data_0811BE38/gUnk_0811C20A.bin"

gUnk_0811C21C:: @ 0811C21C
	.incbin "assets/data_0811BE38/gUnk_0811C21C.bin"

gUnk_0811C22E:: @ 0811C22E
	.incbin "assets/data_0811BE38/gUnk_0811C22E.bin"

gUnk_0811C240:: @ 0811C240
	.incbin "assets/data_0811BE38/gUnk_0811C240.bin"

gUnk_0811C24A:: @ 0811C24A
	.incbin "assets/data_0811BE38/gUnk_0811C24A.bin"

gUnk_0811C254:: @ 0811C254
	.incbin "assets/data_0811BE38/gUnk_0811C254.bin"

gUnk_0811C25E:: @ 0811C25E
	.incbin "assets/data_0811BE38/gUnk_0811C25E.bin"

gUnk_0811C268:: @ 0811C268
	.incbin "assets/data_0811BE38/gUnk_0811C268.bin"

gUnk_0811C27C:: @ 0811C27C
	.4byte sub_0807B114
	.4byte sub_0807B128

gUnk_0811C284:: @ 0811C284
	.4byte sub_0807B1A8
	.4byte sub_0807B144
	.4byte nullsub_506
	.4byte sub_0807B178
	.4byte sub_0807B2F8

gUnk_0811C298:: @ 0811C298
	.4byte sub_0807B1DC
	.4byte sub_0807B1EC
	.4byte sub_0807B21C
	.4byte sub_0807B264
	.4byte sub_0807B2B8

gUnk_0811C2AC:: @ 0811C2AC
	.incbin "assets/data_0811BE38/gUnk_0811C2AC.bin"

gUnk_0811C2CC:: @ 0811C2CC
	.incbin "assets/data_0811BE38/gUnk_0811C2CC.bin"

gUnk_0811C2EC:: @ 0811C2EC
	.incbin "assets/data_0811BE38/gUnk_0811C2EC.bin"

gUnk_0811C456:: @ 0811C456
	.incbin "assets/data_0811BE38/gUnk_0811C456.bin"

gUnk_0811C466:: @ 0811C466
	.incbin "assets/data_0811BE38/gUnk_0811C466.bin"
