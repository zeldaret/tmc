	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	subs r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0805DC06
	bl sub_0805DC70
	b _0805DC6C
_0805DC06:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x78
	bne _0805DC18
	movs r0, #0x78
	movs r1, #2
	bl sub_08080964
	b _0805DC36
_0805DC18:
	cmp r1, #0xd2
	bne _0805DC26
	movs r0, #0x5a
	movs r1, #1
	bl sub_08080964
	b _0805DC36
_0805DC26:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DC36
	movs r0, #0x5a
	movs r1, #0
	bl sub_08080964
_0805DC36:
	ldrh r1, [r4, #0x20]
	adds r0, r1, #0
	cmp r0, #0x77
	bhi _0805DC42
	movs r0, #0xf
	b _0805DC48
_0805DC42:
	cmp r0, #0xd1
	bhi _0805DC58
	movs r0, #0x1f
_0805DC48:
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl SoundReq
	b _0805DC6C
_0805DC58:
	cmp r0, #0xc7
	bhi _0805DC6C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0805DC6C
	movs r0, #0x93
	lsls r0, r0, #1
	bl SoundReq
_0805DC6C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
