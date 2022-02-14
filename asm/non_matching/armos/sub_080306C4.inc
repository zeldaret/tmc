	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080307C0
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _080307C0
	movs r0, #0x18
	strb r0, [r4, #0xe]
	ldr r0, _080307B0 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_0800132C
	adds r5, r0, #0
	cmp r5, #0xff
	beq _080307CC
	movs r0, #0
	mov r8, r0
	bl Random
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _0803070E
	ldrb r0, [r4, #0x14]
	adds r6, r4, #0
	adds r6, #0x82
	cmp r0, #0xff
	bne _0803072A
_0803070E:
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #3
	beq _0803072A
	adds r0, r5, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r1, #1
	mov r8, r1
_0803072A:
	mov r7, r8
	cmp r7, #0
	bne _08030746
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r1, #4
	adds r1, r5, r1
	movs r0, #0x18
	ands r1, r0
	strb r1, [r4, #0x15]
_08030746:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080307B4 @ =gUnk_02027EB4
	mov ip, r1
	cmp r0, #2
	bne _08030758
	ldr r7, _080307B8 @ =gUnk_0200D654
	mov ip, r7
_08030758:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r3, _080307BC @ =gUnk_080CE164
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r2, r0, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r7, #0x32
	ldrsh r2, [r4, r7]
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, ip
	movs r3, #0
	bl IsTileCollision
	cmp r0, #0
	beq _0803079E
	movs r0, #4
	adds r1, r5, #0
	ands r1, r0
	eors r1, r0
	lsls r1, r1, #1
	movs r0, #0x10
	ands r5, r0
	orrs r1, r5
	strb r1, [r4, #0x15]
	movs r0, #0
	mov r8, r0
_0803079E:
	adds r0, r4, #0
	bl sub_080307D4
	ldrb r0, [r6]
	lsls r0, r0, #1
	mov r1, r8
	orrs r0, r1
	strb r0, [r6]
	b _080307CC
	.align 2, 0
_080307B0: .4byte gUnk_020000B0
_080307B4: .4byte gUnk_02027EB4
_080307B8: .4byte gUnk_0200D654
_080307BC: .4byte gUnk_080CE164
_080307C0:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_080307CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
