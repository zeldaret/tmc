	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object1E
Object1E: @ 0x08087504
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E3B0
	cmp r0, #0
	bne _08087520
	ldr r0, _08087524 @ =gUnk_081208B8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08087520:
	pop {r4, pc}
	.align 2, 0
_08087524: .4byte gUnk_081208B8

	thumb_func_start sub_08087528
sub_08087528: @ 0x08087528
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08087590 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r4, #0x1b]
	lsrs r0, r1, #6
	subs r0, #1
	lsls r0, r0, #6
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08087594
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	bne _08087588
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_08087588:
	adds r0, r4, #0
	bl sub_08087640
	b _080875DC
	.align 2, 0
_08087590: .4byte gLinkEntity
_08087594:
	ldr r0, _080875B4 @ =gArea
	ldrb r0, [r0, #1]
	movs r1, #4
	cmp r0, #0x10
	bne _080875A2
	movs r1, #0xb5
	lsls r1, r1, #1
_080875A2:
	adds r0, r4, #0
	bl sub_0801D2B4
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080875B8
	cmp r0, #3
	bne _080875CE
	b _080875C0
	.align 2, 0
_080875B4: .4byte gArea
_080875B8:
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080875C0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x40
	bne _080875DC
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r4, #0x32]
	b _080875DC
_080875CE:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x40
	bne _080875DC
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_080875DC:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #2
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_080875F4
sub_080875F4: @ 0x080875F4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808760E
	bl DeleteThisEntity
_0808760E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08087638
	ldr r0, _0808763C @ =gLinkEntity
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	ldrb r0, [r5]
	subs r0, #1
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08087638:
	pop {r4, r5, pc}
	.align 2, 0
_0808763C: .4byte gLinkEntity

	thumb_func_start sub_08087640
sub_08087640: @ 0x08087640
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r1, #0x32
	ldrsh r6, [r4, r1]
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #1
	ldr r0, _08087684 @ =gUnk_081208C0
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldr r0, _08087688 @ =gRoomControls
	ldrh r1, [r0, #4]
	ldr r0, _0808768C @ =0x00000403
	movs r2, #0x16
	cmp r1, r0
	bne _08087676
	movs r2, #0x17
_08087676:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805457C
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08087684: .4byte gUnk_081208C0
_08087688: .4byte gRoomControls
_0808768C: .4byte 0x00000403
