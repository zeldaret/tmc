	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r3, [r4, #0xe]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	adds r0, #0x81
	strb r3, [r0]
	adds r0, #2
	strb r3, [r0]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0808F9E8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x80
	strb r3, [r0]
	b _0808FA1C
_0808F9E8:
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808FA0A
	cmp r0, #4
	bne _0808FA1C
_0808FA0A:
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
	strb r3, [r4, #0xd]
	strb r3, [r4, #0x1e]
_0808FA1C:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0808FAC4
	movs r6, #0
	cmp r0, #0x80
	beq _0808FA84
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FA38 @ =0x00000101
	cmp r1, r0
	bne _0808FA3C
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	ldrh r1, [r4, #0x32]
	b _0808FA42
	.align 2, 0
_0808FA38: .4byte 0x00000101
_0808FA3C:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	ldrh r1, [r4, #0x2e]
_0808FA42:
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	adds r5, r1, #0
	ldr r3, [r4, #0x50]
	cmp r3, #0
	bne _0808FA5E
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	b _0808FA7C
_0808FA5E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FA76
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	bne _0808FAA2
	adds r6, #1
	b _0808FAA2
_0808FA76:
	ldrb r0, [r2]
	bl CheckLocalFlag
_0808FA7C:
	cmp r0, #0
	beq _0808FAA2
	adds r6, #1
	b _0808FAA2
_0808FA84:
	movs r6, #1
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FA94 @ =0x00000101
	cmp r1, r0
	bne _0808FA98
	ldrh r1, [r4, #0x32]
	b _0808FA9A
	.align 2, 0
_0808FA94: .4byte 0x00000101
_0808FA98:
	ldrh r1, [r4, #0x2e]
_0808FA9A:
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	adds r5, r0, #0
_0808FAA2:
	cmp r6, #0
	beq _0808FAC4
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #0xa]
	ldr r0, _0808FABC @ =0x00000101
	cmp r1, r0
	bne _0808FAC0
	ldrh r0, [r5]
	strh r0, [r4, #0x32]
	b _0808FAC4
	.align 2, 0
_0808FABC: .4byte 0x00000101
_0808FAC0:
	ldrh r0, [r5]
	strh r0, [r4, #0x2e]
_0808FAC4:
	adds r0, r4, #0
	bl sub_0808FF50
	pop {r4, r5, r6, pc}
	.syntax divided
