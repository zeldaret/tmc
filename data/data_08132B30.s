	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_08133368:: @ 08133368
.ifdef EU
    @ TODO only small differences
	.incbin "data_08132B30/gUnk_08133368_EU.bin"
.else
	.incbin "data_08132B30/gUnk_08133368_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08133918:: @ 08133918
	.incbin "data_08132B30/gUnk_08133918.bin"

gUnk_08133938:: @ 08133938
	.incbin "data_08132B30/gUnk_08133938.bin"

gUnk_08133958:: @ 08133958
	.incbin "data_08132B30/gUnk_08133958.bin"

gUnk_08133978:: @ 08133978
	.incbin "data_08132B30/gUnk_08133978.bin"

gUnk_08133998:: @ 08133998
	.incbin "data_08132B30/gUnk_08133998.bin"

gUnk_081339B8:: @ 081339B8
	.incbin "data_08132B30/gUnk_081339B8.bin"

gUnk_081339D8:: @ 081339D8
	.incbin "data_08132B30/gUnk_081339D8.bin"

gUnk_081339F8:: @ 081339F8
	.incbin "data_08132B30/gUnk_081339F8.bin"

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
	.incbin "data_08132B30/gUnk_08133A40.bin"

gUnk_08133A5A:: @ 08133A5A
	.incbin "data_08132B30/gUnk_08133A5A.bin"

gUnk_08133A67:: @ 08133A67
	.incbin "data_08132B30/gUnk_08133A67.bin"

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
