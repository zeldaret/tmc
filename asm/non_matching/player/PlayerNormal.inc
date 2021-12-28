    .syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _080707F0 @ =gPlayerState
	adds r3, r6, #0
	adds r3, #0xa8
	movs r4, #0
	strb r4, [r3]
	ldr r1, [r6, #0x30]
	movs r7, #0x10
	adds r0, r1, #0
	ands r0, r7
	mov ip, r6
	cmp r0, #0
	beq _08070818
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	strb r4, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x80
	strb r0, [r6, #6]
	strb r7, [r3]
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	adds r0, #0x5c
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	cmp r0, r1
	bne _080707F8
	ldrh r0, [r5, #0x12]
	cmp r0, #2
	bne _080707F8
	ldr r0, _080707F4 @ =gPlayerEntity
	bl UpdateAnimationSingleFrame
	b _08070800
	.align 2, 0
_080707F0: .4byte gPlayerState
_080707F4: .4byte gPlayerEntity
_080707F8:
	movs r0, #0x97
	lsls r0, r0, #2
	mov r1, ip
	strh r0, [r1, #8]
_08070800:
	ldr r0, _08070814 @ =gPlayerEntity
	bl sub_0806F948
	bl ResetPlayer
	adds r0, r5, #0
	bl sub_08077698
	b _08070BE4
	.align 2, 0
_08070814: .4byte gPlayerEntity
_08070818:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08070842
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r3]
	movs r1, #0
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0807083A
	movs r1, #1
_0807083A:
	adds r0, r5, #0
	bl sub_08070BEC
	b _08070BE4
_08070842:
	movs r4, #0x80
	lsls r4, r4, #0xc
	ands r4, r1
	cmp r4, #0
	beq _08070852
	bl sub_08079938
	b _08070BE4
_08070852:
	adds r0, r5, #0
	bl sub_080085B0
	adds r0, r5, #0
	adds r0, #0x40
	strb r4, [r0]
	bl RunQueuedAction
	cmp r0, #0
	beq _08070868
	b _08070BE4
_08070868:
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080708AC
	ldrb r1, [r6, #2]
	movs r2, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080708AC
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _0807088E
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070892
_0807088E:
	strh r2, [r5, #0x24]
	b _080708AC
_08070892:
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	beq _0807089C
	movs r0, #0xe0
	b _080708AA
_0807089C:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _080708A6
	movs r0, #0x80
	b _080708AA
_080708A6:
	movs r0, #0xa0
	lsls r0, r0, #1
_080708AA:
	strh r0, [r5, #0x24]
_080708AC:
	ldr r4, _08070918 @ =gPlayerState
	ldrb r0, [r4, #6]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r4, #6]
	ldr r0, [r4, #0x30]
	ldr r6, _0807091C @ =0x10000002
	ands r0, r6
	cmp r0, #0
	bne _080708C4
	bl UpdateFloorType
_080708C4:
	bl RunQueuedAction
	cmp r0, #0
	beq _080708CE
	b _08070BE4
_080708CE:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080708D6
	b _080709D8
_080708D6:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080708E4
	b _080709D8
_080708E4:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08070924
	bl sub_080782C0
	cmp r0, #0
	beq _08070924
	ldr r0, _08070920 @ =gRoomVars
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08070902
	bl ResetPlayer
_08070902:
	ldr r0, [r4, #0x30]
	ands r0, r6
	cmp r0, #0
	beq _0807090C
	b _08070BE4
_0807090C:
	bl UpdateFloorType
	bl RunQueuedAction
	b _08070BE4
	.align 2, 0
_08070918: .4byte gPlayerState
_0807091C: .4byte 0x10000002
_08070920: .4byte gRoomVars
_08070924:
	ldr r0, _0807094C @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _08070950 @ =0x00041635
	ands r1, r2
	adds r0, #0xaa
	ldrb r0, [r0]
	orrs r1, r0
	cmp r1, #0
	bne _080709D8
	bl sub_08019840
	cmp r0, #0xf
	bls _08070940
	b _08070BE4
_08070940:
	lsls r0, r0, #2
	ldr r1, _08070954 @ =_08070958
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807094C: .4byte gPlayerState
_08070950: .4byte 0x00041635
_08070954: .4byte _08070958
_08070958: @ jump table
	.4byte _08070998 @ case 0
	.4byte _08070BE4 @ case 1
	.4byte _08070BE4 @ case 2
	.4byte _080709A8 @ case 3
	.4byte _080709C2 @ case 4
	.4byte _08070BE4 @ case 5
	.4byte _08070BE4 @ case 6
	.4byte _08070BE4 @ case 7
	.4byte _08070BE4 @ case 8
	.4byte _08070BE4 @ case 9
	.4byte _08070BE4 @ case 10
	.4byte _08070BE4 @ case 11
	.4byte _08070BE4 @ case 12
	.4byte _08070BE4 @ case 13
	.4byte _08070BE4 @ case 14
	.4byte _080709B4 @ case 15
_08070998:
	ldr r0, _080709A4 @ =gPlayerState
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	b _080709D8
	.align 2, 0
_080709A4: .4byte gPlayerState
_080709A8:
	ldr r1, _080709B0 @ =gPlayerState
	movs r0, #0x80
	strb r0, [r1, #6]
	b _080709D8
	.align 2, 0
_080709B0: .4byte gPlayerState
_080709B4:
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	bl sub_080797EC
	b _08070BE4
_080709C2:
	ldr r0, _080709D4 @ =gPlayerState
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	bl sub_080797EC
	b _08070BE4
	.align 2, 0
_080709D4: .4byte gPlayerState
_080709D8:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0x29
	ldrb r1, [r6]
	subs r0, #8
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_0807AC54
	cmp r0, #0
	beq _080709FC
	b _08070BE4
_080709FC:
	adds r0, r5, #0
	bl sub_08077698
	bl RunQueuedAction
	cmp r0, #0
	beq _08070A0C
	b _08070BE4
_08070A0C:
	bl sub_080792D8
	ldr r4, _08070A78 @ =gPlayerState
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #0xa]
	orrs r0, r1
	cmp r0, #0
	bne _08070A32
	bl sub_08079550
	cmp r0, #0
	beq _08070A26
	b _08070BE4
_08070A26:
	adds r0, r5, #0
	bl sub_08078F74
	cmp r0, #0
	beq _08070A32
	b _08070BE4
_08070A32:
	adds r0, r5, #0
	bl sub_08073904
	bl RunQueuedAction
	cmp r0, #0
	beq _08070A42
	b _08070BE4
_08070A42:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _08070AAC
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _08070A80
	movs r0, #7
	ands r0, r2
	cmp r0, #3
	beq _08070A7C
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08070A7C
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_08008926
	b _08070A80
	.align 2, 0
_08070A78: .4byte gPlayerState
_08070A7C:
	movs r0, #0xff
	strb r0, [r5, #0x15]
_08070A80:
	bl sub_08079E08
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08070A94
	b _08070BE4
_08070A94:
	ldr r0, _08070AA8 @ =gPlayerState
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08070A9E
	b _08070BE4
_08070A9E:
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
	b _08070BE4
	.align 2, 0
_08070AA8: .4byte gPlayerState
_08070AAC:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08070ABA
	b _08070BBC
_08070ABA:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070AD4
	adds r1, r4, #0
	adds r1, #0xa8
	movs r0, #7
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0807ACCC
	b _08070B56
_08070AD4:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _08070AEE
	ldrb r0, [r6]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r6]
_08070AEE:
	ldrb r1, [r4, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08070B00
	adds r0, r5, #0
	bl sub_08008AA0
	b _08070B1E
_08070B00:
	ldrb r0, [r4, #0x12]
	cmp r0, #0x17
	bne _08070B0E
	adds r0, r5, #0
	bl sub_08008926
	b _08070B1E
_08070B0E:
	cmp r0, #1
	bne _08070B18
	bl ResetPlayerVelocity
	b _08070B1E
_08070B18:
	adds r0, r5, #0
	bl sub_08008AA0
_08070B1E:
	ldr r2, _08070BB8 @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08070B56
	ldrb r3, [r2, #0xd]
	strb r3, [r5, #0x15]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08070B56
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08070B52
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
_08070B52:
	bl sub_0807A108
_08070B56:
	movs r4, #0
	ldr r3, _08070BB8 @ =gPlayerState
	ldrb r2, [r3, #7]
	ldrb r0, [r5, #0x15]
	orrs r0, r2
	movs r1, #0x80
	ands r0, r1
	ldrb r1, [r3, #0xa]
	orrs r0, r1
	cmp r0, #0
	bne _08070B8E
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _08070B8E
	movs r4, #1
	ldrb r0, [r7]
	cmp r0, #0
	bne _08070B8E
	ldrb r1, [r3, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08070B8C
	ldrb r0, [r3, #0x12]
	cmp r0, #0x17
	beq _08070B8E
_08070B8C:
	movs r4, #3
_08070B8E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070BEC
	adds r0, r5, #0
	bl sub_08008AC6
	ldrb r0, [r7]
	cmp r0, #0
	bne _08070BE4
	ldr r1, _08070BB8 @ =gPlayerState
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _08070BE4
	ldrb r0, [r1, #0x12]
	cmp r0, #0x1e
	beq _08070BE4
	adds r0, r5, #0
	bl sub_0806F948
	b _08070BE4
	.align 2, 0
_08070BB8: .4byte gPlayerState
_08070BBC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _08070BC8
	adds r0, r5, #0
	bl UpdateAnimationSingleFrame
_08070BC8:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070BE4
	ldr r0, _08070BE8 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08070BE4
	adds r0, r5, #0
	bl CreateWaterTrace
_08070BE4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08070BE8: .4byte gScreenTransition
    .syntax divided
