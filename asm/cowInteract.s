	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806924C
sub_0806924C: @ 0x0806924C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _0806929C
	ldr r0, _08069278 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069284
	cmp r2, #2
	bne _0806927C
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _0806928E
	.align 2, 0
_08069278: .4byte gLinkState
_0806927C:
	adds r0, r4, #0
	bl sub_080691F8
	b _0806928E
_08069284:
	adds r0, r4, #0
	bl sub_080691F8
	bl sub_080791D0
_0806928E:
	movs r0, #0xd4
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_0806929C:
	pop {r4, pc}
	.align 2, 0