	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803D0C8
sub_0803D0C8: @ 0x0803D0C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0803D0F4
	cmp r0, #1
	bgt _0803D0DC
	cmp r0, #0
	beq _0803D0E6
	b _0803D12C
_0803D0DC:
	cmp r0, #2
	beq _0803D104
	cmp r0, #3
	beq _0803D11C
	b _0803D12C
_0803D0E6:
	adds r0, r4, #0
	bl sub_0803DFBC
	ldr r0, _0803D0F0 @ =gUnk_080D0470
	b _0803D106
	.align 2, 0
_0803D0F0: .4byte gUnk_080D0470
_0803D0F4:
	adds r0, r4, #0
	bl sub_0803DC58
	ldr r0, _0803D100 @ =gUnk_080D0490
	b _0803D106
	.align 2, 0
_0803D100: .4byte gUnk_080D0490
_0803D104:
	ldr r0, _0803D118 @ =gUnk_080D0498
_0803D106:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803D12C
	.align 2, 0
_0803D118: .4byte gUnk_080D0498
_0803D11C:
	ldr r0, _0803D130 @ =gUnk_080D04A0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803D12C:
	pop {r4, pc}
	.align 2, 0
_0803D130: .4byte gUnk_080D04A0

	thumb_func_start sub_0803D134
sub_0803D134: @ 0x0803D134
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	beq _0803D146
	bl DeleteThisEntity
_0803D146:
	adds r0, r5, #0
	bl sub_0804A720
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _0803D158
	b _0803D25A
