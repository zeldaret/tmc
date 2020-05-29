	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806E838
sub_0806E838: @ 0x0806E838
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806E882
	ldr r0, _0806E864 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806E870
	cmp r2, #2
	bne _0806E868
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806E874
	.align 2, 0
_0806E864: .4byte gUnk_03003F80
_0806E868:
	adds r0, r4, #0
	bl sub_0806E884
	b _0806E874
_0806E870:
	bl sub_080791D0
_0806E874:
	movs r0, #0xd6
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806E882:
	pop {r4, pc}