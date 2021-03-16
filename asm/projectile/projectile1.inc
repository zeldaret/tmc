	thumb_func_start Projectile1
Projectile1: @ 0x080A8030
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8048 @ =gUnk_081295D0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8048: .4byte gUnk_081295D0

	thumb_func_start sub_080A804C
sub_080A804C: @ 0x080A804C
	push {lr}
	ldr r2, _080A8060 @ =gUnk_081295E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8060: .4byte gUnk_081295E4

	thumb_func_start sub_080A8064
sub_080A8064: @ 0x080A8064
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A8078
	adds r0, r1, #0
	bl DeleteEntity
	b _080A8086
_080A8078:
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r0, r1, #0
	bl sub_080A8178
_080A8086:
	pop {pc}

	thumb_func_start sub_080A8088
sub_080A8088: @ 0x080A8088
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x30
	strb r1, [r0, #0xe]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r0, #0x20]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_080A80A0
sub_080A80A0: @ 0x080A80A0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A80DC
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A80C4
	adds r0, r4, #0
	bl DeleteEntity
	b _080A80F0
_080A80C4:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A80F0
	movs r0, #3
	strb r0, [r4, #0xc]
	b _080A80F0
_080A80DC:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_080A8178
	adds r0, r4, #0
	bl sub_08016AD2
_080A80F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A80F4
sub_080A80F4: @ 0x080A80F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A8116
	adds r0, r4, #0
	bl DeleteEntity
_080A8116:
	pop {r4, pc}

	thumb_func_start sub_080A8118
sub_080A8118: @ 0x080A8118
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A813A
	cmp r0, #1
	beq _080A8142
	b _080A815A
_080A813A:
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8176
_080A8142:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080A8176
_080A815A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8176
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A8176:
	pop {r4, pc}

	thumb_func_start sub_080A8178
sub_080A8178: @ 0x080A8178
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x40
	strh r1, [r0, #0x24]
	movs r1, #0xa0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr
