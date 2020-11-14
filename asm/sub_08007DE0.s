	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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
