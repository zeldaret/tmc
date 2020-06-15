	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Book
Book: @ 0x0809B3AC
	push {lr}
	ldr r2, _0809B3C0 @ =gUnk_08123D7C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809B3C0: .4byte gUnk_08123D7C

	thumb_func_start sub_0809B3C4
sub_0809B3C4: @ 0x0809B3C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #0x39
	bl GetInventoryValue
	adds r5, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	beq _0809B3E2
	cmp r5, #0
	beq _0809B3FE
	bl DeleteThisEntity
	b _0809B3FE
_0809B3E2:
	movs r0, #0x73
	bl CheckLocalFlag
	cmp r0, #0
	beq _0809B3F0
	bl DeleteThisEntity
_0809B3F0:
	cmp r5, #2
	beq _0809B3FE
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0809B3FE:
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809B424
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0809B420
	ldrh r0, [r4, #0x32]
	adds r0, #0x30
	strh r0, [r4, #0x32]
_0809B420:
	movs r0, #2
	strb r0, [r4, #0xb]
_0809B424:
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldrb r1, [r4, #0xa]
	adds r1, #0x39
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	beq _0809B46C
	cmp r1, #1
	bgt _0809B444
	cmp r1, #0
	beq _0809B44E
	b _0809B4A6
_0809B444:
	cmp r1, #2
	beq _0809B488
	cmp r1, #3
	beq _0809B48E
	b _0809B4A6
_0809B44E:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x16
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	b _0809B49E
_0809B46C:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0809B484 @ =gRoomControls
	ldrh r0, [r0, #0xc]
	subs r0, #0x10
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
	ldrh r0, [r4, #0x36]
	subs r0, r0, r1
	strh r0, [r4, #0x36]
	b _0809B4A6
	.align 2, 0
_0809B484: .4byte gRoomControls
_0809B488:
	movs r0, #4
	strb r0, [r4, #0xc]
	b _0809B4A6
_0809B48E:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xd
_0809B49E:
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0809B4A6:
	pop {r4, r5, pc}

	thumb_func_start sub_0809B4A8
sub_0809B4A8: @ 0x0809B4A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809B4C0
	subs r0, #1
	strb r0, [r1]
	b _0809B520
_0809B4C0:
	adds r0, r4, #0
	bl sub_0809B688
	cmp r0, #0
	beq _0809B51C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0809B520
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	ldr r2, _0809B510 @ =gLinkState
	movs r0, #0x9e
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _0809B514 @ =gLinkEntity
	strh r3, [r1, #0x2c]
	strh r3, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	ldr r0, _0809B518 @ =0x0000010F
	bl sub_08004488
	b _0809B520
	.align 2, 0
_0809B510: .4byte gLinkState
_0809B514: .4byte gLinkEntity
_0809B518: .4byte 0x0000010F
_0809B51C:
	movs r0, #0x16
	strb r0, [r4, #0xe]
_0809B520:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809B524
sub_0809B524: @ 0x0809B524
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809B564
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _0809B554
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrh r0, [r2, #0x32]
	adds r0, #0x20
	strh r0, [r2, #0x32]
	ldrh r0, [r2, #0x36]
	subs r0, #0x20
	strh r0, [r2, #0x36]
	b _0809B564
_0809B554:
	movs r0, #1
	strb r0, [r2, #0xc]
	movs r0, #0x16
	strb r0, [r2, #0xe]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #0x18
	strb r0, [r1]
_0809B564:
	adds r0, r2, #0
	bl sub_0806F69C
	pop {pc}

	thumb_func_start sub_0809B56C
sub_0809B56C: @ 0x0809B56C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_080044EC
	cmp r0, #1
	bne _0809B5B0
	movs r2, #4
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0xc
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0809B5B0
	adds r0, r4, #0
	bl sub_0806FAB0
_0809B5B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809B5B4
sub_0809B5B4: @ 0x0809B5B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809B5CC @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809B5D0
	adds r0, r4, #0
	bl sub_0800445C
	b _0809B5EA
	.align 2, 0
_0809B5CC: .4byte gLinkState
_0809B5D0:
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _0809B5EA
	ldrb r0, [r4, #0xa]
	adds r0, #0x39
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
	bl DeleteThisEntity
_0809B5EA:
	pop {r4, pc}

	thumb_func_start sub_0809B5EC
sub_0809B5EC: @ 0x0809B5EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r5, r0, #0x1e
	cmp r5, #1
	bne _0809B646
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0809B606
	cmp r0, #1
	beq _0809B630
	b _0809B682
_0809B606:
	movs r0, #7
	movs r1, #0x1a
	movs r2, #7
	bl sub_0805EB00
	adds r2, r0, #0
	cmp r2, #0
	beq _0809B682
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _0809B682
	ldrb r0, [r2, #0x14]
	cmp r0, #4
	bne _0809B682
	str r2, [r4, #0x50]
	strb r5, [r4, #0xd]
	adds r0, r2, #0
	b _0809B63E
_0809B630:
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _0809B650
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0809B650
	adds r0, r1, #0
_0809B63E:
	adds r1, r4, #0
	bl sub_0809B6B0
	b _0809B682
_0809B646:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0809B656
	cmp r0, #1
	beq _0809B668
_0809B650:
	bl DeleteThisEntity
	b _0809B682
_0809B656:
	ldrb r0, [r4, #0xa]
	adds r0, #0x39
	bl GetInventoryValue
	cmp r0, #2
	bne _0809B682
	movs r0, #1
	strb r0, [r4, #0xd]
	b _0809B682
_0809B668:
	ldr r0, _0809B684 @ =gTextBox
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	cmp r2, #0
	bne _0809B682
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0xd]
_0809B682:
	pop {r4, r5, pc}
	.align 2, 0
_0809B684: .4byte gTextBox

	thumb_func_start sub_0809B688
sub_0809B688: @ 0x0809B688
	push {lr}
	ldr r1, _0809B6A8 @ =gLinkEntity
	movs r2, #6
	movs r3, #0xc
	bl sub_080041A0
	adds r1, r0, #0
	cmp r1, #1
	bne _0809B6A4
	ldr r0, _0809B6AC @ =gLinkState
	ldrb r0, [r0, #0xd]
	cmp r0, #0x10
	beq _0809B6A4
	movs r1, #0
_0809B6A4:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_0809B6A8: .4byte gLinkEntity
_0809B6AC: .4byte gLinkState

	thumb_func_start sub_0809B6B0
sub_0809B6B0: @ 0x0809B6B0
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, _0809B6EC @ =gUnk_08123D94
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xa]
	movs r1, #3
	subs r1, r1, r0
	adds r4, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0809B6EC: .4byte gUnk_08123D94
