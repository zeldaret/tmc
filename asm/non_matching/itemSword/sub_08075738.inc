	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075750 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08075754
	adds r0, r4, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_08075750: .4byte gPlayerState
_08075754:
	adds r0, r4, #0
	bl UpdateItemAnim
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _08075768
	movs r0, #2
	strb r0, [r4, #7]
_08075768:
	ldrb r2, [r5, #0x1b]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080757D4
	ldrb r1, [r5, #0xd]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08075780
	strb r1, [r4, #0xb]
_08075780:
	ldr r1, _080757D0 @ =gPlayerEntity
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	movs r2, #0xa
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080757AA
	movs r2, #0xf
_080757AA:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bls _080757C6
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	ands r0, r1
	cmp r0, #0
	bne _0807588C
_080757C6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_080757D0: .4byte gPlayerEntity
_080757D4:
	ldr r7, _08075890 @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08075816
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	adds r0, r4, #0
	movs r1, #0x14
	bl CreatePlayerBomb
	adds r2, r0, #0
	cmp r2, #0
	beq _08075816
	ldrb r0, [r7, #0x14]
	movs r1, #6
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x14]
_08075816:
	ldr r5, _08075890 @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldr r2, _08075894 @ =gPlayerState
	ldrb r3, [r2, #0x1b]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0807587A
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807587A
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r2, #0
	adds r1, #0xab
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_0807587A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807588C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075890: .4byte gPlayerEntity
_08075894: .4byte gPlayerState
	.syntax divided
