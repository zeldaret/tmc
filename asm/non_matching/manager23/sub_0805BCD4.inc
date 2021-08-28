	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805BD0E
	cmp r0, #1
	bgt _0805BCE8
	cmp r0, #0
	beq _0805BCEE
	b _0805BD5A
_0805BCE8:
	cmp r0, #2
	beq _0805BD38
	b _0805BD5A
_0805BCEE:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
	movs r0, #2
	strb r0, [r4, #0xc]
	b _0805BD5A
_0805BD0E:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r0, r4, #0
	movs r1, #0x76
	bl sub_0805BE70
	b _0805BD5A
_0805BD38:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805BD5A
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805BD5A
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x75
	bl sub_0805BE70
_0805BD5A:
	pop {r4, pc}
	.syntax divided
