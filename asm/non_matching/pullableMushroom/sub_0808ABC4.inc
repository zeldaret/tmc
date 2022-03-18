	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0xc]
	ldr r0, _0808AC38 @ =0x00000201
	cmp r1, r0
	bne _0808ABD6
	bl DeleteThisEntity
_0808ABD6:
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x50]
	bl sub_0808B1F0
	adds r2, r0, #0
	cmp r2, #7
	bhi _0808ABE6
	movs r2, #0
_0808ABE6:
	ldrb r3, [r4, #0x14]
	lsls r1, r3, #2
	ldr r0, _0808AC3C @ =gUnk_081211CC
	adds r5, r1, r0
	cmp r2, #0x1f
	bhi _0808AC5A
	cmp r2, #0
	beq _0808ABF8
	subs r2, #6
_0808ABF8:
	ldrh r0, [r5]
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x50]
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldrh r3, [r1, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	movs r0, #3
	ldrsb r0, [r5, r0]
	ldrh r1, [r1, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808AC40
	lsls r1, r2, #4
	movs r0, #0x80
	lsls r0, r0, #2
	subs r0, r0, r1
	str r0, [r4, #0x74]
	lsls r0, r2, #3
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x78]
	movs r0, #0xf
	strb r0, [r4, #0x1e]
	b _0808ACDE
	.align 2, 0
_0808AC38: .4byte 0x00000201
_0808AC3C: .4byte gUnk_081211CC
_0808AC40:
	lsls r1, r2, #4
	movs r0, #0x80
	lsls r0, r0, #2
	subs r0, r0, r1
	str r0, [r4, #0x78]
	lsls r0, r2, #3
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r4, #0x74]
	movs r0, #0x14
	strb r0, [r4, #0x1e]
	b _0808ACDE
_0808AC5A:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0808AC9E
	adds r1, r2, #0
	subs r1, #0x20
	lsls r1, r1, #2
	adds r0, #0xff
	subs r0, r0, r1
	str r0, [r4, #0x74]
	lsls r0, r2, #3
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x78]
	movs r0, #0x10
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808AC92
	ldr r0, [r4, #0x50]
	lsrs r1, r2, #1
	ldrh r0, [r0, #0x2e]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	b _0808ACDE
_0808AC92:
	ldr r1, [r4, #0x50]
	lsrs r0, r2, #1
	ldrh r1, [r1, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _0808ACDE
_0808AC9E:
	adds r1, r2, #0
	subs r1, #0x20
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	str r0, [r4, #0x78]
	lsls r0, r2, #3
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r4, #0x74]
	movs r0, #0x15
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808ACCE
	ldr r0, [r4, #0x50]
	lsrs r1, r2, #1
	ldrh r0, [r0, #0x32]
	adds r1, r1, r0
	b _0808ACD6
_0808ACCE:
	ldr r0, [r4, #0x50]
	lsrs r2, r2, #1
	ldrh r1, [r0, #0x32]
	subs r1, r1, r2
_0808ACD6:
	movs r0, #3
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_0808ACDE:
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0x78]
	ldr r3, [r4, #0x70]
	adds r0, r4, #0
	bl SetAffineInfo
	pop {r4, r5, pc}
	.syntax divided
