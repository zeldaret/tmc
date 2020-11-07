
	.syntax unified

	.text


	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _08024F46
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r7, #0
	movs r1, #0xff
	ands r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_0807953C
	cmp r0, #0
	beq _08024E84
	bl Random
	adds r3, r4, #0
	adds r3, #0x84
	ldrb r2, [r3]
	adds r2, #1
	movs r1, #1
	ands r1, r0
	adds r2, r2, r1
	strb r2, [r3]
_08024E84:
	ldr r0, _08024EC8 @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x87
	cmp r0, #0
	beq _08024E9A
	adds r5, r2, #0
	ldrb r0, [r5]
	cmp r0, #4
	bne _08024ECC
_08024E9A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0x30
	strb r0, [r1]
	strb r7, [r2]
	adds r0, r4, #0
	bl sub_08024F50
	adds r0, r4, #0
	adds r0, #0x80
	strb r7, [r0]
	movs r1, #0x40
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl sub_08024A14
	b _08024F46
	.align 2, 0
_08024EC8: .4byte gUnk_02002A40
_08024ECC:
	ldr r6, _08024F48 @ =gPlayerEntity
	bl ResetPlayer
	ldr r2, _08024F4C @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldrb r0, [r2, #0xa]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #0xe
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3a
	strb r7, [r0]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r6, #0
	adds r1, #0x63
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #4
	strb r0, [r6, #0x14]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3d
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08024F46
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xa
	bl ModHealth
	adds r0, r6, #0
	movs r1, #0x7a
	bl sub_0800449C
_08024F46:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08024F48: .4byte gPlayerEntity
_08024F4C: .4byte gPlayerState

	.syntax divided
