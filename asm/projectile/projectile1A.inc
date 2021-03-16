	thumb_func_start Projectile1A
Projectile1A: @ 0x080AB2A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB2C0 @ =gUnk_0812A4C8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB2C0: .4byte gUnk_0812A4C8

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {lr}
	ldr r2, _080AB2D8 @ =gUnk_0812A4DC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB2D8: .4byte gUnk_0812A4DC

	thumb_func_start sub_080AB2DC
sub_080AB2DC: @ 0x080AB2DC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x41
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB314
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0x53
	bl InitializeAnimation
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, #0
	bne _080AB314
	movs r0, #4
	rsbs r0, r0, #0
	bl ModHealth
_080AB314:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AB318
sub_080AB318: @ 0x080AB318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r4, #1
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r6, #0xc]
	ldr r0, _080AB3D8 @ =0xFFFF0000
	str r0, [r6, #0x20]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r2, _080AB3DC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x76
	strh r1, [r0]
	ldr r0, [r6, #0x50]
	adds r1, r6, #0
	bl CopyPosition
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F5BC
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r0, r6, #0
	movs r1, #0x51
	bl InitializeAnimation
	ldr r0, _080AB3E0 @ =0x000001B5
	bl SoundReq
	adds r0, r6, #0
	bl sub_080AB4F8
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r2, r1
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080041DC
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	ldr r0, _080AB3E4 @ =0x000001FF
	ands r1, r0
	ldr r0, _080AB3E8 @ =gScreenTransition
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _080AB3EC
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080AB3F4
	adds r4, r0, #0
	b _080AB3F4
	.align 2, 0
_080AB3D8: .4byte 0xFFFF0000
_080AB3DC: .4byte gRoomControls
_080AB3E0: .4byte 0x000001B5
_080AB3E4: .4byte 0x000001FF
_080AB3E8: .4byte gScreenTransition
_080AB3EC:
	subs r4, r4, r1
	cmp r4, #0x1f
	bgt _080AB3F4
	movs r4, #0x20
_080AB3F4:
	lsls r1, r4, #8
	ldr r0, [r6, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r6, #0x20]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080045B4
	strb r0, [r6, #0x15]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB414
sub_080AB414: @ 0x080AB414
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080AB446
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AB4A4
	b _080AB458
_080AB446:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bls _080AB458
	bl DeleteThisEntity
_080AB458:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB45C
sub_080AB45C: @ 0x080AB45C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB486
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080AB486:
	pop {r4, pc}

	thumb_func_start sub_080AB488
sub_080AB488: @ 0x080AB488
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB4A0
	bl DeleteThisEntity
_080AB4A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB4A4
sub_080AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x76
	ldrh r4, [r7]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r3, _080AB4F4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	cmp r4, r5
	beq _080AB4F2
	strh r5, [r7]
	adds r0, r6, #0
	bl GetTileTypeByEntity
	cmp r0, #0x13
	beq _080AB4E2
	cmp r0, #0x34
	bne _080AB4F2
_080AB4E2:
	movs r0, #0xd3
	lsls r0, r0, #2
	ldrh r1, [r7]
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080AB4F2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB4F4: .4byte gRoomControls

	thumb_func_start sub_080AB4F8
sub_080AB4F8: @ 0x080AB4F8
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #5
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080AB50C @ =gUnk_0812A4EC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080AB50C: .4byte gUnk_0812A4EC
