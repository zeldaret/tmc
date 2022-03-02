	.syntax unified
	push {r4, r5, r6, lr}
	ldr r1, _08078DCC @ =gPlayerEntity
	ldr r0, [r1, #0x74]
	ldr r4, [r0, #0x54]
	ldrb r0, [r4, #0xc]
	adds r6, r1, #0
	cmp r0, #2
	beq _08078D72
	b _08078E82
_08078D72:
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	ldrb r1, [r6, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0x7f
	ands r2, r0
	ldr r1, _08078DD0 @ =gUnk_0811C0E8
	ldrb r0, [r4, #0x16]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08078DD4
	adds r2, r1, r2
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r6, #0x2e]
	subs r0, r0, r1
	strh r0, [r4, #0x2e]
	adds r1, r2, #0
	b _08078DE0
	.align 2, 0
_08078DCC: .4byte gPlayerEntity
_08078DD0: .4byte gUnk_0811C0E8
_08078DD4:
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r6, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
_08078DE0:
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	adds r5, r6, #0
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl SortEntityAbove
	ldr r0, _08078E34 @ =gPlayerState
	ldrb r0, [r0, #5]
	cmp r0, #4
	bne _08078E4C
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0806F8DC
	ldrb r1, [r4, #0x16]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _08078E82
	ldr r0, _08078E38 @ =gRoomTransition
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _08078E3C
	cmp r1, #3
	beq _08078E44
	b _08078E82
	.align 2, 0
_08078E34: .4byte gPlayerState
_08078E38: .4byte gRoomTransition
_08078E3C:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E44:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	b _08078E82
_08078E4C:
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	cmp r0, #0
	beq _08078E62
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	b _08078E6E
_08078E62:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r1, #1
_08078E6E:
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08078E82:
	pop {r4, r5, r6, pc}
	.syntax divided
