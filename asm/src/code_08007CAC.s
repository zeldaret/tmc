	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

gUnk_08007CAC:: @ 08007CAC
	.incbin "code_080043E8/gUnk_08007CAC.bin"
.ifdef DEMO_JP
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_1_DEMO_JP.bin"
.else
.ifdef DEMO_USA
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_2_DEMO_USA.bin"
.else
.ifdef JP
@ TODO only one byte differs
	.incbin "code_080043E8/gUnk_08007CAC_3_JP.bin"
.else
.ifdef EU
@ TODO only two bytes differ
	.incbin "code_080043E8/gUnk_08007CAC_4_EU.bin"
.else
	.incbin "code_080043E8/gUnk_08007CAC_5_USA.bin"
.endif
.endif
.endif
.endif

	non_word_aligned_thumb_func_start sub_08007DD6
sub_08007DD6: @ 0x08007DD6
	push {lr}
	bl sub_08007DE0
	adds r0, r3, #0
	pop {pc}

	thumb_func_start sub_08007DE0
sub_08007DE0: @ 0x08007DE0
	subs r1, #4
_08007DE2:
	adds r1, #4
	ldrh r3, [r1]
	cmp r3, #0
	beq _08007DF2
	cmp r0, r3
	bne _08007DE2
	ldrh r3, [r1, #2]
	movs r2, #1
_08007DF2:
	bx lr
