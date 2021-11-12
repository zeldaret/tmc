    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #0x10
	eors r2, r5
	adds r0, r2, #0
	subs r0, #0xc
	movs r2, #0x1f
	ands r0, r2
	ldrb r1, [r3, #0x15]
	subs r1, r1, r0
	ands r1, r2
	cmp r1, #0x18
	bhi _08017CF0
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08017940
	b _08017D1E
_08017CF0:
	adds r1, r3, #0
	adds r1, #0x42
	movs r0, #0xc
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r5, [r0]
	adds r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017D1E
	movs r0, #0xff
	strb r0, [r1]
_08017D1E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
