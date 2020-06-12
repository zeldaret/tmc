	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa3
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F7B6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA30
	bl Random
	ldrh r2, [r4, #0x2e]
	subs r2, #0x10
	movs r3, #0x1f
	adds r1, r0, #0
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x2e]
	ldrh r2, [r4, #0x32]
	subs r2, #0x10
	asrs r1, r0, #8
	ands r1, r3
	adds r2, r2, r1
	strh r2, [r4, #0x32]
	asrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x1e]
	movs r0, #0xff
	strb r0, [r4, #0x15]
_0809F7B6:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided