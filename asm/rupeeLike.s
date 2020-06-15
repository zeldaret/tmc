	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start RupeeLike
RupeeLike: @ 0x080292A0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080292F8
	adds r0, r5, #0
	bl sub_080043E8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _080292CE
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bne _080292C4
	adds r0, r5, #0
	bl sub_080296D8
_080292C4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001290
	b _080292FE
_080292CE:
	ldr r4, _080292F4 @ =gUnk_080CCC00
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	b _080292FE
	.align 2, 0
_080292F4: .4byte gUnk_080CCC00
_080292F8:
	adds r0, r5, #0
	bl sub_080293DC
_080292FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08029300
sub_08029300: @ 0x08029300
	push {lr}
	ldr r2, _08029314 @ =gUnk_080CCC18
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08029314: .4byte gUnk_080CCC18

	thumb_func_start sub_08029318
sub_08029318: @ 0x08029318
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x8e
	bne _0802932C
	adds r0, r4, #0
	bl sub_08029770
	b _080293A6
_0802932C:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _08029338
	adds r0, r4, #0
	bl sub_080296D8
_08029338:
	ldr r0, [r4, #0x4c]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08029394
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _08029356
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl InitializeAnimation
_08029356:
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x41
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08029390 @ =gLinkEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x80
	strb r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
	b _080293A6
	.align 2, 0
_08029390: .4byte gLinkEntity
_08029394:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080293A6
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_080293A6:
	ldr r1, _080293B0 @ =gUnk_080CCC00
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_080293B0: .4byte gUnk_080CCC00

	thumb_func_start sub_080293B4
sub_080293B4: @ 0x080293B4
	push {lr}
	ldr r3, _080293D4 @ =gUnk_080CCC34
	adds r1, r0, #0
	adds r1, #0x84
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldrb r2, [r0, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r1, #0xff
	bl CreateDeathFx
	pop {pc}
	.align 2, 0
_080293D4: .4byte gUnk_080CCC34

	thumb_func_start nullsub_141
nullsub_141: @ 0x080293D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080293DC
sub_080293DC: @ 0x080293DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _08029408 @ =gUnk_080CCC3C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08029408: .4byte gUnk_080CCC3C

	thumb_func_start sub_0802940C
sub_0802940C: @ 0x0802940C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	movs r0, #0x17
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0802944A
	adds r0, r4, #0
	bl sub_0804A720
	str r4, [r5, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xb]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080297F0
_0802944A:
	pop {r4, r5, pc}

	thumb_func_start sub_0802944C
sub_0802944C: @ 0x0802944C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08029470
	adds r0, r4, #0
	bl sub_08029770
_08029470:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029474
sub_08029474: @ 0x08029474
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080294C0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _080294BC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	bl InitializeAnimation
	b _080294D2
	.align 2, 0
_080294BC: .4byte gLinkEntity
_080294C0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080294D2
	strb r1, [r3]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_080294D2:
	pop {r4, pc}

	thumb_func_start sub_080294D4
sub_080294D4: @ 0x080294D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802951C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029508
	movs r0, #8
	strb r0, [r4, #0xe]
	ldr r1, _08029518 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	adds r0, r4, #0
	bl sub_0802969C
_08029508:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080296C8
	b _08029538
	.align 2, 0
_08029518: .4byte gLinkEntity
_0802951C:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #7
	bl InitializeAnimation
_08029538:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802953C
sub_0802953C: @ 0x0802953C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080296C8
	adds r0, r5, #0
	bl sub_080296C8
	bl sub_0807953C
	cmp r0, #0
	beq _08029558
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_08029558:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08029562
	subs r0, #1
	strb r0, [r5, #0xe]
_08029562:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x2d
	bhi _08029572
	ldr r0, _08029580 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029584
_08029572:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08029584
	adds r0, r5, #0
	bl sub_080296D8
	b _080295FE
	.align 2, 0
_08029580: .4byte gUnk_02002A40
_08029584:
	bl sub_08077B2C
	ldr r2, _08029600 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08029604 @ =gLinkEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080295FE
	movs r0, #0x41
	strb r0, [r1]
	ldr r0, _08029608 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080295FE
	ldr r1, _0802960C @ =gUnk_080CCC44
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl ModRupees
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
_080295FE:
	pop {r4, r5, pc}
	.align 2, 0
_08029600: .4byte gLinkState
_08029604: .4byte gLinkEntity
_08029608: .4byte gUnk_02002A40
_0802960C: .4byte gUnk_080CCC44

	thumb_func_start sub_08029610
sub_08029610: @ 0x08029610
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029628
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0xe]
_08029628:
	adds r0, r1, #0
	bl sub_080296C8
	pop {pc}

	thumb_func_start sub_08029630
sub_08029630: @ 0x08029630
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080296C8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802965E
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r4, #0
	bl sub_080297F0
_0802965E:
	pop {r4, pc}

	thumb_func_start sub_08029660
sub_08029660: @ 0x08029660
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xd1
	strh r1, [r0, #0x12]
	ldr r2, _08029684 @ =gUnk_080CCC47
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r0, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
_08029684: .4byte gUnk_080CCC47

	thumb_func_start sub_08029688
sub_08029688: @ 0x08029688
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802969A
	adds r0, r1, #0
	bl DeleteEntity
_0802969A:
	pop {pc}

	thumb_func_start sub_0802969C
sub_0802969C: @ 0x0802969C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080296C4
	lsrs r4, r1, #4
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080296C4
	strb r4, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl InitializeAnimation
	ldr r0, [r5, #0x54]
	adds r1, r4, #4
	bl InitializeAnimation
_080296C4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080296C8
sub_080296C8: @ 0x080296C8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x54]
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_080296D8
sub_080296D8: @ 0x080296D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08029764 @ =gLinkState
	movs r0, #0x41
	strb r0, [r2, #2]
	ldr r0, [r2, #0x30]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _08029768 @ =gLinkEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xa6
	strb r0, [r1]
	movs r3, #0
	ldr r0, _0802976C @ =0x0000FFFE
	mov r1, ip
	strh r0, [r1, #0x36]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r0, ip
	adds r0, #0x63
	strb r3, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1, #0x24]
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08029762
	movs r0, #0xf4
	strb r0, [r1]
_08029762:
	pop {r4, r5, pc}
	.align 2, 0
_08029764: .4byte gLinkState
_08029768: .4byte gLinkEntity
_0802976C: .4byte 0x0000FFFE

	thumb_func_start sub_08029770
sub_08029770: @ 0x08029770
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x73
	bl sub_080ADF80
	cmp r0, #0
	beq _080297E8
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xd1
	strh r0, [r4, #0x12]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8d
	strb r0, [r1]
	ldr r0, _080297EC @ =gUnk_080FD260
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A29BC
_080297E8:
	pop {r4, pc}
	.align 2, 0
_080297EC: .4byte gUnk_080FD260

	thumb_func_start sub_080297F0
sub_080297F0: @ 0x080297F0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x8e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AE068
	ldr r0, _08029850 @ =0x00000143
	strh r0, [r4, #0x12]
	ldr r1, _08029854 @ =gUnk_080CCC47
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #9
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x54
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_08029850: .4byte 0x00000143
_08029854: .4byte gUnk_080CCC47
