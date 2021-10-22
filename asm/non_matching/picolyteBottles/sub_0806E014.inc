	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl Random
	movs r1, #0x70
	ands r1, r0
	lsrs r4, r1, #4
	movs r0, #0xff
	strb r0, [r5, #0xb]
	movs r0, #1
	rsbs r0, r0, #0
	adds r7, r0, #0
	strb r0, [r5, #0xe]
	movs r0, #0x93
	bl CheckLocalFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0806E088
	adds r0, r5, #0
	adds r0, #0x44
	strb r1, [r0]
	lsls r1, r4, #1
	ldr r0, _0806E084 @ =gUnk_081142CC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xd0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r1, #0xf]
	orrs r0, r7
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	adds r0, r5, #0
	bl CopyPosition
	b _0806E0D6
	.align 2, 0
_0806E084: .4byte gUnk_081142CC
_0806E088:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	lsls r1, r4, #2
	ldr r0, _0806E0D8 @ =gUnk_081142DC
	adds r6, r1, r0
	ldr r1, [r5, #0x68]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x68]
	movs r2, #0xe0
	lsls r2, r2, #0xe
	movs r4, #0x90
	lsls r4, r4, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x6c]
	ldrb r0, [r6, #1]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x6c]
	movs r2, #0xb0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
	ldr r1, [r5, #0x70]
	ldrb r0, [r6, #2]
	strb r0, [r1, #0xf]
	ldr r1, [r5, #0x70]
	movs r2, #0xf0
	lsls r2, r2, #0xf
	adds r0, r5, #0
	adds r3, r4, #0
	bl PositionRelative
_0806E0D6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806E0D8: .4byte gUnk_081142DC
	.syntax divided
