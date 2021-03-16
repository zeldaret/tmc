	thumb_func_start Projectile1C
Projectile1C: @ 0x080AB690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AB6A2
	bl DeleteThisEntity
_080AB6A2:
	ldr r0, _080AB6B4 @ =gUnk_0812A5E8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AB6B4: .4byte gUnk_0812A5E8

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #0x2c]
	str r0, [r2, #0x74]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080AB6E8
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, _080AB6E4 @ =gUnk_0812A614
	str r0, [r2, #0x48]
	adds r0, r2, #0
	movs r1, #0
	bl InitializeAnimation
	b _080AB6F8
	.align 2, 0
_080AB6E4: .4byte gUnk_0812A614
_080AB6E8:
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #4
	strb r0, [r2, #0xf]
	ldrb r1, [r2, #0xe]
	adds r0, r2, #0
	bl InitializeAnimation
_080AB6F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB6FC
sub_080AB6FC: @ 0x080AB6FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB724
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AB758
_080AB724:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB728
sub_080AB728: @ 0x080AB728
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r2, [r4, #0x50]
	ldr r1, [r2, #0x2c]
	ldr r0, [r4, #0x74]
	subs r1, r1, r0
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	str r0, [r4, #0x74]
	adds r0, r4, #0
	bl sub_080AB888
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _080AB754
	bl DeleteThisEntity
_080AB754:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #6
	movs r7, #0
	movs r4, #0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	ldr r1, _080AB818 @ =gRoomControls
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r1
	cmp r2, r0
	bhi _080AB7B4
	movs r3, #7
_080AB77E:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #7
	bne _080AB798
	adds r0, r5, #0
	movs r1, #4
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x3e
	adds r7, #0x3e
	ldr r3, [sp]
_080AB798:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB77E
_080AB7B4:
	movs r4, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r2, r0, r7
	mov r1, r8
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080AB802
	movs r3, #3
_080AB7CC:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #3
	bne _080AB7E6
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x1e
	adds r7, #0x1e
	ldr r3, [sp]
_080AB7E6:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB7CC
_080AB802:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080AB81C
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #0xe
	b _080AB830
	.align 2, 0
_080AB818: .4byte gRoomControls
_080AB81C:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080AB830
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #6
_080AB830:
	adds r0, r5, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_080AB844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB844
sub_080AB844: @ 0x080AB844
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r0, #0x1c
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _080AB880
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xe]
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
	lsls r3, r6, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	cmp r7, #1
	beq _080AB87C
	ldr r0, _080AB878 @ =gUnk_0812A61C
	b _080AB87E
	.align 2, 0
_080AB878: .4byte gUnk_0812A61C
_080AB87C:
	ldr r0, _080AB884 @ =gUnk_0812A614
_080AB87E:
	str r0, [r4, #0x48]
_080AB880:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB884: .4byte gUnk_0812A614

	thumb_func_start sub_080AB888
sub_080AB888: @ 0x080AB888
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	movs r3, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #3
	beq _080AB8A4
	cmp r0, #3
	ble _080AB8B6
	cmp r0, #4
	beq _080AB8A6
	b _080AB8B6
_080AB8A4:
	movs r3, #1
_080AB8A6:
	ldr r0, _080AB8C4 @ =gUnk_0812A5F4
	ldrb r1, [r2, #0xf]
	lsls r1, r1, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
_080AB8B6:
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _080AB8C0
	movs r0, #4
	strb r0, [r2, #0xf]
_080AB8C0:
	pop {pc}
	.align 2, 0
_080AB8C4: .4byte gUnk_0812A5F4
