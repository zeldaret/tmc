	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Gina
Gina: @ 0x0806C13C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0806C182
	cmp r0, #1
	bgt _0806C150
	cmp r0, #0
	beq _0806C156
	b _0806C1D2
_0806C150:
	cmp r0, #2
	beq _0806C1BE
	b _0806C1D2
_0806C156:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806C1D2
_0806C182:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806C1B4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _0806C1B0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _0806C1D2
	.align 2, 0
_0806C1B0: .4byte gLinkEntity
_0806C1B4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806C1D2
_0806C1BE:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806C1D2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x88
	bl SetLocalFlag
_0806C1D2:
	pop {r4, pc}

	thumb_func_start Gina_Fusion
Gina_Fusion: @ 0x0806C1D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806C1FA
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _0806C200
_0806C1FA:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_0806C200:
	pop {pc}
	.align 2, 0
