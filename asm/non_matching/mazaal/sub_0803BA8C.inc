
    .syntax unified

	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r4, r6, #0
	adds r4, #0x74
	ldrb r3, [r4]
	movs r2, #0xe0
	ands r2, r3
	cmp r2, #0
	bne _0803BAEC
	cmp r3, #0
	bne _0803BAD2
	adds r2, r6, #0
	adds r2, #0x75
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0803BABA
	strb r1, [r2]
_0803BABA:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0803BAC8
	ldr r1, _0803BAC4 @ =gUnk_080CFD30
	b _0803BACA
	.align 2, 0
_0803BAC4: .4byte gUnk_080CFD30
_0803BAC8:
	ldr r1, _0803BAE8 @ =gUnk_080CFD44
_0803BACA:
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BAD2:
	adds r2, r6, #0
	adds r2, #0x74
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	cmp r5, r0
	bhi _0803BB18
	movs r0, #0
	strb r0, [r2]
	b _0803BB18
	.align 2, 0
_0803BAE8: .4byte gUnk_080CFD44
_0803BAEC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0803BB18
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r4]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	beq _0803BB0C
	ldr r1, _0803BB08 @ =gUnk_080CFD58
	b _0803BB0E
	.align 2, 0
_0803BB08: .4byte gUnk_080CFD58
_0803BB0C:
	ldr r1, _0803BB78 @ =gUnk_080CFD5C
_0803BB0E:
	ldrb r0, [r6, #0xa]
	subs r0, #2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0803BB18:
	cmp r1, #0
	beq _0803BB74
	adds r0, r6, #0
	bl sub_0801D2B4
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r5, [r0, #0x78]
	ldrb r1, [r6, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r4, [r5, #0x1a]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r4, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r4, #0x1a]
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x1a]
	ldr r0, [r6, #0x50]
	ldr r3, [r0, #0x54]
	ldrb r0, [r6, #0x1a]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #0x1a]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1a]
_0803BB74:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803BB78: .4byte gUnk_080CFD5C
    .syntax divided
