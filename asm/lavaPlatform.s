	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809225C
sub_0809225C: @ 0x0809225C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0809226E
	adds r0, r1, #0
	bl sub_08092278
	b _08092274
_0809226E:
	adds r0, r1, #0
	bl sub_08092344
_08092274:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08092278
sub_08092278: @ 0x08092278
	push {lr}
	ldr r2, _0809228C @ =gUnk_08122644
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809228C: .4byte gUnk_08122644

	thumb_func_start sub_08092290
sub_08092290: @ 0x08092290
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	bl sub_080925A4
	pop {pc}

	thumb_func_start sub_0809229C
sub_0809229C: @ 0x0809229C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _080922E0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
	movs r0, #0xbf
	lsls r0, r0, #1
	bl sub_08004488
	ldr r0, [r4, #0x54]
	movs r1, #3
	bl InitializeAnimation
_080922E0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080922E4
sub_080922E4: @ 0x080922E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x90
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r2, r0, #0
	cmp r2, #0
	bne _08092322
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x70
	strb r2, [r0]
	ldr r0, [r4, #0x54]
	adds r0, #0x63
	strb r2, [r0]
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x14]
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0x36
	movs r2, #0
	bl CreateFx
	b _0809233E
_08092322:
	ldr r1, [r4, #0x20]
	ldr r0, _08092340 @ =0x00017FFF
	cmp r1, r0
	bgt _0809233E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809233E
	adds r0, r4, #0
	bl sub_080042B8
_0809233E:
	pop {r4, pc}
	.align 2, 0
_08092340: .4byte 0x00017FFF

	thumb_func_start sub_08092344
sub_08092344: @ 0x08092344
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xf]
	ldr r1, _08092364 @ =gUnk_08122650
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080926E4
	pop {r4, pc}
	.align 2, 0
_08092364: .4byte gUnk_08122650

	thumb_func_start sub_08092368
sub_08092368: @ 0x08092368
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	strb r0, [r2, #0x14]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #4
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x81
	strb r0, [r1]
	ldr r0, _0809239C @ =gUnk_080FD280
	str r0, [r2, #0x48]
	adds r0, r2, #0
	bl sub_0809264C
	pop {pc}
	.align 2, 0
_0809239C: .4byte gUnk_080FD280

	thumb_func_start sub_080923A0
sub_080923A0: @ 0x080923A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #3
	beq _080923E2
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080923C6
	movs r1, #1
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0x14]
	eors r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_080923C6:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #3
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080923E2
	adds r0, r4, #0
	bl sub_0809264C
_080923E2:
	pop {r4, pc}

	thumb_func_start sub_080923E4
sub_080923E4: @ 0x080923E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _080923F8
	adds r0, r4, #0
	bl sub_08092620
	b _0809241A
_080923F8:
	adds r0, r4, #0
	bl sub_0809269C
	cmp r0, #0
	beq _0809241A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	ldr r0, _0809241C @ =gLinkState
	adds r0, #0x3f
	movs r1, #0xfd
	strb r1, [r0]
_0809241A:
	pop {r4, pc}
	.align 2, 0
_0809241C: .4byte gLinkState

	thumb_func_start sub_08092420
sub_08092420: @ 0x08092420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809269C
	cmp r0, #0
	beq _08092434
	ldr r0, _08092464 @ =gLinkState
	adds r0, #0x3f
	movs r1, #0xfd
	strb r1, [r0]
_08092434:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08092462
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r1, [r0]
	subs r0, #2
	movs r2, #0
	strh r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	ldr r0, _08092468 @ =0x0000017B
	bl sub_08004488
_08092462:
	pop {r4, pc}
	.align 2, 0
_08092464: .4byte gLinkState
_08092468: .4byte 0x0000017B

	thumb_func_start sub_0809246C
sub_0809246C: @ 0x0809246C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0809269C
	adds r5, r4, #0
	adds r5, #0x70
	ldrh r0, [r5]
	cmp r0, #0
	beq _08092482
	subs r0, #1
	strh r0, [r5]
_08092482:
	ldrh r0, [r5]
	cmp r0, #0x8c
	bhi _080924DC
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080924B8
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _080924DC
_080924B8:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _080924CC
	strb r0, [r3]
	movs r0, #0xbe
	lsls r0, r0, #1
	bl sub_08004488
	b _080924DC
_080924CC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080924DC
	strb r2, [r3]
	ldr r0, _080924E0 @ =0x0000017D
	bl sub_08004488
_080924DC:
	pop {r4, r5, pc}
	.align 2, 0
_080924E0: .4byte 0x0000017D

	thumb_func_start sub_080924E4
sub_080924E4: @ 0x080924E4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809252C
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0809252C
	adds r0, r4, #0
	bl sub_0809269C
_0809252C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092530
sub_08092530: @ 0x08092530
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08092544
	adds r0, r4, #0
	bl sub_0809269C
	adds r5, r0, #0
	b _08092546
_08092544:
	movs r5, #0
_08092546:
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092570
	movs r0, #0
	strb r0, [r2]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xac
	strb r0, [r1]
	b _0809258A
_08092570:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809258A
	adds r0, r4, #0
	bl sub_0809264C
	cmp r5, #0
	beq _0809258A
	ldr r0, _0809258C @ =gLinkState
	adds r0, #0x3f
	movs r1, #0xfd
	strb r1, [r0]
_0809258A:
	pop {r4, r5, pc}
	.align 2, 0
_0809258C: .4byte gLinkState

	thumb_func_start sub_08092590
sub_08092590: @ 0x08092590
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _080925A2
	adds r0, r1, #0
	bl sub_08092620
_080925A2:
	pop {pc}

	thumb_func_start sub_080925A4
sub_080925A4: @ 0x080925A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	bl sub_0804B128
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #0xff
	beq _0809261A
	ldr r7, _0809261C @ =gRoomControls
_080925B8:
	ldrb r2, [r5, #9]
	movs r0, #0x59
	movs r1, #1
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08092612
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #0
	strh r0, [r4, #0x24]
	str r6, [r4, #0x50]
	ldrh r0, [r7, #6]
	ldrh r1, [r5, #4]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r7, #8]
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrh r1, [r5, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldr r0, [r5]
	str r0, [r4, #0x78]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r1, r4, #0
	adds r1, #0x78
	adds r2, r4, #0
	adds r2, #0x76
	adds r0, r4, #0
	bl sub_080A2CC0
_08092612:
	adds r5, #0x10
	ldrb r0, [r5, #9]
	cmp r0, #0xff
	bne _080925B8
_0809261A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809261C: .4byte gRoomControls

	thumb_func_start sub_08092620
sub_08092620: @ 0x08092620
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r6, [r0]
	cmp r6, #0
	bne _08092648
	movs r4, #1
	strb r4, [r0]
	str r5, [r1, #0x54]
	adds r0, r5, #0
	bl CopyPosition
	strb r4, [r5, #0xc]
	strb r6, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0xac
	strb r0, [r1]
_08092648:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0809264C
sub_0809264C: @ 0x0809264C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x14]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809266A
	movs r0, #7
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0xac
	strb r0, [r1]
	b _08092674
_0809266A:
	movs r0, #2
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x3f
	strb r3, [r0]
_08092674:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfd
	strb r0, [r1]
	ldrb r1, [r2, #0x14]
	adds r0, r2, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_0809269C
sub_0809269C: @ 0x0809269C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _080926D8 @ =gLinkState
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080926E0
	ldr r5, _080926DC @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	movs r3, #0x10
	bl sub_080041A0
	cmp r0, #0
	beq _080926E0
	bl sub_08079F8C
	cmp r0, #0
	beq _080926E0
	movs r1, #1
	strb r1, [r6, #0x14]
	movs r2, #0x36
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080926E0
	strb r1, [r4, #0xf]
	movs r0, #1
	b _080926E2
	.align 2, 0
_080926D8: .4byte gLinkState
_080926DC: .4byte gLinkEntity
_080926E0:
	movs r0, #0
_080926E2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080926E4
sub_080926E4: @ 0x080926E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	bl sub_080A2BE4
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08092700
	ldr r1, [r4, #0x50]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldr r1, [r4, #0x50]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_08092700:
	adds r2, r4, #0
	adds r2, #0x76
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809271A
	adds r1, r4, #0
	adds r1, #0x78
	adds r0, r4, #0
	bl sub_080A2CC0
_0809271A:
	pop {r4, pc}
