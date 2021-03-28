	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112E5C:: @ 08112E5C
	.incbin "baserom.gba", 0x112E5C, 0x0000049

gUnk_08112EA5:: @ 08112EA5
	.incbin "baserom.gba", 0x112EA5, 0x0000005

gUnk_08112EAA:: @ 08112EAA
	.incbin "baserom.gba", 0x112EAA, 0x0000005

gUnk_08112EAF:: @ 08112EAF
	.incbin "baserom.gba", 0x112EAF, 0x0000005

gUnk_08112EB4:: @ 08112EB4
	.incbin "baserom.gba", 0x112EB4, 0x0000071

gUnk_08112F25:: @ 08112F25
	.incbin "baserom.gba", 0x112F25, 0x0000005

gUnk_08112F2A:: @ 08112F2A
	.incbin "baserom.gba", 0x112F2A, 0x0000005

gUnk_08112F2F:: @ 08112F2F
	.incbin "baserom.gba", 0x112F2F, 0x0000005

gUnk_08112F34:: @ 08112F34
	.4byte gUnk_08112E5C
	.4byte gUnk_08112E5C
	.4byte gUnk_08112E5C
	.4byte gUnk_08112E5C
	.4byte gUnk_08112EA5
	.4byte gUnk_08112EAF
	.4byte gUnk_08112EA5
	.4byte gUnk_08112EAA
	.4byte gUnk_08112EB4
	.4byte gUnk_08112EB4
	.4byte gUnk_08112EB4
	.4byte gUnk_08112EB4
	.4byte gUnk_08112F25
	.4byte gUnk_08112F2F
	.4byte gUnk_08112F25
	.4byte gUnk_08112F2A
	.4byte 00000000
