	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC270
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #0x21
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AC23C
	movs r0, #2
	strb r0, [r1, #0xa]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_080AC23C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080AC24C
	bl DeleteThisEntity
_080AC24C:
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC25C
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC25C:
	cmp r0, #2
	bne _080AC266
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC266:
	ldrb r0, [r4, #0x15]
	adds r0, #2
_080AC26A:
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080AC270:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
