	.syntax unified
	push {r4, r5, r6, lr}
	ldr r1, _080782D8 @ =gPlayerState
	adds r2, r1, #0
	adds r2, #0xa8
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0
	bne _080782DC
	adds r0, r4, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	b _080782DE
	.align 2, 0
_080782D8: .4byte gPlayerState
_080782DC:
	ldrb r0, [r2]
_080782DE:
	subs r0, #2
	cmp r0, #0x14
	bhi _08078348
	lsls r0, r0, #2
	ldr r1, _080782F0 @ =_080782F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080782F0: .4byte _080782F4
_080782F4: @ jump table
	.4byte _080784AC @ case 0
	.4byte _080784AC @ case 1
	.4byte _08078348 @ case 2
	.4byte _08078348 @ case 3
	.4byte _08078348 @ case 4
	.4byte _08078348 @ case 5
	.4byte _08078348 @ case 6
	.4byte _08078348 @ case 7
	.4byte _08078348 @ case 8
	.4byte _08078348 @ case 9
	.4byte _080784AC @ case 10
	.4byte _08078348 @ case 11
	.4byte _08078348 @ case 12
	.4byte _08078348 @ case 13
	.4byte _08078348 @ case 14
	.4byte _08078348 @ case 15
	.4byte _080784AC @ case 16
	.4byte _08078348 @ case 17
	.4byte _08078348 @ case 18
	.4byte _080784AC @ case 19
	.4byte _080784AC @ case 20
_08078348:
	adds r0, r4, #0
	adds r0, #0x27
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r0]
	ldrb r0, [r2]
	orrs r0, r1
	cmp r0, #0
	beq _0807835C
	b _080784AC
_0807835C:
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _08078376
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0807836A
	b _080784AC
_0807836A:
	bl CanDispEzloMessage
	cmp r0, #0
	beq _08078374
	b _080784C4
_08078374:
	b _080784AC
_08078376:
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08078384
	b _080784AC
_08078384:
	bl CanDispEzloMessage
	cmp r0, #0
	beq _0807838E
	b _080784C4
_0807838E:
	bl sub_080784E4
	ldr r6, [r0, #8]
	cmp r6, #0
	bne _0807839A
	b _080784AC
_0807839A:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _080783B6
	cmp r0, #4
	beq _080783A6
	b _080784AC
_080783A6:
	ldr r0, _08078400 @ =gPlayerEntity
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x54]
	ldrh r1, [r0, #8]
	ldr r0, _08078404 @ =0x00000206
	cmp r1, r0
	beq _080783B6
	b _080784AC
_080783B6:
	ldr r2, _08078408 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0807842C
	ldr r5, _0807840C @ =gUnk_03003DF0
	ldr r0, [r5, #4]
	ldrb r0, [r0, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _0807842C
	movs r0, #0
	bl sub_0801E738
	ldr r0, _08078410 @ =gSave
	ldr r1, _08078414 @ =0x0000012B
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08078418
	ldr r1, [r5, #4]
	ldrb r0, [r1, #3]
	strb r0, [r5, #2]
	ldr r0, [r1, #8]
	adds r0, #0x39
	movs r1, #2
	strb r1, [r0]
	movs r0, #7
	strb r0, [r4, #0xc]
	b _08078420
	.align 2, 0
_08078400: .4byte gPlayerEntity
_08078404: .4byte 0x00000206
_08078408: .4byte gPlayerState
_0807840C: .4byte gUnk_03003DF0
_08078410: .4byte gSave
_08078414: .4byte 0x0000012B
_08078418:
	ldr r0, _08078428 @ =0x00000B65
	movs r1, #0
	bl CreateEzloHint
_08078420:
	movs r0, #0x13
	bl ForceSetPlayerState
	b _080784C4
	.align 2, 0
_08078428: .4byte 0x00000B65
_0807842C:
	adds r0, r4, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	beq _080784AC
	ldr r0, _08078450 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #1]
	cmp r0, #0xa
	bhi _080784C4
	lsls r0, r0, #2
	ldr r1, _08078454 @ =_08078458
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08078450: .4byte gUnk_03003DF0
_08078454: .4byte _08078458
_08078458: @ jump table
	.4byte _080784C4 @ case 0
	.4byte _08078484 @ case 1
	.4byte _080784C4 @ case 2
	.4byte _0807848E @ case 3
	.4byte _080784C4 @ case 4
	.4byte _0807848E @ case 5
	.4byte _08078484 @ case 6
	.4byte _0807848E @ case 7
	.4byte _080784A4 @ case 8
	.4byte _08078484 @ case 9
	.4byte _08078484 @ case 10
_08078484:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x13
	bl ForceSetPlayerState
_0807848E:
	adds r1, r6, #0
	adds r1, #0x39
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080784A0 @ =gUnk_03003DF0
	strb r2, [r0, #2]
	b _080784C4
	.align 2, 0
_080784A0: .4byte gUnk_03003DF0
_080784A4:
	ldr r2, _080784B0 @ =gRoomVars
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _080784B4
_080784AC:
	movs r0, #0
	b _080784C6
	.align 2, 0
_080784B0: .4byte gRoomVars
_080784B4:
	adds r1, r6, #0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #6]
	ldrb r0, [r6, #0xb]
	strb r0, [r2, #7]
_080784C4:
	movs r0, #1
_080784C6:
	pop {r4, r5, r6, pc}
	.syntax divided
