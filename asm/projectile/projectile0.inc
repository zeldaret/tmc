	thumb_func_start Projectile0
Projectile0: @ 0x080A7F00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A7F26
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A7F80
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F26
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x14]
	adds r1, #0x18
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080A7F26:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080A7F34
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7F38
_080A7F34:
	bl DeleteThisEntity
_080A7F38:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7F56
	ldr r1, [r4, #0x4c]
	ldr r0, _080A7F7C @ =gPlayerEntity
	cmp r1, r0
	bne _080A7F56
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xd3
	strb r0, [r1]
_080A7F56:
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	adds r0, r4, #0
	bl sub_080A7F9C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F7A
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080A7F7A:
	pop {r4, pc}
	.align 2, 0
_080A7F7C: .4byte gPlayerEntity

	thumb_func_start sub_080A7F80
sub_080A7F80: @ 0x080A7F80
	ldr r3, _080A7F98 @ =gUnk_081293B8
	ldr r2, [r0, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldrb r2, [r2, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r0, #0x3f
	strb r1, [r0]
	bx lr
	.align 2, 0
_080A7F98: .4byte gUnk_081293B8

	thumb_func_start sub_080A7F9C
sub_080A7F9C: @ 0x080A7F9C
	push {lr}
	ldr r2, _080A7FB0 @ =gUnk_081293CC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A7FB0: .4byte gUnk_081293CC

	thumb_func_start sub_080A7FB4
sub_080A7FB4: @ 0x080A7FB4
	ldr r1, [r0, #0x50]
	ldr r3, _080A7FD4 @ =gUnk_081293E0
	ldrb r2, [r1, #0x14]
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r1, #0x5a
	ldrb r3, [r1]
	movs r1, #0xf
	ands r1, r3
	ldr r2, [r2]
	lsls r1, r1, #2
	adds r1, r1, r2
	subs r1, #4
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FD4: .4byte gUnk_081293E0

	thumb_func_start sub_080A7FD8
sub_080A7FD8: @ 0x080A7FD8
	ldr r1, [r0, #0x50]
	ldr r2, _080A7FE8 @ =gUnk_081293F0
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FE8: .4byte gUnk_081293F0

	thumb_func_start sub_080A7FEC
sub_080A7FEC: @ 0x080A7FEC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A8008
	ldr r0, _080A8004 @ =gUnk_08129410
	b _080A800A
	.align 2, 0
_080A8004: .4byte gUnk_08129410
_080A8008:
	ldr r0, _080A8018 @ =gUnk_08129400
_080A800A:
	ldrb r1, [r2, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x48]
	pop {pc}
	.align 2, 0
_080A8018: .4byte gUnk_08129400

	thumb_func_start sub_080A801C
sub_080A801C: @ 0x080A801C
	ldr r1, [r0, #0x50]
	ldr r2, _080A802C @ =gUnk_08129420
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A802C: .4byte gUnk_08129420
