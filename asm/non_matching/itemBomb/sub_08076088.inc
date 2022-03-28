	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	cmp r3, #0
	beq _080760AA
	ldrb r0, [r3, #0x16]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080760A4
	b _080761A0
_080760A4:
	movs r0, #2
	strb r0, [r3, #0xc]
	strb r1, [r3, #0xd]
_080760AA:
	str r3, [r4, #0x18]
	ldr r0, _080760C4 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080760CC
	ldr r1, _080760C8 @ =0x00000928
	adds r0, r4, #0
	bl sub_08077DF4
	b _080760D6
	.align 2, 0
_080760C4: .4byte gPlayerState
_080760C8: .4byte 0x00000928
_080760CC:
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
_080760D6:
	ldr r3, _08076130 @ =gPlayerState
	movs r0, #0
	mov r8, r0
	movs r7, #3
	strb r7, [r3, #5]
	adds r0, r3, #0
	adds r0, #0xa8
	movs r6, #4
	strb r6, [r0]
	movs r0, #2
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	ldr r2, _08076134 @ =gPlayerEntity
	movs r1, #0x79
	adds r1, r1, r2
	mov ip, r1
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076138
	mov r1, r8
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	strb r6, [r3, #5]
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r2, [r3, #0xb]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #0xa]
	ands r1, r0
	strb r1, [r3, #0xa]
	strb r7, [r4, #4]
	mov r0, r8
	strb r0, [r4, #0xf]
	b _0807614A
	.align 2, 0
_08076130: .4byte gPlayerState
_08076134: .4byte gPlayerEntity
_08076138:
	movs r1, #8
	asrs r1, r5
	ldrb r2, [r3, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	orrs r1, r0
	strb r1, [r3, #0xb]
_0807614A:
	adds r0, r4, #0
	movs r1, #0x13
	bl CreatePlayerItemWithParent
	adds r3, r0, #0
	cmp r3, #0
	bne _08076162
	adds r0, r4, #0
	adds r1, r5, #0
	bl PlayerCancelHoldItem
	b _080761A0
_08076162:
	ldr r1, _08076194 @ =gPlayerEntity
	str r3, [r1, #0x74]
	movs r2, #0
	strb r2, [r1, #0xf]
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x54]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x16]
	str r4, [r3, #0x50]
	str r3, [r4, #0x18]
	ldrb r0, [r4, #3]
	strb r0, [r3, #0xb]
	ldrb r0, [r4, #7]
	strb r0, [r3, #0xe]
	ldrb r0, [r4, #8]
	strb r0, [r3, #0xf]
	ldr r0, [r4, #0x18]
	ldrb r1, [r0, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08076198
	movs r0, #8
	strb r0, [r4, #7]
	b _0807619A
	.align 2, 0
_08076194: .4byte gPlayerEntity
_08076198:
	strb r2, [r4, #7]
_0807619A:
	movs r0, #0x7f
	bl SoundReq
_080761A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
