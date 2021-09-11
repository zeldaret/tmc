	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810B680:: @ 0810B680
	.incbin "townsperson/gUnk_0810B680.bin"

gUnk_0810B6D4:: @ 0810B6D4
	.incbin "townsperson/gUnk_0810B6D4.bin"

gUnk_0810B6E0:: @ 0810B6E0
	.incbin "townsperson/gUnk_0810B6E0.bin"

gUnk_0810B6EC:: @ 0810B6EC
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6E0
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4
	.4byte gUnk_0810B6D4

gUnk_0810B740:: @ 0810B740
	.incbin "townsperson/gUnk_0810B740.bin"

gUnk_0810B748:: @ 0810B748
	.incbin "townsperson/gUnk_0810B748.bin"

gUnk_0810B74A:: @ 0810B74A
	.incbin "townsperson/gUnk_0810B74A.bin"

gUnk_0810B774:: @ 0810B774
	.4byte sub_08061BC8
	.4byte sub_08061C00

gUnk_0810B77C:: @ 0810B77C
	.4byte sub_08061CEC
	.4byte sub_08061D64
	.4byte sub_08061E24
	.4byte sub_08061E50

gUnk_0810B78C:: @ 0810B78C
	.incbin "townsperson/gUnk_0810B78C.bin"

gUnk_0810B790:: @ 0810B790
	.incbin "townsperson/gUnk_0810B790.bin"

gUnk_0810B7BA:: @ 0810B7BA
	.incbin "townsperson/gUnk_0810B7BA.bin"

gUnk_0810B7C0:: @ 0810B7C0
	.incbin "townsperson/gUnk_0810B7C0.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_1_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_2_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "townsperson/gUnk_0810B7C0_3_EU.bin"
.else
	.incbin "townsperson/gUnk_0810B7C0_4_USA-DEMO_USA.bin"
.endif
.endif
.endif

.ifdef JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_5_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_6_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "townsperson/gUnk_0810B7C0_7_EU.bin"
.else
	.incbin "townsperson/gUnk_0810B7C0_8_USA-DEMO_USA.bin"
.endif
.endif
.endif

	.incbin "townsperson/gUnk_0810B7C0_9.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_10_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_11_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "townsperson/gUnk_0810B7C0_12_EU.bin"
.else
	.incbin "townsperson/gUnk_0810B7C0_13_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.incbin "townsperson/gUnk_0810B7C0_14.bin"
	.4byte sub_0806200C
	.incbin "townsperson/gUnk_0810B7C0_15.bin"
.ifdef JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_16_JP.bin"
.else
.ifdef DEMO_JP
    @ TODO only small differences
	.incbin "townsperson/gUnk_0810B7C0_17_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "townsperson/gUnk_0810B7C0_18_EU.bin"
.else
	.incbin "townsperson/gUnk_0810B7C0_19_USA-DEMO_USA.bin"
.endif
.endif
.endif
	.incbin "townsperson/gUnk_0810B7C0_20.bin"
