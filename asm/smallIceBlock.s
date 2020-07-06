	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start SmallIceBlock
SmallIceBlock: @ 0x080991A4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bhi _080991C4
	ldr r0, _080991C0 @ =gUnk_08123734
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080991CA
	.align 2, 0
_080991C0: .4byte gUnk_08123734
_080991C4:
	adds r0, r2, #0
	bl sub_080996AC
_080991CA:
	pop {pc}

	thumb_func_start sub_080991CC
sub_080991CC: @ 0x080991CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bgt _080991EC
	cmp r0, #0
	blt _080991EC
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080991EC
	bl DeleteThisEntity
_080991EC:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #5
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08099244 @ =gUnk_080FD408
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_08099468
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0x84
	movs r1, #3
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _08099242
	str r4, [r0, #0x50]
_08099242:
	pop {r4, pc}
	.align 2, 0
_08099244: .4byte gUnk_080FD408

	thumb_func_start sub_08099248
sub_08099248: @ 0x08099248
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0809963C
	cmp r0, #0
	beq _08099280
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldr r0, _0809927C @ =0x000001B3
	bl sub_08004488
	adds r0, r4, #0
	bl sub_08099330
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809930E
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _0809930E
	.align 2, 0
_0809927C: .4byte 0x000001B3
_08099280:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0809930E
	adds r7, r4, #0
	adds r7, #0x70
	ldrh r0, [r7]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl GetTileType
	adds r5, r0, #0
	ldr r0, _080992B8 @ =0x0000405A
	cmp r5, r0
	beq _0809930E
	adds r0, r5, #0
	bl sub_08099618
	cmp r0, #1
	beq _080992BC
	cmp r0, #1
	blo _080992DC
	cmp r0, #2
	beq _08099308
	b _0809930E
	.align 2, 0
_080992B8: .4byte 0x0000405A
_080992BC:
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x16
	strb r0, [r4, #0xe]
	adds r0, r5, #0
	subs r0, #0x5b
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080994B8
	b _0809930E
_080992DC:
	movs r0, #0xf
	movs r1, #0xd
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080992F2
	adds r0, r4, #0
	bl CopyPosition
_080992F2:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrh r1, [r7]
	ldrb r2, [r6]
	bl SetTile
	adds r0, r4, #0
	bl DeleteEntity
	b _0809930E
_08099308:
	adds r0, r4, #0
	adds r0, #0x6c
	strh r5, [r0]
_0809930E:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08099310
sub_08099310: @ 0x08099310
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809953C
	cmp r0, #0
	beq _0809932E
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08099468
	movs r0, #0xd9
	lsls r0, r0, #1
	bl sub_08004488
_0809932E:
	pop {r4, pc}

	thumb_func_start sub_08099330
sub_08099330: @ 0x08099330
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809963C
	adds r1, r0, #0
	cmp r1, #0
	bne _0809935E
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bls _0809934A
	subs r0, #2
	strb r0, [r4, #0xe]
	b _0809934C
_0809934A:
	strb r1, [r4, #0xe]
_0809934C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08099364
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805EC60
	b _080993CA
_0809935E:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08099364:
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, _0809939C @ =gUnk_08123748
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080993A0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r3, [r0]
	adds r0, r4, #0
	movs r1, #0x53
	movs r2, #0
	bl sub_080A2A3C
	movs r0, #0x72
	bl PlaySFX
	b _080993BA
	.align 2, 0
_0809939C: .4byte gUnk_08123748
_080993A0:
	cmp r0, #2
	bne _080993BA
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r3, [r0]
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl sub_080A2A3C
	movs r0, #0x72
	bl PlaySFX
_080993BA:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080993CA:
	pop {r4, pc}

	thumb_func_start sub_080993CC
sub_080993CC: @ 0x080993CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080993E2
	bl DeleteThisEntity
	b _08099466
_080993E2:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bne _08099400
	adds r0, r5, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x70
	ldrh r1, [r1]
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_08099400:
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r0, [r5, #0xe]
	movs r2, #0x3c
	subs r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r1
	adds r0, r5, #0
	movs r3, #0
	bl sub_0805EC9C
	ldrb r1, [r5, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099466
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _08099466
	bl Random
	adds r4, r0, #0
	asrs r0, r4, #0x10
	movs r1, #9
	bl __modsi3
	adds r2, r0, #0
	subs r2, #4
	movs r3, #0xf
	ands r3, r4
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	lsls r2, r2, #0x10
	rsbs r3, r3, #0
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl PositionRelative
_08099466:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08099468
sub_08099468: @ 0x08099468
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _080994B0 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x70
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldr r0, _080994B4 @ =0x0000405A
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_080994B0: .4byte gRoomControls
_080994B4: .4byte 0x0000405A

	thumb_func_start sub_080994B8
sub_080994B8: @ 0x080994B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08099530 @ =0x000001B1
	bl sub_08004488
	adds r0, r5, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r6, r5, #0
	adds r6, #0x70
	ldrh r1, [r6]
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldrb r0, [r4]
	cmp r0, #2
	bne _080994F8
	ldrh r0, [r6]
	movs r1, #1
	bl GetTileType
	ldr r1, _08099534 @ =0x0000405A
	cmp r0, r1
	bne _080994F8
	movs r0, #0xc4
	lsls r0, r0, #2
	ldrh r1, [r6]
	movs r2, #1
	bl sub_08000152
_080994F8:
	adds r2, r5, #0
	adds r2, #0x70
	ldr r1, _08099538 @ =gUnk_080B4488
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x79
	beq _08099524
	cmp r0, #0x77
	bne _0809952C
_08099524:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
_0809952C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08099530: .4byte 0x000001B1
_08099534: .4byte 0x0000405A
_08099538: .4byte gUnk_080B4488

	thumb_func_start sub_0809953C
sub_0809953C: @ 0x0809953C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _08099612
	adds r0, r4, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_0800445C
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _08099570
	ldrh r0, [r4, #0x24]
	adds r0, #0x10
	strh r0, [r4, #0x24]
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08099570
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
_08099570:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _080995A0
	cmp r0, #1
	bgt _08099582
	cmp r0, #0
	beq _08099588
	b _080995E6
_08099582:
	cmp r0, #2
	beq _080995BA
	b _080995E6
_08099588:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08099612
	ldrh r1, [r4, #0x32]
	movs r0, #0xf
	ands r0, r1
	subs r0, #7
	cmp r0, #2
	bls _080995D0
	b _080995DE
_080995A0:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08099612
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	subs r0, #7
	cmp r0, #2
	bls _080995FE
	b _080995DE
_080995BA:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0
	beq _08099612
	ldrh r1, [r4, #0x32]
	movs r0, #0xf
	ands r0, r1
	subs r0, #7
	cmp r0, #2
	bhi _080995DE
_080995D0:
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x32]
	movs r0, #1
	b _08099614
_080995DE:
	adds r0, r4, #0
	bl sub_0809969C
	b _08099612
_080995E6:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08099612
	ldrh r1, [r4, #0x2e]
	movs r0, #0xf
	ands r0, r1
	subs r0, #7
	cmp r0, #2
	bhi _0809960C
_080995FE:
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #8
	strh r0, [r4, #0x2e]
	movs r0, #1
	b _08099614
_0809960C:
	adds r0, r4, #0
	bl sub_0809969C
_08099612:
	movs r0, #0
_08099614:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08099618
sub_08099618: @ 0x08099618
	push {lr}
	adds r2, r0, #0
	ldr r1, _08099620 @ =gUnk_08123750
	b _08099630
	.align 2, 0
_08099620: .4byte gUnk_08123750
_08099624:
	ldrh r0, [r1]
	cmp r0, r2
	bne _0809962E
	ldrh r0, [r1, #2]
	b _08099638
_0809962E:
	adds r1, #4
_08099630:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08099624
	movs r0, #0
_08099638:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809963C
sub_0809963C: @ 0x0809963C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08099684
	bl GetCurrentRoomProperty
	adds r4, r0, #0
	ldrh r0, [r4]
	bl CheckFlags
	cmp r0, #0
	beq _08099684
	ldr r0, _08099694 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r2, [r4, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0, #8]
	ldrh r6, [r4, #4]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r2, [r4, #6]
	movs r6, #0x2e
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	cmp r2, r0
	blo _08099684
	ldrh r1, [r4, #8]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r0, r0, r3
	cmp r1, r0
	bhs _08099698
_08099684:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	beq _08099698
	movs r0, #0
	b _0809969A
	.align 2, 0
_08099694: .4byte gRoomControls
_08099698:
	movs r0, #1
_0809969A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809969C
sub_0809969C: @ 0x0809969C
	push {lr}
	movs r1, #0xd
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080996AC
sub_080996AC: @ 0x080996AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080996BC
	bl DeleteThisEntity
_080996BC:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080996CE
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
_080996CE:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bhi _08099726
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099706
	movs r0, #0
	strb r0, [r2]
	bl Random
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
_08099706:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #0x11
	strb r0, [r1]
	b _08099730
_08099726:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08099730:
	pop {r4, pc}
	.align 2, 0
