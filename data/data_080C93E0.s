	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080C93E0:: @ 080C93E0
	.incbin "data_080C93E0/gUnk_080C93E0.bin"

gUnk_080C9460:: @ 080C9460
	.incbin "data_080C93E0/gUnk_080C9460.bin"

gUnk_080C9480:: @ 080C9480
	.incbin "data_080C93E0/gUnk_080C9480.bin"

gUnk_080C9488:: @ 080C9488
	.4byte gUnk_080C9480

gUnk_080C948C:: @ 080C948C
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C948C_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C948C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C94A4:: @ 080C94A4
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C94A4_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C94A4_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9514:: @ 080C9514
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9514_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9514_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C953C:: @ 080C953C
	.4byte gUnk_080C948C
	.4byte gUnk_080C94A4
	.4byte gUnk_080C9514

gUnk_080C9548:: @ 080C9548
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9548_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9548_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9570:: @ 080C9570
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9570_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9570_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C95B8:: @ 080C95B8
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C95B8_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C95B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C95F0:: @ 080C95F0
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C95F0_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C95F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9600:: @ 080C9600
	.4byte gUnk_080C9548
	.4byte gUnk_080C9570
	.4byte gUnk_080C95B8
	.4byte gUnk_080C95F0

gUnk_080C9610:: @ 080C9610
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9610_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9610_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9648:: @ 080C9648
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9648_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9648_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C96C8:: @ 080C96C8
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C96C8_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C96C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C96F8:: @ 080C96F8
	.4byte gUnk_080C9610
	.4byte gUnk_080C9648
	.4byte gUnk_080C96C8

gUnk_080C9704:: @ 080C9704
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9704_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9704_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9794:: @ 080C9794
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9794_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9794_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9854:: @ 080C9854
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9854_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9854_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080C9864:: @ 080C9864
	.4byte gUnk_080C9704
	.4byte gUnk_080C9794
	.4byte gUnk_080C9854

gUnk_080C9870:: @ 080C9870
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9870_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9870_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9870_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9870_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C98E8:: @ 080C98E8
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C98E8_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C98E8_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C98E8_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C98E8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9928:: @ 080C9928
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9928_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9928_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9928_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9928_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9988:: @ 080C9988
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9988_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9988_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9988_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9988_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C99E8:: @ 080C99E8
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C99E8_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C99E8_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C99E8_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C99E8_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9A30:: @ 080C9A30
	.4byte gUnk_080C9870
	.4byte gUnk_080C98E8
	.4byte gUnk_080C9928
	.4byte gUnk_080C9988
	.4byte gUnk_080C99E8

gUnk_080C9A44:: @ 080C9A44
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9A44_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9A44_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9A44_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9A44_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9A7C:: @ 080C9A7C
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9A7C_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9A7C_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9A7C_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9A7C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9B2C:: @ 080C9B2C
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9B2C_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9B2C_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9B2C_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9B2C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9BB4:: @ 080C9BB4
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9BB4_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9BB4_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9BB4_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9BB4_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9C1C:: @ 080C9C1C
.ifdef EU
    @ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9C1C_EU.bin"
.else
.ifdef JP
	.incbin "data_080C93E0/gUnk_080C9C1C_1_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080C93E0/gUnk_080C9C1C_2_DEMO_JP.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9C1C_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080C9C3C:: @ 080C9C3C
	.4byte gUnk_080C9A44
	.4byte gUnk_080C9A7C
	.4byte gUnk_080C9B2C
	.4byte gUnk_080C9BB4
	.4byte gUnk_080C9C1C

gUnk_080C9C50:: @ 080C9C50
	.4byte gUnk_080C9488
	.4byte gUnk_080C953C
	.4byte gUnk_080C9600
	.4byte gUnk_080C96F8
	.4byte gUnk_080C9864
	.4byte gUnk_080C9A30
	.4byte gUnk_080C9C3C

gUnk_080C9C6C:: @ 080C9C6C
	.incbin "data_080C93E0/gUnk_080C9C6C.bin"

gUnk_080C9CAC:: @ 080C9CAC
	.4byte sub_0801E02C
	.4byte sub_0801E044
	.4byte sub_0801E074
	.4byte sub_0801E0A0

gUnk_080C9CBC:: @ 080C9CBC
.ifdef JP
	@ TODO only small differences
	.incbin "data_080C93E0/gUnk_080C9CBC_JP.bin"
.else
.ifdef EU
	.incbin "data_080C93E0/gUnk_080C9CBC_1_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080C9CBC_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080CA06C:: @ 080CA06C
.ifdef EU
	.incbin "data_080C93E0/gUnk_080CA06C_EU.bin"
.else
	.incbin "data_080C93E0/gUnk_080CA06C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080CA11C:: @ 080CA11C
	.incbin "data_080C93E0/gUnk_080CA11C.bin"
