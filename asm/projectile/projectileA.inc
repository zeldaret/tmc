	thumb_func_start ProjectileA
ProjectileA: @ 0x080A8DC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8DD8 @ =gUnk_08129954
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8DD8: .4byte gUnk_08129954

	thumb_func_start sub_080A8DDC
sub_080A8DDC: @ 0x080A8DDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A8E12
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8E12
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x1e
	beq _080A8E12
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080A8E12:
	ldr r0, _080A8E24 @ =gUnk_08129968
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8E24: .4byte gUnk_08129968

	thumb_func_start sub_080A8E28
sub_080A8E28: @ 0x080A8E28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080A8E80 @ =0xFFFF0000
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080A8E6E
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F5BC
	ldr r0, [r5, #0x50]
	ldr r2, [r5, #0x54]
	ldr r1, [r0, #0x30]
	ldr r0, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0x51
	bl InitializeAnimation
	ldr r0, _080A8E84 @ =0x000001B5
	bl SoundReq
_080A8E6E:
	ldrb r4, [r5, #0xa]
	cmp r4, #2
	beq _080A8EF2
	cmp r4, #2
	ble _080A8E88
	cmp r4, #3
	beq _080A8F02
	b _080A8FAE
	.align 2, 0
_080A8E80: .4byte 0xFFFF0000
_080A8E84: .4byte 0x000001B5
_080A8E88:
	cmp r4, #0
	bge _080A8E8E
	b _080A8FAE
_080A8E8E:
	ldr r0, _080A8EC0 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl sub_080041DC
	adds r4, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bne _080A8ECE
	bl Random
	adds r2, r0, #0
	ldr r0, _080A8EC4 @ =0x000001FF
	ands r2, r0
	ldr r0, _080A8EC8 @ =gScreenTransition
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080A8ECC
	adds r4, r4, r2
	b _080A8ECE
	.align 2, 0
_080A8EC0: .4byte gPlayerEntity
_080A8EC4: .4byte 0x000001FF
_080A8EC8: .4byte gScreenTransition
_080A8ECC:
	subs r4, r4, r2
_080A8ECE:
	cmp r4, #0x1f
	bgt _080A8ED6
	movs r4, #0x20
	b _080A8EE0
_080A8ED6:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080A8EE0
	adds r4, r0, #0
_080A8EE0:
	lsls r1, r4, #8
	ldr r0, [r5, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r5, #0x20]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	b _080A8FAE
_080A8EF2:
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __divsi3
	lsls r0, r0, #0xc
	str r0, [r5, #0x20]
	b _080A8FAE
_080A8F02:
	ldr r0, _080A8F64 @ =0xFF600000
	str r0, [r5, #0x34]
	bl Random
	ands r4, r0
	lsls r2, r4, #1
	ldr r1, _080A8F68 @ =gUnk_08129978
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _080A8F74
	bl Random
	ldr r2, _080A8F6C @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _080A8F70 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	b _080A8F9E
	.align 2, 0
_080A8F64: .4byte 0xFF600000
_080A8F68: .4byte gUnk_08129978
_080A8F6C: .4byte gUnk_08129988
_080A8F70: .4byte gUnk_08129980
_080A8F74:
	bl Random
	ldr r2, _080A8FB0 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _080A8FB4 @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x32]
	adds r0, r0, r2
_080A8F9E:
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004168
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
_080A8FAE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8FB0: .4byte gUnk_08129980
_080A8FB4: .4byte gUnk_08129988

	thumb_func_start sub_080A8FB8
sub_080A8FB8: @ 0x080A8FB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A8FE8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	b _080A9054
_080A8FE8:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080A901C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A901C
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldr r1, _080A9048 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080A901C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A90D8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A904C
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl InitializeAnimation
	b _080A9054
	.align 2, 0
_080A9048: .4byte gPlayerEntity
_080A904C:
	adds r0, r4, #0
	movs r1, #0x52
	bl InitializeAnimation
_080A9054:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9058
sub_080A9058: @ 0x080A9058
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A9098
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A908A
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x55
	bl InitializeAnimation
	b _080A90BA
_080A908A:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080A90D8
	b _080A90BA
_080A9098:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90BA
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080A90BA:
	pop {r4, pc}

	thumb_func_start sub_080A90BC
sub_080A90BC: @ 0x080A90BC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90D4
	bl DeleteThisEntity
_080A90D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A90D8
sub_080A90D8: @ 0x080A90D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x74
	adds r0, r0, r5
	mov ip, r0
	ldrh r3, [r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _080A9154 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r6, #0x3f
	adds r2, r4, #0
	ands r2, r6
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #6
	orrs r2, r0
	cmp r3, r2
	beq _080A9152
	movs r0, #0x3f
	ands r4, r0
	ands r1, r0
	lsls r0, r1, #6
	orrs r4, r0
	mov r2, ip
	strh r4, [r2]
	adds r0, r5, #0
	bl GetTileTypeByEntity
	cmp r0, #0x13
	beq _080A9128
	cmp r0, #0x34
	bne _080A9152
_080A9128:
	movs r0, #0xd3
	lsls r0, r0, #2
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	ldrh r2, [r7, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	ldrh r3, [r7, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080A9152:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A9154: .4byte gRoomControls
