	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r5, #8
	cmp r0, #0x28
	bhi _0801B3F4
	movs r5, #4
	ldr r1, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B3C4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B3C8
_0801B3C4:
	adds r0, r1, #0
	adds r0, #0x10
_0801B3C8:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	movs r2, #0xf0
	adds r0, r1, #0
	ands r0, r2
	subs r0, #1
	cmp r0, #0x7f
	bls _0801B3E0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r1, r0
	str r1, [r4, #0x68]
_0801B3E0:
	ldr r0, [r4, #0x68]
	ands r0, r2
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl SetAffineInfo
_0801B3F4:
	ldrb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0801B408
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _0801B416
_0801B408:
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
_0801B416:
	pop {r4, r5, pc}
	.syntax divided
