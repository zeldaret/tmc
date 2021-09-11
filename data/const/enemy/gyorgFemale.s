	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1A64:: @ 080D1A64
	.4byte sub_0804614C
	.4byte sub_0804625C
	.4byte sub_0804632C
	.4byte sub_080463E4

gUnk_080D1A74:: @ 080D1A74
	.4byte gUnk_080D1A94
	.4byte gUnk_080D1AAC
	.4byte gUnk_080D1AC4
	.4byte gUnk_080D1ADC

gUnk_080D1A84:: @ 080D1A84
	.incbin "gyorgFemale/gUnk_080D1A84.bin"

gUnk_080D1A94:: @ 080D1A94
.ifdef JP
	@ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1A94_JP.bin"
.else
.ifdef DEMO_JP
	@ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1A94_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "gyorgFemale/gUnk_080D1A94_2_EU.bin"
.else
	.incbin "gyorgFemale/gUnk_080D1A94_3_USA-DEMO_USA.bin"
.endif
.endif
.endif


gUnk_080D1AAC:: @ 080D1AAC
.ifdef JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1AAC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1AAC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "gyorgFemale/gUnk_080D1AAC_2_EU.bin"
.else
	.incbin "gyorgFemale/gUnk_080D1AAC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D1AC4:: @ 080D1AC4
.ifdef JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1AC4_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1AC4_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "gyorgFemale/gUnk_080D1AC4_2_EU.bin"
.else
	.incbin "gyorgFemale/gUnk_080D1AC4_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D1ADC:: @ 080D1ADC
.ifdef JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1ADC_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "gyorgFemale/gUnk_080D1ADC_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "gyorgFemale/gUnk_080D1ADC_2_EU.bin"
.else
	.incbin "gyorgFemale/gUnk_080D1ADC_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080D1AF4:: @ 080D1AF4
	.incbin "gyorgFemale/gUnk_080D1AF4.bin"

gUnk_080D1AF8:: @ 080D1AF8
	.incbin "gyorgFemale/gUnk_080D1AF8.bin"
