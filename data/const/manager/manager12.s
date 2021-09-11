	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108398:: @ 08108398
	.incbin "assets/manager12/gUnk_08108398.bin"

gUnk_081083AE:: @ 081083AE
	.incbin "assets/manager12/gUnk_081083AE.bin"

gUnk_081083C4:: @ 081083C4
	.incbin "assets/manager12/gUnk_081083C4.bin"

gUnk_081083DA:: @ 081083DA
	.incbin "assets/manager12/gUnk_081083DA.bin"

gUnk_081083F2:: @ 081083F2
	.incbin "assets/manager12/gUnk_081083F2.bin"

gUnk_08108408:: @ 08108408
.ifdef EU
    @ TODO only small differences
	.incbin "assets/manager12/gUnk_08108408_EU.bin"
.else
	.incbin "assets/manager12/gUnk_08108408_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/manager12/gUnk_08108408_2_EU.bin"
.else
	.incbin "assets/manager12/gUnk_08108408_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08108468:: @ 08108468
.ifdef EU
    @ TODO only small differences
	.incbin "assets/manager12/gUnk_08108468_EU.bin"
.else
	.incbin "assets/manager12/gUnk_08108468_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/manager12/gUnk_08108468_2_EU.bin"
.else
	.incbin "assets/manager12/gUnk_08108468_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/manager12/gUnk_08108468_4.bin"
