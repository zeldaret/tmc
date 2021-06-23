.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B17A
	subs r0, #1
	strb r0, [r4, #0xe]
_0802B17A:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	bne _0802B190
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_0802B190:
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B1AA
	adds r0, r2, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	b _0802B1EC
_0802B1AA:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802B1D8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0802B1E6
_0802B1D8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802B1E6:
	adds r0, r4, #0
	bl GetNextFrame
_0802B1EC:
	pop {r4, pc}
	.align 2, 0
.syntax divided
