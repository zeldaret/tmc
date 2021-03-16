	thumb_func_start PlayerItemSwordBeam
PlayerItemSwordBeam: @ 0x08019480
	push {lr}
	ldr r2, _08019494 @ =gUnk_080B43F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08019494: .4byte gUnk_080B43F4

	thumb_func_start sub_08019498
sub_08019498: @ 0x08019498
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08019504 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r4, #0x3c
	ldrb r0, [r4]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _08019508 @ =gUnk_080B4408
	str r0, [r5, #0x48]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x74]
	str r2, [r5, #0x70]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080194E6
	movs r0, #1
	strb r0, [r5, #0xb]
_080194E6:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #0x3c
	str r0, [r5, #0x6c]
	ldrb r0, [r5, #0x14]
	adds r2, r0, #0
	cmp r0, #2
	beq _08019534
	cmp r0, #2
	bgt _0801950C
	cmp r0, #0
	beq _08019516
	b _0801954E
	.align 2, 0
_08019504: .4byte gPlayerEntity
_08019508: .4byte gUnk_080B4408
_0801950C:
	cmp r0, #4
	beq _0801952C
	cmp r0, #6
	beq _08019542
	b _0801954E
_08019516:
	ldrh r0, [r5, #0x2e]
	subs r0, #3
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #8
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _0801954E
_0801952C:
	ldrh r0, [r5, #0x2e]
	adds r0, #2
	strh r0, [r5, #0x2e]
	b _0801954E
_08019534:
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	b _08019546
_08019542:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
_08019546:
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #4
	strh r0, [r5, #0x32]
_0801954E:
	ldr r1, _08019578 @ =gUnk_080B43FC
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl sub_0801766C
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_08019580
	ldr r0, _0801957C @ =0x0000013F
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_08019578: .4byte gUnk_080B43FC
_0801957C: .4byte 0x0000013F

	thumb_func_start sub_08019580
sub_08019580: @ 0x08019580
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08019638
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080195B0
	adds r0, r4, #0
	bl sub_0800451C
_080195B0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801962C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _08019630 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _08019602
	ldr r1, _08019634 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _08019602
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_08019602:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801961A
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_0801961A:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _0801963C
	bl DeleteThisEntity
	b _0801963C
	.align 2, 0
_0801962C: .4byte gRoomControls
_08019630: .4byte gPlayerEntity
_08019634: .4byte gUnk_08003E44
_08019638:
	bl DeleteThisEntity
_0801963C:
	adds r0, r4, #0
	bl sub_08019644
	pop {r4, r5, pc}

	thumb_func_start sub_08019644
sub_08019644: @ 0x08019644
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x74]
	subs r1, r0, #1
	str r1, [r2, #0x74]
	cmp r1, #0
	bne _08019674
	movs r0, #2
	str r0, [r2, #0x74]
	ldr r0, [r2, #0x70]
	adds r0, #1
	str r0, [r2, #0x70]
	ldr r3, _08019678 @ =gUnk_080B4400
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08019668
	str r1, [r2, #0x70]
_08019668:
	ldr r0, [r2, #0x70]
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D2B4
_08019674:
	pop {pc}
	.align 2, 0
_08019678: .4byte gUnk_080B4400
