	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsrs r4, r2, #3
	adds r0, r4, #0
	lsrs r5, r5, #3
	b _0807D274
_0807D25A:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080B180C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807D26E
	movs r0, #0
	b _0807D27C
_0807D26E:
	adds r5, #1
	adds r6, #8
	adds r0, r4, #0
_0807D274:
	subs r4, #1
	cmp r0, #0
	bne _0807D25A
	movs r0, #1
_0807D27C:
	pop {r4, r5, r6, pc}
	.align 2, 0
