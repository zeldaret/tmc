	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldrh r0, [r5, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r1, _08078D28 @ =gUnk_0811C01C
	ldr r0, _08078D2C @ =gPlayerState
	ldr r0, [r0, #0x2c]
	ldrb r0, [r0, #0x1e]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r3, _08078D30 @ =gUnk_0811C0B0
	ldrb r1, [r4, #0x1c]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #2
	adds r0, r0, r3
	lsls r2, r2, #1
	ldr r0, [r0]
	adds r2, r0, r2
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078D34
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r5, #0x2e]
	subs r0, r0, r1
	b _08078D3C
	.align 2, 0
_08078D28: .4byte gUnk_0811C01C
_08078D2C: .4byte gPlayerState
_08078D30: .4byte gUnk_0811C0B0
_08078D34:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
_08078D3C:
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806FEBC
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08078D5E
	adds r0, r4, #0
	bl CopyPosition
_08078D5E:
	pop {r4, r5, pc}
	.syntax divided
