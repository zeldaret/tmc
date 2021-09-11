	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120A94:: @ 08120A94
	.4byte sub_08087BC4
	.4byte sub_08087CA8
	.4byte sub_08087D1C
	.4byte sub_08087DBC
	.4byte sub_08087E5C

gUnk_08120AA8:: @ 08120AA8
	.incbin "figurineDevice/gUnk_08120AA8.bin"

gUnk_08120AAC:: @ 08120AAC
	.incbin "figurineDevice/gUnk_08120AAC.bin"

gUnk_08120AB4:: @ 08120AB4
.ifdef EU
    @ TODO only small differences
	.incbin "figurineDevice/gUnk_08120AB4_EU.bin"
.else
	.incbin "figurineDevice/gUnk_08120AB4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08120ACC:: @ 08120ACC
.ifdef EU
    @ TODO only small differences
	.incbin "figurineDevice/gUnk_08120ACC_EU.bin"
.else
	.incbin "figurineDevice/gUnk_08120ACC_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08120AE4:: @ 08120AE4
	.incbin "figurineDevice/gUnk_08120AE4.bin"
