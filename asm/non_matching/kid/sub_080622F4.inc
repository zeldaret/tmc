	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _0806239C @ =gPlayerEntity
	mov r8, r0
	ldrh r1, [r0, #0x2e]
	ldr r3, _080623A0 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	mov r2, r8
	ldrh r1, [r2, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _080623A4 @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	mov r1, r8
	ldrh r0, [r1, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _080623A8 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _080623AC @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r1, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _080623B0 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _080623B4 @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	ldr r4, [r7, #0x64]
	ldrb r0, [r4, #6]
	cmp r0, #0x16
	bne _080623BE
	lsrs r0, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	beq _080623BE
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	mov r3, r8
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	subs r2, r1, r0
	movs r0, #0x32
	ldrsh r3, [r7, r0]
	mov sb, r3
	mov r1, r8
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	mov r3, sb
	subs r1, r3, r0
	cmp r2, #0
	bge _08062382
	rsbs r2, r2, #0
_08062382:
	cmp r1, #0
	bge _08062388
	rsbs r1, r1, #0
_08062388:
	cmp r2, #0x78
	bgt _08062390
	cmp r1, #0x50
	ble _080623B8
_08062390:
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0
	strb r0, [r1]
	b _080624F8
	.align 2, 0
_0806239C: .4byte gPlayerEntity
_080623A0: .4byte 0xFFFF0000
_080623A4: .4byte 0x0000FFFF
_080623A8: .4byte gPlayerState
_080623AC: .4byte 0xFF00FFFF
_080623B0: .4byte 0xC0FFFFFF
_080623B4: .4byte 0x3FFFFFFF
_080623B8:
	adds r0, r7, #0
	bl sub_0806252C
_080623BE:
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	cmp r5, r0
	bne _080623CE
	ldr r0, [r4, #4]
	cmp r6, r0
	beq _08062410
_080623CE:
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r1, #0x69
	adds r1, r1, r7
	mov r8, r1
	adds r3, r7, #0
	adds r3, #0x38
	movs r2, #0x58
	adds r2, r2, r7
	mov ip, r2
	movs r2, #0x12
_080623E4:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _080623E4
	ldr r4, [r7, #0x64]
	str r5, [r4]
	str r6, [r4, #4]
	movs r0, #4
	mov sb, r0
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08062484
	subs r0, r1, #1
	strb r0, [r2]
	b _08062484
_08062410:
	adds r4, #0x98
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08062442
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r0, #0x69
	adds r0, r0, r7
	mov r8, r0
	adds r3, r7, #0
	adds r3, #0x38
	movs r1, #0x58
	adds r1, r1, r7
	mov ip, r1
	movs r2, #0x12
_08062430:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _08062430
	b _08062480
_08062442:
	ldr r1, _080624E8 @ =gPlayerEntity
	movs r3, #0x2e
	ldrsh r0, [r1, r3]
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	bl sub_080041E8
	lsrs r0, r0, #4
	movs r3, #0x69
	adds r3, r3, r7
	mov r8, r3
	adds r3, r7, #0
	adds r3, #0x38
	movs r1, #0x58
	adds r1, r1, r7
	mov ip, r1
	cmp r0, #0x18
	ble _08062484
	ldr r4, [r7, #0x64]
	adds r4, #0x90
	movs r2, #0x12
_08062470:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	subs r4, #8
	subs r2, #1
	cmp r2, #0
	bge _08062470
_08062480:
	movs r2, #4
	mov sb, r2
_08062484:
	ldr r4, [r7, #0x64]
	adds r4, #0x98
	ldrh r0, [r4]
	strh r0, [r7, #0x2e]
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x32]
	ldrh r0, [r4, #4]
	strh r0, [r7, #0x36]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r7, #0x14]
	ldrb r0, [r4, #7]
	lsrs r0, r0, #6
	strb r0, [r3]
	mov r1, r8
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080624B2
	subs r0, r2, #1
	strb r0, [r1]
_080624B2:
	mov r2, sb
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	add sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #6
	bne _080624C4
	movs r3, #0x10
	add sb, r3
_080624C4:
	mov r0, ip
	ldrb r0, [r0]
	cmp sb, r0
	beq _080624EC
	cmp r2, #0
	bne _080624D8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080624EC
_080624D8:
	adds r0, r7, #0
	mov r1, sb
	bl InitAnimationForceUpdate
	movs r0, #0x1e
	mov r1, r8
	strb r0, [r1]
	b _080624F2
	.align 2, 0
_080624E8: .4byte gPlayerEntity
_080624EC:
	adds r0, r7, #0
	bl UpdateAnimationSingleFrame
_080624F2:
	adds r0, r7, #0
	bl sub_0800451C
_080624F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

    .syntax divided
