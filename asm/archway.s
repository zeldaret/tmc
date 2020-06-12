	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08090F70
sub_08090F70: @ 0x08090F70
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08090FB4
	movs r5, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	bl sub_08052660
	cmp r0, #0
	beq _08090FB4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
_08090FB4:
	pop {r4, r5, pc}
	.align 2, 0
