	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start NPC4F
NPC4F: @ 0x0806DD44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806DD5A
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0806DD5A:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r4, #0x59
	ldrb r0, [r4]
	cmp r0, #0xfe
	bne _0806DD74
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x14
	strb r0, [r4]
_0806DD74:
	pop {r4, pc}
	.align 2, 0
