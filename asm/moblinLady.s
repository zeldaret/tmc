	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806B9D0
sub_0806B9D0: @ 0x0806B9D0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0806B9E6
	adds r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	bl sub_0807DD50
	b _0806B9EE
_0806B9E6:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0807DD94
_0806B9EE:
	pop {pc}