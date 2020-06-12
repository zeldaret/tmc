	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803A154
sub_0803A154: @ 0x0803A154
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803A16C @ =gUnk_080CFC14
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803A16C: .4byte gUnk_080CFC14

	thumb_func_start sub_0803A170
sub_0803A170: @ 0x0803A170
	push {lr}
	ldr r2, _0803A184 @ =gUnk_080CFC2C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803A184: .4byte gUnk_080CFC2C

	thumb_func_start sub_0803A188
sub_0803A188: @ 0x0803A188
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xa]
	cmp r3, #1
	bhi _0803A23E
	ldrb r0, [r4, #0xc]
	cmp r0, #0x2b
	beq _0803A210
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	ble _0803A23E
	adds r0, #4
	ldrb r0, [r0]
	cmp r0, #0x95
	beq _0803A1B2
	cmp r0, #0x8e
	bne _0803A23E
_0803A1B2:
	movs r0, #0x28
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x7d
	ldrb r1, [r0]
	cmp r3, #0
	bne _0803A1CE
	movs r0, #1
	b _0803A1D0
_0803A1CE:
	movs r0, #2
_0803A1D0:
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x7d
	strb r1, [r0]
	adds r0, #3
	ldrb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r3, r0, #0
	cmp r1, #0
	bne _0803A1E8
	movs r0, #1
	b _0803A1EA
_0803A1E8:
	movs r0, #2
_0803A1EA:
	orrs r0, r2
	strb r0, [r3]
	ldr r2, [r4, #0x54]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, _0803A20C @ =0x00000127
	bl PlaySFX
	b _0803A23E
	.align 2, 0
_0803A20C: .4byte 0x00000127
_0803A210:
	ldr r2, [r4, #0x54]
	adds r3, r4, #0
	adds r3, #0x3d
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldr r2, [r4, #0x74]
	ldrb r1, [r3]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #9
	bl LoadAnimation
	ldr r0, _0803A248 @ =0x00000127
	bl PlaySFX
_0803A23E:
	ldr r1, _0803A24C @ =gUnk_080CFC14
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_0803A248: .4byte 0x00000127
_0803A24C: .4byte gUnk_080CFC14

	thumb_func_start nullsub_167
nullsub_167: @ 0x0803A250
	bx lr
	.align 2, 0

	thumb_func_start sub_0803A254
sub_0803A254: @ 0x0803A254
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803A270 @ =gUnk_080CFC3C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803B538
	pop {r4, pc}
	.align 2, 0
_0803A270: .4byte gUnk_080CFC3C

	thumb_func_start sub_0803A274
sub_0803A274: @ 0x0803A274
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803A2C8 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _0803A360
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803A2CC
	movs r0, #0x38
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0x44
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x74]
	movs r0, #0x7e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldr r0, [r4, #0x50]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r4, #0
	bl PositionRelative
	b _0803A310
	.align 2, 0
_0803A2C8: .4byte gUnk_03003DBC
_0803A2CC:
	movs r0, #0x38
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	movs r0, #0x44
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	str r1, [r4, #0x74]
	movs r0, #0x7e
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r0, [r1, #0x54]
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x50]
	ldr r2, _0803A34C @ =0xFFF00000
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r4, #0
	bl PositionRelative
_0803A310:
	ldr r0, _0803A350 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803A354
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r3, #1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x54]
	ldrb r0, [r2, #0x18]
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x18]
	adds r0, r4, #0
	movs r1, #0x10
	bl InitializeAnimation
	b _0803A360
	.align 2, 0
_0803A34C: .4byte 0xFFF00000
_0803A350: .4byte gUnk_030010A0
_0803A354:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_0803A360:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803A364
sub_0803A364: @ 0x0803A364
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A3A0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xd]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xb
	bls _0803A394
	b _0803A52C
_0803A394:
	lsls r0, r1, #2
	ldr r1, _0803A3A4 @ =_0803A3A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A3A0: .4byte gUnk_080CED6C
_0803A3A4: .4byte _0803A3A8
_0803A3A8: @ jump table
	.4byte _0803A546 @ case 0
	.4byte _0803A3D8 @ case 1
	.4byte _0803A546 @ case 2
	.4byte _0803A3FA @ case 3
	.4byte _0803A418 @ case 4
	.4byte _0803A434 @ case 5
	.4byte _0803A44E @ case 6
	.4byte _0803A468 @ case 7
	.4byte _0803A49A @ case 8
	.4byte _0803A4B2 @ case 9
	.4byte _0803A4CC @ case 10
	.4byte _0803A4FA @ case 11
_0803A3D8:
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x19]
	b _0803A546
_0803A3FA:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x19]
	b _0803A546
_0803A418:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803A42E
	b _0803A546
_0803A42E:
	movs r0, #5
	strb r0, [r4, #0xd]
	b _0803A546
_0803A434:
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803A446
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803A546
_0803A446:
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #6
	b _0803A516
_0803A44E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	movs r0, #7
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	b _0803A546
_0803A468:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #0xc
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl LoadAnimation
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
	b _0803A546
_0803A49A:
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #9
	b _0803A516
_0803A4B2:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	movs r0, #0xa
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl LoadAnimation
	b _0803A546
_0803A4CC:
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #0xf
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _0803A546
_0803A4FA:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A546
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0803A51E
	movs r0, #0xc
_0803A516:
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0803A546
_0803A51E:
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _0803A546
_0803A52C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A546
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B4D4
_0803A546:
	pop {r4, pc}

	thumb_func_start sub_0803A548
sub_0803A548: @ 0x0803A548
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B5C0
	adds r0, r4, #0
	bl sub_080042B8
	ldr r2, _0803A588 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803A586
	adds r0, r4, #0
	bl sub_0806F69C
_0803A586:
	pop {r4, pc}
	.align 2, 0
_0803A588: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A58C
sub_0803A58C: @ 0x0803A58C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A5C4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803A5C8
	adds r0, r4, #0
	bl sub_0803B59C
	b _0803A5CE
	.align 2, 0
_0803A5C4: .4byte gUnk_080CED6C
_0803A5C8:
	adds r0, r4, #0
	bl sub_0806F69C
_0803A5CE:
	pop {r4, pc}

	thumb_func_start sub_0803A5D0
sub_0803A5D0: @ 0x0803A5D0
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r3, _0803A608 @ =gUnk_080CED6C
	ldr r1, [r0, #0x50]
	ldrb r1, [r1, #0xf]
	lsrs r1, r1, #4
	adds r1, #3
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, #4
	strh r1, [r0, #0x36]
	movs r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_0803A608: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A60C
sub_0803A60C: @ 0x0803A60C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A65C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A658
	movs r0, #6
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0xa
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl LoadAnimation
_0803A658:
	pop {r4, pc}
	.align 2, 0
_0803A65C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A660
sub_0803A660: @ 0x0803A660
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	adds r5, r0, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A6A8
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803A688
	subs r0, r2, #2
	b _0803A6DC
_0803A688:
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldr r1, _0803A6A4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0803A6DE
	.align 2, 0
_0803A6A4: .4byte gLinkEntity
_0803A6A8:
	adds r0, r4, #0
	bl sub_0803B55C
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0803A6BE
	ldr r0, _0803A6E0 @ =0x00000157
	bl PlaySFX
_0803A6BE:
	ldr r2, _0803A6E4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
_0803A6DC:
	strh r0, [r4, #0x36]
_0803A6DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803A6E0: .4byte 0x00000157
_0803A6E4: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A6E8
sub_0803A6E8: @ 0x0803A6E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B610
	cmp r0, #0
	beq _0803A6FE
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _0803A71E
_0803A6FE:
	adds r0, r4, #0
	bl sub_0803B63C
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x50]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #8
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0803A71E
	strh r1, [r4, #0x32]
_0803A71E:
	pop {r4, pc}

	thumb_func_start sub_0803A720
sub_0803A720: @ 0x0803A720
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A73C
	movs r0, #9
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0x16
	bl sub_0803B8E8
_0803A73C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803A740
sub_0803A740: @ 0x0803A740
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x36]
	adds r0, #4
	strh r0, [r3, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803A77E
	movs r0, #0
	strh r0, [r3, #0x36]
	movs r0, #0xa
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xe]
	ldr r1, [r3, #0x50]
	adds r1, #0x7d
	ldrb r2, [r1]
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r1]
	adds r0, r3, #0
	movs r1, #0x13
	bl sub_0803B8E8
	movs r0, #0xa
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
_0803A77E:
	pop {pc}

	thumb_func_start sub_0803A780
sub_0803A780: @ 0x0803A780
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A7AA
	adds r1, r2, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _0803A7A6
	movs r0, #6
	b _0803A7A8
_0803A7A6:
	movs r0, #0xb
_0803A7A8:
	strb r0, [r2, #0xc]
_0803A7AA:
	pop {pc}

	thumb_func_start sub_0803A7AC
sub_0803A7AC: @ 0x0803A7AC
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803A7C4
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803A7C8
_0803A7C4:
	movs r0, #0xc
	strb r0, [r2, #0xc]
_0803A7C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803A7CC
sub_0803A7CC: @ 0x0803A7CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A808 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803A80C
	movs r0, #0xd
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl LoadAnimation
	b _0803A812
	.align 2, 0
_0803A808: .4byte gUnk_080CED6C
_0803A80C:
	adds r0, r4, #0
	bl sub_0806F69C
_0803A812:
	pop {r4, pc}

	thumb_func_start sub_0803A814
sub_0803A814: @ 0x0803A814
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A868 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A864
	movs r0, #0xe
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x12
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_0803A864:
	pop {r4, pc}
	.align 2, 0
_0803A868: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A86C
sub_0803A86C: @ 0x0803A86C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A8B4 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A8B2
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803A8B2:
	pop {r4, pc}
	.align 2, 0
_0803A8B4: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A8B8
sub_0803A8B8: @ 0x0803A8B8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r2, _0803A904 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #1
	bl LoadAnimation
	ldr r0, _0803A908 @ =0x00000153
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_0803A904: .4byte gUnk_080CED6C
_0803A908: .4byte 0x00000153

	thumb_func_start sub_0803A90C
sub_0803A90C: @ 0x0803A90C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A974 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A970
	movs r0, #0x11
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #4
	adds r0, #8
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #7
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #2
	bl LoadAnimation
_0803A970:
	pop {r4, pc}
	.align 2, 0
_0803A974: .4byte gUnk_080CED6C

	thumb_func_start sub_0803A978
sub_0803A978: @ 0x0803A978
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803A9FC @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803A9C2
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08004596
_0803A9C2:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, #0x10
	bne _0803A9F8
	movs r0, #0x12
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0xe]
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	ldr r2, [r4, #0x74]
	ldrb r0, [r2, #0x10]
	ands r1, r0
	strb r1, [r2, #0x10]
	adds r0, r4, #0
	movs r1, #8
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #3
	bl LoadAnimation
_0803A9F8:
	pop {r4, pc}
	.align 2, 0
_0803A9FC: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AA00
sub_0803AA00: @ 0x0803AA00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803AA90 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B870
	cmp r0, #0
	bne _0803AA8E
	ldrb r1, [r4, #0xa]
	movs r0, #1
	eors r0, r1
	lsls r0, r0, #4
	adds r5, r0, #0
	adds r5, #8
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803AA54
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004596
_0803AA54:
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, r5
	beq _0803AA6E
	ldr r0, _0803AA94 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _0803AA8E
_0803AA6E:
	movs r0, #0x13
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x17
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x15]
	ldr r0, _0803AA94 @ =gLinkEntity
	ldrh r1, [r0, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r4, #0x54]
	movs r1, #4
	bl LoadAnimation
_0803AA8E:
	pop {r4, r5, pc}
	.align 2, 0
_0803AA90: .4byte gUnk_080CED6C
_0803AA94: .4byte gLinkEntity

	thumb_func_start sub_0803AA98
sub_0803AA98: @ 0x0803AA98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AB0C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B870
	cmp r0, #0
	bne _0803AB0A
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803B6F4
	cmp r0, #0
	beq _0803AB0A
	movs r0, #0x14
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
	ldr r2, [r4, #0x74]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x54]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #5
	bl LoadAnimation
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
_0803AB0A:
	pop {r4, pc}
	.align 2, 0
_0803AB0C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AB10
sub_0803AB10: @ 0x0803AB10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AB58 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AB56
	movs r0, #0x15
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_0803AB56:
	pop {r4, pc}
	.align 2, 0
_0803AB58: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AB5C
sub_0803AB5C: @ 0x0803AB5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803ABB0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ABAC
	movs r0, #0x16
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x1a
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0xb
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl LoadAnimation
_0803ABAC:
	pop {r4, pc}
	.align 2, 0
_0803ABB0: .4byte gUnk_080CED6C

	thumb_func_start sub_0803ABB4
sub_0803ABB4: @ 0x0803ABB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AC18 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AC14
	movs r0, #0x17
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x10
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl LoadAnimation
_0803AC14:
	pop {r4, pc}
	.align 2, 0
_0803AC18: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AC1C
sub_0803AC1C: @ 0x0803AC1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AC54 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803AC58
	adds r0, r4, #0
	bl sub_0803B59C
	b _0803AC5E
	.align 2, 0
_0803AC54: .4byte gUnk_080CED6C
_0803AC58:
	adds r0, r4, #0
	bl sub_0806F69C
_0803AC5E:
	pop {r4, pc}

	thumb_func_start sub_0803AC60
sub_0803AC60: @ 0x0803AC60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803ACA8 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0803ACB4
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803ACAC
	movs r0, #0x19
	strb r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	b _0803ACB6
	.align 2, 0
_0803ACA8: .4byte gUnk_080CED6C
_0803ACAC:
	adds r0, r4, #0
	bl sub_0806F69C
	b _0803ACB8
_0803ACB4:
	subs r0, #1
_0803ACB6:
	strb r0, [r4, #0xe]
_0803ACB8:
	adds r0, r4, #0
	bl sub_0803B824
	pop {r4, pc}

	thumb_func_start sub_0803ACC0
sub_0803ACC0: @ 0x0803ACC0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	cmp r0, #4
	bhi _0803ACF0
	lsls r0, r0, #2
	ldr r1, _0803ACD8 @ =_0803ACDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803ACD8: .4byte _0803ACDC
_0803ACDC: @ jump table
	.4byte _0803AD02 @ case 0
	.4byte _0803AD1A @ case 1
	.4byte _0803AD4A @ case 2
	.4byte _0803AD5C @ case 3
	.4byte _0803AD74 @ case 4
_0803ACF0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADA4
	movs r0, #1
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD02:
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803ADA4
	movs r0, #2
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD1A:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803ADA4
	movs r0, #0
	strh r0, [r4, #0x36]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #8
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0803B804
	b _0803ADA4
_0803AD4A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADA4
	movs r0, #4
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD5C:
	ldrh r0, [r4, #0x36]
	subs r0, #2
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0803ADA4
	movs r0, #5
	strb r0, [r4, #0xd]
	b _0803ADA4
_0803AD74:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803ADA4
	movs r0, #0
	strh r0, [r4, #0x36]
	movs r0, #0x1a
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	movs r0, #0x1e
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r4, #0
	bl sub_0803B804
	b _0803ADAA
_0803ADA4:
	adds r0, r4, #0
	bl sub_0803B824
_0803ADAA:
	pop {r4, pc}

	thumb_func_start sub_0803ADAC
sub_0803ADAC: @ 0x0803ADAC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ADEC
	movs r0, #0x16
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x1a
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x74]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	movs r1, #0xb
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #6
	bl LoadAnimation
	bl sub_0803B798
	b _0803ADF2
_0803ADEC:
	adds r0, r4, #0
	bl sub_0803B824
_0803ADF2:
	pop {r4, pc}

	thumb_func_start sub_0803ADF4
sub_0803ADF4: @ 0x0803ADF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AE44 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AE42
	movs r0, #0x1c
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r4, #0x18]
_0803AE42:
	pop {r4, pc}
	.align 2, 0
_0803AE44: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AE48
sub_0803AE48: @ 0x0803AE48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AEAC @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803AE82
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803AEB0
_0803AE82:
	ldr r0, [r4, #0x50]
	adds r0, #0x7d
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0803AEB0
	movs r0, #0x1d
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x21
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _0803AEC0
	.align 2, 0
_0803AEAC: .4byte gUnk_080CED6C
_0803AEB0:
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	bne _0803AEC0
	adds r0, r4, #0
	bl sub_0806F69C
_0803AEC0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803AEC4
sub_0803AEC4: @ 0x0803AEC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AF14 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF10
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803AF10:
	pop {r4, pc}
	.align 2, 0
_0803AF14: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AF18
sub_0803AF18: @ 0x0803AF18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	ldr r2, _0803AF4C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	pop {r4, pc}
	.align 2, 0
_0803AF4C: .4byte gUnk_080CED6C

	thumb_func_start sub_0803AF50
sub_0803AF50: @ 0x0803AF50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF7A
	movs r0, #0x20
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x24
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #8
	bl LoadAnimation
_0803AF7A:
	pop {r4, pc}

	thumb_func_start sub_0803AF7C
sub_0803AF7C: @ 0x0803AF7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AF9A
	movs r0, #0x21
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_0803AF9A:
	pop {r4, pc}

	thumb_func_start sub_0803AF9C
sub_0803AF9C: @ 0x0803AF9C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0803AFAA
	subs r0, #1
	b _0803AFC4
_0803AFAA:
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803AFBE
	subs r0, r3, #2
	strh r0, [r2, #0x36]
	b _0803AFC6
_0803AFBE:
	movs r0, #0x22
	strb r0, [r2, #0xc]
	movs r0, #0xa
_0803AFC4:
	strb r0, [r2, #0xe]
_0803AFC6:
	pop {pc}

	thumb_func_start sub_0803AFC8
sub_0803AFC8: @ 0x0803AFC8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803AFDC
	movs r0, #0x23
	strb r0, [r1, #0xc]
_0803AFDC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803AFE0
sub_0803AFE0: @ 0x0803AFE0
	push {lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x36]
	movs r2, #0x36
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _0803AFF4
	adds r0, r1, #4
	strh r0, [r3, #0x36]
	b _0803B018
_0803AFF4:
	movs r2, #0
	movs r0, #0x24
	strb r0, [r3, #0xc]
	movs r0, #0xf0
	strb r0, [r3, #0xe]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #3
	strb r0, [r1]
	strh r2, [r3, #0x36]
	movs r0, #0xa0
	movs r1, #0
	bl sub_08080964
	movs r0, #0xac
	lsls r0, r0, #1
	bl PlaySFX
_0803B018:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B01C
sub_0803B01C: @ 0x0803B01C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803B032
	movs r0, #0x25
	strb r0, [r2, #0xc]
	b _0803B048
_0803B032:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x46
	bls _0803B048
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0803B048
	adds r0, r2, #0
	bl sub_0803B724
_0803B048:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B04C
sub_0803B04C: @ 0x0803B04C
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803B064
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803B070
_0803B064:
	movs r0, #0x26
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x54]
	movs r1, #6
	bl LoadAnimation
_0803B070:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B074
sub_0803B074: @ 0x0803B074
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803B0D0 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B55C
	ldr r0, [r4, #0x54]
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B0CC
	movs r0, #0x27
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x2b
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl LoadAnimation
_0803B0CC:
	pop {r4, pc}
	.align 2, 0
_0803B0D0: .4byte gUnk_080CED6C

	thumb_func_start sub_0803B0D4
sub_0803B0D4: @ 0x0803B0D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B0FE
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0803B59C
_0803B0FE:
	pop {r4, pc}

	thumb_func_start sub_0803B100
sub_0803B100: @ 0x0803B100
	push {lr}
	adds r2, r0, #0
	movs r0, #0x29
	strb r0, [r2, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B11C
	ldr r0, _0803B118 @ =gUnk_080FD364
	b _0803B11E
	.align 2, 0
_0803B118: .4byte gUnk_080FD364
_0803B11C:
	ldr r0, _0803B13C @ =gUnk_080FD374
_0803B11E:
	str r0, [r2, #0x48]
	ldr r0, [r2, #0x74]
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r0, #0x74
	movs r1, #0x20
	strb r1, [r0]
	ldr r0, [r2, #0x54]
	movs r1, #9
	bl LoadAnimation
	ldr r0, _0803B140 @ =0x0000014F
	bl PlaySFX
	pop {pc}
	.align 2, 0
_0803B13C: .4byte gUnk_080FD374
_0803B140: .4byte 0x0000014F

	thumb_func_start sub_0803B144
sub_0803B144: @ 0x0803B144
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0803B178
	movs r0, #0x2a
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x16
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0803B8E8
	movs r0, #8
	movs r1, #0
	bl sub_08080964
_0803B178:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B17C
sub_0803B17C: @ 0x0803B17C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B1B4
	movs r0, #0x2b
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x18
	strb r0, [r1]
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x39
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
_0803B1B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B1B8
sub_0803B1B8: @ 0x0803B1B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803B1D4
	adds r0, r5, #0
	bl sub_08004274
	ldr r0, [r5, #0x54]
	bl sub_080042B8
_0803B1D4:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0xf4
	bhi _0803B2B8
	movs r0, #0x32
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x7e
	ldr r0, _0803B284 @ =0x000005DC
	strh r0, [r1]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B23A
	ldr r0, [r5, #0x48]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldr r0, [r5, #0x48]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0803B23A:
	movs r0, #0
	movs r1, #0x5e
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B268
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #0x90
	strb r0, [r4, #0x15]
	ldr r0, [r5, #0x48]
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_0803B268:
	ldr r4, [r5, #0x74]
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x40
	strb r0, [r1]
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0803B288
	movs r0, #4
	b _0803B28A
	.align 2, 0
_0803B284: .4byte 0x000005DC
_0803B288:
	movs r0, #8
_0803B28A:
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0xc
	bne _0803B2CE
	movs r0, #0xb
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x74]
	adds r0, #0x7e
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r0, [r4, #0x78]
	adds r0, #0x7e
	strh r1, [r0]
	b _0803B2CE
_0803B2B8:
	adds r1, r5, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803B2CE
	adds r0, r5, #0
	bl sub_0803B6A4
_0803B2CE:
	pop {r4, r5, pc}

	thumb_func_start sub_0803B2D0
sub_0803B2D0: @ 0x0803B2D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B30A
	movs r2, #0
	movs r0, #0x2d
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x31
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x74]
	movs r1, #2
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x74
	strb r2, [r1]
	adds r1, #4
	strh r2, [r1]
	movs r1, #3
	bl InitializeAnimation
_0803B30A:
	pop {r4, pc}

	thumb_func_start sub_0803B30C
sub_0803B30C: @ 0x0803B30C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x74]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B334
	movs r0, #0x2e
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #0x13
	bl sub_0803B8E8
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0803B334:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B338
sub_0803B338: @ 0x0803B338
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x36]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803B350
	subs r0, r3, #1
	strh r0, [r2, #0x36]
	b _0803B358
_0803B350:
	movs r0, #0x2f
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
_0803B358:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B35C
sub_0803B35C: @ 0x0803B35C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0803B394 @ =gUnk_080CED6C
	ldr r0, [r3, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r3, #0x36]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B390
	movs r0, #0x30
	strb r0, [r3, #0xc]
_0803B390:
	pop {pc}
	.align 2, 0
_0803B394: .4byte gUnk_080CED6C

	thumb_func_start sub_0803B398
sub_0803B398: @ 0x0803B398
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803B3E8 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B4E4
	cmp r0, #0
	beq _0803B3EC
	movs r0, #0x31
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #0x35
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl LoadAnimation
	b _0803B3F2
	.align 2, 0
_0803B3E8: .4byte gUnk_080CED6C
_0803B3EC:
	adds r0, r4, #0
	bl sub_0806F69C
_0803B3F2:
	pop {r4, pc}

	thumb_func_start sub_0803B3F4
sub_0803B3F4: @ 0x0803B3F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803B440 @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B47C
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x17
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803B448
	ldr r0, _0803B444 @ =gUnk_080FD35C
	b _0803B44A
	.align 2, 0
_0803B440: .4byte gUnk_080CED6C
_0803B444: .4byte gUnk_080FD35C
_0803B448:
	ldr r0, _0803B468 @ =gUnk_080FD36C
_0803B44A:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	ldrb r2, [r4, #0xa]
	movs r1, #2
	cmp r2, #0
	bne _0803B458
	movs r1, #1
_0803B458:
	adds r0, #0x80
	ldrb r3, [r0]
	adds r5, r0, #0
	cmp r2, #0
	bne _0803B46C
	movs r0, #0x10
	b _0803B46E
	.align 2, 0
_0803B468: .4byte gUnk_080FD36C
_0803B46C:
	movs r0, #0x20
_0803B46E:
	orrs r1, r0
	adds r0, r3, #0
	bics r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_0803B59C
_0803B47C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803B480
sub_0803B480: @ 0x0803B480
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0803B4B6
	movs r0, #0x2d
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _0803B4B6
	ldr r0, _0803B4D0 @ =gUnk_080CFD08
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0
	bl PositionRelative
_0803B4B6:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803B4CC
	adds r0, r4, #0
	bl sub_0803B6A4
_0803B4CC:
	pop {r4, pc}
	.align 2, 0
_0803B4D0: .4byte gUnk_080CFD08

	thumb_func_start sub_0803B4D4
sub_0803B4D4: @ 0x0803B4D4
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x10
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B4E4
sub_0803B4E4: @ 0x0803B4E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldr r1, _0803B52C @ =gUnk_080CFD0A
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r3, r0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r6, r0, #0
	adds r6, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #2
	bl sub_0806FCB8
	cmp r0, #0
	bne _0803B530
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	movs r0, #0
	b _0803B536
	.align 2, 0
_0803B52C: .4byte gUnk_080CFD0A
_0803B530:
	strh r5, [r4, #0x2e]
	strh r6, [r4, #0x32]
	movs r0, #1
_0803B536:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803B538
sub_0803B538: @ 0x0803B538
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	ldr r3, _0803B554 @ =0xFFFF0000
	movs r2, #0
	bl PositionRelative
	ldr r1, [r4, #0x74]
	ldr r3, _0803B558 @ =0xFFFE0000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	pop {r4, pc}
	.align 2, 0
_0803B554: .4byte 0xFFFF0000
_0803B558: .4byte 0xFFFE0000

	thumb_func_start sub_0803B55C
sub_0803B55C: @ 0x0803B55C
	push {r4, r5, lr}
	ldr r5, [r0, #0x74]
	ldr r4, [r0, #0x54]
	adds r0, r4, #0
	bl sub_080042B8
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B588
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803B59A
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
	b _0803B59A
_0803B588:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B59A
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
_0803B59A:
	pop {r4, r5, pc}

	thumb_func_start sub_0803B59C
sub_0803B59C: @ 0x0803B59C
	push {lr}
	movs r3, #2
	strb r3, [r0, #0xc]
	ldr r2, [r0, #0x50]
	adds r1, r2, #0
	adds r1, #0x7d
	ldrb r1, [r1]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0803B5B6
	movs r0, #1
	orrs r1, r0
	b _0803B5B8
_0803B5B6:
	orrs r1, r3
_0803B5B8:
	adds r0, r2, #0
	adds r0, #0x7d
	strb r1, [r0]
	pop {pc}

	thumb_func_start sub_0803B5C0
sub_0803B5C0: @ 0x0803B5C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803B5E8 @ =gLinkEntity
	bl sub_080045C4
	adds r2, r0, #0
	cmp r2, #9
	bhi _0803B5D2
	movs r2, #0xa
_0803B5D2:
	cmp r2, #0x16
	bls _0803B5D8
	movs r2, #0x16
_0803B5D8:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0803B5F0
	ldr r1, _0803B5EC @ =gUnk_080CFD0C
	adds r0, r2, #0
	subs r0, #0xa
	b _0803B5F6
	.align 2, 0
_0803B5E8: .4byte gLinkEntity
_0803B5EC: .4byte gUnk_080CFD0C
_0803B5F0:
	ldr r1, _0803B60C @ =gUnk_080CFD0C
	movs r0, #0x16
	subs r0, r0, r2
_0803B5F6:
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803B60A
	adds r0, r4, #0
	bl InitializeAnimation
_0803B60A:
	pop {r4, pc}
	.align 2, 0
_0803B60C: .4byte gUnk_080CFD0C

	thumb_func_start sub_0803B610
sub_0803B610: @ 0x0803B610
	push {r4, lr}
	ldr r4, _0803B634 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _0803B638 @ =gUnk_080CFD19
	ldrb r2, [r0, #0xa]
	adds r2, r2, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	subs r2, #0xc
	movs r3, #8
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803B634: .4byte gLinkEntity
_0803B638: .4byte gUnk_080CFD19

	thumb_func_start sub_0803B63C
sub_0803B63C: @ 0x0803B63C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0803B680 @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldr r1, _0803B684 @ =gUnk_080CFD19
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r5, r0, #0
	subs r5, #0xc
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B688
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4
	strb r0, [r4, #0x15]
	b _0803B6A0
	.align 2, 0
_0803B680: .4byte gLinkEntity
_0803B684: .4byte gUnk_080CFD19
_0803B688:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_080045D4

	thumb_func_start sub_0803B698
sub_0803B698: @ 0x0803B698
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0803B6A0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803B6A4
sub_0803B6A4: @ 0x0803B6A4
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x2c
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x14
	strb r0, [r1]
	ldr r3, [r2, #0x50]
	adds r0, r3, #0
	adds r0, #0x80
	ldrb r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B6C6
	movs r0, #0x10
	b _0803B6C8
_0803B6C6:
	movs r0, #0x20
_0803B6C8:
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x80
	strb r1, [r0]
	ldrb r3, [r0]
	ldrb r1, [r2, #0xa]
	adds r4, r0, #0
	cmp r1, #0
	bne _0803B6E0
	movs r0, #5
	rsbs r0, r0, #0
	b _0803B6E4
_0803B6E0:
	movs r0, #9
	rsbs r0, r0, #0
_0803B6E4:
	ands r0, r3
	strb r0, [r4]
	adds r0, r2, #0
	movs r1, #0x17
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803B6F4
sub_0803B6F4: @ 0x0803B6F4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0803B710
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _0803B71E
_0803B70C:
	movs r0, #1
	b _0803B720
_0803B710:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r1, [r0]
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _0803B70C
_0803B71E:
	movs r0, #0
_0803B720:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803B724
sub_0803B724: @ 0x0803B724
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #2
	bhi _0803B78E
	adds r6, r5, #0
	adds r6, #0x84
	ldrb r0, [r6]
	cmp r0, #0
	beq _0803B78E
	movs r0, #7
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0803B78E
	movs r0, #1
	strb r0, [r4, #0xb]
	bl Random
	ldr r2, _0803B790 @ =gUnk_080CFD1B
	ldrb r1, [r5, #0xa]
	adds r1, r1, r2
	movs r3, #0x70
	adds r2, r0, #0
	ands r2, r3
	ldrb r1, [r1]
	adds r2, r2, r1
	ldr r3, _0803B794 @ =gRoomControls
	ldrh r1, [r3, #6]
	adds r1, r1, r2
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x5c
	ldrh r3, [r3, #8]
	adds r1, r1, r3
	strh r1, [r4, #0x32]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08016A30
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
_0803B78E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803B790: .4byte gUnk_080CFD1B
_0803B794: .4byte gRoomControls

	thumb_func_start sub_0803B798
sub_0803B798: @ 0x0803B798
	ldr r2, _0803B7F4 @ =gLinkState
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	ldr r1, _0803B7F8 @ =0x0000FFEF
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r3, _0803B7FC @ =gLinkEntity
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r3, #0x20]
	movs r2, #0
	ldr r0, _0803B800 @ =0x0000FFF6
	strh r0, [r3, #0x36]
	movs r0, #0x10
	strb r0, [r3, #0x15]
	movs r0, #4
	strb r0, [r3, #0x14]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803B7F4: .4byte gLinkState
_0803B7F8: .4byte 0x0000FFEF
_0803B7FC: .4byte gLinkEntity
_0803B800: .4byte 0x0000FFF6

	thumb_func_start sub_0803B804
sub_0803B804: @ 0x0803B804
	push {r4, lr}
	ldr r4, _0803B820 @ =gLinkEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x1e
	strb r0, [r1]
	subs r0, #0x22
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	pop {r4, pc}
	.align 2, 0
_0803B820: .4byte gLinkEntity

	thumb_func_start sub_0803B824
sub_0803B824: @ 0x0803B824
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08077B2C
	ldr r2, _0803B864 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r4, _0803B868 @ =gLinkEntity
	ldr r1, _0803B86C @ =gUnk_080CFD1D
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #1
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfa
	strb r0, [r1]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0803B864: .4byte gLinkState
_0803B868: .4byte gLinkEntity
_0803B86C: .4byte gUnk_080CFD1D

	thumb_func_start sub_0803B870
sub_0803B870: @ 0x0803B870
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803B8DC
	ldr r0, _0803B8D4 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B8DC
	movs r0, #0x18
	strb r0, [r3, #0xc]
	movs r0, #0x44
	strb r0, [r3, #0xe]
	ldrb r1, [r3, #0x18]
	subs r0, #0x48
	ands r0, r1
	strb r0, [r3, #0x18]
	ldr r1, _0803B8D8 @ =gLinkEntity
	ldrb r2, [r1, #0x10]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0x10]
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_0803B824
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #7
	bl LoadAnimation
	movs r0, #0xb7
	lsls r0, r0, #1
	bl PlaySFX
	movs r0, #1
	b _0803B8E6
	.align 2, 0
_0803B8D4: .4byte gLinkState
_0803B8D8: .4byte gLinkEntity
_0803B8DC:
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #0
_0803B8E6:
	pop {r4, pc}

	thumb_func_start sub_0803B8E8
sub_0803B8E8: @ 0x0803B8E8
	ldr r2, [r0, #0x54]
	adds r2, #0x3f
	strb r1, [r2]
	ldr r2, [r0, #0x74]
	adds r0, r2, #0
	adds r0, #0x3f
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0803B8F8
sub_0803B8F8: @ 0x0803B8F8
	push {lr}
	ldr r2, _0803B90C @ =gUnk_080CFD20
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803B90C: .4byte gUnk_080CFD20

	thumb_func_start sub_0803B910
sub_0803B910: @ 0x0803B910
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803B940 @ =gUnk_030010A0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B944
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x74
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803BA8C
	b _0803B950
	.align 2, 0
_0803B940: .4byte gUnk_030010A0
_0803B944:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	movs r0, #0x80
	strb r0, [r1]
_0803B950:
	ldrb r1, [r4, #0xa]
	subs r1, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl sub_0806FA6C
	pop {r4, pc}

	thumb_func_start sub_0803B978
sub_0803B978: @ 0x0803B978
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #5
	bhi _0803BA34
	lsls r0, r0, #2
	ldr r1, _0803B98C @ =_0803B990
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B98C: .4byte _0803B990
_0803B990: @ jump table
	.4byte _0803BA66 @ case 0
	.4byte _0803B9A8 @ case 1
	.4byte _0803B9C0 @ case 2
	.4byte _0803BA46 @ case 3
	.4byte _0803BA14 @ case 4
	.4byte _0803BA40 @ case 5
_0803B9A8:
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x74
	strb r1, [r0]
	ldr r0, _0803BA10 @ =0x000001A9
	bl PlaySFX
_0803B9C0:
	ldrb r1, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0803BA8C
	adds r0, r4, #0
	adds r0, #0x75
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r1, [r0]
	ldrb r0, [r5]
	orrs r0, r1
	cmp r0, #0
	bne _0803B9E0
	ldr r0, _0803BA10 @ =0x000001A9
	bl PlaySFX
_0803B9E0:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803BA66
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BA66
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	subs r0, #4
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0803BA66
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x50]
	movs r0, #3
	strb r0, [r1, #0xd]
	strb r0, [r4, #0xd]
	b _0803BA66
	.align 2, 0
_0803BA10: .4byte 0x000001A9
_0803BA14:
	movs r0, #5
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	b _0803BA46
_0803BA34:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	subs r0, #0xf
	ands r0, r1
	strb r0, [r4, #0x19]
_0803BA40:
	adds r0, r4, #0
	bl sub_08004274
_0803BA46:
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803BA8C
	adds r1, r4, #0
	adds r1, #0x75
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r0, r1
	cmp r0, #0
	bne _0803BA66
	ldr r0, _0803BA68 @ =0x000001A9
	bl PlaySFX
_0803BA66:
	pop {r4, r5, pc}
	.align 2, 0
_0803BA68: .4byte 0x000001A9

	thumb_func_start sub_0803BA6C
sub_0803BA6C: @ 0x0803BA6C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl sub_0803BA8C
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803BA80
sub_0803BA80: @ 0x0803BA80
	push {lr}
	movs r1, #0xa
	bl sub_0803BA8C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803BA8C
sub_0803BA8C: @ 0x0803BA8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r4, r6, #0
	adds r4, #0x74
	ldrb r3, [r4]
	movs r2, #0xe0
	ands r2, r3
	cmp r2, #0
	bne _0803BAEC
	cmp r3, #0
	bne _0803BAD2
	adds r2, r6, #0
	adds r2, #0x75
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0803BABA
	strb r1, [r2]
_0803BABA:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0803BAC8
	ldr r1, _0803BAC4 @ =gUnk_080CFD30
	b _0803BACA
	.align 2, 0
_0803BAC4: .4byte gUnk_080CFD30
_0803BAC8:
	ldr r1, _0803BAE8 @ =gUnk_080CFD44
_0803BACA:
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BAD2:
	adds r2, r6, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	cmp r5, r0
	bhi _0803BB18
	movs r0, #0
	strb r0, [r2]
	b _0803BB18
	.align 2, 0
_0803BAE8: .4byte gUnk_080CFD44
_0803BAEC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0803BB18
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r4]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0803BB0C
	ldr r1, _0803BB08 @ =gUnk_080CFD58
	b _0803BB0E
	.align 2, 0
_0803BB08: .4byte gUnk_080CFD58
_0803BB0C:
	ldr r1, _0803BB78 @ =gUnk_080CFD5C
_0803BB0E:
	ldrb r0, [r6, #0xa]
	subs r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BB18:
	cmp r1, #0
	beq _0803BB74
	adds r0, r6, #0
	bl sub_0801D2B4
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r5, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r4, [r5, #0x1a]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r4, #0x1a]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r3, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #0x1a]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1a]
_0803BB74:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803BB78: .4byte gUnk_080CFD5C
