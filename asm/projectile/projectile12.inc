	thumb_func_start Projectile12
Projectile12: @ 0x080A9DA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9DBC @ =gUnk_08129BEC
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9DBC: .4byte gUnk_08129BEC

	thumb_func_start sub_080A9DC0
sub_080A9DC0: @ 0x080A9DC0
	push {lr}
	ldr r2, _080A9DD4 @ =gUnk_08129C00
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9DD4: .4byte gUnk_08129C00

	thumb_func_start sub_080A9DD8
sub_080A9DD8: @ 0x080A9DD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A9DEE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A9DF2
_080A9DEE:
	bl DeleteThisEntity
_080A9DF2:
	adds r0, r4, #0
	bl sub_080A9DC0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9DFC
sub_080A9DFC: @ 0x080A9DFC
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	movs r1, #0xb4
	strb r1, [r0, #0xe]
	adds r1, r0, #0
	adds r1, #0x45
	strb r2, [r1]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_080A9E14
sub_080A9E14: @ 0x080A9E14
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A9E34
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9E42
_080A9E34:
	adds r0, r4, #0
	movs r1, #0x4f
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9E42:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A9E50
	bl DeleteThisEntity
_080A9E50:
	pop {r4, pc}
	.align 2, 0
