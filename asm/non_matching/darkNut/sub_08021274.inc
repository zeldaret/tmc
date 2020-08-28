	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {lr}
	adds r2, r0, #0
	movs r0, #7
	ands r0, r1
	subs r0, #3
	cmp r0, #2
	bhi _0802129A
	movs r3, #0x18
	adds r0, r1, #0
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
	adds r0, r1, #0
	adds r0, #8
	ands r0, r3
	lsrs r0, r0, #3
	cmp r0, r2
	beq _080212AA
_0802129A:
	adds r0, r1, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r1, r0, #3
	cmp r2, r1
	beq _080212AA
	adds r0, r1, #0
	b _080212AC
_080212AA:
	movs r0, #0xff
_080212AC:
	pop {pc}
	.align 2, 0

	.syntax divided
