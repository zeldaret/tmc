	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	bl GetNextFrame
	ldrb r0, [r7, #0xa]
	cmp r0, #9
	bls _0809A1D2
	b _0809A632
_0809A1D2:
	lsls r0, r0, #2
	ldr r1, _0809A1DC @ =_0809A1E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809A1DC: .4byte _0809A1E0
_0809A1E0: @ jump table
	.4byte _0809A208 @ case 0
	.4byte _0809A25C @ case 1
	.4byte _0809A33E @ case 2
	.4byte _0809A378 @ case 3
	.4byte _0809A394 @ case 4
	.4byte _0809A3E0 @ case 5
	.4byte _0809A378 @ case 6
	.4byte _0809A46C @ case 7
	.4byte _0809A47C @ case 8
	.4byte _0809A616 @ case 9
_0809A208:
	adds r1, r7, #0
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809A25C
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xf]
	subs r0, #1
	strb r0, [r7, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0xb
	str r1, [sp, #0x20]
	cmp r0, #0xff
	bne _0809A254
	movs r0, #5
	strb r0, [r7, #0xf]
	ldrb r3, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0x87
	movs r2, #1
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r7, #0x54]
	cmp r1, #0
	beq _0809A24E
	ldr r0, [r7, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r7, #0x54]
	adds r0, #0x84
	ldr r2, [sp, #0x20]
	ldr r1, [r2]
	str r1, [r0]
_0809A24E:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0809A254:
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	b _0809A474
_0809A25C:
	adds r4, r7, #0
	adds r4, #0x84
	ldr r1, [r4]
	ldrb r0, [r7, #0xe]
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r2, [r1]
	ldr r0, [r2, #0x2c]
	ldr r1, [r7, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r7, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r7, #0x15]
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	ldrb r2, [r7, #0x15]
	adds r0, r7, #0
	bl sub_0806F62C
	ldr r1, [r4]
	ldrb r0, [r7, #0xe]
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	movs r2, #2
	movs r3, #2
	bl sub_080041A0
	cmp r0, #0
	bne _0809A2A6
	b _0809A632
_0809A2A6:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0809A2CC
	ldr r1, [r4]
	ldrb r0, [r7, #0xe]
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r3, [r1]
	ldrb r2, [r3, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x18]
_0809A2CC:
	ldrb r1, [r7, #0xe]
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	subs r0, #1
	cmp r1, r0
	bne _0809A338
	movs r0, #2
	strb r0, [r7, #0xc]
	movs r0, #0xf0
	strb r0, [r7, #0xe]
	bl Random
	ldr r6, _0809A330 @ =gUnk_0812384C
	ldrb r2, [r7, #0xb]
	movs r3, #0xf
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ands r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r7, #0x15]
	bl Random
	ldrb r1, [r7, #0xb]
	ands r4, r1
	lsls r4, r4, #1
	adds r4, #1
	lsls r4, r4, #1
	adds r4, r4, r6
	ldr r2, _0809A334 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0809A320
	b _0809A632
_0809A320:
	ldr r1, [r7, #0x50]
	movs r0, #4
	strb r0, [r1, #0xc]
	ldr r1, [r7, #0x50]
	movs r0, #0
	strb r0, [r1, #0xd]
	b _0809A632
	.align 2, 0
_0809A330: .4byte gUnk_0812384C
_0809A334: .4byte 0x000001FF
_0809A338:
	adds r0, r1, #1
	strb r0, [r7, #0xe]
	b _0809A632
_0809A33E:
	ldr r1, [r7, #0x50]
	ldrb r0, [r1, #0xb]
	cmp r0, #3
	bne _0809A38E
	adds r0, r1, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r2, [r0, #8]
	ldr r0, [r2, #0x2c]
	ldr r1, [r7, #0x2c]
	subs r0, r0, r1
	ldr r1, [r2, #0x30]
	ldr r2, [r7, #0x30]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r7, #0x15]
	movs r1, #0xa0
	lsls r1, r1, #2
	ldrb r2, [r7, #0x15]
	adds r0, r7, #0
	bl sub_0806F62C
	ldr r1, [r7, #0x50]
	adds r0, r7, #0
	movs r2, #0x48
	bl sub_0806FC80
	b _0809A388
_0809A378:
	ldrb r2, [r7, #0x15]
	adds r0, r7, #0
	movs r1, #0x80
	bl sub_0806F62C
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
_0809A388:
	cmp r0, #0
	bne _0809A38E
	b _0809A632
_0809A38E:
	bl DeleteThisEntity
	b _0809A632
_0809A394:
	ldr r3, [r7, #0x78]
	cmp r3, #0
	bne _0809A3B4
	ldr r0, _0809A3B0 @ =gRoomVars
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0809A38E
	movs r0, #8
	bl ChangeLightLevel
	b _0809A632
	.align 2, 0
_0809A3B0: .4byte gRoomVars
_0809A3B4:
	ldr r2, [r7, #0x50]
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _0809A3C8
	movs r0, #1
	strb r0, [r7, #0xd]
	str r1, [r7, #0x78]
	b _0809A632
_0809A3C8:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _0809A3D6
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _0809A3D6
	b _0809A632
_0809A3D6:
	movs r0, #1
	strb r0, [r7, #0xd]
	subs r0, r3, #1
	str r0, [r7, #0x78]
	b _0809A632
_0809A3E0:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	bne _0809A432
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, #0
	cmp r2, r1
	bne _0809A40E
	ldr r0, [r7, #0x50]
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r4, r7, #0
	adds r4, #0x74
	cmp r0, #0
	beq _0809A420
	bl DeleteThisEntity
	b _0809A420
_0809A40E:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r5]
	adds r1, r7, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	adds r4, r1, #0
_0809A420:
	ldrh r1, [r5]
	ldrh r2, [r4]
	adds r0, r7, #0
	adds r0, #0x7a
	ldrh r3, [r0]
	adds r0, r7, #0
	bl sub_0805EC9C
	b _0809A436
_0809A432:
	subs r0, #1
	str r0, [r7, #0x78]
_0809A436:
	ldr r0, [r7, #0x50]
	adds r1, r7, #0
	bl CopyPosition
	ldr r4, _0809A468 @ =gUnk_0812388C
	ldrb r3, [r7, #0xb]
	lsls r0, r3, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, [r7, #0x50]
	adds r0, #0x7b
	ldrb r2, [r0]
	rsbs r2, r2, #0
	lsls r2, r2, #0x18
	lsls r3, r3, #2
	adds r3, r3, r4
	lsrs r2, r2, #0x18
	ldrh r3, [r3]
	adds r2, r2, r3
	adds r0, r7, #0
	bl sub_0806F62C
	b _0809A632
	.align 2, 0
_0809A468: .4byte gUnk_0812388C
_0809A46C:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	bne _0809A38E
	ldr r0, [r7, #0x50]
_0809A474:
	adds r1, r7, #0
	bl CopyPosition
	b _0809A632
_0809A47C:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0809A48C
	b _0809A632
_0809A48C:
	movs r0, #4
	strb r0, [r7, #0xe]
	ldrb r0, [r7, #0xf]
	adds r0, #1
	strb r0, [r7, #0xf]
	adds r0, r7, #0
	adds r0, #0x84
	str r0, [sp, #4]
	ldrb r1, [r7, #0xf]
	lsls r0, r1, #5
	subs r0, r0, r1
	ldr r2, [sp, #4]
	ldr r1, [r2]
	subs r1, r1, r0
	mov sl, r1
	mov r0, sl
	str r0, [sp]
	adds r1, r7, #0
	adds r1, #0x82
	str r1, [sp, #8]
	ldrh r0, [r1]
	adds r2, r7, #0
	adds r2, #0x7e
	str r2, [sp, #0xc]
	strh r0, [r2]
	ldrh r0, [r1]
	subs r1, #8
	str r1, [sp, #0x10]
	strh r0, [r1]
	movs r2, #0x80
	adds r2, r2, r7
	mov sb, r2
	ldrb r0, [r7, #0xf]
	lsls r0, r0, #4
	ldrh r1, [r2]
	subs r1, r1, r0
	movs r0, #0x7c
	adds r0, r0, r7
	mov r8, r0
	strh r1, [r0]
	adds r4, r7, #0
	adds r4, #0x78
	strh r1, [r4]
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	ldrh r1, [r4]
	ldrb r3, [r7, #0xb]
	mov r2, sl
	bl sub_0809A6F8
	adds r5, r0, #0
	ldrb r6, [r7, #0xf]
	ldr r2, [sp, #4]
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	str r2, [sp, #0x30]
	mov r0, sb
	str r0, [sp, #0x34]
	mov r1, r8
	str r1, [sp, #0x2c]
	str r4, [sp, #0x24]
	cmp r6, #0
	beq _0809A568
	ldr r2, [sp, #0x28]
	str r2, [sp, #0x14]
	mov sb, r4
	ldr r0, [sp, #0x30]
	mov r8, r0
	adds r4, r1, #0
_0809A51E:
	ldr r1, [sp, #0x14]
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	mov r2, sb
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	ldr r0, [sp]
	adds r0, #0x1e
	str r0, [sp]
	ldrh r0, [r1]
	ldrh r1, [r2]
	ldrb r3, [r7, #0xb]
	ldr r2, [sp]
	bl sub_0809A6F8
	adds r5, r5, r0
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
	movs r2, #0x20
	add sl, r2
	ldrh r0, [r1]
	ldrh r1, [r4]
	ldrb r3, [r7, #0xb]
	mov r2, sl
	bl sub_0809A6F8
	adds r5, r5, r0
	subs r6, #1
	cmp r6, #0
	bne _0809A51E
_0809A568:
	ldrb r1, [r7, #0xf]
	lsls r0, r1, #5
	subs r0, r0, r1
	ldr r2, [sp, #0x20]
	ldr r1, [r2]
	adds r1, r1, r0
	mov sl, r1
	mov r0, sl
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	ldr r2, [sp, #0x30]
	strh r0, [r2]
	ldrh r0, [r1]
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	ldrb r0, [r7, #0xf]
	lsls r0, r0, #4
	ldr r2, [sp, #0x34]
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, [sp, #0x2c]
	strh r0, [r1]
	ldr r2, [sp, #0x24]
	strh r0, [r2]
	ldr r1, [sp, #0x28]
	ldrh r0, [r1]
	ldrh r1, [r2]
	ldrb r3, [r7, #0xb]
	mov r2, sl
	bl sub_0809A6F8
	adds r5, r5, r0
	ldrb r0, [r7, #0xf]
	subs r6, r0, #1
	cmp r6, #0
	beq _0809A610
	ldr r2, [sp, #0x28]
	str r2, [sp, #0x18]
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r1, [sp, #0x30]
	mov r8, r1
	ldr r4, [sp, #0x2c]
_0809A5C0:
	ldr r2, [sp, #0x18]
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	mov r1, sb
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	ldr r2, [sp]
	subs r2, #0x20
	str r2, [sp]
	ldr r1, [sp, #0x18]
	ldrh r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	ldrb r3, [r7, #0xb]
	ldr r2, [sp]
	bl sub_0809A6F8
	adds r5, r5, r0
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	ldrh r0, [r4]
	subs r0, #0x10
	strh r0, [r4]
	movs r2, #0x1e
	rsbs r2, r2, #0
	add sl, r2
	ldrh r0, [r1]
	ldrh r1, [r4]
	ldrb r3, [r7, #0xb]
	mov r2, sl
	bl sub_0809A6F8
	adds r5, r5, r0
	subs r6, #1
	cmp r6, #0
	bne _0809A5C0
_0809A610:
	cmp r5, #0
	bne _0809A632
	b _0809A38E
_0809A616:
	bl sub_08078B48
	ldr r0, [r7, #0x78]
	subs r0, #1
	str r0, [r7, #0x78]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809A632
	ldr r1, _0809A640 @ =gRoomControls
	ldr r0, _0809A644 @ =gPlayerEntity
	str r0, [r1, #0x30]
	bl DeleteThisEntity
_0809A632:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809A640: .4byte gRoomControls
_0809A644: .4byte gPlayerEntity
	.syntax divided
