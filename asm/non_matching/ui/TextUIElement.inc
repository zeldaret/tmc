	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	ldr r1, _0801CDC0 @ =gUnk_0200AF00
	cmp r0, #9
	bne _0801CDD4
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801CDCE
	ldr r0, _0801CDC4 @ =gArea
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	beq _0801CDC8
	cmp r0, #3
	beq _0801CDCC
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	b _0801CDCE
	.align 2, 0
_0801CDC0: .4byte gUnk_0200AF00
_0801CDC4: .4byte gArea
_0801CDC8:
	movs r2, #0xb
	b _0801CDCE
_0801CDCC:
	movs r2, #0xa
_0801CDCE:
	adds r0, r1, #0
	adds r0, #0x32
	strb r2, [r0]
_0801CDD4:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	cmp r2, #0
	beq _0801CE1E
	ldr r1, _0801CE20 @ =gUnk_080C9044
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0801CAFC
	ldrb r0, [r4, #3]
	bl FindUIElement
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CE1E
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0801CE1E:
	pop {r4, pc}
	.align 2, 0
_0801CE20: .4byte gUnk_080C9044
	.syntax divided
