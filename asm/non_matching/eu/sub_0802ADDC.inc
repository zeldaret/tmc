.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	adds r1, #2
	movs r0, #0x1b
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0802AD92
	adds r0, r5, #0
	bl sub_0802B234
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r4, #0xb]
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0802AD92
	subs r1, #7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AD92:
	pop {r4, r5, pc}
.syntax divided
