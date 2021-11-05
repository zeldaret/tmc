	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080C93E0:: @ 080C93E0
	.incbin "baserom.gba", 0x0C93E0, 0x0000080

gUnk_080C9460:: @ 080C9460
	.incbin "baserom.gba", 0x0C9460, 0x0000020

gUnk_080C9480:: @ 080C9480
	.incbin "baserom.gba", 0x0C9480, 0x0000008

gUnk_080C9488:: @ 080C9488
	.4byte gUnk_080C9480

gUnk_080C948C:: @ 080C948C
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8BB4, 0x0000018
.else
	.incbin "baserom.gba", 0x0C948C, 0x0000018
.endif

gUnk_080C94A4:: @ 080C94A4
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8BCC, 0x0000070
.else
	.incbin "baserom.gba", 0x0C94A4, 0x0000070
.endif

gUnk_080C9514:: @ 080C9514
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8C3C, 0x0000028
.else
	.incbin "baserom.gba", 0x0C9514, 0x0000028
.endif

gUnk_080C953C:: @ 080C953C
	.4byte gUnk_080C948C
	.4byte gUnk_080C94A4
	.4byte gUnk_080C9514

gUnk_080C9548:: @ 080C9548
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8C70, 0x0000028
.else
	.incbin "baserom.gba", 0x0C9548, 0x0000028
.endif

gUnk_080C9570:: @ 080C9570
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8C98, 0x0000048
.else
	.incbin "baserom.gba", 0x0C9570, 0x0000048
.endif

gUnk_080C95B8:: @ 080C95B8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8CE0, 0x0000038
.else
	.incbin "baserom.gba", 0x0C95B8, 0x0000038
.endif

gUnk_080C95F0:: @ 080C95F0
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8D18, 0x0000010
.else
	.incbin "baserom.gba", 0x0C95F0, 0x0000010
.endif

gUnk_080C9600:: @ 080C9600
	.4byte gUnk_080C9548
	.4byte gUnk_080C9570
	.4byte gUnk_080C95B8
	.4byte gUnk_080C95F0

gUnk_080C9610:: @ 080C9610
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8D38, 0x0000038
.else
	.incbin "baserom.gba", 0x0C9610, 0x0000038
.endif

gUnk_080C9648:: @ 080C9648
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8D70, 0x0000080
.else
	.incbin "baserom.gba", 0x0C9648, 0x0000080
.endif

gUnk_080C96C8:: @ 080C96C8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8DF0, 0x0000030
.else
	.incbin "baserom.gba", 0x0C96C8, 0x0000030
.endif

gUnk_080C96F8:: @ 080C96F8
	.4byte gUnk_080C9610
	.4byte gUnk_080C9648
	.4byte gUnk_080C96C8

gUnk_080C9704:: @ 080C9704
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8E2C, 0x0000090
.else
	.incbin "baserom.gba", 0x0C9704, 0x0000090
.endif

gUnk_080C9794:: @ 080C9794
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8EBC, 0x00000C0
.else
	.incbin "baserom.gba", 0x0C9794, 0x00000C0
.endif

gUnk_080C9854:: @ 080C9854
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8F7C, 0x0000010
.else
	.incbin "baserom.gba", 0x0C9854, 0x0000010
.endif

gUnk_080C9864:: @ 080C9864
	.4byte gUnk_080C9704
	.4byte gUnk_080C9794
	.4byte gUnk_080C9854

gUnk_080C9870:: @ 080C9870
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C8F98, 0x0000078
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C9610, 0x0000078
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C9610, 0x0000078 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9870, 0x0000078
.endif
.endif
.endif

gUnk_080C98E8:: @ 080C98E8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C9010, 0x0000040
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C9688, 0x0000040
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C9688, 0x0000040 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C98E8, 0x0000040
.endif
.endif
.endif

gUnk_080C9928:: @ 080C9928
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C9050, 0x0000060
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C96C8, 0x0000060
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C96C8, 0x0000060 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9928, 0x0000060
.endif
.endif
.endif

gUnk_080C9988:: @ 080C9988
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C90B0, 0x0000060
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C9728, 0x0000060
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C9728, 0x0000060 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9988, 0x0000060
.endif
.endif
.endif

gUnk_080C99E8:: @ 080C99E8
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C9110, 0x0000048
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C9788, 0x0000048
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C9788, 0x0000048 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C99E8, 0x0000048
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
	.incbin "baserom_eu.gba", 0x0C916C, 0x0000038
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C97E4, 0x0000038
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C97E4, 0x0000038 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9A44, 0x0000038
.endif
.endif
.endif

gUnk_080C9A7C:: @ 080C9A7C
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C91A4, 0x00000B0
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C981C, 0x00000B0
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C981C, 0x00000B0 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9A7C, 0x00000B0
.endif
.endif
.endif

gUnk_080C9B2C:: @ 080C9B2C
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C9254, 0x0000088
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C98CC, 0x0000088
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C98CC, 0x0000088 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9B2C, 0x0000088
.endif
.endif
.endif

gUnk_080C9BB4:: @ 080C9BB4
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C92DC, 0x0000068
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C9954, 0x0000068
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C9954, 0x0000068 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9BB4, 0x0000068
.endif
.endif
.endif

gUnk_080C9C1C:: @ 080C9C1C
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x0C9344, 0x0000020
.else
.ifdef JP
	.incbin "baserom_jp.gba", 0x0C99BC, 0x0000020
.else
.ifdef DEMO_JP
	.incbin "baserom_jp.gba", 0x0C99BC, 0x0000020 @ TODO deduplicate
.else
	.incbin "baserom.gba", 0x0C9C1C, 0x0000020
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
	.incbin "baserom.gba", 0x0C9C6C, 0x0000040

gUnk_080C9CAC:: @ 080C9CAC
	.4byte sub_0801E02C
	.4byte sub_0801E044
	.4byte sub_0801E074
	.4byte sub_0801E0A0

gUnk_080C9CBC:: @ 080C9CBC
.ifdef JP
	@ TODO only small differences
	.incbin "baserom_jp.gba", 0x0C9A5C, 0x00003B0
.else
.ifdef EU
	.incbin "baserom_eu.gba", 0x0C93E4, 0x00003B0
.else
	.incbin "baserom.gba", 0x0C9CBC, 0x00003B0
.endif
.endif

gUnk_080CA06C:: @ 080CA06C
.ifdef EU
	.incbin "baserom_eu.gba", 0x0C9794, 0x00000B0
.else
	.incbin "baserom.gba", 0x0CA06C, 0x00000B0
.endif

gUnk_080CA11C:: @ 080CA11C
	.incbin "baserom.gba", 0x0CA11C, 0x0000014