_0803D158:
	ldr r0, _0803D25C @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x41
	bhi _0803D25A
	movs r0, #0
	bl ClearRoomFlag
	movs r2, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0xff
	strb r0, [r1]
	strb r2, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x76
	strb r2, [r0]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x15]
	adds r3, r5, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #7
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	str r2, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x86
	strb r2, [r0]
	adds r1, #5
	movs r0, #0x30
	strb r0, [r1]
	subs r1, #1
	subs r0, #0x31
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x87
	strb r2, [r0]
	subs r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x30]
	str r0, [r5, #0x7c]
	movs r0, #0x4a
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r6, #0
_0803D1E2:
	movs r0, #0x54
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	adds r0, #0x79
	strb r6, [r0]
	adds r6, #1
	cmp r6, #5
	ble _0803D1E2
	movs r6, #0
_0803D1FA:
	movs r0, #0x4a
	movs r1, #3
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	strb r6, [r4, #0xe]
	adds r6, #1
	cmp r6, #3
	ble _0803D1FA
	movs r6, #0
_0803D210:
	movs r0, #0x54
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	str r5, [r4, #0x50]
	movs r0, #1
	adds r2, r6, #0
	ands r2, r0
	lsls r2, r2, #6
	ldrb r0, [r4, #0x18]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	lsls r1, r6, #1
	ldr r0, _0803D260 @ =gUnk_080D04A8
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r6, #1
	cmp r6, #1
	ble _0803D210
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0803D25A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803D25C: .4byte gUnk_03003DBC
_0803D260: .4byte gUnk_080D04A8

	thumb_func_start sub_0803D264
sub_0803D264: @ 0x0803D264
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803D318
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r7, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _0803D27E
	b _0803D400
_0803D27E:
	adds r5, r4, #0
	adds r5, #0x74
	ldrb r1, [r5]
	movs r0, #0x70
	ands r0, r1
	cmp r0, #0
	bne _0803D2E4
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0803D2DE
	adds r0, r4, #0
	bl sub_0803DD78
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D2B0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r6, [r5]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _0803D2D6
_0803D2B0:
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D2C4
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D2D6
_0803D2C4:
	bl Random
	movs r1, #0x80
	ands r1, r0
	lsrs r1, r1, #3
	movs r0, #8
	orrs r1, r0
	strb r1, [r4, #0x15]
	b _0803D400
_0803D2D6:
	ldrb r0, [r4, #0x15]
	orrs r0, r7
	strb r0, [r4, #0x15]
	b _0803D400
_0803D2DE:
	movs r0, #2
	strb r0, [r4, #0xe]
	b _0803D400
_0803D2E4:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
	strb r6, [r5]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r7
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0803D400
_0803D318:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r6, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0803D3BA
	adds r0, r4, #0
	bl sub_0803DEE0
	cmp r0, #1
	beq _0803D366
	cmp r0, #1
	blo _0803D344
	cmp r0, #2
	beq _0803D384
	cmp r0, #3
	beq _0803D374
	b _0803D3BA
_0803D344:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _0803D3BA
_0803D366:
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	strb r5, [r4, #0xe]
	b _0803D3B4
_0803D374:
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _0803D3B4
_0803D384:
	adds r0, r4, #0
	adds r0, #0x74
	strb r5, [r0]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D3A2
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D3B4
_0803D3A2:
	bl Random
	movs r1, #0x80
	ands r1, r0
	lsrs r1, r1, #3
	movs r0, #8
	orrs r1, r0
	strb r1, [r4, #0x15]
	b _0803D3BA
_0803D3B4:
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
_0803D3BA:
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0803D400
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803D3FA
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _0803D3F4
	cmp r0, #0x10
	bgt _0803D3E6
	cmp r0, #0
	beq _0803D3EE
	b _0803D3FA
_0803D3E6:
	cmp r0, #0x20
	beq _0803D3F4
	cmp r0, #0x30
	bne _0803D3FA
_0803D3EE:
	ldrh r0, [r4, #0x32]
	adds r0, #1
	b _0803D3F8
_0803D3F4:
	ldrh r0, [r4, #0x32]
	subs r0, #1
_0803D3F8:
	strh r0, [r4, #0x32]
_0803D3FA:
	adds r0, r4, #0
	bl sub_080AEFB4
_0803D400:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803D408
sub_0803D408: @ 0x0803D408
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #1
	beq _0803D458
	cmp r0, #1
	bgt _0803D420
	cmp r0, #0
	beq _0803D42A
	b _0803D558
_0803D420:
	cmp r0, #2
	beq _0803D478
	cmp r0, #3
	beq _0803D4FC
	b _0803D558
_0803D42A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D438
	b _0803D558
_0803D438:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl InitAnimationForceUpdate
	ldr r0, _0803D454 @ =0x0000019B
	bl PlaySFX
	b _0803D558
	.align 2, 0
_0803D454: .4byte 0x0000019B
_0803D458:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D558
	movs r0, #2
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	b _0803D558
_0803D478:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D558
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0803E028
	cmp r0, #0
	bne _0803D4D0
	bl Random
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r1, [r5]
	adds r1, #1
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r5]
	ldrb r0, [r5]
	movs r1, #5
	bl __modsi3
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r0, _0803D4F4 @ =gUnk_080D04AC
	adds r1, r1, r0
	ldr r2, _0803D4F8 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r3, [r2, #6]
	adds r0, r0, r3
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r0, #0x10
	strh r0, [r4, #0x32]
_0803D4D0:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	movs r0, #0xf5
	bl PlaySFX
	b _0803D558
	.align 2, 0
_0803D4F4: .4byte gUnk_080D04AC
_0803D4F8: .4byte gRoomControls
_0803D4FC:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D558
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #4
	bls _0803D52E
	ldr r1, _0803D544 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
_0803D52E:
	adds r1, r4, #0
	adds r1, #0x77
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D548
	movs r0, #1
	strb r0, [r4, #0xc]
	b _0803D54E
	.align 2, 0
_0803D544: .4byte gLinkEntity
_0803D548:
	movs r0, #0
	strb r0, [r2]
	movs r0, #0x10
_0803D54E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0803D558:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803D560
sub_0803D560: @ 0x0803D560
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #2
	beq _0803D62A
	cmp r0, #2
	bgt _0803D57C
	cmp r0, #0
	beq _0803D5BC
	cmp r0, #1
	beq _0803D5F8
	b _0803D650
_0803D57C:
	cmp r0, #0xfe
	beq _0803D590
	cmp r0, #0xfe
	bgt _0803D58A
	cmp r0, #3
	beq _0803D646
	b _0803D650
_0803D58A:
	cmp r0, #0xff
	beq _0803D598
	b _0803D650
_0803D590:
	movs r0, #0
	strb r0, [r2]
	movs r0, #1
	b _0803D64E
_0803D598:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803D5AC
	ldr r0, [r4, #0x34]
	ldr r1, _0803D5B8 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x34]
_0803D5AC:
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	bne _0803D650
	movs r0, #0xfe
	strb r0, [r2]
	b _0803D650
	.align 2, 0
_0803D5B8: .4byte 0xFFFFE000
_0803D5BC:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D650
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	beq _0803D5E0
	movs r1, #0x14
_0803D5E0:
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	adds r0, #1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x80
	strb r0, [r1]
	b _0803D650
_0803D5F8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D650
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x75
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803D620
	movs r0, #0xd8
	lsls r0, r0, #1
	bl PlaySFX
_0803D620:
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _0803D650
_0803D62A:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803D650
	movs r0, #3
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0803D650
_0803D646:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
_0803D64E:
	strb r0, [r4, #0xe]
_0803D650:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_0803D658
sub_0803D658: @ 0x0803D658
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D68E
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	strb r2, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0803D6EE
_0803D68E:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803D6EE
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r5, r4, #0
	adds r5, #0x84
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0803D6C8
	ldr r1, _0803D6F8 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #2
	movs r1, #0x1c
	ands r0, r1
	ldr r1, _0803D6FC @ =gUnk_080D04C0
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5]
	movs r0, #0
	strb r0, [r4, #0xf]
_0803D6C8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xf
	bhi _0803D6EE
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r1, #0x1a
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _0803D6EE
	ldrb r0, [r4, #0xf]
	strb r0, [r1, #0xf]
	str r4, [r1, #0x50]
	ldrh r0, [r4, #0x36]
	strh r0, [r1, #0x36]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
_0803D6EE:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0803D6F8: .4byte gLinkEntity
_0803D6FC: .4byte gUnk_080D04C0

	thumb_func_start sub_0803D700
sub_0803D700: @ 0x0803D700
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D720
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0803D82E
_0803D720:
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r6, r2, #0
	cmp r0, #1
	beq _0803D764
	cmp r0, #1
	bgt _0803D736
	cmp r0, #0
	beq _0803D744
	b _0803D73E
_0803D736:
	cmp r0, #2
	beq _0803D78E
	cmp r0, #3
	beq _0803D7FA
_0803D73E:
	adds r5, r4, #0
	adds r5, #0x87
	b _0803D81C
_0803D744:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	bne _0803D81C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _0803D81C
_0803D764:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	beq _0803D81C
	movs r0, #2
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r4, #0xf]
	movs r0, #0xf4
	bl PlaySFX
	b _0803D81C
_0803D78E:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r0, #0
	bne _0803D81C
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803D7E4
	ldrb r0, [r5]
	cmp r0, #3
	bhi _0803D7E4
	bl Random
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803D7E4
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r4, #0xf]
	ldr r1, _0803D7E0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	movs r1, #0x10
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	b _0803D81A
	.align 2, 0
_0803D7E0: .4byte gLinkEntity
_0803D7E4:
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #0
	strb r0, [r6]
	strb r1, [r5]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _0803D81C
_0803D7FA:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x87
	cmp r1, #0
	bne _0803D81C
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	orrs r0, r3
_0803D81A:
	strb r0, [r4, #0x15]
_0803D81C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803D828
	adds r0, r4, #0
	bl sub_080AEFB4
_0803D828:
	adds r0, r4, #0
	bl sub_080042B8
_0803D82E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803D830
sub_0803D830: @ 0x0803D830
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D844
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xe]
	b _0803D8F4
_0803D844:
	adds r4, r5, #0
	adds r4, #0x74
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803D870
	cmp r0, #1
	bgt _0803D858
	cmp r0, #0
	beq _0803D862
	b _0803D8EE
_0803D858:
	cmp r0, #2
	beq _0803D8C2
	cmp r0, #3
	beq _0803D8CE
	b _0803D8EE
_0803D862:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0803D8EE
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x70
	b _0803D8EC
_0803D870:
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803D8B0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #1
	bl PlaySFX
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #0
	bl sub_0804A98C
	adds r4, r0, #0
	cmp r4, #0
	beq _0803D8EE
	ldr r3, _0803D8AC @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	str r5, [r4, #0x50]
	b _0803D8EE
	.align 2, 0
_0803D8AC: .4byte 0xFFF00000
_0803D8B0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	bne _0803D8EE
	movs r0, #0xcb
	lsls r0, r0, #1
	bl PlaySFX
	b _0803D8EE
_0803D8C2:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803D8EE
	movs r0, #0
	strb r0, [r5, #0xf]
	b _0803D8EE
_0803D8CE:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _0803D8DE
	movs r0, #1
	strb r0, [r5, #0xf]
	ldr r0, _0803D8F8 @ =0x0000014F
	bl PlaySFX
_0803D8DE:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0803D8EE
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r4]
_0803D8EC:
	strb r0, [r5, #0xe]
_0803D8EE:
	adds r0, r5, #0
	bl sub_080042B8
_0803D8F4:
	pop {r4, r5, pc}
	.align 2, 0
_0803D8F8: .4byte 0x0000014F

	thumb_func_start sub_0803D8FC
sub_0803D8FC: @ 0x0803D8FC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0803D968
	subs r1, r0, #1
	strb r1, [r2, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0803D918
	movs r0, #1
	bl SetRoomFlag
	b _0803D968
_0803D918:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0803D968
	adds r0, r2, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _0803D968
	bl Random
	ldr r1, _0803D96C @ =0x00003F3F
	ands r0, r1
	movs r3, #0xff
	adds r1, r0, #0
	ands r1, r3
	ldr r5, _0803D970 @ =0x0000FFE0
	adds r2, r5, #0
	adds r1, r2, r1
	ldrh r5, [r4, #0x2e]
	adds r1, r1, r5
	strh r1, [r4, #0x2e]
	lsrs r0, r0, #8
	ands r0, r3
	adds r2, r2, r0
	ldrh r0, [r4, #0x32]
	adds r2, r2, r0
	strh r2, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0803D968:
	pop {r4, r5, pc}
	.align 2, 0
_0803D96C: .4byte 0x00003F3F
_0803D970: .4byte 0x0000FFE0

	thumb_func_start sub_0803D974
sub_0803D974: @ 0x0803D974
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x74
	strb r1, [r5]
	adds r2, r4, #0
	adds r2, #0x75
	strb r0, [r2]
	strb r1, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0x4a
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x50]
	ldr r1, [r4, #0x50]
	str r1, [r0, #0x54]
	ldrb r1, [r5]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803D9BC
sub_0803D9BC: @ 0x0803D9BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803D9E2
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DA44
	movs r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x30
	b _0803D9F6
_0803D9E2:
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DA02
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2f
_0803D9F6:
	strb r0, [r1]
	ldrb r1, [r2]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _0803DA44
_0803DA02:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803DA2E
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803DA2E
	adds r0, r5, #0
	adds r0, #0x3d
	strb r1, [r0]
	ldrb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x41
	strb r0, [r2]
_0803DA2E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803DA44
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
_0803DA44:
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DA60
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _0803DA72
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _0803DA70
_0803DA60:
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _0803DA72
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_0803DA70:
	strb r0, [r4, #0x10]
_0803DA72:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DAA8
sub_0803DAA8: @ 0x0803DAA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x50]
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x74
	strb r2, [r1]
	adds r1, #1
	strb r3, [r1]
	adds r2, r4, #0
	adds r2, #0x63
	movs r1, #0xfe
	strb r1, [r2]
	movs r1, #0xff
	strb r1, [r4, #0x15]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DAE4
sub_0803DAE4: @ 0x0803DAE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r2, [r0]
	cmp r2, #0
	bne _0803DB3E
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DB00
	strb r2, [r1]
_0803DB00:
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0x15]
	cmp r1, #0xff
	beq _0803DB28
	adds r2, r4, #0
	adds r2, #0x75
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803DB16
	movs r0, #1
	strb r0, [r2]
_0803DB16:
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0803DB54
	strb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _0803DB54
_0803DB28:
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DB54
	strb r2, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _0803DB54
_0803DB3E:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DB54
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
_0803DB54:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803DB88
sub_0803DB88: @ 0x0803DB88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x74
	strb r1, [r2]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r1, [r2]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0803DC0C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DBB8
sub_0803DBB8: @ 0x0803DBB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x50]
	ldrb r0, [r2, #0x15]
	cmp r0, #0xff
	beq _0803DBE8
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DBD2
	movs r0, #1
	strb r0, [r1]
_0803DBD2:
	ldrb r0, [r2, #0x15]
	lsls r1, r0, #0x18
	ldrb r2, [r4, #0x15]
	cmp r0, r2
	beq _0803DC02
	strb r0, [r4, #0x15]
	lsrs r1, r1, #0x1b
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _0803DC02
_0803DBE8:
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803DC02
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
_0803DC02:
	adds r0, r4, #0
	bl sub_0803DC0C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803DC0C
sub_0803DC0C: @ 0x0803DC0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r5, [r4, #0xe]
	lsls r5, r5, #1
	ldr r1, _0803DC54 @ =gUnk_080D04C8
	adds r5, r5, r1
	ldrb r2, [r0, #0x18]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	ldrb r3, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0x18]
	adds r1, r0, #0
	adds r1, #0x62
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0x62
	strb r1, [r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	adds r3, #1
	lsls r3, r3, #0x10
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, r5, pc}
	.align 2, 0
_0803DC54: .4byte gUnk_080D04C8

	thumb_func_start sub_0803DC58
sub_0803DC58: @ 0x0803DC58
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _0803DC66
	b _0803DD74
_0803DC66:
	ldr r5, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x77
	movs r7, #0
	strb r7, [r2]
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	mov ip, r0
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0803DD20
	ldr r0, _0803DCE4 @ =gUnk_080D04D0
	adds r3, r5, #0
	adds r3, #0x86
	ldrb r2, [r3]
	adds r0, r2, r0
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0803DCFA
	adds r0, r2, #1
	strb r0, [r3]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DCF0
	ldrb r2, [r4, #0x10]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x10]
	movs r0, #7
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	ands r1, r0
	strb r1, [r5, #0x10]
	mov r2, ip
	strb r2, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x62
	strb r7, [r0]
	ldrb r0, [r5, #0x15]
	orrs r0, r3
	strb r0, [r5, #0x15]
	strb r7, [r4, #0xe]
	ldr r0, _0803DCE8 @ =0x80100000
	bl PlaySFX
	ldr r0, _0803DCEC @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0803DD74
	.align 2, 0
_0803DCE4: .4byte gUnk_080D04D0
_0803DCE8: .4byte 0x80100000
_0803DCEC: .4byte gArea
_0803DCF0:
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r6]
	orrs r0, r3
	strb r0, [r6]
_0803DCFA:
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803DD20
	ldr r0, _0803DD50 @ =0x00000127
	bl PlaySFX
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0803DD26
	movs r0, #0x48
	strb r0, [r4, #0xe]
_0803DD20:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803DD74
_0803DD26:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803DD74
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x2f
	strb r0, [r1]
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803DD54
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0xf0
	b _0803DD64
	.align 2, 0
_0803DD50: .4byte 0x00000127
_0803DD54:
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #0x70
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r0, [r1]
	orrs r0, r2
_0803DD64:
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_0803DD74:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803DD78
sub_0803DD78: @ 0x0803DD78
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x7c
	ands r1, r0
	lsrs r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DDFE
	cmp r0, #1
	bgt _0803DD9A
	cmp r0, #0
	beq _0803DDA0
	b _0803DDB6
_0803DD9A:
	cmp r0, #2
	beq _0803DE5C
	b _0803DDB6
_0803DDA0:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	cmp r1, #0
	bne _0803DDBC
	subs r0, #0xb
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x50
	strb r0, [r1]
_0803DDB6:
	adds r5, r4, #0
	adds r5, #0x83
	b _0803DED0
_0803DDBC:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bls _0803DDCA
	b _0803DED0
_0803DDCA:
	lsls r0, r1, #2
	ldr r1, _0803DDD4 @ =_0803DDD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DDD4: .4byte _0803DDD8
_0803DDD8: @ jump table
	.4byte _0803DDF0 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DDF0 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DDF0 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DDF0:
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x50
	b _0803DECE
_0803DDFE:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0803DED0
	lsls r0, r1, #2
	ldr r1, _0803DE14 @ =_0803DE18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DE14: .4byte _0803DE18
_0803DE18: @ jump table
	.4byte _0803DE98 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DE30 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DE46 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DE30:
	movs r1, #8
	ands r1, r2
	cmp r1, #0
	bne _0803DEC2
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x77
	movs r0, #0x50
	b _0803DECE
_0803DE46:
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _0803DE98
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x50
	b _0803DECE
_0803DE5C:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #5
	bhi _0803DED0
	lsls r0, r1, #2
	ldr r1, _0803DE74 @ =_0803DE78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DE74: .4byte _0803DE78
_0803DE78: @ jump table
	.4byte _0803DE98 @ case 0
	.4byte _0803DEC2 @ case 1
	.4byte _0803DE90 @ case 2
	.4byte _0803DEC2 @ case 3
	.4byte _0803DEA6 @ case 4
	.4byte _0803DEC2 @ case 5
_0803DE90:
	movs r0, #0xf
	ands r2, r0
	cmp r2, #2
	bls _0803DEC2
_0803DE98:
	adds r0, r4, #0
	adds r0, #0x75
	movs r1, #1
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	b _0803DED0
_0803DEA6:
	cmp r2, #9
	bls _0803DEC2
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #2
	strb r0, [r1]
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r1, r4, #0
	adds r1, #0x77
	b _0803DECE
_0803DEC2:
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0
	strb r0, [r1]
	adds r1, #2
	movs r0, #1
_0803DECE:
	strb r0, [r1]
_0803DED0:
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	strb r0, [r5]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DEE0
sub_0803DEE0: @ 0x0803DEE0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #2
	bl Random
	movs r1, #0xf8
	ands r1, r0
	lsrs r2, r1, #3
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DFB8
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DF28
	cmp r0, #1
	bgt _0803DF0E
	cmp r0, #0
	beq _0803DF14
	b _0803DFB8
_0803DF0E:
	cmp r0, #2
	beq _0803DF68
	b _0803DFB8
_0803DF14:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	movs r5, #1
	ands r5, r1
	adds r1, #1
	movs r2, #3
	ands r1, r2
	strb r1, [r0]
	b _0803DFB8
_0803DF28:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #4
	bhi _0803DFAC
	lsls r0, r1, #2
	ldr r1, _0803DF40 @ =_0803DF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DF40: .4byte _0803DF44
_0803DF44: @ jump table
	.4byte _0803DF9E @ case 0
	.4byte _0803DF58 @ case 1
	.4byte _0803DF9E @ case 2
	.4byte _0803DF58 @ case 3
	.4byte _0803DF5C @ case 4
_0803DF58:
	movs r5, #1
	b _0803DFAC
_0803DF5C:
	movs r0, #8
	ands r2, r0
	movs r5, #0
	cmp r2, #0
	beq _0803DFAC
	b _0803DF9E
_0803DF68:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #4
	bhi _0803DFAC
	lsls r0, r1, #2
	ldr r1, _0803DF80 @ =_0803DF84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DF80: .4byte _0803DF84
_0803DF84: @ jump table
	.4byte _0803DF9E @ case 0
	.4byte _0803DF98 @ case 1
	.4byte _0803DFA2 @ case 2
	.4byte _0803DF9E @ case 3
	.4byte _0803DFAA @ case 4
_0803DF98:
	movs r5, #0
	cmp r2, #5
	bls _0803DFAC
_0803DF9E:
	movs r5, #3
	b _0803DFAC
_0803DFA2:
	movs r5, #0
	cmp r2, #9
	bhi _0803DFAC
	b _0803DF9E
_0803DFAA:
	movs r5, #0
_0803DFAC:
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strb r0, [r4]
_0803DFB8:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0803DFBC
sub_0803DFBC: @ 0x0803DFBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0803DFCE
	ldr r0, [r4, #0x2c]
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x7c]
_0803DFCE:
	adds r5, r4, #0
	adds r5, #0x76
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803DFFC
	ldrb r0, [r4, #0x15]
	cmp r0, #0xff
	beq _0803E000
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803E000
	adds r0, r4, #0
	bl sub_08049EE4
	movs r1, #0x10
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x10
	b _0803DFFE
_0803DFFC:
	subs r0, #1
_0803DFFE:
	strb r0, [r5]
_0803E000:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E022
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _0803E024 @ =gUnk_080D04D3
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x62
	strb r1, [r0]
_0803E022:
	pop {r4, r5, pc}
	.align 2, 0
_0803E024: .4byte gUnk_080D04D3

	thumb_func_start sub_0803E028
sub_0803E028: @ 0x0803E028
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803E046
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803E046
	movs r0, #0
	b _0803E082
_0803E046:
	adds r0, r4, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803E080
	ldr r2, _0803E084 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r1, r0, #0
	adds r1, #0x58
	ldr r0, _0803E088 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0803E080
	ldrh r2, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x58
	cmp r1, r0
	bgt _0803E080
	adds r1, r2, #0
	adds r1, #0xf8
	cmp r1, r0
	blt _0803E080
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	movs r5, #1
_0803E080:
	adds r0, r5, #0
_0803E082:
	pop {r4, r5, pc}
	.align 2, 0
_0803E084: .4byte gRoomControls
_0803E088: .4byte gLinkEntity
