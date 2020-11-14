	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08019410
sub_08019410: @ 0x08019410
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0xe
	bhi _08019428
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	b _0801942E
_08019428:
	adds r0, r4, #0
	bl GetNextFrame
_0801942E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08019440
	bl DeleteThisEntity
_08019440:
	pop {r4, pc}
	.align 2, 0
