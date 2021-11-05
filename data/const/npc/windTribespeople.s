	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113A1C:: @ 08113A1C
	.incbin "baserom.gba", 0x113A1C, 0x0000060

gUnk_08113A7C:: @ 08113A7C
	.4byte sub_0806C798
	.4byte sub_0806C7D4
	.4byte sub_0806C834
	.4byte sub_0806C85C

gUnk_08113A8C:: @ 08113A8C
	.4byte sub_0806C928
	.4byte sub_0806C944
	.4byte sub_0806C978
	.4byte sub_0806C99C
	.4byte sub_0806C9D0
	.4byte sub_0806C928
	.4byte sub_0806C9F8
	.4byte sub_0806C99C
	.4byte sub_0806CA1C
	.4byte sub_0806CA2C
	.4byte sub_0806CA3C
	.4byte sub_0806CA4C

gUnk_08113ABC:: @ 08113ABC
	.incbin "baserom.gba", 0x113ABC, 0x0000050

gUnk_08113B0C:: @ 08113B0C
	.incbin "baserom.gba", 0x113B0C, 0x0000006

gUnk_08113B12:: @ 08113B12
	.incbin "baserom.gba", 0x113B12, 0x0000004

gUnk_08113B16:: @ 08113B16
	.incbin "baserom.gba", 0x113B16, 0x0000008

gUnk_08113B1E:: @ 08113B1E
	.incbin "baserom.gba", 0x113B1E, 0x0000004

gUnk_08113B22:: @ 08113B22
	.incbin "baserom.gba", 0x113B22, 0x0000006

gUnk_08113B28:: @ 08113B28
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x1137EC, 0x0000008
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x1137EC, 0x0000008
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x1137EC, 0x0000008
.else
	.incbin "baserom.gba", 0x113B28, 0x0000008
.endif
.endif
.endif

gUnk_08113B30:: @ 08113B30
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x1137F4, 0x0000008
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x1137F4, 0x0000008
.else
.ifdef EU
	.incbin "baserom_jp.gba", 0x1137F4, 0x0000008
.else
	.incbin "baserom.gba", 0x113B30, 0x0000008
.endif
.endif
.endif

gUnk_08113B38:: @ 08113B38
	.incbin "baserom.gba", 0x113B38, 0x0000007
