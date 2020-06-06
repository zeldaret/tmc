	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806E65C
sub_0806E65C: @ 0x0806E65C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806E6A6
	ldr r0, _0806E688 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E694
	cmp r2, #2
	bne _0806E68C
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806E698
	.align 2, 0
_0806E688: .4byte gLinkState
_0806E68C:
	adds r0, r4, #0
	bl sub_0806E6A8
	b _0806E698
_0806E694:
	bl sub_080791D0
_0806E698:
	movs r0, #0xd5
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806E6A6:
	pop {r4, pc}
