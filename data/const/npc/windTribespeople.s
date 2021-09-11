	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113A1C:: @ 08113A1C
	.incbin "windTribespeople/gUnk_08113A1C.bin"

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
	.incbin "windTribespeople/gUnk_08113ABC.bin"

gUnk_08113B0C:: @ 08113B0C
	.incbin "windTribespeople/gUnk_08113B0C.bin"

gUnk_08113B12:: @ 08113B12
	.incbin "windTribespeople/gUnk_08113B12.bin"

gUnk_08113B16:: @ 08113B16
	.incbin "windTribespeople/gUnk_08113B16.bin"

gUnk_08113B1E:: @ 08113B1E
	.incbin "windTribespeople/gUnk_08113B1E.bin"

gUnk_08113B22:: @ 08113B22
	.incbin "windTribespeople/gUnk_08113B22.bin"

gUnk_08113B28:: @ 08113B28
.ifdef JP
    @ TODO only small differences
	.incbin "windTribespeople/gUnk_08113B28_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "windTribespeople/gUnk_08113B28_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "windTribespeople/gUnk_08113B28_2_EU.bin"
.else
	.incbin "windTribespeople/gUnk_08113B28_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_08113B30:: @ 08113B30
.ifdef JP
    @ TODO only small differences
	.incbin "windTribespeople/gUnk_08113B30_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "windTribespeople/gUnk_08113B30_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "windTribespeople/gUnk_08113B30_2_EU.bin"
.else
	.incbin "windTribespeople/gUnk_08113B30_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_08113B38:: @ 08113B38
	.incbin "windTribespeople/gUnk_08113B38.bin"
