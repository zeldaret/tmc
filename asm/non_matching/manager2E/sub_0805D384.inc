	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0805D3B2
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D3C6
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	movs r1, #0x72
	cmp r0, #0
	beq _0805D3A4
	adds r1, r0, #0
_0805D3A4:
	adds r0, r1, #0
	bl SoundReq
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	b _0805D3C6
_0805D3B2:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _0805D3C6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl ClearFlag
_0805D3C6:
	pop {r4, pc}
	.syntax divided
