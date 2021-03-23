	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811BE38:: @ 0811BE38
	.incbin "baserom.gba", 0x11BE38, 0x0000008

gUnk_0811BE40:: @ 0811BE40
	.incbin "baserom.gba", 0x11BE40, 0x0000008

gUnk_0811BE48:: @ 0811BE48
	.incbin "baserom.gba", 0x11BE48, 0x0000180

gUnk_0811BFC8:: @ 0811BFC8
	.4byte sub_080779E8
	.4byte sub_080779EC
	.4byte sub_08077A18
	.4byte sub_08077A48
	.4byte sub_08077A98
	.4byte sub_08077AC8

gUnk_0811BFE0:: @ 0811BFE0
	.incbin "baserom.gba", 0x11BFE0, 0x0000008

gUnk_0811BFE8:: @ 0811BFE8
	.4byte sub_08078008
	.4byte sub_08078124
	.4byte sub_08078140
	.4byte sub_08078070
	.4byte sub_080780E0
	.4byte sub_08078108

gUnk_0811C000:: @ 0811C000
	.incbin "baserom.gba", 0x11C000, 0x000000C

gUnk_0811C00C:: @ 0811C00C
	.incbin "baserom.gba", 0x11C00C, 0x0000008

gUnk_0811C014:: @ 0811C014
	.incbin "baserom.gba", 0x11C014, 0x0000008

gUnk_0811C01C:: @ 0811C01C
	.incbin "baserom.gba", 0x11C01C, 0x0000054

gUnk_0811C070:: @ 0811C070
	.incbin "baserom.gba", 0x11C070, 0x0000020

gUnk_0811C090:: @ 0811C090
	.incbin "baserom.gba", 0x11C090, 0x0000020

gUnk_0811C0B0:: @ 0811C0B0
	.4byte gUnk_0811C070
	.4byte gUnk_0811C090

gUnk_0811C0B8:: @ 0811C0B8
	.incbin "baserom.gba", 0x11C0B8, 0x0000010

gUnk_0811C0C8:: @ 0811C0C8
	.incbin "baserom.gba", 0x11C0C8, 0x0000010

gUnk_0811C0D8:: @ 0811C0D8
	.incbin "baserom.gba", 0x11C0D8, 0x0000010

gUnk_0811C0E8:: @ 0811C0E8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0D8
	.4byte gUnk_0811C0B8
	.4byte gUnk_0811C0C8

gUnk_0811C0F8:: @ 0811C0F8
	.incbin "baserom.gba", 0x11C0F8, 0x0000008

gUnk_0811C100:: @ 0811C100
	.incbin "baserom.gba", 0x11C100, 0x0000008

gUnk_0811C108:: @ 0811C108
	.incbin "baserom.gba", 0x11C108, 0x0000008

gUnk_0811C110:: @ 0811C110
	.incbin "baserom.gba", 0x11C110, 0x0000008

gUnk_0811C118:: @ 0811C118
	.incbin "baserom.gba", 0x11C118, 0x0000008

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
	.incbin "baserom.gba", 0x11C1F8, 0x0000012

gUnk_0811C20A:: @ 0811C20A
	.incbin "baserom.gba", 0x11C20A, 0x0000012

gUnk_0811C21C:: @ 0811C21C
	.incbin "baserom.gba", 0x11C21C, 0x0000012

gUnk_0811C22E:: @ 0811C22E
	.incbin "baserom.gba", 0x11C22E, 0x0000012

gUnk_0811C240:: @ 0811C240
	.incbin "baserom.gba", 0x11C240, 0x000000A

gUnk_0811C24A:: @ 0811C24A
	.incbin "baserom.gba", 0x11C24A, 0x000000A

gUnk_0811C254:: @ 0811C254
	.incbin "baserom.gba", 0x11C254, 0x000000A

gUnk_0811C25E:: @ 0811C25E
	.incbin "baserom.gba", 0x11C25E, 0x000000A

gUnk_0811C268:: @ 0811C268
	.incbin "baserom.gba", 0x11C268, 0x0000014

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
	.incbin "baserom.gba", 0x11C2AC, 0x0000020

gUnk_0811C2CC:: @ 0811C2CC
	.incbin "baserom.gba", 0x11C2CC, 0x0000020

gUnk_0811C2EC:: @ 0811C2EC
	.incbin "baserom.gba", 0x11C2EC, 0x000016A

gUnk_0811C456:: @ 0811C456
	.incbin "baserom.gba", 0x11C456, 0x0000010

gUnk_0811C466:: @ 0811C466
	.incbin "baserom.gba", 0x11C466, 0x0000022
