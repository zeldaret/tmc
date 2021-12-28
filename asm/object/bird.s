	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809D1F0
sub_0809D1F0: @ 0x0809D1F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	mov sb, r0
	cmp r0, #0
	beq _0809D224
	cmp r0, #1
	beq _0809D2B0
	bl sub_08078B48
	ldr r2, _0809D220 @ =gPlayerEntity
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r1, #0x68
	adds r1, r1, r5
	mov r8, r1
	b _0809D3A8
	.align 2, 0
_0809D220: .4byte gPlayerEntity
_0809D224:
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	beq _0809D234
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	subs r0, r1, #1
	strb r0, [r5, #0xe]
	b _0809D488
_0809D234:
	movs r1, #1
	strb r1, [r5, #0xc]
	mov r2, sb
	str r2, [r5, #0x20]
	ldr r0, _0809D2A0 @ =0xFFEC0000
	str r0, [r5, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x1b]
	ldr r0, _0809D2A4 @ =gRoomControls
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x2e]
	ldr r0, _0809D2A8 @ =gPlayerEntity
	ldrh r0, [r0, #0x32]
	strh r0, [r5, #0x32]
	mov r3, sb
	str r3, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #6
	bl SetDefaultPriority
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	ldr r0, _0809D2AC @ =0x00000123
	bl SoundReq
	movs r0, #0x68
	adds r0, r0, r5
	mov r8, r0
	b _0809D3A8
	.align 2, 0
_0809D2A0: .4byte 0xFFEC0000
_0809D2A4: .4byte gRoomControls
_0809D2A8: .4byte gPlayerEntity
_0809D2AC: .4byte 0x00000123
_0809D2B0:
	ldr r6, _0809D430 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x24]
	adds r0, #8
	strh r0, [r5, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #2
	mov sl, r1
	cmp r0, sl
	ble _0809D2D6
	mov r2, sl
	strh r2, [r5, #0x24]
_0809D2D6:
	ldrb r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	movs r3, #0x68
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #0
	beq _0809D3A8
	ldr r0, _0809D434 @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0809D3A8
	ldrb r0, [r6, #0xc]
	cmp r0, #0x1c
	beq _0809D3A8
	cmp r0, #6
	beq _0809D3A8
	cmp r0, #9
	beq _0809D3A8
	ldr r7, _0809D438 @ =gPlayerState
	adds r0, r7, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _0809D3A8
	cmp r0, #0xb
	beq _0809D3A8
	cmp r0, #8
	beq _0809D3A8
	bl sub_08079F8C
	cmp r0, #0
	beq _0809D3A8
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xe
	movs r3, #0xe
	bl EntityInRectRadius
	cmp r0, #0
	beq _0809D3A8
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	movs r2, #0x36
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _0809D3A8
	adds r0, r6, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809D3A8
	movs r0, #0x95
	movs r1, #0xa
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D3A8
	str r4, [r5, #0x54]
	movs r0, #2
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xe]
	mov r3, sl
	strh r3, [r5, #0x24]
	movs r0, #0xe0
	lsls r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	bl sub_08079184
	bl sub_08078B48
	bl ResetPlayerAnimationAndAction
	bl sub_08077B20
	adds r0, r7, #0
	adds r0, #0x26
	movs r2, #0
	strb r2, [r0]
	strb r2, [r7, #2]
	ldrb r1, [r6, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0x10]
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0x18]
	ldr r1, _0809D43C @ =gPriorityHandler
	movs r0, #6
	strb r0, [r1]
	ldr r0, _0809D440 @ =gUnk_02034490
	mov r3, sb
	strb r3, [r0]
_0809D3A8:
	adds r0, r5, #0
	bl LinearMoveUpdate
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl GravityUpdate
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D454
	ldr r2, _0809D430 @ =gPlayerEntity
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	subs r0, #8
	cmp r1, r0
	bge _0809D3DA
	movs r0, #0
	strb r0, [r5, #0xe]
_0809D3DA:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0809D448
	ldr r2, _0809D444 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	adds r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
	b _0809D454
	.align 2, 0
_0809D430: .4byte gPlayerEntity
_0809D434: .4byte gMessage
_0809D438: .4byte gPlayerState
_0809D43C: .4byte gPriorityHandler
_0809D440: .4byte gUnk_02034490
_0809D444: .4byte 0xFFF80000
_0809D448:
	subs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
_0809D454:
	adds r0, r5, #0
	bl CheckOnScreen
	cmp r0, #0
	bne _0809D488
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _0809D478
	ldr r0, _0809D494 @ =gSave
	ldr r1, [r0, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0x15
	orrs r1, r2
	str r1, [r0, #0x40]
	movs r0, #9
	movs r1, #0
	bl MenuFadeIn
_0809D478:
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D484
	adds r0, r4, #0
	bl DeleteEntityAny
_0809D484:
	bl DeleteThisEntity
_0809D488:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809D494: .4byte gSave

	thumb_func_start sub_0809D498
sub_0809D498: @ 0x0809D498
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0809D548
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldr r0, _0809D534 @ =0xFFFD8000
	str r0, [r5, #0x20]
	ldr r0, _0809D538 @ =0xFFB4C000
	str r0, [r5, #0x34]
	adds r4, r5, #0
	adds r4, #0x68
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r1, [r6]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldrb r2, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #6
	bl SetDefaultPriority
	ldr r0, _0809D53C @ =gRoomControls
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x2e]
	ldr r0, _0809D540 @ =gPlayerEntity
	ldrh r0, [r0, #0x32]
	strh r0, [r5, #0x32]
	ldr r0, _0809D544 @ =0x00000123
	bl SoundReq
	ldrb r1, [r6]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	bl sub_08078B48
	adds r7, r4, #0
	b _0809D62E
	.align 2, 0
_0809D534: .4byte 0xFFFD8000
_0809D538: .4byte 0xFFB4C000
_0809D53C: .4byte gRoomControls
_0809D540: .4byte gPlayerEntity
_0809D544: .4byte 0x00000123
_0809D548:
	adds r7, r5, #0
	adds r7, #0x68
	cmp r0, #1
	bne _0809D62E
	ldr r6, _0809D658 @ =gPlayerEntity
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r1
	strb r0, [r6, #0x18]
	ldr r4, [r5, #0x54]
	cmp r4, #0
	beq _0809D5B0
	ldr r2, _0809D65C @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl PositionRelative
	ldrh r0, [r4, #0x36]
	adds r0, #0x18
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r2, [r5, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1b]
_0809D5B0:
	bl sub_08078B48
	ldr r3, _0809D660 @ =gRoomControls
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bge _0809D62E
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	cmp r4, #0
	beq _0809D5E6
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0809D5E6:
	str r6, [r3, #0x30]
	ldrb r1, [r6, #0x18]
	mov r0, r8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #0x18]
	bl ResetPlayerAnimationAndAction
	bl ResetPlayerEventPriority
	ldr r1, _0809D664 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x52
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0809D62E
	movs r0, #0x69
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D62E
	ldr r1, _0809D668 @ =script_EzloTalkOcarina
	bl StartCutscene
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #0x52
	bl SetGlobalFlag
_0809D62E:
	adds r0, r5, #0
	bl LinearMoveUpdate
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r0, r5, #0
	bl GravityUpdate
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	adds r0, r5, #0
	bl CheckOnScreen
	cmp r0, #0
	bne _0809D652
	bl DeleteThisEntity
_0809D652:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809D658: .4byte gPlayerEntity
_0809D65C: .4byte 0xFFF80000
_0809D660: .4byte gRoomControls
_0809D664: .4byte gUnk_02034490
_0809D668: .4byte script_EzloTalkOcarina

	thumb_func_start sub_0809D66C
sub_0809D66C: @ 0x0809D66C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809D694 @ =gPlayerEntity
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0809D6EC
	cmp r0, #1
	bgt _0809D698
	cmp r0, #0
	beq _0809D6A2
	b _0809D6FE
	.align 2, 0
_0809D694: .4byte gPlayerEntity
_0809D698:
	cmp r0, #2
	beq _0809D6F4
	cmp r0, #3
	beq _0809D6FA
	b _0809D6FE
_0809D6A2:
	movs r3, #1
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x38
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r0, r4, #0
	movs r1, #6
	bl SetDefaultPriority
	adds r0, r4, #0
	movs r1, #0xe0
	bl InitAnimationForceUpdate
_0809D6EC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _0809D6FE
_0809D6F4:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809D6FE
_0809D6FA:
	bl DeleteThisEntity
_0809D6FE:
	pop {r4, pc}

	thumb_func_start CreateBird
CreateBird: @ 0x0809D700
	push {r4, lr}
	sub sp, #4
.ifdef EU
	bl CheckIsOverworld @ TODO correct function?
.else
	bl sub_08052654
.endif
	cmp r0, #0
	beq _0809D732
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0x95
	movs r2, #6
	movs r3, #8
	bl FindEntity
	adds r4, r0, #0
	cmp r4, #0
	bne _0809D732
	movs r0, #0x95
	movs r1, #8
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0809D732
	strb r4, [r0, #0xe]
_0809D732:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809D738
sub_0809D738: @ 0x0809D738
	push {r4, lr}
	movs r0, #0x95
	movs r1, #9
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D77C
	ldr r1, _0809D774 @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	adds r0, r4, #0
	movs r1, #6
	bl SetDefaultPriority
	bl SetPlayerEventPriority
	movs r0, #0x95
	movs r1, #0xa
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0809D76C
	str r0, [r4, #0x54]
_0809D76C:
	ldr r1, _0809D778 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	b _0809D780
	.align 2, 0
_0809D774: .4byte gRoomControls
_0809D778: .4byte gUnk_02034490
_0809D77C:
	bl ResetPlayerAnimationAndAction
_0809D780:
	pop {r4, pc}
	.align 2, 0
