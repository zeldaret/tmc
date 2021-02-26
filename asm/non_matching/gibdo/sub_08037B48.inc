

	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037B88
	ldrb r0, [r4, #0xe]
	movs r2, #0
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037B88:
	adds r0, r4, #0
	adds r0, #0x80
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037BCA
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	movs r0, #0x29
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #0xfd
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r2, [r0]
	str r4, [r3, #0x50]
_08037BCA:
	adds r0, r4, #0
	adds r0, #0x84
	str r3, [r0]
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _08037C06
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x62
	movs r0, #5
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xf5
	strb r0, [r1]
	str r4, [r3, #0x50]
_08037C06:
	str r3, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0

    .syntax divided
