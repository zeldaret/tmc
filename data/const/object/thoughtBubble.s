	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

ThoughtBubble_SFX:: @ 08122590
	.incbin "assets/thoughtBubble/ThoughtBubble_SFX.bin"

ThoughtBubble_Behaviors:: @ 08122598
	.4byte ThoughtBubble_Init
	.4byte ThoughtBubble_Update
