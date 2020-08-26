	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LikeLike
LikeLike: @ 0x08027D6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08027D88 @ =gUnk_080CC6FC
	bl EnemyFunctionHandler
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, pc}
	.align 2, 0
_08027D88: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027D8C
sub_08027D8C: @ 0x08027D8C
	push {lr}
	ldr r2, _08027DA0 @ =gUnk_080CC714
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08027DA0: .4byte gUnk_080CC714

	thumb_func_start sub_08027DA4
sub_08027DA4: @ 0x08027DA4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, #1
	bne _08027DC4
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x8c
	strb r0, [r2]
	b _08027E0E
_08027DC4:
	ldrb r0, [r4, #0xc]
	cmp r0, #7
	bne _08027DD2
	adds r0, r4, #0
	bl sub_0802810C
	b _08027E0E
_08027DD2:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08027E0E
	movs r1, #0x7f
	ands r1, r2
	cmp r1, #0
	bne _08027E0E
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x5f
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08027E38 @ =gPlayerEntity
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
_08027E0E:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E1C
	movs r0, #0x20
	strb r0, [r4, #0xe]
_08027E1C:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027E2E
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08027E2E:
	ldr r1, _08027E3C @ =gUnk_080CC6FC
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08027E38: .4byte gPlayerEntity
_08027E3C: .4byte gUnk_080CC6FC

	thumb_func_start sub_08027E40
sub_08027E40: @ 0x08027E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _08027E62
	adds r5, r4, #0
	adds r5, #0x80
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _08027E62
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r5]
	bl sub_08028224
_08027E62:
	adds r0, r4, #0
	bl sub_0804A7D4
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_139
nullsub_139: @ 0x08027E6C
	bx lr
	.align 2, 0

	thumb_func_start sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	beq _08027EA6
	cmp r3, #1
	bgt _08027E88
	cmp r3, #0
	beq _08027E8E
	b _08027EE4
_08027E88:
	cmp r3, #2
	beq _08027EC4
	b _08027EE4
_08027E8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0xe]
	b _08027EE4
_08027EA6:
	movs r2, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08027EE4
_08027EC4:
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r3, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08027EE4:
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	strb r0, [r4, #0x14]
	adds r1, #1
	strb r0, [r1]
	subs r1, #3
	movs r0, #0xff
	strb r0, [r1]
	pop {r4, pc}

	thumb_func_start sub_08027EFC
sub_08027EFC: @ 0x08027EFC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #1
	beq _08027F7C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027F68
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08027F32
	bl Random
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0
	beq _08027F32
	adds r0, r4, #0
	bl sub_08049EE4
	b _08027F38
_08027F32:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
_08027F38:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027F5A
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x82
	strb r0, [r1]
	movs r0, #8
	strb r0, [r4, #0xe]
_08027F5A:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl GetNextFrame
	b _08027F7C
_08027F68:
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_08027F7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_12
nullsub_12: @ 0x08027F80
	bx lr
	.align 2, 0

	thumb_func_start sub_08027F84
sub_08027F84: @ 0x08027F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08027FB0
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl CreateDust
_08027FB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08027FB4
sub_08027FB4: @ 0x08027FB4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08027FD6
	movs r1, #1
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r0, [r2, #0xe]
	adds r3, r2, #0
	adds r3, #0x3b
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
_08027FD6:
	adds r0, r2, #0
	bl GetNextFrame
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08028028
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	movs r2, #8
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x41
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_08028028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802802C
sub_0802802C: @ 0x0802802C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802805A
	movs r2, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x15]
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	bl CreateDust
_0802805A:
	pop {r4, pc}

	thumb_func_start sub_0802805C
sub_0802805C: @ 0x0802805C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #2
	bl UpdateAnimationVariableFrames
	bl sub_0807953C
	cmp r0, #0
	beq _0802807E
	bl Random
	ldrb r2, [r5, #0xf]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r5, #0xf]
_0802807E:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x18
	bhi _0802808E
	ldr r0, _08028098 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802809C
_0802808E:
	adds r0, r5, #0
	bl sub_0802810C
	b _08028102
	.align 2, 0
_08028098: .4byte gUnk_02002A40
_0802809C:
	bl ResetPlayer
	ldr r2, _08028104 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _08028108 @ =gPlayerEntity
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl GetSpriteSubEntryOffsetDataPointer
	ldrb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	ldrb r0, [r0, #1]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080280F0
	adds r0, r5, #0
	bl sub_080281A0
_080280F0:
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08028102
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_08028102:
	pop {r4, r5, pc}
	.align 2, 0
_08028104: .4byte gPlayerState
_08028108: .4byte gPlayerEntity

	thumb_func_start sub_0802810C
sub_0802810C: @ 0x0802810C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08028198 @ =gPlayerState
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	subs r1, #0x11
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0802819C @ =gPlayerEntity
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
	movs r0, #0xc4
	strb r0, [r1]
	movs r3, #0
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
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
	mov r1, ip
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, ip
	strh r0, [r2, #0x36]
	strb r3, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08028196
	movs r0, #0xee
	strb r0, [r1]
_08028196:
	pop {r4, r5, pc}
	.align 2, 0
_08028198: .4byte gPlayerState
_0802819C: .4byte gPlayerEntity

	thumb_func_start sub_080281A0
sub_080281A0: @ 0x080281A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x19
	strb r0, [r4, #0xf]
	movs r0, #0xe
	bl sub_080281E0
	cmp r0, #0
	beq _080281BA
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xe
	b _080281CA
_080281BA:
	movs r0, #0xd
	bl sub_080281E0
	cmp r0, #0
	beq _080281D6
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0xd
_080281CA:
	strb r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #3
	bl TextboxNoOverlapFollow
	b _080281DE
_080281D6:
	movs r0, #1
	rsbs r0, r0, #0
	bl ModHealth
_080281DE:
	pop {r4, pc}

	thumb_func_start sub_080281E0
sub_080281E0: @ 0x080281E0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _0802821A
	ldr r6, _08028220 @ =gUnk_02002A40
	adds r5, r6, #0
	adds r5, #0xb4
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028200
	strb r4, [r5]
_08028200:
	adds r5, r6, #0
	adds r5, #0xb5
	ldrb r0, [r5]
	bl sub_080544B4
	cmp r0, #0
	beq _08028210
	strb r4, [r5]
_08028210:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0807CAA0
	movs r4, #1
_0802821A:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08028220: .4byte gUnk_02002A40

	thumb_func_start sub_08028224
sub_08028224: @ 0x08028224
	push {lr}
	movs r1, #0
	movs r2, #1
	bl sub_080A7C18
	ldr r0, _08028238 @ =0x00000579
	bl TextboxNoOverlapFollow
	pop {pc}
	.align 2, 0
_08028238: .4byte 0x00000579
