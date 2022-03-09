	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r2, #0xf]
	ldrb r4, [r3]
	adds r1, r0, r4
	strb r1, [r3]
	ldrb r4, [r2, #0xf]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0809CC16
	ldrb r0, [r2, #0xe]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmn r1, r0
	bge _0809CC2C
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl SoundReq
	b _0809CC2C
_0809CC16:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	ble _0809CC2C
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl SoundReq
_0809CC2C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
