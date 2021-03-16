	thumb_func_start Projectile5
Projectile5: @ 0x080A86BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A86D4 @ =gUnk_08129718
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A86D4: .4byte gUnk_08129718

	thumb_func_start sub_080A86D8
sub_080A86D8: @ 0x080A86D8
	push {lr}
	ldr r2, _080A86EC @ =gUnk_0812972C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A86EC: .4byte gUnk_0812972C

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	bne _080A8700
	bl DeleteThisEntity
	b _080A876E
_080A8700:
	adds r5, r1, #0
	adds r5, #0x83
	ldrb r1, [r5]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #3
	bne _080A8768
	ldr r0, _080A875C @ =gPlayerState
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _080A876E
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A8760 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A8764 @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0
	bne _080A876E
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A876E
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	bl DeleteThisEntity
	b _080A876E
	.align 2, 0
_080A875C: .4byte gPlayerState
_080A8760: .4byte gRoomControls
_080A8764: .4byte gPlayerEntity
_080A8768:
	adds r0, r4, #0
	bl DeleteEntity
_080A876E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A8770
sub_080A8770: @ 0x080A8770
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _080A8788 @ =gUnk_08129734
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A8788: .4byte gUnk_08129734

	thumb_func_start sub_080A878C
sub_080A878C: @ 0x080A878C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	bne _080A879A
	bl DeleteThisEntity
_080A879A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A87A4
	bl DeleteThisEntity
_080A87A4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #3
	beq _080A87B6
	bl DeleteThisEntity
_080A87B6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrh r0, [r5, #0x36]
	adds r0, #2
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0
