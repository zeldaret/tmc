    .syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _080545A4 @ =gRoomVars
	ldrb r1, [r0, #2]
	adds r5, r0, #0
	cmp r1, #1
	bne _08054590
	b _0805474C
_08054590:
	ldr r2, _080545A8 @ =gUnk_08001A1C
	movs r4, #0
	cmp r3, #0x19
	bhi _0805463C
	lsls r0, r3, #2
	ldr r1, _080545AC @ =_080545B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080545A4: .4byte gRoomVars
_080545A8: .4byte gUnk_08001A1C
_080545AC: .4byte _080545B0
_080545B0: @ jump table
	.4byte _0805463C @ case 0
	.4byte _08054618 @ case 1
	.4byte _08054618 @ case 2
	.4byte _08054618 @ case 3
	.4byte _08054618 @ case 4
	.4byte _08054618 @ case 5
	.4byte _08054618 @ case 6
	.4byte _08054618 @ case 7
	.4byte _08054618 @ case 8
	.4byte _08054618 @ case 9
	.4byte _08054618 @ case 10
	.4byte _08054618 @ case 11
	.4byte _08054618 @ case 12
	.4byte _0805463C @ case 13
	.4byte _0805463C @ case 14
	.4byte _0805463A @ case 15
	.4byte _08054634 @ case 16
	.4byte _08054634 @ case 17
	.4byte _08054634 @ case 18
	.4byte _08054634 @ case 19
	.4byte _08054634 @ case 20
	.4byte _08054634 @ case 21
	.4byte _08054634 @ case 22
	.4byte _08054634 @ case 23
	.4byte _08054624 @ case 24
	.4byte _08054624 @ case 25
_08054618:
	lsls r1, r3, #5
	ldr r0, _08054620 @ =gUnk_0800137C
	adds r4, r1, r0
	b _0805463C
	.align 2, 0
_08054620: .4byte gUnk_0800137C
_08054624:
	ldrb r0, [r5, #0xa]
	ldr r4, _08054630 @ =gUnk_0800191C
	cmp r0, #0
	beq _0805463C
	adds r4, #0x20
	b _0805463C
	.align 2, 0
_08054630: .4byte gUnk_0800191C
_08054634:
	lsls r1, r3, #5
	ldr r0, _08054650 @ =gUnk_0800161C
	adds r2, r1, r0
_0805463A:
	ldr r4, _08054654 @ =gUnk_02034398
_0805463C:
	cmp r4, #0
	bne _08054642
	b _0805474C
_08054642:
	ldr r0, _08054658 @ =gUnk_02002A40
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #0
	bne _08054660
	ldr r3, _0805465C @ =gUnk_08001A1C
	b _08054666
	.align 2, 0
_08054650: .4byte gUnk_0800161C
_08054654: .4byte gUnk_02034398
_08054658: .4byte gUnk_02002A40
_0805465C: .4byte gUnk_08001A1C
_08054660:
	lsls r1, r1, #5
	ldr r0, _0805473C @ =gUnk_0800143C
	adds r3, r1, r0
_08054666:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08000F14
	ldr r4, _08054740 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08054684
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #5
	strh r0, [r1, #8]
_08054684:
	adds r0, r4, #0
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054698
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xc]
	adds r0, #3
	strh r0, [r1, #0xc]
_08054698:
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _080546AC
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
_080546AC:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _080546C0
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
_080546C0:
	ldr r2, _08054744 @ =gUnk_08001A1C
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _080546D0
	adds r2, #0x20
_080546D0:
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080546DE
	adds r3, #0x40
_080546DE:
	mov r0, sp
	mov r1, sp
	bl sub_08000F2C
	adds r4, r0, #0
	bl Random
	adds r2, r0, #0
	asrs r5, r2, #0x18
	movs r0, #0xf
	ands r5, r0
	adds r0, r2, #0
	adds r1, r4, #0
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, r2
	bgt _08054726
	movs r4, #0xf
_0805470E:
	adds r3, #1
	adds r5, #1
	ands r5, r4
	cmp r3, #0xf
	bhi _08054726
	lsls r0, r5, #1
	add r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	cmp r1, r2
	ble _0805470E
_08054726:
	ldr r0, _08054748 @ =gUnk_080FE1B4
	adds r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805474C
	adds r0, r6, #0
	movs r2, #0
	bl CreateItemDrop
	b _0805474E
	.align 2, 0
_0805473C: .4byte gUnk_0800143C
_08054740: .4byte gUnk_02002A40
_08054744: .4byte gUnk_08001A1C
_08054748: .4byte gUnk_080FE1B4
_0805474C:
	movs r0, #0
_0805474E:
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start CreateItemDrop
CreateItemDrop: @ 0x08054754
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0x5e
	beq _08054786
	cmp r4, #0x5e
	bhi _08054772
	cmp r4, #0x5c
	beq _080547A6
	cmp r4, #0x5c
	bhi _08054782
	cmp r4, #0x3f
	beq _08054794
	b _080547DA
_08054772:
	cmp r4, #0xfc
	blo _080547DA
	cmp r4, #0xfe
	bls _080547A6
	cmp r4, #0xff
	bne _080547DA
	movs r0, #1
	b _08054788
_08054782:
	movs r0, #0x65
	b _08054788
_08054786:
	movs r0, #9
_08054788:
	bl GetInventoryValue
	cmp r0, #0
	bne _080547DA
_08054790:
	movs r0, #0
	b _0805486C
_08054794:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	cmp r5, #0
	bne _080547DA
	movs r5, #1
	b _080547DA
_080547A6:
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	ldr r0, _080547FC @ =gRoomVars
	ldrb r0, [r0, #5]
	cmp r0, #3
	bhi _08054790
	cmp r4, #0x5c
	beq _080547DA
	adds r5, r4, #0
	subs r5, #0xfc
	bl Random
	movs r1, #0x3f
	ands r1, r0
	ldr r2, _08054800 @ =gUnk_080FE1DD
	lsls r0, r5, #6
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	movs r4, #0x5c
	cmp r5, #0
	bne _080547DA
	movs r4, #0
_080547DA:
	cmp r4, #0
	beq _0805486A
	cmp r4, #0xff
	beq _08054842
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldr r0, _08054804 @ =gPlayerEntity
	cmp r6, r0
	bne _08054808
	movs r0, #1
	b _0805480A
	.align 2, 0
_080547FC: .4byte gRoomVars
_08054800: .4byte gUnk_080FE1DD
_08054804: .4byte gPlayerEntity
_08054808:
	movs r0, #0
_0805480A:
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #8]
	cmp r0, #6
	bne _08054838
	ldrb r0, [r6, #9]
	cmp r0, #0x63
	bne _0805481C
	str r2, [r6, #0x54]
	b _08054838
_0805481C:
	cmp r0, #0x1e
	bne _08054838
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0xc0
	strh r0, [r2, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08054838:
	adds r0, r6, #0
	adds r1, r2, #0
	bl CopyPosition
	b _0805486A
_08054842:
	movs r0, #7
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldrh r0, [r6, #0x2e]
	strh r0, [r2, #0x2e]
	ldrh r0, [r6, #0x32]
	strh r0, [r2, #0x32]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_0805486A:
	adds r0, r4, #0
_0805486C:
	pop {r4, r5, r6, pc}
	.align 2, 0
    .syntax divided
