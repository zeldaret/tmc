	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start VaatiWrath
VaatiWrath: @ 0x08041330
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08041384
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041384
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	cmp r0, #0
	bne _08041384
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x84
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08041384
	movs r0, #0xd
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	ldr r0, _08041398 @ =0x80010000
	bl PlaySFX
	movs r0, #0x94
	lsls r0, r0, #1
	bl PlaySFX
_08041384:
	ldr r0, _0804139C @ =gUnk_080D0E1C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_08041398: .4byte 0x80010000
_0804139C: .4byte gUnk_080D0E1C

	thumb_func_start sub_080413A0
sub_080413A0: @ 0x080413A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080423A4
	ldr r1, _080413BC @ =gUnk_080D0E2C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080413BC: .4byte gUnk_080D0E2C

	thumb_func_start sub_080413C0
sub_080413C0: @ 0x080413C0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080413F8 @ =gScreenTransition
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	cmp r5, #0
	beq _08041420
	adds r0, r4, #0
	bl sub_08041FCC
	cmp r0, #0
	beq _08041486
	adds r0, r7, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080413FC
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r6, [r4, #0xd]
	b _08041404
	.align 2, 0
_080413F8: .4byte gScreenTransition
_080413FC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08041404:
	ldr r0, _0804141C @ =gScreenTransition
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r4, #0x2e]
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08042004
	b _0804144A
	.align 2, 0
_0804141C: .4byte gScreenTransition
_08041420:
	adds r0, r4, #0
	bl sub_08041ED4
	cmp r0, #0
	beq _08041486
	strb r6, [r4, #0xc]
	strb r5, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0xb1
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08041488 @ =0x0000FFB0
	strh r0, [r4, #0x36]
	ldr r0, _0804148C @ =gRoomControls
	str r4, [r0, #0x30]
	bl sub_080809D4
_0804144A:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x79
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #6
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
_08041486:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041488: .4byte 0x0000FFB0
_0804148C: .4byte gRoomControls

	thumb_func_start sub_08041490
sub_08041490: @ 0x08041490
	push {r4, r5, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xd]
	cmp r0, #5
	bls _080414A0
	b _080415CC
_080414A0:
	lsls r0, r0, #2
	ldr r1, _080414AC @ =_080414B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080414AC: .4byte _080414B0
_080414B0: @ jump table
	.4byte _080415E6 @ case 0
	.4byte _080414C8 @ case 1
	.4byte _08041510 @ case 2
	.4byte _08041532 @ case 3
	.4byte _0804155C @ case 4
	.4byte _08041592 @ case 5
_080414C8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #0x36]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080414F4
	ldr r0, _0804150C @ =0x000001A9
	bl PlaySFX
_080414F4:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080415E6
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, _0804150C @ =0x000001A9
	bl PlaySFX
	b _080415E6
	.align 2, 0
_0804150C: .4byte 0x000001A9
_08041510:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041520
	subs r0, #1
	b _080415E4
_08041520:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041F74
	cmp r0, #0
	beq _080415E6
	movs r0, #3
	strb r0, [r4, #0xd]
	b _080415E2
_08041532:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08041544
	subs r0, #1
	b _080415E4
_08041544:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041F74
	cmp r0, #0
	beq _080415E6
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	b _080415E6
_0804155C:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08041574
	movs r0, #5
	strb r0, [r4, #0xd]
	b _080415E6
_08041574:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _080415E6
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080415E6
	adds r0, r4, #0
	bl sub_08041F1C
	cmp r0, #0
	beq _080415E6
	movs r0, #1
	strb r0, [r4, #0xf]
	b _080415E6
_08041592:
	adds r0, r4, #0
	bl sub_08042004
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldr r1, _080415BC @ =gScreenTransition
	adds r1, #0x38
	ldrb r2, [r1]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _080415C0 @ =gRoomControls
	ldr r0, _080415C4 @ =gPlayerEntity
	str r0, [r1, #0x30]
	ldr r0, _080415C8 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	b _080415E6
	.align 2, 0
_080415BC: .4byte gScreenTransition
_080415C0: .4byte gRoomControls
_080415C4: .4byte gPlayerEntity
_080415C8: .4byte gPlayerState
_080415CC:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080415E6
	movs r0, #2
	strb r0, [r4, #0xc]
_080415E2:
	movs r0, #0x3c
_080415E4:
	strb r0, [r4, #0xe]
_080415E6:
	pop {r4, r5, pc}

	thumb_func_start sub_080415E8
sub_080415E8: @ 0x080415E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041614
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08042028
_08041614:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041618
sub_08041618: @ 0x08041618
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_080AEF88
	ldr r0, _0804165C @ =gRoomControls
	ldrh r2, [r0, #8]
	adds r0, r2, #0
	adds r0, #0x90
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	blt _08041644
	adds r0, r2, #0
	adds r0, #0x40
	cmp r0, r1
	ble _08041646
_08041644:
	strh r0, [r4, #0x32]
_08041646:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08041660
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	b _08041694
	.align 2, 0
_0804165C: .4byte gRoomControls
_08041660:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0804166E
	ldrh r0, [r4, #0x24]
	subs r0, #8
	b _0804167A
_0804166E:
	ldrh r1, [r4, #0x24]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _0804167C
	adds r0, r1, #6
_0804167A:
	strh r0, [r4, #0x24]
_0804167C:
	ldrb r1, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08041694
	adds r0, r4, #0
	bl sub_0804207C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08041694:
	adds r0, r4, #0
	bl sub_0804212C
	adds r0, r4, #0
	bl sub_080421AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080416A4
sub_080416A4: @ 0x080416A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080416DA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080416D4
	adds r0, r4, #0
	bl sub_08042120
	b _080416DA
_080416D4:
	adds r0, r4, #0
	bl sub_08042028
_080416DA:
	pop {r4, pc}

	thumb_func_start sub_080416DC
sub_080416DC: @ 0x080416DC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08042004
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	adds r0, r5, #0
	bl sub_0804212C
	adds r0, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	bne _08041748
	movs r4, #1
	strb r4, [r5, #0xd]
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _08041716
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bne _08041724
	ldr r2, [r0, #0x18]
	b _08041720
_08041716:
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x18]
	cmp r2, #0
	bne _08041724
	ldr r2, [r0, #0x14]
_08041720:
	cmp r2, #0
	beq _08041734
_08041724:
	ldrb r0, [r2, #0xc]
	cmp r0, #2
	bne _08041734
	movs r1, #0
	movs r0, #4
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	b _080417AA
_08041734:
	bl Random
	movs r1, #1
	ands r0, r1
	adds r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08042028
	b _080417AA
_08041748:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0
	bne _080417AA
	adds r2, r1, #0
	cmp r2, #2
	bne _080417AA
	ldr r0, _0804179C @ =gScreenTransition
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080417A4
	movs r0, #0xb5
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080417AA
	str r5, [r2, #0x50]
	ldr r1, [r5, #0x64]
	str r2, [r1, #0x10]
	ldr r0, _080417A0 @ =gRoomControls
	str r2, [r0, #0x30]
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	ldr r1, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xe
	bl InitializeAnimation
	b _080417AA
	.align 2, 0
_0804179C: .4byte gScreenTransition
_080417A0: .4byte gRoomControls
_080417A4:
	strb r2, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xe]
_080417AA:
	pop {r4, r5, pc}

	thumb_func_start sub_080417AC
sub_080417AC: @ 0x080417AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _08041816
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #4]
	adds r0, r4, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #1
	bne _080417DA
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	b _0804181A
_080417DA:
	cmp r0, #2
	bne _08041806
	movs r0, #0x51
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _0804181A
	ldr r0, [r5, #0x64]
	str r0, [r1, #0x64]
	ldr r0, [r5, #0x64]
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	movs r1, #0x14
	bl InitializeAnimation
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	b _0804181A
_08041806:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804181A
	adds r0, r5, #0
	bl sub_0804235C
	b _0804181A
_08041816:
	subs r0, #1
	strb r0, [r5, #0xe]
_0804181A:
	adds r0, r5, #0
	bl sub_08042004
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	pop {r4, r5, pc}

	thumb_func_start sub_08041828
sub_08041828: @ 0x08041828
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042214
	adds r0, r4, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r2, _08041868 @ =gRoomControls
	ldrh r0, [r2, #8]
	adds r0, #0x48
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0804186C
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldrh r0, [r2, #8]
	adds r0, #0x48
	movs r2, #0
	cmp r0, r1
	blt _0804185C
	movs r2, #0x10
_0804185C:
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
	b _0804187E
	.align 2, 0
_08041868: .4byte gRoomControls
_0804186C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804187E
	adds r0, r4, #0
	bl sub_08042050
_0804187E:
	pop {r4, pc}

	thumb_func_start sub_08041880
sub_08041880: @ 0x08041880
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080418D4 @ =gRoomControls
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bgt _080418AE
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r0, r1
	bge _080418BE
_080418AE:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0x3f
	ble _080418BE
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
_080418BE:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080418D8
	movs r0, #9
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	b _080418F8
	.align 2, 0
_080418D4: .4byte gRoomControls
_080418D8:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080418E6
	ldrh r0, [r4, #0x24]
	subs r0, #0xc
	b _080418F6
_080418E6:
	ldrh r2, [r4, #0x24]
	movs r3, #0x24
	ldrsh r1, [r4, r3]
	ldr r0, _08041900 @ =0x000001FF
	cmp r1, r0
	bgt _080418F8
	adds r0, r2, #0
	adds r0, #0x10
_080418F6:
	strh r0, [r4, #0x24]
_080418F8:
	adds r0, r4, #0
	bl sub_08042214
	pop {r4, pc}
	.align 2, 0
_08041900: .4byte 0x000001FF

	thumb_func_start sub_08041904
sub_08041904: @ 0x08041904
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r3, r4, #0
	adds r3, #0x79
	ldrb r0, [r3]
	cmp r0, #0
	beq _08041924
	adds r0, r4, #0
	bl sub_08042214
	b _0804197A
_08041924:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0804197A
	ldr r0, _0804196C @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	adds r0, #0x40
	cmp r0, #0x80
	bhi _08041970
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r2, [r0]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x20]
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x24]
	strb r1, [r0, #0xe]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x28]
	strb r1, [r0, #0xe]
	b _0804197A
	.align 2, 0
_0804196C: .4byte gPlayerEntity
_08041970:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r2, [r3]
_0804197A:
	pop {r4, r5, pc}

	thumb_func_start sub_0804197C
sub_0804197C: @ 0x0804197C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08042004
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _080419A6
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	b _080419F6
_080419A6:
	cmp r0, #0xf0
	bne _080419F6
	movs r1, #0
	movs r0, #0xb
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0x15]
	adds r0, #0xf5
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	ldr r1, _080419F8 @ =0x0000016B
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #5
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0xf
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x15
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1e
	bl InitializeAnimation
	ldr r0, _080419FC @ =0x00000127
	bl PlaySFX
_080419F6:
	pop {r4, pc}
	.align 2, 0
_080419F8: .4byte 0x0000016B
_080419FC: .4byte 0x00000127

	thumb_func_start sub_08041A00
sub_08041A00: @ 0x08041A00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041A60
	cmp r0, #1
	beq _08041ABC
	ldr r2, _08041A5C @ =gUnk_080D0E64
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _08041AF0
	movs r0, #0xc
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #8
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x10
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x18
	bl InitializeAnimation
	b _08041AF0
	.align 2, 0
_08041A5C: .4byte gUnk_080D0E64
_08041A60:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl GetNextFrame
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08041AF0
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xf0
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #8
	strb r0, [r1]
	subs r1, #6
	movs r0, #0x38
	strb r0, [r1]
	movs r0, #0x14
	movs r1, #0
	bl sub_08080964
	adds r0, r4, #0
	movs r1, #6
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x16
	bl InitializeAnimation
	b _08041AF0
_08041ABC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041AF0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x39
	strb r0, [r1]
	adds r1, #6
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_08041AF0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041AF4
sub_08041AF4: @ 0x08041AF4
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041B12
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	bl GetNextFrame
_08041B12:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08041B44
	cmp r0, #1
	beq _08041B70
	adds r0, r4, #0
	bl sub_08042004
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041BC0
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #9
	bl InitAnimationForceUpdate
	b _08041BCE
_08041B44:
	ldr r0, [r4, #0x34]
	ldr r1, _08041B6C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08041BCE
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	b _08041BCE
	.align 2, 0
_08041B6C: .4byte 0xFFFF8000
_08041B70:
	adds r0, r4, #0
	bl sub_08042004
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041B82
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041BCE
_08041B82:
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _08041BBC @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0x48
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08041BCE
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0x11
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x19
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1f
	bl InitializeAnimation
	b _08041BCE
	.align 2, 0
_08041BBC: .4byte gRoomControls
_08041BC0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041BCE
	adds r0, r4, #0
	bl sub_0804235C
_08041BCE:
	pop {r4, pc}

	thumb_func_start sub_08041BD0
sub_08041BD0: @ 0x08041BD0
	push {lr}
	ldr r2, _08041BE4 @ =gUnk_080D0E68
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08041BE4: .4byte gUnk_080D0E68

	thumb_func_start sub_08041BE8
sub_08041BE8: @ 0x08041BE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	bl sub_08079F8C
	cmp r0, #0
	beq _08041CBA
	movs r5, #0
	movs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0x78
	strb r0, [r6, #0xe]
	ldrb r1, [r6, #0x11]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #3
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6, #0x11]
	adds r0, r6, #0
	movs r1, #0xa
	bl InitAnimationForceUpdate
	ldr r0, [r6, #0x64]
	ldr r7, [r0, #4]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #4]
	ldr r7, [r0, #8]
	ldrb r0, [r7, #0x11]
	ands r4, r0
	mov r0, r8
	orrs r4, r0
	strb r4, [r7, #0x11]
	adds r0, r7, #0
	bl sub_080AE068
	ldr r1, _08041CC0 @ =0x000001F5
	adds r0, r7, #0
	bl LoadFixedGFX
	ldr r1, _08041CC4 @ =0x0000016B
	adds r0, r7, #0
	bl sub_0801D2B4
	adds r0, r7, #0
	movs r1, #0x1a
	bl InitializeAnimation
	ldr r0, [r6, #0x64]
	ldr r7, [r0, #0xc]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #0xc]
	ldr r7, [r0, #0x10]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r2, [r6, #0x64]
	str r5, [r2, #0x10]
	ldr r1, _08041CC8 @ =gRoomControls
	ldr r0, _08041CCC @ =gPlayerEntity
	str r0, [r1, #0x30]
	ldr r7, [r2, #0x1c]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x1c]
	ldr r7, [r0, #0x20]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x20]
	ldr r7, [r0, #0x24]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x24]
	ldr r7, [r0, #0x28]
	str r5, [r7, #0x64]
	adds r0, r7, #0
	bl DeleteEntity
	ldr r0, [r6, #0x64]
	str r5, [r0, #0x28]
	movs r0, #2
	bl sub_08078A90
_08041CBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041CC0: .4byte 0x000001F5
_08041CC4: .4byte 0x0000016B
_08041CC8: .4byte gRoomControls
_08041CCC: .4byte gPlayerEntity

	thumb_func_start sub_08041CD0
sub_08041CD0: @ 0x08041CD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041D0C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08041CF6
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041D12
_08041CF6:
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r0, _08041D08 @ =0x00001651
	bl TextboxNoOverlapFollow
	b _08041D12
	.align 2, 0
_08041D08: .4byte 0x00001651
_08041D0C:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08041D12:
	pop {r4, pc}

	thumb_func_start sub_08041D14
sub_08041D14: @ 0x08041D14
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldr r0, _08041D3C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08041D7C
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08041D40
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08041D7C
	.align 2, 0
_08041D3C: .4byte gTextBox
_08041D40:
	ldr r0, _08041D80 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08041D7C
	movs r0, #0xb6
	movs r1, #0
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
	movs r0, #0xb6
	movs r1, #1
	movs r2, #0
	bl CreateObject
	str r4, [r0, #0x50]
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x96
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x9a
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xe2
	lsls r0, r0, #1
	bl PlaySFX
_08041D7C:
	pop {r4, r5, pc}
	.align 2, 0
_08041D80: .4byte gEntCount

	thumb_func_start sub_08041D84
sub_08041D84: @ 0x08041D84
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08041D9C
	subs r0, #1
	strb r0, [r5, #0xe]
	b _08041E18
_08041D9C:
	ldrb r1, [r5, #0xf]
	adds r0, r1, #0
	cmp r0, #0xef
	bhi _08041DEC
	cmp r0, #0xb7
	bls _08041DD8
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08041DD8
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	ldr r4, _08041DE8 @ =gUnk_080D0E80
	ldrb r1, [r5, #0xf]
	subs r1, #0xb8
	asrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	bl sub_0801D2B4
	ldr r0, [r5, #0x54]
	ldrb r1, [r5, #0xf]
	subs r1, #0xb8
	asrs r1, r1, #3
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	bl sub_0801D2B4
_08041DD8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0xe6
	bne _08041E0C
	movs r0, #7
	movs r1, #4
	bl DoFade
	b _08041E0C
	.align 2, 0
_08041DE8: .4byte gUnk_080D0E80
_08041DEC:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #8
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldr r1, _08041E1C @ =0x00000173
	adds r0, r5, #0
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xb
	bl InitAnimationForceUpdate
_08041E0C:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_08041E78
_08041E18:
	pop {r4, r5, pc}
	.align 2, 0
_08041E1C: .4byte 0x00000173

	thumb_func_start sub_08041E20
sub_08041E20: @ 0x08041E20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08041E78
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldr r0, _08041E4C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041E48
	movs r0, #5
	strb r0, [r4, #0xd]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
_08041E48:
	pop {r4, pc}
	.align 2, 0
_08041E4C: .4byte gFadeControl

	thumb_func_start sub_08041E50
sub_08041E50: @ 0x08041E50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08041E76
	movs r0, #0x51
	bl SetGlobalFlag
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	str r5, [r0, #0x64]
	bl DeleteEntity
	bl DeleteThisEntity
_08041E76:
	pop {r4, r5, pc}

	thumb_func_start sub_08041E78
sub_08041E78: @ 0x08041E78
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08041ECE
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08041ECE
	ldrb r1, [r4, #0xf]
	lsrs r1, r1, #3
	movs r0, #0xe
	ands r1, r0
	ldr r0, _08041ED0 @ =gUnk_080D0E90
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	movs r1, #0
	bl sub_08080964
_08041ECE:
	pop {r4, pc}
	.align 2, 0
_08041ED0: .4byte gUnk_080D0E90

	thumb_func_start sub_08041ED4
sub_08041ED4: @ 0x08041ED4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08041F14 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x45
	bhi _08041F18
	movs r0, #0x2c
	bl sub_0801D8E0
	adds r4, r0, #0
	cmp r4, #0
	beq _08041F18
	str r4, [r5, #0x64]
	str r5, [r4]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	movs r0, #0x51
	movs r1, #1
	bl CreateEnemy
	str r4, [r0, #0x64]
	str r0, [r4, #4]
	movs r0, #0x51
	movs r1, #2
	bl CreateEnemy
	str r4, [r0, #0x64]
	str r0, [r4, #8]
	movs r0, #1
	b _08041F1A
	.align 2, 0
_08041F14: .4byte gEntCount
_08041F18:
	movs r0, #0
_08041F1A:
	pop {r4, r5, pc}

	thumb_func_start sub_08041F1C
sub_08041F1C: @ 0x08041F1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08041F6C @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _08041F70
	movs r0, #0x5f
	movs r1, #0
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x1c]
	movs r0, #0x5f
	movs r1, #1
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x20]
	movs r0, #0x5f
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x24]
	movs r0, #0x5f
	movs r1, #3
	bl CreateEnemy
	adds r1, r0, #0
	str r4, [r1, #0x50]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x28]
	movs r0, #1
	b _08041F72
	.align 2, 0
_08041F6C: .4byte gEntCount
_08041F70:
	movs r0, #0
_08041F72:
	pop {r4, pc}

	thumb_func_start sub_08041F74
sub_08041F74: @ 0x08041F74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08041F88 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x46
	bls _08041F8C
	movs r0, #0
	b _08041FC8
	.align 2, 0
_08041F88: .4byte gEntCount
_08041F8C:
	ldr r7, [r5, #0x64]
	movs r4, #0
	ldr r0, _08041FC0 @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08041FB6
	movs r0, #0x52
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	strb r6, [r4, #0xb]
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_08041FB6:
	cmp r6, #0
	bne _08041FC4
	str r4, [r7, #0x14]
	b _08041FC6
	.align 2, 0
_08041FC0: .4byte gScreenTransition
_08041FC4:
	str r4, [r7, #0x18]
_08041FC6:
	movs r0, #1
_08041FC8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08041FCC
sub_08041FCC: @ 0x08041FCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08041FFC @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x4c
	bhi _08042000
	adds r0, r4, #0
	bl sub_08041ED4
	cmp r0, #0
	beq _08042000
	adds r0, r4, #0
	movs r1, #0
	bl sub_08041F74
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041F74
	adds r0, r4, #0
	bl sub_08041F1C
	movs r0, #1
	b _08042002
	.align 2, 0
_08041FFC: .4byte gEntCount
_08042000:
	movs r0, #0
_08042002:
	pop {r4, pc}

	thumb_func_start sub_08042004
sub_08042004: @ 0x08042004
	ldr r3, _08042024 @ =gUnk_080D0EA0
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	adds r1, #1
	strb r1, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_08042024: .4byte gUnk_080D0EA0

	thumb_func_start sub_08042028
sub_08042028: @ 0x08042028
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #3
	strb r5, [r4, #0xc]
	bl Random
	ldr r1, _0804204C @ =gUnk_080D0EA8
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804207C
	strb r0, [r4, #0x15]
	pop {r4, r5, pc}
	.align 2, 0
_0804204C: .4byte gUnk_080D0EA8

	thumb_func_start sub_08042050
sub_08042050: @ 0x08042050
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08042078 @ =gUnk_080D0EAC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #0xe]
	movs r1, #0x20
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x10
	ands r0, r1
	adds r0, #8
	strb r0, [r4, #0x15]
	pop {r4, pc}
	.align 2, 0
_08042078: .4byte gUnk_080D0EAC

	thumb_func_start sub_0804207C
sub_0804207C: @ 0x0804207C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r6, [r5, r0]
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r7, r0, #0
	subs r7, #0x10
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _080420B8
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _080420B8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _080420B8
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	adds r3, r7, #0
	b _08042118
_080420B8:
	ldr r0, [r5, #0x64]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	beq _080420E4
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _080420E4
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0x30
	bl sub_0806FCB8
	cmp r0, #0
	beq _080420E4
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r2, r6, #0
	adds r3, r7, #0
	b _08042118
_080420E4:
	ldr r0, _080420FC @ =gPlayerEntity
	movs r4, #0x32
	ldrsh r1, [r0, r4]
	adds r2, r0, #0
	cmp r1, #0x3f
	bgt _08042104
	ldr r0, _08042100 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x18
	b _0804210C
	.align 2, 0
_080420FC: .4byte gPlayerEntity
_08042100: .4byte gRoomControls
_08042104:
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r3, r0, #0
	subs r3, #0x28
_0804210C:
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	movs r4, #0x2e
	ldrsh r2, [r2, r4]
_08042118:
	bl sub_080045D4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042120
sub_08042120: @ 0x08042120
	movs r2, #0
	movs r1, #5
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0804212C
sub_0804212C: @ 0x0804212C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0804213E
	subs r0, #1
	b _080421A8
_0804213E:
	movs r5, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	subs r1, #0x44
	ldr r3, _0804216C @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r0, [r3, r2]
	subs r0, r0, r1
	cmp r0, #0x60
	bhi _0804217A
	movs r6, #0x2e
	ldrsh r2, [r4, r6]
	adds r0, r2, #0
	subs r0, #0x38
	movs r6, #0x2e
	ldrsh r1, [r3, r6]
	subs r0, r1, r0
	cmp r0, #0x38
	bhi _08042170
	ldr r0, [r4, #0x64]
	ldr r5, [r0, #0x18]
	b _0804217A
	.align 2, 0
_0804216C: .4byte gPlayerEntity
_08042170:
	subs r0, r1, r2
	cmp r0, #0x38
	bhi _0804217A
	ldr r0, [r4, #0x64]
	ldr r5, [r0, #0x14]
_0804217A:
	cmp r5, #0
	beq _080421A2
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _080421AA
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080421AA
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0xb4
	lsls r0, r0, #2
	b _080421A8
_080421A2:
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
_080421A8:
	strh r0, [r1]
_080421AA:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080421AC
sub_080421AC: @ 0x080421AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrh r0, [r5]
	adds r7, r0, #0
	cmp r7, #0
	beq _080421C0
	subs r0, #1
	b _08042210
_080421C0:
	adds r6, r4, #0
	adds r6, #0x79
	ldrb r0, [r6]
	cmp r0, #0
	bne _080421FE
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _080421F4
	ldr r0, _080421F0 @ =gScreenTransition
	adds r0, #0x39
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080421F4
	adds r0, r4, #0
	bl sub_08042264
	strb r5, [r6]
	b _08042212
	.align 2, 0
_080421F0: .4byte gScreenTransition
_080421F4:
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0x1e
	strh r0, [r1]
	b _08042212
_080421FE:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080422C0
	cmp r0, #0
	beq _08042212
	strb r7, [r6]
	movs r0, #0xb4
	lsls r0, r0, #1
_08042210:
	strh r0, [r5]
_08042212:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08042214
sub_08042214: @ 0x08042214
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x7e
	ldrh r0, [r6]
	adds r7, r0, #0
	cmp r7, #0
	beq _08042228
	subs r0, #1
	b _0804225E
_08042228:
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804224E
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0804224A
	adds r0, r4, #0
	bl sub_0804228C
	movs r0, #1
	strb r0, [r5]
	b _08042260
_0804224A:
	movs r0, #0x1e
	b _0804225E
_0804224E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080422C0
	cmp r0, #0
	beq _08042260
	strb r7, [r5]
	movs r0, #0xb4
_0804225E:
	strh r0, [r6]
_08042260:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08042264
sub_08042264: @ 0x08042264
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xd
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x13
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_0804228C
sub_0804228C: @ 0x0804228C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #4]
	movs r0, #1
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	movs r1, #0xd
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x13
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1d
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080422C0
sub_080422C0: @ 0x080422C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	bl UpdateAnimationSingleFrame
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	bl GetNextFrame
	ldr r0, [r5, #0x64]
	ldr r7, [r0, #4]
	adds r0, r7, #0
	bl GetNextFrame
	mov r0, r8
	adds r0, #1
	adds r6, r7, #0
	adds r6, #0x5a
	ldrb r4, [r6]
	cmp r0, r4
	bne _08042306
	movs r0, #0x21
	bl sub_080A7EE0
	cmp r0, #0
	beq _08042354
	mov r1, r8
	strb r1, [r0, #0xa]
	str r5, [r0, #0x50]
	ldrb r0, [r6]
	bics r0, r4
	strb r0, [r6]
	b _08042354
_08042306:
	cmp r4, #4
	bne _0804231A
	movs r0, #0xfb
	ands r4, r0
	strb r4, [r6]
	adds r0, r5, #0
	movs r1, #3
	bl InitAnimationForceUpdate
	b _08042354
_0804231A:
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	beq _08042354
	adds r0, r5, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	movs r0, #0
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0xc
	bl InitializeAnimation
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x12
	bl InitializeAnimation
	mov r0, r8
	cmp r0, #1
	bne _08042350
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1b
	bl InitializeAnimation
_08042350:
	movs r0, #1
	b _08042356
_08042354:
	movs r0, #0
_08042356:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0804235C
sub_0804235C: @ 0x0804235C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7e
	movs r5, #0
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #4]
	strb r5, [r0, #0xd]
	movs r1, #0xc
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #8]
	movs r1, #0x12
	bl InitializeAnimation
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0xc]
	movs r1, #0x1b
	bl InitializeAnimation
	pop {r4, r5, pc}

	thumb_func_start sub_080423A4
sub_080423A4: @ 0x080423A4
	push {r4, lr}
	ldr r0, _080423CC @ =gScreenTransition
	adds r4, r0, #0
	adds r4, #0x38
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804241C
	ldr r0, _080423D0 @ =gUnk_02002A40
	movs r2, #0x93
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _080423D4
	subs r0, #1
	str r0, [r1]
	b _0804241C
	.align 2, 0
_080423CC: .4byte gScreenTransition
_080423D0: .4byte gUnk_02002A40
_080423D4:
	ldr r2, _08042420 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #1
	bgt _0804241C
	cmp r0, #0
	blt _0804241C
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _0804241C
	ldr r1, _08042424 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804241C
	movs r3, #0x36
	ldrsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804240A
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _0804241C
_0804240A:
	movs r0, #0xb7
	lsls r0, r0, #4
	movs r1, #0
	bl sub_08078AA8
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0804241C:
	pop {r4, pc}
	.align 2, 0
_08042420: .4byte gPlayerState
_08042424: .4byte gPlayerEntity

	thumb_func_start sub_08042428
sub_08042428: @ 0x08042428
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0804243C
	str r0, [r4, #0x64]
	bl DeleteThisEntity
_0804243C:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08042450
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xc
	bl InitializeAnimation
_08042450:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0804245C
	adds r0, r4, #0
	bl GetNextFrame
_0804245C:
	ldr r0, [r4, #0x58]
	ldr r1, _0804249C @ =0x008000FF
	ands r0, r1
	subs r1, #0xf3
	cmp r0, r1
	bne _08042480
	adds r0, r4, #0
	movs r1, #0xc
	bl InitializeAnimation
	bl Random
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
_08042480:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0804249C: .4byte 0x008000FF

	thumb_func_start sub_080424A0
sub_080424A0: @ 0x080424A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080424B4
	str r0, [r4, #0x64]
	bl DeleteThisEntity
_080424B4:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080424C6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x12
	bl InitializeAnimation
_080424C6:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08042502
	ldr r1, _08042504 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	ldr r1, _08042508 @ =gUnk_080D0EB0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
_08042502:
	pop {r4, pc}
	.align 2, 0
_08042504: .4byte gPlayerEntity
_08042508: .4byte gUnk_080D0EB0

	thumb_func_start sub_0804250C
sub_0804250C: @ 0x0804250C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08042520
	str r0, [r4, #0x64]
	bl DeleteThisEntity
_08042520:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08042532
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x1c
	bl InitializeAnimation
_08042532:
	ldr r0, [r4, #0x64]
	ldr r0, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
