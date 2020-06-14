	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080665E4
sub_080665E4: @ 0x080665E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08066638
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806661E
	movs r0, #0
	strb r0, [r2]
	strb r1, [r4, #0xc]
	ldr r1, _08066630 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
_0806661E:
	ldr r0, _08066634 @ =gUnk_081104EC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806664E
	.align 2, 0
_08066630: .4byte gLinkEntity
_08066634: .4byte gUnk_081104EC
_08066638:
	ldr r0, _08066650 @ =gUnk_081104E0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_0806664E:
	pop {r4, pc}
	.align 2, 0
_08066650: .4byte gUnk_081104E0

	thumb_func_start sub_08066654
sub_08066654: @ 0x08066654
	push {r4, lr}
	adds r4, r0, #0
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
	movs r1, #2
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066688
sub_08066688: @ 0x08066688
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806669E
	movs r1, #2
	b _080666B4
_0806669E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080666AA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _080666B4
_080666AA:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_080666B4:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _080666C4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080666C4:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080666D8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_080666D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080666DC
sub_080666DC: @ 0x080666DC
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080666E4
sub_080666E4: @ 0x080666E4
	push {r4, lr}
	adds r4, r0, #0
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
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_0806670C
sub_0806670C: @ 0x0806670C
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066718
sub_08066718: @ 0x08066718
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08066728
	movs r0, #1
	strb r0, [r4, #0xc]
_08066728:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806672C
sub_0806672C: @ 0x0806672C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806673C
sub_0806673C: @ 0x0806673C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0806674E
	movs r1, #0
	b _0806676A
_0806674E:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _0806675C
	movs r1, #1
	b _0806676A
_0806675C:
	movs r0, #3
	bl GetInventoryValue
	movs r1, #3
	cmp r0, #0
	bne _0806676A
	movs r1, #2
_0806676A:
	ldr r0, _0806677C @ =gUnk_081104F8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806677C: .4byte gUnk_081104F8

	thumb_func_start sub_08066780
sub_08066780: @ 0x08066780
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080667A6
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
	movs r1, #6
	bl InitAnimationForceUpdate
	b _080667AC
_080667A6:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_080667AC:
	pop {pc}
	.align 2, 0
