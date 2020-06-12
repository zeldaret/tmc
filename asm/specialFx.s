	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080844C8
sub_080844C8: @ 0x080844C8
	push {lr}
	ldr r2, _080844DC @ =gUnk_0811FAC0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080844DC: .4byte gUnk_0811FAC0

	thumb_func_start sub_080844E0
sub_080844E0: @ 0x080844E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084516
	adds r0, r5, #0
	bl sub_08016A30
_08084516:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x20
	bne _08084524
	ldrb r0, [r5, #0x10]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
_08084524:
	ldrb r4, [r5, #0xa]
	cmp r4, #3
	bne _08084538
	bl Random
	ldr r1, _080845AC @ =gUnk_0811FAC8
	ands r4, r0
	adds r1, r4, r1
	ldrb r0, [r1]
	strb r0, [r5, #0xa]
_08084538:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x17
	bne _0808454E
	bl Random
	ldr r2, _080845B0 @ =gUnk_0811FACC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r5, #0xa]
_0808454E:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _080845B4 @ =gUnk_0811F960
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #6
	bne _0808456C
	movs r0, #0x40
	strh r0, [r5, #0x24]
_0808456C:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _08084582
	ldrb r1, [r5, #0xb]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08084582
	ldrh r0, [r4, #2]
	bl sub_08004488
_08084582:
	ldrb r1, [r5, #0xb]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084594
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_0805457C
_08084594:
	ldrb r1, [r5, #0xb]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080845AA
	ldrb r0, [r5, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x19]
_080845AA:
	pop {r4, r5, pc}
	.align 2, 0
_080845AC: .4byte gUnk_0811FAC8
_080845B0: .4byte gUnk_0811FACC
_080845B4: .4byte gUnk_0811F960

	thumb_func_start sub_080845B8
sub_080845B8: @ 0x080845B8
	push {lr}
	ldr r3, _080845D4 @ =gUnk_0811FAD0
	ldr r2, _080845D8 @ =gUnk_0811F960
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1a
	adds r1, r1, r3
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080845D4: .4byte gUnk_0811FAD0
_080845D8: .4byte gUnk_0811F960

	thumb_func_start sub_080845DC
sub_080845DC: @ 0x080845DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080845F4
	bl sub_0805E780
_080845F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080845F8
sub_080845F8: @ 0x080845F8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x2e]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	subs r3, r2, r0
	ldrh r0, [r4, #0x32]
	ands r1, r0
	subs r1, r2, r1
	adds r0, r3, #0
	orrs r0, r1
	cmp r0, #0
	beq _08084626
	adds r0, r3, #0
	bl sub_080045DA
	lsrs r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_08084626:
	adds r0, r4, #0
	bl sub_08084630
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08084630
sub_08084630: @ 0x08084630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808467E
	ldrb r1, [r4, #0xb]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0808467A
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0808467A
	adds r1, #0x6a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0808467A
	ldr r2, [r4, #0x54]
	adds r2, #0x6c
	subs r0, #1
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_0808467A:
	bl sub_0805E780
_0808467E:
	pop {r4, pc}

	thumb_func_start sub_08084680
sub_08084680: @ 0x08084680
	push {lr}
	ldr r1, [r0, #0x34]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084694
sub_08084694: @ 0x08084694
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080846A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080846A8
_080846A4:
	bl sub_0805E780
_080846A8:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080846B0
sub_080846B0: @ 0x080846B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080846D8
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080846CA
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r4, #0x24]
_080846CA:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080845DC
	b _08084718
_080846D8:
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	orrs r0, r1
	cmp r0, #2
	bne _080846EA
	movs r0, #0x1e
	b _080846EC
_080846EA:
	movs r0, #2
_080846EC:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08084712
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r4, #0x15]
	movs r1, #1
	cmp r0, #0x17
	bls _08084708
	subs r1, #2
_08084708:
	adds r0, r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	b _08084716
_08084712:
	movs r0, #0xc0
	lsls r0, r0, #2
_08084716:
	strh r0, [r4, #0x24]
_08084718:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808471C
sub_0808471C: @ 0x0808471C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084768
	movs r4, #0
_08084734:
	adds r0, r5, #0
	movs r1, #0x24
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0808475E
	lsls r1, r4, #1
	ldr r0, _0808476C @ =gUnk_0811FB08
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0808475E:
	adds r4, #1
	cmp r4, #3
	bls _08084734
	bl sub_0805E780
_08084768:
	pop {r4, r5, pc}
	.align 2, 0
_0808476C: .4byte gUnk_0811FB08

	thumb_func_start sub_08084770
sub_08084770: @ 0x08084770
	push {lr}
	ldr r1, [r0, #0x34]
	ldr r2, _08084780 @ =0xFFFFC000
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0
_08084780: .4byte 0xFFFFC000

	thumb_func_start sub_08084784
sub_08084784: @ 0x08084784
	push {lr}
	ldr r1, [r0, #0x34]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08084798
sub_08084798: @ 0x08084798
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080847B6
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080847BA
_080847B6:
	bl sub_0805E780
_080847BA:
	pop {r4, pc}

	thumb_func_start sub_080847BC
sub_080847BC: @ 0x080847BC
	push {lr}
	ldr r1, [r0, #0x34]
	ldr r2, _080847CC @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x34]
	bl sub_080845DC
	pop {pc}
	.align 2, 0
_080847CC: .4byte 0xFFFFE000

	thumb_func_start sub_080847D0
sub_080847D0: @ 0x080847D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080845DC
	pop {r4, pc}

	thumb_func_start sub_080847E0
sub_080847E0: @ 0x080847E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08084814 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #1
	bne _080847F0
	bl sub_0805E780
_080847F0:
	ldr r4, _08084818 @ =gLinkEntity
	ldr r3, _0808481C @ =0xFFFD0000
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _08084820 @ =0x0000FFFD
	strh r0, [r5, #0x36]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FAB0
	adds r0, r5, #0
	bl sub_080845DC
	pop {r4, r5, pc}
	.align 2, 0
_08084814: .4byte gRoomControls
_08084818: .4byte gLinkEntity
_0808481C: .4byte 0xFFFD0000
_08084820: .4byte 0x0000FFFD
