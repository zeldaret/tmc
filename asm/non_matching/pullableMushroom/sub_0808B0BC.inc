	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x88
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	bl sub_0808B1F0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0808B0D6
	cmp r0, #1
	beq _0808B0DE
	b _0808B162
_0808B0D6:
	adds r0, r5, #0
	bl GetNextFrame
	b _0808B162
_0808B0DE:
	ldr r6, _0808B148 @ =gPlayerEntity
	ldrb r0, [r6, #0x14]
	movs r1, #0xe
	ands r1, r0
	ldr r0, _0808B14C @ =gUnk_08126EE4
	adds r1, r1, r0
	mov r2, sp
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #7
	movs r3, #7
	bl sub_0800419C
	cmp r0, #0
	beq _0808B154
	ldrb r0, [r6, #0xc]
	cmp r0, #1
	bne _0808B162
	ldr r4, _0808B150 @ =gPlayerState
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808B162
	movs r0, #0x1b
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x38
	strb r7, [r0]
	ldrb r0, [r5, #0x15]
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x39
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r6, #0
	bl sub_0808B1F0
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	b _0808B162
	.align 2, 0
_0808B148: .4byte gPlayerEntity
_0808B14C: .4byte gUnk_08126EE4
_0808B150: .4byte gPlayerState
_0808B154:
	movs r0, #0x40
	strh r0, [r5, #0x24]
	cmp r7, #0x3f
	bhi _0808B162
	adds r0, r5, #0
	bl LinearMoveUpdate
_0808B162:
	add sp, #0x88
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
