	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl GetCurrentRoomProperty
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _08057188
	b _0805728A
_08057188:
	ldr r1, _080571E8 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08057194
	adds r0, #0xf
_08057194:
	asrs r6, r0, #4
	movs r7, #0x32
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _080571A0
	adds r0, #0xf
_080571A0:
	asrs r5, r0, #4
	movs r0, #0x21
	adds r0, r0, r4
	mov ip, r0
_080571A8:
	ldrb r0, [r3]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	beq _08057282
	ldr r1, _080571EC @ =gRoomControls
	ldrh r0, [r1, #6]
	lsrs r0, r0, #4
	ldrb r7, [r3, #1]
	adds r2, r0, r7
	ldrh r0, [r1, #8]
	lsrs r0, r0, #4
	ldrb r1, [r3, #2]
	adds r0, r0, r1
	subs r0, r5, r0
	ldrb r7, [r3, #4]
	cmp r0, r7
	bhs _08057282
	subs r0, r6, r2
	ldrb r1, [r3, #3]
	cmp r0, r1
	bhs _08057282
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, #5
	bhi _08057268
	lsls r0, r0, #2
	ldr r1, _080571F0 @ =_080571F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080571E8: .4byte gPlayerEntity
_080571EC: .4byte gRoomControls
_080571F0: .4byte _080571F4
_080571F4: @ jump table
	.4byte _0805720C @ case 0
	.4byte _08057220 @ case 1
	.4byte _08057258 @ case 2
	.4byte _08057246 @ case 3
	.4byte _08057216 @ case 4
	.4byte _08057236 @ case 5
_0805720C:
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #2
	bne _08057268
	b _08057260
_08057216:
	mov r7, ip
	ldrb r0, [r7]
	cmp r0, #6
	bne _08057268
	b _08057260
_08057220:
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	b _08057268
_08057236:
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _08057268
_08057246:
	mov r7, ip
	ldrb r1, [r7]
	cmp r1, #0
	bne _08057268
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	str r1, [r4, #0x34]
	b _08057268
_08057258:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #4
	bne _08057268
_08057260:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0xe]
_08057268:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08057282
	movs r0, #8
	strb r0, [r4, #0xf]
	ldrb r0, [r3]
	mov r2, ip
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	b _0805728A
_08057282:
	adds r3, #5
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080571A8
_0805728A:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
