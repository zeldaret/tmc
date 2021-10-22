	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0xa]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801B28A
	movs r0, #0x3c
	b _0801B29C
_0801B28A:
	cmp r0, #0xfe
	bne _0801B29A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0xa]
	b _0801B29E
_0801B29A:
	movs r0, #0x96
_0801B29C:
	strb r0, [r2, #0xe]
_0801B29E:
	ldr r0, _0801B2BC @ =gUnk_080B77F4
	str r0, [r2, #0x48]
	movs r0, #0
	strb r0, [r2, #0x16]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B2C0
	adds r0, r2, #0
	movs r1, #5
	bl InitializeAnimation
	b _0801B2C8
	.align 2, 0
_0801B2BC: .4byte gUnk_080B77F4
_0801B2C0:
	adds r0, r2, #0
	movs r1, #0x15
	bl InitializeAnimation
_0801B2C8:
	pop {pc}
	.align 2, 0
	.syntax divided
