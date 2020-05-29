	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08065AA4
sub_08065AA4: @ 0x08065AA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	beq _08065B18
	ldr r0, _08065AD0 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08065B00
	cmp r2, #2
	bne _08065AD4
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _08065AE6
	.align 2, 0
_08065AD0: .4byte gUnk_03003F80
_08065AD4:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_08065A50
_08065AE6:
	ldr r1, _08065AFC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	b _08065B0A
	.align 2, 0
_08065AFC: .4byte gLinkEntity
_08065B00:
	adds r0, r4, #0
	bl sub_08065A50
	bl sub_080791D0
_08065B0A:
	movs r0, #0xd3
	bl PlaySFX
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	strb r0, [r1]
_08065B18:
	pop {r4, pc}
	.align 2, 0