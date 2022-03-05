	.syntax unified
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0801C2E4 @ =gUnk_0200AF34
	adds r6, r5, #0
	subs r6, #0x34
	movs r7, #0xd
	rsbs r7, r7, #0
	ldr r3, _0801C2E8 @ =0x040000D4
_0801C26C:
	lsls r0, r4, #5
	adds r2, r0, r5
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C2A8
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0801C2A8
	adds r0, r7, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r2, #0x1c]
	str r0, [r3]
	ldrh r0, [r2, #0x1a]
	lsls r0, r0, #5
	ldr r1, _0801C2EC @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0801C2A8:
	adds r4, #1
	cmp r4, #0x17
	ble _0801C26C
	adds r2, r6, #0
	ldrb r3, [r2, #0x13]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801C2C8
	movs r1, #0x7f
	ands r1, r3
	strb r1, [r2, #0x13]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2C8:
	ldrb r2, [r6, #0x14]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0801C2E0
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r6, #0x14]
	movs r0, #0x93
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C2E4: .4byte gUnk_0200AF34
_0801C2E8: .4byte 0x040000D4
_0801C2EC: .4byte 0x06010000
	.syntax divided
