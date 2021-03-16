	thumb_func_start Projectile15
Projectile15: @ 0x080AA68C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA6A4 @ =gUnk_0812A014
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA6A4: .4byte gUnk_0812A014

	thumb_func_start sub_080AA6A8
sub_080AA6A8: @ 0x080AA6A8
	push {lr}
	ldr r2, _080AA6BC @ =gUnk_0812A02C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AA6BC: .4byte gUnk_0812A02C

	thumb_func_start sub_080AA6C0
sub_080AA6C0: @ 0x080AA6C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _080AA774
	movs r6, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r5, #0x5a
	strb r5, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA72A
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
_080AA72A:
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA784
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
	b _080AA784
	.align 2, 0
_080AA770: .4byte gUnk_0812A03C
_080AA774:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldr r0, _080AA788 @ =0x00000101
	bl EnqueueSFX
_080AA784:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA788: .4byte 0x00000101

	thumb_func_start sub_080AA78C
sub_080AA78C: @ 0x080AA78C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080AA7DA
	ldr r0, _080AA7C8 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r2, r0, #1
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	beq _080AA7CC
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r0, [r3]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r3]
	movs r0, #2
	eors r2, r0
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	bne _080AA832
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AA6C0
	b _080AA832
	.align 2, 0
_080AA7C8: .4byte gPlayerEntity
_080AA7CC:
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r1, r2, #0
	adds r1, #8
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA7DA:
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080AA812
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AA806
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	bl EnqueueSFX
_080AA806:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	b _080AA820
_080AA812:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA828
_080AA820:
	adds r0, r4, #0
	bl sub_080AAAA8
	b _080AA832
_080AA828:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA832:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA834
sub_080AA834: @ 0x080AA834
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080AA848
	bl DeleteThisEntity
_080AA848:
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	strb r0, [r4, #0x16]
	ldr r1, _080AA874 @ =gUnk_0812A04C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_080AAA68
	pop {r4, pc}
	.align 2, 0
_080AA874: .4byte gUnk_0812A04C

	thumb_func_start sub_080AA878
sub_080AA878: @ 0x080AA878
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA88E
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080AA88E:
	adds r0, r4, #0
	bl sub_080AA9E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA898
sub_080AA898: @ 0x080AA898
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBB4
	ldr r1, _080AA8B4 @ =gUnk_0812A05C
	ldrb r0, [r4, #0xd]
	subs r0, #5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AA8B4: .4byte gUnk_0812A05C

	thumb_func_start sub_080AA8B8
sub_080AA8B8: @ 0x080AA8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080AA99C @ =gPlayerEntity
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA920
	ldrb r0, [r4, #0xa]
	lsls r2, r0, #1
	ldrb r0, [r7, #0x14]
	cmp r2, r0
	bne _080AA90A
	ldr r1, _080AA9A0 @ =gUnk_0812A064
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	bne _080AA90A
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
_080AA90A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xa]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA920:
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	bne _080AA99A
	ldr r1, _080AA9A4 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _080AA99A
	ldrb r1, [r1, #5]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r0, _080AA99C @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA99A
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r1, _080AA9A8 @ =gUnk_0812A06C
	ldrb r0, [r7, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7, #0x2e]
	adds r0, r0, r3
	strh r0, [r7, #0x2e]
	ldrb r0, [r7, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x32]
	adds r0, r0, r1
	strh r0, [r7, #0x32]
	movs r0, #0x80
	lsls r0, r0, #1
	bl EnqueueSFX
_080AA99A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA99C: .4byte gPlayerEntity
_080AA9A0: .4byte gUnk_0812A064
_080AA9A4: .4byte gPlayerState
_080AA9A8: .4byte gUnk_0812A06C

	thumb_func_start sub_080AA9AC
sub_080AA9AC: @ 0x080AA9AC
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x84
	strb r2, [r1]
	ldrb r1, [r0, #0xa]
	adds r1, #0xc
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_080AA9C4
sub_080AA9C4: @ 0x080AA9C4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AA9DE
	adds r0, r4, #0
	bl sub_080AAAA8
_080AA9DE:
	pop {r4, pc}

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AAA00
	ldr r0, _080AA9FC @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	b _080AAA0A
	.align 2, 0
_080AA9FC: .4byte gPlayerEntity
_080AAA00:
	ldr r0, _080AAA24 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
_080AAA0A:
	subs r4, r1, r0
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #2
	ldr r0, _080AAA28 @ =gUnk_0812A074
	adds r3, r1, r0
	cmp r2, #2
	bgt _080AAA2C
	cmp r2, #1
	bge _080AAA36
	cmp r2, #0
	beq _080AAA30
	b _080AAA40
	.align 2, 0
_080AAA24: .4byte gPlayerEntity
_080AAA28: .4byte gUnk_0812A074
_080AAA2C:
	cmp r2, #3
	bne _080AAA40
_080AAA30:
	cmp r4, #4
	ble _080AAA40
	b _080AAA3E
_080AAA36:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r4, r0
	bge _080AAA40
_080AAA3E:
	adds r3, #2
_080AAA40:
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3, #1]
	strb r0, [r5, #0x15]
	ldrb r0, [r3]
	cmp r0, #5
	bne _080AAA66
	adds r0, r5, #0
	bl sub_08078930
_080AAA66:
	pop {r4, r5, pc}

	thumb_func_start sub_080AAA68
sub_080AAA68: @ 0x080AAA68
	push {r4, r5, r6, lr}
	ldr r2, _080AAAA0 @ =gUnk_0812A084
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _080AAAA4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AAAA0: .4byte gUnk_0812A084
_080AAAA4: .4byte gRoomControls

	thumb_func_start sub_080AAAA8
sub_080AAAA8: @ 0x080AAAA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080AAAE4 @ =gRoomControls
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
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0
_080AAAE4: .4byte gRoomControls
