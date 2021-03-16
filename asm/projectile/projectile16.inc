	thumb_func_start Projectile16
Projectile16: @ 0x080AAAE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAB00 @ =gUnk_0812A3C0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAB00: .4byte gUnk_0812A3C0

	thumb_func_start sub_080AAB04
sub_080AAB04: @ 0x080AAB04
	push {lr}
	ldr r2, _080AAB18 @ =gUnk_0812A3D4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AAB18: .4byte gUnk_0812A3D4

	thumb_func_start sub_080AAB1C
sub_080AAB1C: @ 0x080AAB1C
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080AAB24
sub_080AAB24: @ 0x080AAB24
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080AAB4C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080AAB62
_080AAB4C:
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AAB5E
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAB62
_080AAB5E:
	movs r0, #2
	strb r0, [r4, #0xc]
_080AAB62:
	pop {r4, pc}

	thumb_func_start sub_080AAB64
sub_080AAB64: @ 0x080AAB64
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AAB7C
	bl DeleteThisEntity
_080AAB7C:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AAB8A
	bl DeleteThisEntity
_080AAB8A:
	pop {r4, pc}
