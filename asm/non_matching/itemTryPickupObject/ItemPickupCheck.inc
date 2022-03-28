	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08076220 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080762B8
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080761DE
	ldr r0, [r5, #0x30]
	ldr r1, _08076224 @ =0x00001201
	ands r0, r1
	cmp r0, #0
	beq _080762B8
_080761DE:
	ldr r1, _08076228 @ =gPlayerEntity
	ldrb r2, [r1, #0x14]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r5, #1]
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #8
	bgt _080762B8
	bl sub_080789A8
	adds r3, r0, #0
	cmp r3, #1
	beq _08076258
	cmp r3, #1
	blo _0807626E
	cmp r3, #2
	bne _080762C0
	ldr r0, _0807622C @ =gCarriedEntity
	ldr r2, [r0, #8]
	ldrb r1, [r2, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08076230
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl sub_08076088
	b _080762C0
	.align 2, 0
_08076220: .4byte gPlayerState
_08076224: .4byte 0x00001201
_08076228: .4byte gPlayerEntity
_0807622C: .4byte gCarriedEntity
_08076230:
	str r2, [r4, #0x18]
	strb r3, [r2, #0xc]
	movs r1, #5
	strb r1, [r2, #0xd]
	adds r0, r5, #0
	adds r0, #0xa8
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #2
	adds r3, r6, #0
	bl sub_080762C4
	ldr r0, _08076254 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	b _08076264
	.align 2, 0
_08076254: .4byte gUnk_0200AF00
_08076258:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080762C4
_08076264:
	movs r0, #0x81
	lsls r0, r0, #1
	bl SoundReq
	b _080762C0
_0807626E:
	movs r0, #5
	strb r0, [r4, #4]
	movs r0, #0xf
	strb r0, [r4, #7]
	movs r0, #6
	strb r0, [r4, #0xf]
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r6
	ldrb r2, [r5, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0xb]
	orrs r1, r0
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x30]
	ands r0, r3
	cmp r0, #0
	bne _080762A2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08077DF4
	b _080762AA
_080762A2:
	ldr r1, _080762B4 @ =0x00000948
	adds r0, r4, #0
	bl sub_08077DF4
_080762AA:
	movs r0, #0x88
	bl SoundReq
	b _080762C0
	.align 2, 0
_080762B4: .4byte 0x00000948
_080762B8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl PlayerCancelHoldItem
_080762C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
