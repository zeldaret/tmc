	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start NPC23
NPC23: @ 0x080662D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080662F4 @ =gUnk_081104C8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_080662F4: .4byte gUnk_081104C8

	thumb_func_start sub_080662F8
sub_080662F8: @ 0x080662F8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
	ldrh r0, [r5, #0x2e]
	adds r1, r5, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldrh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	adds r0, #6
	strh r4, [r0]
	ldrb r0, [r5, #0xe]
	adds r1, r5, #0
	adds r1, #0x82
	strh r0, [r1]
	ldr r0, _08066354 @ =gPlayerEntity
	str r0, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x84
	strh r4, [r0]
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_08066490
	adds r0, r5, #0
	bl sub_08078778
	pop {r4, r5, pc}
	.align 2, 0
_08066354: .4byte gPlayerEntity

	thumb_func_start sub_08066358
sub_08066358: @ 0x08066358
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080663B8
	movs r5, #0
	strb r5, [r1]
	movs r0, #0
	bl TextboxNoOverlapFollow
	ldrb r1, [r4, #0xb]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080663C0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #8
	ble _08066396
	movs r0, #8
	b _08066398
_08066396:
	movs r0, #0x18
_08066398:
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080663B4 @ =gUnk_02034490
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080788E0
	b _080663C0
	.align 2, 0
_080663B4: .4byte gUnk_02034490
_080663B8:
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08066490
_080663C0:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_08066570
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_110
nullsub_110: @ 0x080663D0
	bx lr
	.align 2, 0

	thumb_func_start sub_080663D4
sub_080663D4: @ 0x080663D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	subs r0, #8
	cmp r1, r0
	bne _08066410
	ldr r0, _0806640C @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0xf
	beq _0806642E
	movs r0, #0
	movs r1, #4
	strb r1, [r4, #0xc]
	strb r0, [r4, #0x15]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x84
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	b _0806642E
	.align 2, 0
_0806640C: .4byte gPlayerEntity
_08066410:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08066428
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r1, #4
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08066428:
	adds r0, r4, #0
	bl sub_080AEF88
_0806642E:
	bl sub_08078B48
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806643C
sub_0806643C: @ 0x0806643C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0806650C
	adds r4, r0, #0
	cmp r4, #0
	bne _08066462
	movs r0, #5
	strb r0, [r5, #0xc]
	ldr r0, _0806646C @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #0x40
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	ldr r0, _08066470 @ =gPlayerEntity
	strb r4, [r0, #0x14]
	strb r4, [r0, #0x15]
_08066462:
	adds r0, r5, #0
	bl GetNextFrame
	pop {r4, r5, pc}
	.align 2, 0
_0806646C: .4byte gRoomControls
_08066470: .4byte gPlayerEntity

	thumb_func_start sub_08066474
sub_08066474: @ 0x08066474
	push {lr}
	ldr r0, _08066488 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0xf
	beq _08066484
	ldr r1, _0806648C @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
_08066484:
	pop {pc}
	.align 2, 0
_08066488: .4byte gPlayerEntity
_0806648C: .4byte gUnk_02034490

	thumb_func_start sub_08066490
sub_08066490: @ 0x08066490
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r5, r1, #0
	ldrb r1, [r0, #0xb]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806650A
	mov r1, ip
	ldrh r0, [r1, #0x2e]
	adds r1, #0x86
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x7e
	ldrh r2, [r0]
	adds r0, #4
	ldrh r0, [r0]
	adds r3, r2, r0
	subs r4, r2, r0
	movs r6, #0x2e
	ldrsh r0, [r5, r6]
	cmp r0, r3
	bge _080664C6
	cmp r0, r4
	ble _080664C6
	adds r2, r0, #0
	b _080664D2
_080664C6:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	adds r2, r4, #0
	cmp r0, r3
	blt _080664D2
	adds r2, r3, #0
_080664D2:
	ldrh r0, [r1]
	cmp r0, r2
	bne _080664F0
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, #1
	bne _0806650A
	movs r0, #0
	strh r0, [r1]
	mov r0, ip
	movs r1, #2
	bl InitializeAnimation
	b _0806650A
_080664F0:
	mov r6, ip
	strh r2, [r6, #0x2e]
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806650A
	movs r0, #1
	strh r0, [r1]
	mov r0, ip
	movs r1, #6
	bl InitializeAnimation
_0806650A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0806650C
sub_0806650C: @ 0x0806650C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r1, _0806652C @ =gPlayerEntity
	ldrh r5, [r1, #0x2e]
	adds r7, r5, #0
	ldrh r2, [r1, #0x32]
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, #0x10
	adds r6, r1, #0
	cmp r2, r0
	bge _08066530
	movs r4, #4
	b _0806654C
	.align 2, 0
_0806652C: .4byte gPlayerEntity
_08066530:
	adds r0, r3, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	adds r0, r1, #2
	cmp r5, r0
	bge _0806653E
	movs r4, #2
_0806653E:
	adds r0, r1, #6
	cmp r7, r0
	ble _08066546
	movs r4, #6
_08066546:
	cmp r4, #0
	bne _0806654C
	strh r4, [r6, #0x24]
_0806654C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0xf
	beq _0806656A
	cmp r4, #0
	bne _0806655A
	movs r0, #0
	b _0806656C
_0806655A:
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	strb r4, [r6, #0x14]
	lsls r0, r4, #2
	strb r0, [r6, #0x15]
_0806656A:
	movs r0, #1
_0806656C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08066570
sub_08066570: @ 0x08066570
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080665DE
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _080665DE
	ldr r4, _080665E0 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x50
	bl sub_0806FC80
	cmp r0, #0
	beq _080665DE
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	adds r3, r0, #0
	movs r6, #1
	movs r1, #0x18
	adds r4, r3, #0
	ands r4, r1
	ldrb r0, [r5, #0x15]
	adds r2, r1, #0
	ands r2, r0
	cmp r2, r4
	bne _080665C8
	adds r2, r3, #5
	movs r1, #7
	ands r2, r1
	ldrb r0, [r5, #0x15]
	adds r0, #5
	ands r0, r1
	cmp r0, #2
	bhi _080665C8
	cmp r2, #2
	bhi _080665C8
	movs r6, #0
_080665C8:
	cmp r6, #0
	beq _080665DE
	strb r3, [r5, #0x15]
	adds r3, #4
	movs r0, #0x18
	ands r3, r0
	lsrs r3, r3, #3
	adds r0, r5, #0
	adds r1, r3, #0
	bl InitializeAnimation
_080665DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080665E0: .4byte gPlayerEntity
