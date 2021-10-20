	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_081231BA:: @ 081231BA
	.incbin "crenalBeanSprout/gUnk_081231BA.bin"

gUnk_081231BF:: @ 081231BF
	.incbin "crenalBeanSprout/gUnk_081231BF.bin"

gUnk_081231CC:: @ 081231CC
	.incbin "crenalBeanSprout/gUnk_081231CC.bin"

gUnk_081231D5:: @ 081231D5
	.incbin "crenalBeanSprout/gUnk_081231D5.bin"

gUnk_081231E6:: @ 081231E6
	.incbin "crenalBeanSprout/gUnk_081231E6.bin"

gUnk_081231FB:: @ 081231FB
	.incbin "crenalBeanSprout/gUnk_081231FB.bin"

gUnk_08123204:: @ 08123204
	.incbin "crenalBeanSprout/gUnk_08123204.bin"

gSpriteAnimations_CrenalBeanSprout:: @ 08123208
	.4byte gUnk_081231BA
	.4byte gUnk_081231FB
	.4byte gUnk_081231BA
	.4byte gUnk_081231BF
	.4byte gUnk_081231FB
	.4byte gUnk_081231BF
	.4byte gUnk_081231CC
	.4byte gUnk_081231CC
	.4byte gUnk_081231D5
	.4byte gUnk_081231D5
	.4byte gUnk_081231E6
	.4byte gUnk_081231E6
	.4byte gUnk_08123204
