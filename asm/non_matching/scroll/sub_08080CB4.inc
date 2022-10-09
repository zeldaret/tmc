	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r4, #0xa]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08080CF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldrb r0, [r4, #0xa]
	cmp r0, #0x5c
	beq _08080CD4
	b _08080E00
_08080CD4:
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	ldr r1, _08080CEC @ =gKinstoneWorldEvents
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	b _08080E00
	.align 2, 0
_08080CEC: .4byte gKinstoneWorldEvents
_08080CF0:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08080D00
	b _08080E00
_08080D00:
	ldrb r0, [r4, #0xa]
	subs r0, #0x40
	cmp r0, #0x22
	bhi _08080E00
	lsls r0, r0, #2
	ldr r1, _08080D14 @ =_08080D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080D14: .4byte _08080D18
_08080D18: @ jump table
	.4byte _08080DEE @ case 0
	.4byte _08080DEE @ case 1
	.4byte _08080DEE @ case 2
	.4byte _08080DEE @ case 3
	.4byte _08080E00 @ case 4
	.4byte _08080E00 @ case 5
	.4byte _08080E00 @ case 6
	.4byte _08080E00 @ case 7
	.4byte _08080E00 @ case 8
	.4byte _08080E00 @ case 9
	.4byte _08080E00 @ case 10
	.4byte _08080E00 @ case 11
	.4byte _08080E00 @ case 12
	.4byte _08080E00 @ case 13
	.4byte _08080E00 @ case 14
	.4byte _08080E00 @ case 15
	.4byte _08080E00 @ case 16
	.4byte _08080E00 @ case 17
	.4byte _08080E00 @ case 18
	.4byte _08080E00 @ case 19
	.4byte _08080E00 @ case 20
	.4byte _08080E00 @ case 21
	.4byte _08080E00 @ case 22
	.4byte _08080E00 @ case 23
	.4byte _08080E00 @ case 24
	.4byte _08080E00 @ case 25
	.4byte _08080E00 @ case 26
	.4byte _08080E00 @ case 27
	.4byte _08080DEE @ case 28
	.4byte _08080E00 @ case 29
	.4byte _08080E00 @ case 30
	.4byte _08080E00 @ case 31
	.4byte _08080DA4 @ case 32
	.4byte _08080E00 @ case 33
	.4byte _08080DEE @ case 34
_08080DA4:
	adds r5, r4, #0
	adds r5, #0x6a
	ldrb r0, [r5]
	cmp r0, #0
	beq _08080DB4
	subs r0, #1
	strb r0, [r5]
	b _08080E00
_08080DB4:
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xa
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08080E00
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x62
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	adds r2, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl SortEntityAbove
	b _08080E00
_08080DEE:
	ldr r0, _08080E04 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08080E00
	adds r0, r4, #0
	bl CreateSparkle
_08080E00:
	pop {r4, r5, pc}
	.align 2, 0
_08080E04: .4byte gRoomTransition
	.syntax divided
