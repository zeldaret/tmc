	thumb_func_start Projectile9
Projectile9: @ 0x080A8CAC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFunction
	cmp r0, #0
	beq _080A8CBC
	bl DeleteThisEntity
_080A8CBC:
	ldr r0, _080A8CD0 @ =gUnk_081298B8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8CD0: .4byte gUnk_081298B8

	thumb_func_start sub_080A8CD4
sub_080A8CD4: @ 0x080A8CD4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8CEE
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl InitializeAnimation
	b _080A8D08
_080A8CEE:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
	movs r0, #0xb0
	lsls r0, r0, #1
	bl EnqueueSFX
_080A8D08:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A8D0C
sub_080A8D0C: @ 0x080A8D0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8D1C
	bl DeleteEntity
	b _080A8D5C
_080A8D1C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8D2A
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8D5C
_080A8D2A:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8D56
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8D56
	ldrb r0, [r5, #0x15]
	movs r1, #0x18
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x15]
	strb r0, [r4, #0xe]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080A8D56:
	adds r0, r4, #0
	bl GetNextFrame
_080A8D5C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8D60
sub_080A8D60: @ 0x080A8D60
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8D8E
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8D86
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8D9C
_080A8D86:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8D9C
_080A8D8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8DA0
sub_080A8DA0: @ 0x080A8DA0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8DBC
	adds r0, r4, #0
	bl DeleteEntity
_080A8DBC:
	pop {r4, pc}
	.align 2, 0
