	.syntax unified
	push {r4, lr}
	ldr r0, _08053924 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053968
	ldr r1, _08053928 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r4, r1, #0
	cmp r0, #0
	beq _0805392C
	subs r0, #1
	strh r0, [r4, #0xa]
	b _08053954
	.align 2, 0
_08053924: .4byte gFadeControl
_08053928: .4byte gMenu
_0805392C:
	ldr r0, _0805396C @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08053954
	ldrb r1, [r4, #7]
	cmp r1, #0xf
	bhi _08053954
	adds r1, #1
	strb r1, [r4, #7]
	lsls r1, r1, #0x18
	ldr r3, _08053970 @ =gScreen
	lsrs r2, r1, #0x10
	lsrs r1, r1, #0x19
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x68
	strh r2, [r3]
_08053954:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08053968
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #5
	movs r1, #1
	bl SetFade
_08053968:
	pop {r4, pc}
	.align 2, 0
_0805396C: .4byte gRoomTransition
_08053970: .4byte gScreen
	.syntax divided
