	thumb_func_start Projectile23
Projectile23: @ 0x080AC8A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AC8C0 @ =gUnk_0812A9D8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AC8C0: .4byte gUnk_0812A9D8

	thumb_func_start sub_080AC8C4
sub_080AC8C4: @ 0x080AC8C4
	push {lr}
	ldr r2, _080AC8D8 @ =gUnk_0812A9EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC8D8: .4byte gUnk_0812A9EC

	thumb_func_start sub_080AC8DC
sub_080AC8DC: @ 0x080AC8DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080AC8FE
	cmp r1, #3
	ble _080AC8F8
	cmp r1, #0x1f
	bgt _080AC8FE
	cmp r1, #0x1e
	blt _080AC8FE
_080AC8F8:
	bl DeleteThisEntity
	b _080AC920
_080AC8FE:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080AC920
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080AC920:
	adds r0, r4, #0
	bl sub_080AC8C4
	pop {r4, pc}

	thumb_func_start sub_080AC928
sub_080AC928: @ 0x080AC928
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AC954
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AC954
sub_080AC954: @ 0x080AC954
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC964
	bl DeleteThisEntity
_080AC964:
	ldr r0, [r5, #0x50]
	ldrb r3, [r0, #0x14]
	ldr r4, _080AC9C4 @ =gSineTable
	lsls r1, r3, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0xb
	adds r3, #0x40
	lsls r3, r3, #1
	adds r3, r3, r4
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r3, r1, #2
	adds r3, r3, r1
	lsls r3, r3, #0xb
	rsbs r3, r3, #0
	adds r1, r5, #0
	bl PositionRelative
	adds r0, r5, #0
	bl GetNextFrame
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC9C0
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldr r1, _080AC9C8 @ =gPlayerEntity
	adds r0, r5, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	movs r0, #0x97
	lsls r0, r0, #1
	bl SoundReq
_080AC9C0:
	pop {r4, r5, pc}
	.align 2, 0
_080AC9C4: .4byte gSineTable
_080AC9C8: .4byte gPlayerEntity

	thumb_func_start sub_080AC9CC
sub_080AC9CC: @ 0x080AC9CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC9E8
	bl DeleteThisEntity
_080AC9E8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ACA10
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080ACA10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACA14
sub_080ACA14: @ 0x080ACA14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ACA32
	bl DeleteThisEntity
_080ACA32:
	pop {r4, pc}
