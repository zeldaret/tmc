	thumb_func_start ProjectileD
ProjectileD: @ 0x080A9300
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9318 @ =gUnk_081299D0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9318: .4byte gUnk_081299D0

	thumb_func_start sub_080A931C
sub_080A931C: @ 0x080A931C
	push {lr}
	ldr r2, _080A9330 @ =gUnk_081299E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9330: .4byte gUnk_081299E4

	thumb_func_start sub_080A9334
sub_080A9334: @ 0x080A9334
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A936C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _080A9368
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	adds r0, r4, #0
	bl sub_080A9488
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	b _080A936C
_080A9368:
	bl DeleteThisEntity
_080A936C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9370
sub_080A9370: @ 0x080A9370
	push {r4, lr}
	movs r4, #0
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x6a
	strb r1, [r0, #0xe]
	strb r4, [r0, #0xf]
	movs r1, #0xa0
	lsls r1, r1, #4
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0xa]
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A93A0
sub_080A93A0: @ 0x080A93A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _080A93B0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A93B4
_080A93B0:
	bl DeleteThisEntity
_080A93B4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A93BE
	bl DeleteThisEntity
_080A93BE:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _080A93DA
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	str r2, [r5, #0x54]
	movs r0, #0xfc
	bl SoundReq
_080A93DA:
	pop {r4, r5, pc}

	thumb_func_start sub_080A93DC
sub_080A93DC: @ 0x080A93DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080A9414
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xc5
	lsls r0, r0, #1
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_0806F69C
	b _080A9424
_080A9414:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9424
	bl DeleteThisEntity
_080A9424:
	adds r0, r4, #0
	bl sub_080AF090
	pop {r4, pc}

	thumb_func_start sub_080A942C
sub_080A942C: @ 0x080A942C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9440
	bl DeleteThisEntity
_080A9440:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080A9448
sub_080A9448: @ 0x080A9448
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9464
	adds r0, r4, #0
	bl CreateDust
	bl DeleteThisEntity
	b _080A9486
_080A9464:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9486
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
_080A9486:
	pop {r4, pc}

	thumb_func_start sub_080A9488
sub_080A9488: @ 0x080A9488
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #0x74
	bl EnqueueSFX
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A94C0
sub_080A94C0: @ 0x080A94C0
	push {r4, lr}
	lsls r1, r1, #3
	ldr r2, _080A94FC @ =gUnk_081299F8
	adds r1, r1, r2
	ldrb r3, [r1]
	movs r2, #1
	ands r3, r2
	lsls r3, r3, #6
	ldrb r4, [r0, #0x18]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r3, [r1, #1]
	lsls r3, r3, #7
	movs r4, #0x7f
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r2, [r1, #2]
	adds r3, r0, #0
	adds r3, #0x58
	strb r2, [r3]
	ldr r1, [r1, #4]
	str r1, [r0, #0x48]
	ldrb r1, [r3]
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_080A94FC: .4byte gUnk_081299F8
